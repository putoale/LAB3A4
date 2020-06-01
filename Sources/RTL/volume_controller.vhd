library IEEE;
 use IEEE.STD_LOGIC_1164.ALL;
 use IEEE.NUMERIC_STD.ALL;

entity volume_controller is
  Generic (
            DATA_WIDTH     : POSITIVE := 16;

            VOLUME_BITS    : POSITIVE := 4;  -- Bits used to represent the volume value
            MIN_VOLUME     : INTEGER  := 0;  -- Minimum volume possible
            MAX_VOLUME     : POSITIVE := 15; -- Maximum volume possible
            DEFAULT_VOLUME : POSITIVE := 7   -- Starting volume value
  );
  Port (
        --------------------------Clk/Reset--------------------------
        aclk    : in std_logic;
        aresetn : in std_logic;
        -------------------------------------------------------------

        -------------------------Volume I/O--------------------------
        volume_up     : in std_logic; -- User raising volume
        volume_down   : in std_logic; -- User lowering volume

        volume_level  : out std_logic_vector (15 downto 0); -- volume output
        -------------------------------------------------------------

        ------------------- Slave AXI4Stream Port--------------------
        s_axis_tvalid : in  std_logic;
        s_axis_tready : out std_logic;
        s_axis_tdata  : in  std_logic_vector(DATA_WIDTH-1 downto 0);
        s_axis_tlast  : in  std_logic;
        -------------------------------------------------------------

        ------------------- Master AXI4Stream Port-------------------
        m_axis_tvalid : out  std_logic;
        m_axis_tready : in   std_logic;
        m_axis_tdata  : out  std_logic_vector(DATA_WIDTH-1 downto 0);
        m_axis_tlast  : out  std_logic
        -------------------------------------------------------------
  );
end volume_controller;

architecture Behavioral of volume_controller is

  component volume_led_ctrl is
    Generic(
            VOLUME_BITS    : POSITIVE := 4;
            MIN_VOLUME     : INTEGER  := 0;
            MAX_VOLUME     : POSITIVE := 15;
            DEFAULT_VOLUME : POSITIVE := 7
    );
    Port (
            aclk     : in std_logic;
            aresetn  : in std_logic;

            btn_up   : in std_logic;
            btn_down : in std_logic;

            volume   : out std_logic_vector(VOLUME_BITS-1 downto 0);
            led_out  : out std_logic_vector(15 downto 0)
    );
  end component;

  type state_type is (IDLE, RECEIVE_DATA, COMPUTE_SHIFT, CHECK_OVERFLOW, SEND_DATA);
  signal state : state_type := IDLE; -- Definition of the state type to construct a Finite State Machine

  constant MIN_VOLUME_NORM     : NATURAL := 0;                           -- Lower volume limit
  constant MAX_VOLUME_NORM     : NATURAL := MAX_VOLUME - MIN_VOLUME;     -- Upper volume limit
  constant DEFAULT_VOLUME_NORM : NATURAL := DEFAULT_VOLUME - MIN_VOLUME; -- Volume range

  signal data_in               : signed (DATA_WIDTH -1 downto 0) := (Others => '0'); -- Input data
  signal data_out              : signed (DATA_WIDTH -1 downto 0) := (Others => '0'); -- Input data
  signal data_out_temp         : signed (DATA_WIDTH -1 downto 0) := (Others => '0'); -- Temporary storage for output data in case it needs to be fixed to account for overflow

  signal default_volume_sig    : signed (VOLUME_BITS downto 0) := to_signed(DEFAULT_VOLUME_NORM,VOLUME_BITS+1); -- Default volume value (signed)
  signal volume                : std_logic_vector (VOLUME_BITS-1 downto 0) := std_logic_vector(to_unsigned(DEFAULT_VOLUME_NORM,VOLUME_BITS)); -- Curreent volume value
  signal volume_sign           : signed (VOLUME_BITS downto 0) := default_volume_sig; -- Volume signal
  signal diff                  : signed (VOLUME_BITS downto 0) := (Others => '0');    -- Signal to store the difference between current and default volume

  signal tlast_sampled         : std_logic := '0' ; -- Control  signal  to check if the Tlast has been sampled
  signal tlast_expected        : std_logic := '0' ; -- Control  signal  to check if the Tlast is expected

  signal bitmask_overflow      : signed (DATA_WIDTH -1 downto 0) := (Others =>'0'); -- Signal used to check is the multiplication overflows
  constant saturate_up         : signed (DATA_WIDTH-1 downto 0)  := '0' & (DATA_WIDTH-2 downto 0 => '1'); -- Highest (positive) number representable in two's complement
  constant saturate_down       : signed (DATA_WIDTH-1 downto 0)  := '1' & (DATA_WIDTH-2 downto 0 => '0'); -- Lowest  (negative) number representable in two's complement


  begin

    vol_led_ctrl: volume_led_ctrl
     Generic Map(
                  VOLUME_BITS    => VOLUME_BITS,
                  MIN_VOLUME     => MIN_VOLUME_NORM,
                  MAX_VOLUME     => MAX_VOLUME_NORM,
                  DEFAULT_VOLUME => DEFAULT_VOLUME_NORM
     )
     Port Map(
                aclk      => aclk,
                aresetn   => aresetn,

                btn_up    => volume_up,
                btn_down  => volume_down,

                volume    => volume,
                led_out   => volume_level
     );

    with state select s_axis_tready	<=
      '1' when RECEIVE_DATA, -- RECEIVE_DATA is the only state in which the module can receive
      '0' when others;       -- Every other state doesn't need data input

    with state select m_axis_tvalid  <=
      '1' when SEND_DATA,   -- SEND_DATA is the only state in which the module has all the data ready and available
      '0' when others;      -- Every other state doesn't have valid data to send

    with state select m_axis_tlast <=
      tlast_sampled when SEND_DATA, -- When the data is sent it means a Tlast has been correctly sampled
      '0' when others;

    m_axis_tdata <= std_logic_vector(data_out); -- data out is put directly in the AXImaster Tdata
    volume_sign  <= signed('0' & volume);       -- volume is converted into a positive signed value

    FSM : PROCESS(aclk,aresetn)
     variable bitmask    : signed (DATA_WIDTH -1 downto 0) := (Others =>'0');  -- Variable used to check for multiplication overflow
     variable diff_var   : signed (VOLUME_BITS downto 0)   := (Others => '0'); -- Varable to keep track of the difference between current and default volume
     begin

      if aresetn = '0' then    -- Reset condition
        state <= IDLE;         -- Restart the FSM
        tlast_expected <= '0'; -- Stop expecting a Tlast

      elsif rising_edge(aclk) then -- Working Condition

        case state is

          when IDLE  => -- "Do nothing" state, to start and reset the FSM
               state <= RECEIVE_DATA;

          when RECEIVE_DATA =>
              if s_axis_tvalid = '1' then -- When the AXIslave has valid data to share
                 data_in          <= signed(s_axis_tdata);

                 if s_axis_tlast  = tlast_expected then
                   tlast_expected <= not tlast_expected; -- Switch the status of tlast_expected
                   tlast_sampled  <= s_axis_tlast;       -- Store if there was a Tlast or not
                   diff_var       := resize(volume_sign, diff'length) - resize(default_volume_sig, diff'length); -- difference between current and default volume
                   diff           <= diff_var;           -- Store the difference

                   if diff_var = 0 then   -- If there's no difference
                      data_out    <= signed(s_axis_tdata); -- Data out is just the tdata we just received
                      state       <= SEND_DATA;            -- And we can send it directly
                   else
                     state <= COMPUTE_SHIFT; -- If there is a difference the shift must be computed before sending the data
                   end if;

                 end if;

              end if;

          when COMPUTE_SHIFT =>
              if diff > 0 then -- If the volume has been raised
                 data_out_temp <= shift_left(data_in,to_integer(diff)); -- data_out_temp stores the preliminarly shifted data
                 -- The shift could cause a change of sign if we don't check what happens to the MSB
                 state         <= CHECK_OVERFLOW;
              else -- If the volume has been lowered
                 data_out      <= shift_right (data_in, abs(to_integer(diff))); -- The division has no problem related to change of sign
                 state         <= SEND_DATA; -- Therefore the data can be directly sent  without checking for an overflow
              end if;
              ----------------------- Bitmask Reset for the next check ---------------------
              bitmask  :=  (Others => '0'); -- Everything reset to 0
              -- The bits between MSB and the diff-th bit are then set to 1, those are the bits that get lost when the shift_left is applied
              bitmask(bitmask'high downto bitmask'high-to_integer(diff)) := (Others => '1');
              -- bitmask_overflow is then computed as the logic AND between the bitmask and the data to be shifted
              bitmask_overflow  <=  data_in AND bitmask; -- It can then be used to understand if the multiplication overflows, changing the sign of the input data
              ------------------------------------------------------------------------------

          when CHECK_OVERFLOW =>
              if data_in(data_in'high) = '0' then -- when the MSB of the data is 0 (positive)
                if (bitmask_overflow) /= 0 then   -- If there would be some kind of positive overflow
                   data_out <= saturate_up;       -- data_out "saturates" and becomes the highest POSITIVE number representable
                else
                   data_out <= data_out_temp;     -- Otherwise there's no change to make
                end if;

              else                               -- when the MSB of the data is 1 (negative)
                if (bitmask_overflow) /= bitmask then -- If there would be some kind of negative underflow
                   data_out <= saturate_down;    -- data_out "saturates" and becomes the highest (in module) NEGATIVE number representable
                else
                   data_out <= data_out_temp;    -- Otherwise there's no change to make
                end if;
              end if;

              state <= SEND_DATA;                -- The data is ready to be sent

          when SEND_DATA =>
              if m_axis_tready ='1'  then -- When the sending is done and the master tready is back to 1
                 state <= RECEIVE_DATA;   -- The FSM can start over
              end if;

        end case;

      end if;

    end process;

end Behavioral;

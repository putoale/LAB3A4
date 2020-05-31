library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity moving_average is
  Generic(
    MEAN_AV_WIDTH2 : positive := 5;
    DATA_WIDTH : positive := 16
  );
  Port (
    --------------------------Clk/Reset-----------------------
    clk   : in std_logic;
    aresetn : in std_logic;
    ----------------------------------------------------------

    --------------------------switches------------------------
    sw_in :  in std_logic;
    ----------------------------------------------------------

    ------------------- Slave AXI4Stream Port-----------------
    s_axis_tvalid	: in std_logic;
    s_axis_tdata	: in std_logic_vector(DATA_WIDTH-1 downto 0);
    s_axis_tlast	: in std_logic;
    s_axis_tready	: out std_logic;
    ----------------------------------------------------------

    ------------------- Master AXI4Stream Port-----------------
    m_axis_tvalid	: out std_logic;
    m_axis_tdata	: out std_logic_vector(DATA_WIDTH-1 downto 0);
    m_axis_tlast	: out std_logic;
    m_axis_tready	: in std_logic
    ----------------------------------------------------------
    );
end moving_average;

architecture Behavioral of moving_average is

  type state_type is (IDLE, RECEIVE_DATA, SUBTRACTION, AVERAGE, SEND_DATA); -- FSM state type
  signal state : state_type  := IDLE;                                       -- FSM state signal

  type mem_type is array (0 to 2**MEAN_AV_WIDTH2-1) of std_logic_vector(data_width-1 downto 0); -- array_type to store previous values
  signal last_values_sx				: mem_type :=(others=>(others=>'0'));                             -- needed to compute the average.
  signal last_values_dx		   	: mem_type :=(others=>(others=>'0'));

  signal data_in         : std_logic_vector(DATA_WIDTH-1 downto 0) := (others=> '0'); -- signed data_in signal, to store data to be processed

  signal data_out        : std_logic_vector(DATA_WIDTH-1 downto 0) := (others=> '0'); -- signed data_out signal, to store processed data

  signal sw_reg : std_logic := '0'; -- signal to sample switches in order to reduce the metastability chance and to avoid unexpected changes
--                                     during the computation
--
  signal last_sum_sx : signed (data_width-1+MEAN_AV_WIDTH2 downto 0) := (others=> '0'); -- signals to store previous sum
  signal last_sum_dx : signed (data_width-1+MEAN_AV_WIDTH2 downto 0) := (others=> '0'); -- sx and dx

  signal tlast_sampled    : std_logic := '0'; -- signal to sample tlast and check it with the expected one
  signal tlast_expected   : std_logic := '0'; -- signal storing the expected tlast

  signal sub : signed (DATA_WIDTH downto 0) := (Others =>'0'); -- signal to store the value to add to the previous sum

begin


--------------------------------------------------------------------
--                  AXIStream signals handling                    --
--------------------------------------------------------------------
  with state select s_axis_tready	<=
    '1' when RECEIVE_DATA,
    '0' when others;
  with state select m_axis_tvalid  <=
    '1' when SEND_DATA,
    '0' when others;

  with state select m_axis_tlast <=
    tlast_sampled when SEND_DATA,
    '0' when others;

  m_axis_tdata <= data_out;
--------------------------------------------------------------------
--                 End AXIStream signals handling                 --
--------------------------------------------------------------------



  FSM : PROCESS(clk,aresetn) -- FSM to handle data flow
  variable sum : signed (DATA_WIDTH-1+MEAN_AV_WIDTH2 downto 0) := (Others =>'0');
  begin

    if aresetn='0' then

      state <= IDLE;
      last_values_sx	<= (others => (others=>'0'));
      last_values_dx	<= (others => (others=>'0'));
      last_sum_sx     <= (others =>'0');
      last_sum_dx     <= (others =>'0');
      tlast_expected  <= '0'; -- reset this in order to guarantee the correct working if resetting during elaboration


    elsif rising_edge(clk) then

      case state is

        when IDLE =>
            state <= RECEIVE_DATA;


        when RECEIVE_DATA =>

            if s_axis_tvalid = '1' then -- if a new input data is present
              sw_reg <= sw_in;          -- sample switches
              data_in <= s_axis_tdata;  --sample data_in

              if s_axis_tlast = tlast_expected then   --check tlast
                state <= SUBTRACTION;
                tlast_expected <= not tlast_expected; -- change tlast_expected to read data from the other channel
                tlast_sampled <= s_axis_tlast;        -- sample tlast
              end if;
            end if;

        when SUBTRACTION =>

            state <= AVERAGE;

            if tlast_sampled ='1' then   -- if the last data read was dx
              last_values_dx <= data_in & last_values_dx(0 to last_values_dx'high-1); -- shift last_values_dx in order to save data_in in a FIFO fashion
              sub <= resize(signed(data_in),sub'length)-resize(signed(last_values_dx(last_values_dx'right)),sub'length); -- compute data_in(t) - data_in(t-AVG_WINDOW)
            else
              last_values_sx<= data_in & last_values_sx(0 to last_values_sx'high-1); -- shift last_values_sx in order to save data_in in a FIFO fashion
              sub <= resize(signed(data_in),sub'length)-resize(signed(last_values_sx(last_values_sx'right)),sub'length); -- compute data_in(t) - data_in(t-AVG_WINDOW)
            end if;




        when AVERAGE =>
          state <= SEND_DATA;

          if tlast_sampled='1' then
            sum := last_sum_dx + resize(sub,sum'length);                          -- compute last_sum_dx + sub
            data_out <= STD_LOGIC_VECTOR(sum(sum'HIGH DOWNTO MEAN_AV_WIDTH2));    -- compute division by AVG_WINDOW and send to data_out
            last_sum_dx <= sum;                                                   -- store sum in last_sum
          else
            sum := last_sum_sx + resize(sub,sum'length);                          -- compute last_sum_sx + sub
            data_out <= STD_LOGIC_VECTOR(sum(sum'HIGH DOWNTO MEAN_AV_WIDTH2));    -- compute division by AVG_WINDOW and send to data_out
            last_sum_sx <= sum;                                                   -- store sum in last_sum
          end if;

          if sw_reg = '0' then     -- if filter is disabled
            data_out  <=  data_in; -- move data_in to data_out directly
          end if;


        when SEND_DATA =>
            if m_axis_tready ='1'  then -- write data on the AXIStream master port
              state <= RECEIVE_DATA;
            end if;
        end case;

      end if;

  end process;

end Behavioral;

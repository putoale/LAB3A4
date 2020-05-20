
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity volume_controller is
  Generic (
        DATA_WIDTH     : POSITIVE := 16;

        VOLUME_BITS    : POSITIVE := 4;
        MIN_VOLUME     : INTEGER := 0;
        MAX_VOLUME     : POSITIVE := 15;
        DEFAULT_VOLUME : POSITIVE := 7
  );
  Port (
        aclk    : in std_logic;
        aresetn : in std_logic;

        volume_up     : in std_logic;
        volume_down   : in std_logic;

        s_axis_tvalid : in  std_logic;
        s_axis_tready : out std_logic;
        s_axis_tdata  : in  std_logic_vector(DATA_WIDTH-1 downto 0);
        s_axis_tlast  : in  std_logic;

        m_axis_tvalid : out  std_logic;
        m_axis_tready : in   std_logic;
        m_axis_tdata  : out  std_logic_vector(DATA_WIDTH-1 downto 0);
        m_axis_tlast  : out  std_logic;

        volume_level  : out std_logic_vector (15 downto 0)
   );
end volume_controller;

architecture Behavioral of volume_controller is
  type state_type is (IDLE, RECEIVE_DATA, MULTIPLY, COMPUTE_OUT,SEND_DATA);
  signal state : state_type  := IDLE;

  signal data_in  : signed (DATA_WIDTH -1 downto 0) := (Others => '0');
  signal data_out : signed (DATA_WIDTH -1 downto 0) := (Others => '0');

  signal default_volume_sig : signed (VOLUME_BITS downto 0) := to_signed(DEFAULT_VOLUME,VOLUME_BITS+1);
  signal volume  : signed (VOLUME_BITS downto 0) := default_volume_sig;
  signal diff    : signed (VOLUME_BITS downto 0) := (Others => '0');


  signal tlast_sampled  : std_logic := '0';
  signal tlast_expected : std_logic := '0';

  signal data_out_temp : signed (data_in'length + diff'length-1 downto 0) := (Others => '0');


  constant SCALE_FACTOR : integer := (MAX_VOLUME - MIN_VOLUME + 1) / 16;

begin

  with state select s_axis_tready	<=
    '1' when RECEIVE_DATA,
    '0' when others;
  with state select m_axis_tvalid  <=
    '1' when SEND_DATA,
    '0' when others;

  with state select m_axis_tlast <=
    tlast_sampled when SEND_DATA,
    '0' when others;

  m_axis_tdata <= std_logic_vector(data_out);

  volume_ctrl : process (aclk,aresetn)
  variable volume_var : signed (VOLUME_BITS downto 0) := default_volume_sig;
  begin
    if aresetn = '0' then
      volume <= default_volume_sig; --7
      volume_var := default_volume_sig;

    elsif rising_edge(aclk) then

      if volume_up = '1' and volume_down = '0' and volume /= to_signed(MAX_VOLUME,volume'length) then
        volume_var := volume_var + 1;
      elsif volume_up = '0' and volume_down = '1' and volume /= to_signed(MIN_VOLUME,volume'length) then
        volume_var := volume_var - 1;
      end if;

      --volume_level <= std_logic_vector ( resize((volume_var / SCALE_FACTOR + 1),volume_level'length) );
      volume <= volume_var;

    end if;

  end process;

  FSM : PROCESS(aclk,aresetn)
  -- variable data_out_temp : signed (data_in'length + diff'length-1 downto 0) := (Others => '0');
  begin

    if aresetn = '0' then
      state<=IDLE;
      tlast_expected <= '0';

    elsif rising_edge(aclk) then

      case state is

        when IDLE =>
            state<=RECEIVE_DATA;


        when RECEIVE_DATA =>

            if s_axis_tvalid = '1' then
              data_in <= signed (s_axis_tdata);

              if s_axis_tlast = tlast_expected then
                state <= MULTIPLY;
                tlast_expected <= not tlast_expected;
                tlast_sampled <= s_axis_tlast;
                diff <= resize(volume, diff'length) - resize(default_volume_sig, diff'length);
              end if;
            end if;

        when MULTIPLY =>
            -- if diff > 0 then
            --   data_out_temp := shift_left (resize(data_in,data_out_temp'length), to_integer(diff));
            --
            --   if data_out_temp > 2 ** data_out'length - 1 then
            --     data_out <= (Others =>'1');
            --   else
            --     data_out <= resize (data_out_temp, data_out'length);
            --   end if;
            --
            -- elsif diff < 0 then
            --   data_out <= shift_right (data_in, to_integer(diff));
            -- else
            --   data_out <= data_in;
            -- end if;
            -- state <= SEND_DATA;

            if diff > 0 then
              --data_out_var := shift_left (resize(data_in,data_out_temp'length), to_integer(diff));
              data_out_temp <= shift_left (resize(data_in,data_out_temp'length), to_integer(diff));
            elsif diff < 0 then
              --data_out_temp := shift_right (resize(data_in,data_out_temp'length), to_integer(diff));
              data_out <= shift_right (data_in, abs(to_integer(diff)));
            else
              --data_out_temp := resize(data_in,data_out_temp'length);
              data_out <= data_in;
            end if;
            state <= COMPUTE_OUT;

        when COMPUTE_OUT =>
            if diff > 0 then
              if data_out_temp > 2**data_out'length -1 then
                data_out <= (Others =>'1');
              else
                data_out <= resize(data_out_temp,data_out'length);
              end if;
            end if;
            state <= SEND_DATA;

        when SEND_DATA =>
            if m_axis_tready ='1'  then
              state <= IDLE;
            end if;
        end case;

      end if;

  end process;




end Behavioral;

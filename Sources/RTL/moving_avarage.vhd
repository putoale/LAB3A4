library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity moving_avarage is
Generic(
  AV_WIDTH : positive := 32;
  DATA_WIDTH : positive := 16
);
Port (

  clk   : in std_logic;
  aresetn : in std_logic;

  sw_in :  in std_logic;

  s_axis_tvalid	: in std_logic;
  s_axis_tdata	: in std_logic_vector(DATA_WIDTH-1 downto 0);
  s_axis_tlast	: in std_logic;
  s_axis_tready	: out std_logic;

  m_axis_tvalid	: out std_logic;
  m_axis_tdata	: out std_logic_vector(DATA_WIDTH-1 downto 0);
  m_axis_tlast	: out std_logic;
  m_axis_tready	: in std_logic

  );
end moving_avarage;

architecture Behavioral of moving_avarage is

  type state_type is (IDLE, RECEIVE_DATA, SUBTRACTION, AVARAGE, SEND_DATA);
  signal state : state_type  := IDLE;

  type mem_type is array (0 to av_width-1) of std_logic_vector(data_width-1 downto 0);
  signal last_values_sx				: mem_type :=(others=>(others=>'0'));
  signal last_values_dx		   	: mem_type :=(others=>(others=>'0'));

  signal data_in         : std_logic_vector(data_width-1 downto 0) := (others=> '0');

  signal data_out        : std_logic_vector(data_width-1 downto 0) := (others=> '0');

  signal sw_reg : std_logic := '0';

  signal last_avarage_sx : signed (data_width-1 downto 0) := (others=> '0');
  signal last_avarage_dx : signed (data_width-1 downto 0) := (others=> '0');

  signal tlast_sampled    : std_logic := '0';
  signal tlast_expected   : std_logic := '0';

  signal sub_sig : signed (DATA_WIDTH-1 downto 0) := (Others =>'0');

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

  m_axis_tdata <= data_out;




  FSM : PROCESS(clk,aresetn)
  variable sub : signed (DATA_WIDTH downto 0) := (Others =>'0');
  begin

    if aresetn='0' then

      state<=IDLE;
      last_values_sx	<= (others => (others=>'0'));
      last_values_dx	<= (others => (others=>'0'));
      last_avarage_dx <= (others => '0');
      last_avarage_dx <= (others => '0');

    elsif rising_edge(clk) then

      case state is

        when IDLE =>
          if s_axis_tvalid = '1' then
            sw_reg <= sw_in;
            tlast_sampled <= s_axis_tlast;
            data_in <= s_axis_tdata;

            state<=RECEIVE_DATA;
          end if;


        when RECEIVE_DATA =>

            data_out  <= s_axis_tdata;

            if tlast_sampled = tlast_expected then
              state <= SUBTRACTION;
              tlast_expected <= not tlast_expected;
            end if;

        when SUBTRACTION =>

            state<=AVARAGE;

            if tlast_sampled ='1' then
              last_values_dx <= data_in & last_values_dx(0 to last_values_dx'high-1);
            else
              last_values_sx<= data_in & last_values_sx(0 to last_values_sx'high-1);
            end if;

            if tlast_sampled='1' then
               sub := resize(signed(data_in) - signed(last_values_dx(av_width-1)), sub'length);
            else
               sub := resize(signed(data_in) - signed(last_values_sx(av_width-1)), sub'length);
            end if;
            sub_sig <= resize ((sub / (AV_WIDTH)),sub_sig'length);

        when AVARAGE =>
          state<=SEND_DATA;

          if tlast_sampled='1' then
            data_out <= STD_LOGIC_VECTOR(sub_sig + last_avarage_dx);
            last_avarage_dx <= sub_sig + last_avarage_dx;
          else
            data_out <= STD_LOGIC_VECTOR(sub_sig + last_avarage_sx);
            last_avarage_sx <= sub_sig + last_avarage_sx;
          end if;

          if sw_reg = '0' then
            data_out  <=  data_in;
          end if;


        when SEND_DATA =>
            if m_axis_tready ='1'  then
              state <= IDLE;
            end if;
        end case;

      end if;

  end process;

end Behavioral;

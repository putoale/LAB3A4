library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity moving_average is
Generic(
  MEAN_AV_WIDTH2 : positive := 5;
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
end moving_average;

architecture Behavioral of moving_average is

  type state_type is (IDLE, RECEIVE_DATA, SUBTRACTION, AVERAGE, SEND_DATA);
  signal state : state_type  := IDLE;

  type mem_type is array (0 to 2**MEAN_AV_WIDTH2-1) of std_logic_vector(data_width-1 downto 0);
  signal last_values_sx				: mem_type :=(others=>(others=>'0'));
  signal last_values_dx		   	: mem_type :=(others=>(others=>'0'));

  signal data_in         : std_logic_vector(DATA_WIDTH-1 downto 0) := (others=> '0');

  signal data_out        : std_logic_vector(DATA_WIDTH-1 downto 0) := (others=> '0');

  signal sw_reg : std_logic := '0';

  signal last_sum_sx : signed (data_width-1+MEAN_AV_WIDTH2 downto 0) := (others=> '0');
  signal last_sum_dx : signed (data_width-1+MEAN_AV_WIDTH2 downto 0) := (others=> '0');

  signal tlast_sampled    : std_logic := '0';
  signal tlast_expected   : std_logic := '0';

  signal sub : signed (DATA_WIDTH downto 0) := (Others =>'0');

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
  variable sum : signed (DATA_WIDTH-1+MEAN_AV_WIDTH2 downto 0) := (Others =>'0');
  begin

    if aresetn='0' then

      state<=IDLE;
      last_values_sx	<= (others => (others=>'0'));
      last_values_dx	<= (others => (others=>'0'));
      last_sum_sx     <= (others =>'0');
      last_sum_dx     <= (others =>'0');


    elsif rising_edge(clk) then

      case state is

        when IDLE =>
            state<=RECEIVE_DATA;


        when RECEIVE_DATA =>

            if s_axis_tvalid = '1' then
              sw_reg <= sw_in;
              data_in <= s_axis_tdata;

              if s_axis_tlast = tlast_expected then
                state <= SUBTRACTION;
                tlast_expected <= not tlast_expected;
                tlast_sampled <= s_axis_tlast;
              end if;
            end if;

        when SUBTRACTION =>

            state<=AVERAGE;

            if tlast_sampled ='1' then
              last_values_dx <= data_in & last_values_dx(0 to last_values_dx'high-1);
              sub <= resize(signed(data_in),sub'length)-resize(signed(last_values_dx(last_values_dx'right)),sub'length);
            else
              last_values_sx<= data_in & last_values_sx(0 to last_values_sx'high-1);
              sub <= resize(signed(data_in),sub'length)-resize(signed(last_values_sx(last_values_sx'right)),sub'length);
            end if;




        when AVERAGE =>
          state<=SEND_DATA;

          if tlast_sampled='1' then
            sum := last_sum_dx+resize(sub,sum'length);
            data_out <= STD_LOGIC_VECTOR(sum(sum'HIGH DOWNTO MEAN_AV_WIDTH2));
            last_sum_dx <= sum;
          else
            sum := last_sum_sx+resize(sub,sum'length);
            data_out <= STD_LOGIC_VECTOR(sum(sum'HIGH DOWNTO MEAN_AV_WIDTH2));
            last_sum_sx <= sum;
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

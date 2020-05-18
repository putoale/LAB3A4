library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity moving_average_v2 is
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
end moving_average_v2;

architecture Behavioral of moving_average_v2 is

  type state_type is (IDLE, RECEIVE_DATA, SUBTRACTION, AVERAGE, WAIT_WRITE, SEND_DATA);
  signal state1 : state_type  := IDLE;
  signal state2 : state_type  := IDLE;

  type mem_type is array (0 to 2**MEAN_AV_WIDTH2-1) of std_logic_vector(data_width-1 downto 0);
  signal last_values_sx				: mem_type :=(others=>(others=>'0'));
  signal last_values_dx		   	: mem_type :=(others=>(others=>'0'));

  signal data_in_sx         : std_logic_vector(DATA_WIDTH-1 downto 0) := (others=> '0');
  signal data_in_dx         : std_logic_vector(DATA_WIDTH-1 downto 0) := (others=> '0');

  signal data_out_sx        : std_logic_vector(DATA_WIDTH-1 downto 0) := (others=> '0');
  signal data_out_dx        : std_logic_vector(DATA_WIDTH-1 downto 0) := (others=> '0');

  signal sw_reg_sx : std_logic := '0';
  signal sw_reg_dx : std_logic := '0';


  signal last_sum_sx : signed (data_width-1+MEAN_AV_WIDTH2 downto 0) := (others=> '0');
  signal last_sum_dx : signed (data_width-1+MEAN_AV_WIDTH2 downto 0) := (others=> '0');

  signal tlast_sampled_sx    : std_logic := '0';
  signal tlast_sampled_dx    : std_logic := '0';

  signal read_allowed_sx     : std_logic := '1';  -- if 0, dx is allowed
  --signal read_allowed_dx     : std_logic := '0';  -- if 0, dx is allowed

  signal write_allowed_sx    : std_logic := '1';  -- if 0, dx is allowed
  --signal write_allowed_dx    : std_logic := '0';  -- if 0, dx is allowed



  signal sub_sx : signed (DATA_WIDTH downto 0) := (Others =>'0');
  signal sub_dx : signed (DATA_WIDTH downto 0) := (Others =>'0');


begin

  m_axis_tlast <=
            tlast_sampled_sx when state1 = SEND_DATA else
            tlast_sampled_dx when state2 = SEND_DATA else
            '0';

  s_axis_tready <=
            '1' when (state1 = RECEIVE_DATA or state2 = RECEIVE_DATA) else
            '0';


  m_axis_tvalid <=
            '1' when (state1 = SEND_DATA or state2 = SEND_DATA) else
            '0';

  m_axis_tdata <=
            data_out_sx when state1 = SEND_DATA else
            data_out_dx when state2 = SEND_DATA;

--------------------------------------------------FSM SX--------------------------------------------------
  FSM_sx : PROCESS(clk,aresetn)
  variable sum_sx : signed (DATA_WIDTH-1+MEAN_AV_WIDTH2 downto 0) := (Others =>'0');
  begin

    if aresetn='0' then
      state1<=IDLE;
      last_values_sx	<= (others => (others=>'0'));
      last_sum_sx     <= (others =>'0');

    elsif rising_edge(clk) then

      case state1 is

        when IDLE =>
            if read_allowed_sx = '1' then
              state1 <= RECEIVE_DATA;
            end if;

        when RECEIVE_DATA =>

            if s_axis_tvalid = '1' then
              sw_reg_sx <= sw_in;
              data_in_sx <= s_axis_tdata;

              if s_axis_tlast = '0' then
                state1 <= SUBTRACTION;
                tlast_sampled_sx <= s_axis_tlast;
                --read_allowed_sx  <= '0';
              end if;
            end if;

        when SUBTRACTION =>

            state1<=AVERAGE;

            if tlast_sampled_sx ='0' then
              last_values_sx <= data_in_sx & last_values_sx(0 to last_values_sx'high-1);
              sub_sx <= resize(signed(data_in_sx),sub_sx'length)-resize(signed(last_values_sx(last_values_sx'right)),sub_sx'length);
            end if;


        when AVERAGE =>
          state1 <= WAIT_WRITE;

          if tlast_sampled_sx ='0' then
            sum_sx := last_sum_sx + resize(sub_sx,sum_sx'length);
            data_out_sx <= STD_LOGIC_VECTOR(sum_sx(sum_sx'HIGH downto MEAN_AV_WIDTH2));
            last_sum_sx <= sum_sx;
          end if;

          if sw_reg_sx = '0' then
            data_out_sx  <=  data_in_sx;
          end if;

        when WAIT_WRITE =>
            if write_allowed_sx = '1' then
              state1 <= SEND_DATA;
            end if;

        when SEND_DATA =>
            if m_axis_tready ='1'  then
              --write_allowed_sx <= '0';
              state1 <= IDLE;
            end if;
        end case;

      end if;

  end process;
---------------------------------------------------END FSM SX-----------------------------------------


-----------------------------------------------------FSM DX-------------------------------------------
  FSM_dx : PROCESS(clk,aresetn)
  variable sum_dx : signed (DATA_WIDTH-1+MEAN_AV_WIDTH2 downto 0) := (Others =>'0');
  begin

    if aresetn='0' then
      state2<=IDLE;
      last_values_dx	<= (others => (others=>'0'));
      last_sum_dx     <= (others =>'0');

    elsif rising_edge(clk) then

      case state2 is

        when IDLE =>
            if read_allowed_sx = '0' then
              state2 <= RECEIVE_DATA;
            end if;

        when RECEIVE_DATA =>

            if s_axis_tvalid = '1' then
              sw_reg_dx <= sw_in;
              data_in_dx <= s_axis_tdata;

              if s_axis_tlast = '1' then
                state2 <= SUBTRACTION;
                tlast_sampled_dx <= s_axis_tlast;
                --read_allowed_sx  <= '1';
              end if;
            end if;

        when SUBTRACTION =>

            state2<=AVERAGE;

             if tlast_sampled_dx ='1' then
               last_values_dx <= data_in_dx & last_values_dx(0 to last_values_dx'high-1);
               sub_dx <= resize(signed(data_in_dx),sub_dx'length)-resize(signed(last_values_dx(last_values_dx'right)),sub_dx'length);
             end if;

        when AVERAGE =>
          state2 <= WAIT_WRITE;

           if tlast_sampled_dx ='1' then
             sum_dx := last_sum_dx + resize(sub_dx,sum_dx'length);
             data_out_dx <= STD_LOGIC_VECTOR(sum_dx(sum_dx'HIGH downto MEAN_AV_WIDTH2));
             last_sum_dx <= sum_dx;
           end if;

          if sw_reg_dx = '0' then
            data_out_dx  <=  data_in_dx;
          end if;

        when WAIT_WRITE =>
            if write_allowed_sx = '0' then
              state2 <= SEND_DATA;
            end if;

        when SEND_DATA =>
            if m_axis_tready ='1'  then
              --write_allowed_sx <= '1';
              state2 <= IDLE;
            end if;
        end case;

      end if;

  end process;

--------------------------------------------------END FSM DX-----------------------------------------

allowed_control: process(clk,aresetn)
begin
  if aresetn = '0' then
    read_allowed_sx  <= '1';
    write_allowed_sx <= '1';
  elsif rising_edge(clk) then

    if (state1 = RECEIVE_DATA and s_axis_tvalid = '1' and s_axis_tlast = '0') then
      read_allowed_sx <= '0';
    elsif (state2 = RECEIVE_DATA and s_axis_tvalid = '1' and s_axis_tlast = '1') then
      read_allowed_sx <= '1';
    end if;

    if (state1 = SEND_DATA and m_axis_tready = '1') then
      write_allowed_sx <= '0';
    elsif (state2 = SEND_DATA and m_axis_tready = '1') then
      write_allowed_sx <= '1';
    end if;

  end if;



end process;

end Behavioral;

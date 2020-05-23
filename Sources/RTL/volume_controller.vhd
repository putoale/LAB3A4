
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity volume_controller is
  Generic (
        DATA_WIDTH     : POSITIVE := 16;

        VOLUME_BITS    : POSITIVE := 4;
        MIN_VOLUME     : INTEGER  := 0;
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

  component volume_led_ctrl is
    Generic(
            VOLUME_BITS    : POSITIVE := 4;
            MIN_VOLUME     : INTEGER  := 0;
            MAX_VOLUME     : POSITIVE := 15;
            DEFAULT_VOLUME : POSITIVE := 7
    );
    Port (
            aclk    : in std_logic;
            aresetn : in std_logic;

            btn_up   : in std_logic;
            btn_down : in std_logic;

            volume   : out std_logic_vector(VOLUME_BITS-1 downto 0);
            led_out  : out std_logic_vector(15 downto 0)
    );
  end component;


  type state_type is (IDLE, RECEIVE_DATA, MULTIPLY, COMPUTE_OUT,SEND_DATA);
  signal state : state_type  := IDLE;

  signal data_in  : signed (DATA_WIDTH -1 downto 0) := (Others => '0');
  signal data_out : signed (DATA_WIDTH -1 downto 0) := (Others => '0');

  signal default_volume_sig : signed (VOLUME_BITS downto 0) := to_signed(DEFAULT_VOLUME,VOLUME_BITS+1);
  signal volume             : std_logic_vector   (VOLUME_BITS-1 downto 0) := std_logic_vector(to_unsigned(DEFAULT_VOLUME,VOLUME_BITS));
  signal volume_sign        : signed (VOLUME_BITS downto 0) := default_volume_sig;
  signal diff               : signed (VOLUME_BITS downto 0) := (Others => '0');

  signal tlast_sampled  : std_logic := '0';
  signal tlast_expected : std_logic := '0';

  signal data_out_temp : signed (data_out'length-1 downto 0) := (Others => '0');

begin


  vol_led_ctrl: volume_led_ctrl
  Generic Map(
              VOLUME_BITS    => VOLUME_BITS,
              MIN_VOLUME     => MIN_VOLUME,
              MAX_VOLUME     => MAX_VOLUME,
              DEFAULT_VOLUME => DEFAULT_VOLUME
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
    '1' when RECEIVE_DATA,
    '0' when others;
  with state select m_axis_tvalid  <=
    '1' when SEND_DATA,
    '0' when others;

  with state select m_axis_tlast <=
    tlast_sampled when SEND_DATA,
    '0' when others;

  m_axis_tdata <= std_logic_vector(data_out);

  volume_sign <= signed('0' & volume);

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
              data_in <= signed(s_axis_tdata);

              if s_axis_tlast = tlast_expected then
                state <= MULTIPLY;
                tlast_expected <= not tlast_expected;
                tlast_sampled <= s_axis_tlast;
                diff <= resize(volume_sign, diff'length) - resize(default_volume_sig, diff'length);
              end if;
            end if;

        when MULTIPLY =>

            if diff > 0 then
              data_out_temp <= shift_left(data_in,to_integer(diff));
            elsif diff < 0 then
              data_out <= shift_right (data_in, abs(to_integer(diff)));
            else
              data_out <= data_in;
            end if;
            state <= COMPUTE_OUT;

        when COMPUTE_OUT =>
            if diff > 0 then
              if data_out_temp (data_out_temp'left) /= data_in(data_in'left) then
                data_out <= (Others => data_out_temp(data_out_temp'left));
                data_out (data_out'left) <= data_in (data_in'left);
              else
                data_out <= data_out_temp;
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

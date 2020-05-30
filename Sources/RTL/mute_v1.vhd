library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity mute_v1 is
  Generic(
    DATA_WIDTH : POSITIVE := 16
  );
  Port (
    -----------------------Clk/Reset--------------------------
    clk     : in std_logic;
    aresetn : in std_logic;
    ----------------------------------------------------------
    -----------------------inputs-----------------------------
    mute_left    : in std_logic;
    mute_right   : in std_logic;
    ----------------------------------------------------------
    -----------------------AXI4Stream_Slave-----------------------
    s_axis_tvalid : in  std_logic;
    s_axis_tready : out std_logic;
    s_axis_tdata  : in  std_logic_vector (DATA_WIDTH-1 downto 0);
    s_axis_tlast  : in  std_logic;
    --------------------------------------------------------------
    -----------------------AXI4Stream_Master-----------------------
    m_axis_tvalid : out std_logic;
    m_axis_tready : in  std_logic;
    m_axis_tdata  : out std_logic_vector(DATA_WIDTH-1 downto 0);
    m_axis_tlast  : out std_logic
    ---------------------------------------------------------------
   );
end mute_v1;

architecture Behavioral of mute_v1 is

  type state_type is (IDLE, RECEIVE_DATA, SEND_DATA);
  signal state : state_type  := IDLE;

  signal data_out : std_logic_vector(DATA_WIDTH-1 downto 0) := (Others => '0');

  signal tlast_sampled  : std_logic := '0';
  signal tlast_expected : std_logic := '0';

begin

with state select s_axis_tready <=
          '1' when RECEIVE_DATA,
          '0' when others;

with state select m_axis_tvalid <=
          '1' when SEND_DATA,
          '0' when others;

with state select m_axis_tlast <=
           tlast_sampled when SEND_DATA,
           '0' when others;

m_axis_tdata <= data_out;

FSM : PROCESS(clk,aresetn)
begin

  if aresetn='0' then
    state<=IDLE;
    tlast_expected <= '0';


  elsif rising_edge(clk) then

    case state is

      when IDLE =>
          state <= RECEIVE_DATA;


      when RECEIVE_DATA =>

          if s_axis_tvalid = '1' then

            if s_axis_tlast = tlast_expected then
              state <= SEND_DATA;

              tlast_expected <= not tlast_expected;
              tlast_sampled <= s_axis_tlast;

              if (s_axis_tlast = '0' and mute_left = '1') then
                data_out <= (Others => '0');
              elsif (s_axis_tlast = '1' and mute_right = '1') then
                data_out <= (Others => '0');
              else
                data_out <= s_axis_tdata;
              end if;

            end if;
          end if;

      when SEND_DATA =>
          if m_axis_tready ='1'  then
            state <= RECEIVE_DATA;
          end if;
      end case;

    end if;

end process;






end Behavioral;

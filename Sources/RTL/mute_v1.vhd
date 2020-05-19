library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity mute_v1 is
  Generic(
    DATA_WIDTH : POSITIVE := 16
  );
  Port (
    clk     : in std_logic;
    aresetn : in std_logic;

    mute_left    : in std_logic;
    mute_right   : in std_logic;

    s_mute_tvalid : in  std_logic;
    s_mute_tready : out std_logic;
    s_mute_tdata  : in  std_logic_vector (DATA_WIDTH-1 downto 0);
    s_mute_tlast  : in  std_logic;

    m_mute_tvalid : out std_logic;
    m_mute_tready : in  std_logic;
    m_mute_tdata  : out std_logic_vector(DATA_WIDTH-1 downto 0);
    m_mute_tlast  : out std_logic
   );
end mute_v1;

architecture Behavioral of mute_v1 is

  type state_type is (IDLE, RECEIVE_DATA, SEND_DATA);
  signal state : state_type  := IDLE;

  signal data_in : std_logic_vector(DATA_WIDTH-1 downto 0) := (Others => '0');
  signal data_out : std_logic_vector(DATA_WIDTH-1 downto 0) := (Others => '0');

  signal L_btn_sampled : std_logic := '0';
  signal R_btn_sampled : std_logic := '0';

  signal tlast_sampled  : std_logic := '0';
  signal tlast_expected : std_logic := '0';

begin

with state select s_mute_tready <=
          '1' when RECEIVE_DATA,
          '0' when others;

with state select m_mute_tvalid <=
          '1' when SEND_DATA,
          '0' when others;

with state select m_mute_tlast <=
           tlast_sampled when SEND_DATA,
           '0' when others;

m_mute_tdata <= data_out;

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

          if s_mute_tvalid = '1' then
            data_in <= s_mute_tdata;

            if s_mute_tlast = tlast_expected then
              state <= SEND_DATA;

              tlast_expected <= not tlast_expected;
              tlast_sampled <= s_mute_tlast;

              --L_btn_sampled <= L_btn;
              --R_btn_sampled <= R_btn;

              if (tlast_sampled = '0' and mute_left = '1') then
                data_out <= (Others => '0');
              elsif (tlast_sampled = '1' and mute_right = '1') then
                data_out <= (Others => '0');
              else
                data_out <= data_in;
              end if;

            end if;
          end if;

      when SEND_DATA =>
          if m_mute_tready ='1'  then
            state <= IDLE;
          end if;
      end case;

    end if;

end process;






end Behavioral;

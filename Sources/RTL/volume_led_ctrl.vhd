library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity volume_led_ctrl is
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
end volume_led_ctrl;

architecture Behavioral of volume_led_ctrl is

  constant default_volume_uns : unsigned (VOLUME_BITS-1 downto 0) := to_unsigned(DEFAULT_VOLUME,VOLUME_BITS);

  signal volume_uns : unsigned(VOLUME_BITS-1 DOWNTO 0) := default_volume_uns;


begin


  volume <= std_logic_vector(volume_uns);

  volume_ctrl : process (aclk,aresetn)

  variable n_ledon            : integer := DEFAULT_VOLUME - MIN_VOLUME + 1;
  variable volume_uns_var     : unsigned(VOLUME_BITS-1 DOWNTO 0) := default_volume_uns;
  begin
    if aresetn = '0' then

      volume_uns <= default_volume_uns;
      volume_uns_var :=  default_volume_uns;

    elsif rising_edge(aclk) then

      if btn_up = '1' and btn_down = '0' and volume_uns /= to_unsigned(MAX_VOLUME,volume_uns'length) then
        volume_uns_var := volume_uns + 1;
      elsif btn_up = '0' and btn_down = '1' and volume_uns /= to_unsigned(MIN_VOLUME,volume_uns'length) then
        volume_uns_var := volume_uns -1;
      end if;

      n_ledon:=to_integer(volume_uns_var) - MIN_VOLUME + 1;

      if n_ledon > 16 then
        led_out<=(others=>'1');
      else
        led_out<=(others=>'0');
        led_out(n_ledon-1 downto 0)<=(others=>'1');
      end if;

      volume_uns <= volume_uns_var;


    end if;

  end process;

end Behavioral;

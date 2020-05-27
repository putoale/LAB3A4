library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity volume_led_ctrl is
  Generic(
          VOLUME_BITS    : POSITIVE := 4; -- Number of bits to represent MAX_VOLUME in unsigned
          MIN_VOLUME     : INTEGER  := 0;
          MAX_VOLUME     : POSITIVE := 15;
          DEFAULT_VOLUME : POSITIVE := 7
  );
  Port (
          -----------------------clk/reset--------------------------
          aclk    : in std_logic;
          aresetn : in std_logic;
          ----------------------------------------------------------
          -----------------------Inputs-----------------------
          btn_up   : in std_logic;
          btn_down : in std_logic;
          ----------------------------------------------------------
          -----------------------Outputs----------------------------
          volume   : out std_logic_vector(VOLUME_BITS-1 downto 0);
          led_out  : out std_logic_vector(15 downto 0)
          ----------------------------------------------------------
  );
end volume_led_ctrl;

architecture Behavioral of volume_led_ctrl is


  component divlut is
      Generic(
              OPERAND_WIDTH  : positive  := 16;
              DIVIDER        : positive := 3
      );
      Port (
            --------------------Input--------------------
            dividend : in STD_LOGIC_VECTOR (OPERAND_WIDTH  - 1 downto 0);  -- The number to divide
            ---------------------------------------------
            --------------------Output-------------------
            result :   out std_logic_vector (OPERAND_WIDTH - 1 downto 0)  -- Result of the LUT
            --------------------------------------------
      );
  end component;

  constant VOL_SCALE          : positive := MAX_VOLUME - MIN_VOLUME;
  constant default_volume_sig : unsigned (VOLUME_BITS-1 downto 0) := to_unsigned(DEFAULT_VOLUME,VOLUME_BITS);

  signal volume_uns           : unsigned (VOLUME_BITS-1 downto 0) := default_volume_sig;

  signal diff2                : unsigned (VOLUME_BITS-1+5 downto 0) := (Others => '0');
  signal mult2                : unsigned (VOLUME_BITS-1+5 downto 0) := (Others =>'0');

  signal result_lut           : std_logic_vector (VOLUME_BITS-1+5 downto 0) := (Others =>'0');


begin

  lut: divlut
  Generic Map(
              OPERAND_WIDTH  => mult2'length,
              DIVIDER => VOL_SCALE
  )
  Port Map(
            dividend => std_logic_vector(mult2),
            result   => result_lut
  );

  volume <= std_logic_vector(volume_uns);

  -----------------------------------------------------------------------
  -- The following process handles the volume level signal and the     --
  -- number of leds to be turned on, applying the following formula:   --
  --                                                                   --
  -- n_led_on = (VOL-VOL_MIN)/(VOL_MAX - VOL_MIN) * 15 + 1             --
  --                                                                   --
  -- In order to respect the timing constraints, we implemented it     --
  -- as a 3-stage Pipeline (diff, mult, n_led_on).                     --
  -- The multiplication is implemented as a shift_left and a           --
  -- subtraction, whilst the division is implemented by means of a LUT --
  -----------------------------------------------------------------------

  volume_ctrl : process (aclk,aresetn)
  variable n_led_on             : integer range 1 to 16 := 1; -- number of leds on
  begin
    if aresetn = '0' then
      volume_uns <= default_volume_sig;

    elsif rising_edge(aclk) then
      ------------------------------------------Volume level signal engine------------------------------------
      if btn_up = '1' and btn_down = '0' and volume_uns /= to_unsigned(MAX_VOLUME,volume_uns'length) then
        volume_uns <= volume_uns + 1;
      elsif btn_up = '0' and btn_down = '1' and volume_uns /= to_unsigned(MIN_VOLUME,volume_uns'length) then
        volume_uns <= volume_uns -1;
      end if;
      --------------------------------------------------------------------------------------------------------

      --------------------------------------------Led pipeline------------------------------------------------
      diff2 <= resize(volume_uns - MIN_VOLUME,diff2'length); -- diff stage

      mult2 <= shift_left(diff2,4) - diff2; -- mult stage

      n_led_on := to_integer (unsigned(result_lut)+1); --n_led_on stage

      led_out (led_out'high downto n_led_on)<= (Others =>'0'); -- led assignment (in the same stage)
      led_out (n_led_on-1 downto 0)<= (Others =>'1');
      --------------------------------------------------------------------------------------------------------
    end if;


  end process;

end Behavioral;

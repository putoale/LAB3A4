library IEEE;
	use IEEE.STD_LOGIC_1164.all;
	use IEEE.NUMERIC_STD.ALL;
--	use IEEE.MATH_REAL.all;
------------------------------------


---------- OTHERS LIBRARY ----------
-- NONE
------------------------------------

entity tb_volume_led is
	-- Nothing here
end tb_volume_led;

architecture Behavioral of tb_volume_led is


	------------------ CONSTANT DECLARATION -------------------------

	-- Constant For Test Bench (TB) --
  constant period : time  :=5 ns;
	-----------------------------------

	--------- Constants For DUT -------
  constant VOLUME_BITS    : POSITIVE:=4;
  constant MIN_VOLUME     : NATURAL:=2;
  constant MAX_VOLUME     : POSITIVE:=12;
  constant DEFAULT_VOLUME : NATURAL:=6;
	-----------------------------------

	-----------------------------------------------------------------


	--------------------- COMPONENTS DECLARETION --------------------

	--------- DUT----------

  component volume_led_ctrl_v2 is
    Generic(
            VOLUME_BITS    : POSITIVE := 4;
            MIN_VOLUME     : NATURAL  := 0;
            MAX_VOLUME     : POSITIVE := 15;
            DEFAULT_VOLUME : NATURAL := 7
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
	----------------------------


	-----------------------------------------------------------------




	---------------------------- SIGNALS ----------------------------

	------- Reset/Clock --------
  signal aclk    : std_logic :='0';
  signal aresetn : std_logic :='1';
	----------------------------

	------- DUT signals ------
  signal  btn_up   : std_logic:='0';
  signal  btn_down : std_logic:='0';
  signal  volume   :  std_logic_vector(VOLUME_BITS-1 downto 0);
  signal  led_out  :  std_logic_vector(15 downto 0);
	----------------------------


	----------------------------------------------------------------







begin


	--------------------- COMPONENTS DECLARETION --------------------


	--------- DUT VOLUME LED-----------
	dut_volume_led : volume_led_ctrl_v2
		generic map(
      VOLUME_BITS    =>VOLUME_BITS,
      MIN_VOLUME     =>MIN_VOLUME,
      MAX_VOLUME     =>MAX_VOLUME,
      DEFAULT_VOLUME =>DEFAULT_VOLUME

		)
		port map (
      aclk            =>aclk,
      aresetn         =>aresetn,

      btn_up          =>btn_up,
      btn_down        =>btn_down,

      volume          =>volume,
      led_out         =>led_out

		);
	----------------------------



	-------------------------------------------------------------------

	----------------------------- DATA FLOW ---------------------------

	--------- Clock -----------
  aclk<=not aclk after period/2;
	----------------------------


	-------------------------------------------------------------------

	----------------------------- PROCESS ------------------------------

	------- Simulation ---------
	dut_pattern : process
	begin
    wait until rising_edge(aclk);
    wait until rising_edge(aclk);
    aresetn<='0';
    wait until rising_edge(aclk);
    wait until rising_edge(aclk);
    aresetn<='1';
    wait until rising_edge(aclk);
    btn_up<='1';
    wait until rising_edge(aclk);
    btn_up<='0';
    btn_down<='1';
    wait until rising_edge(aclk);
    btn_up<='1';
    btn_down<='0';
    for I in 0 to 8 loop
		  wait until rising_edge(aclk);
    end loop;
    btn_up<='0';
    btn_down<='1';
    for I in 0 to 6 loop
      wait until rising_edge(aclk);
    end loop;
    btn_down<='0';
    wait until rising_edge(aclk);
    btn_down<='1';
    btn_up<='1';
    wait until rising_edge(aclk);

		wait;

	end process;
	----------------------------


	-------------------------------------------------------------------

end Behavioral;

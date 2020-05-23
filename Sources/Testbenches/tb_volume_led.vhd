
---------- DEFAULT LIBRARY ---------
library IEEE;
	use IEEE.STD_LOGIC_1164.all;
	use IEEE.NUMERIC_STD.ALL;
	use IEEE.MATH_REAL.all;
------------------------------------

entity tb_volume_led is
end tb_volume_led;

architecture Behavioral of tb_volume_led is

	------------------ CONSTANT DECLARATION -------------------------

	--------- Timing -----------
	constant	CLK_PERIOD 	:	TIME	:= 10 ns;
	constant	RESET_WND	:	TIME	:= 10*CLK_PERIOD;
	----------------------------

	--- TB Initialiazzations ---
	constant	TB_CLK_INIT		:	STD_LOGIC	:= '0';
	constant	TB_RESET_INIT 	:	STD_LOGIC	:= '1';
	----------------------------


	------- DUT Generics -------
  constant DUT_VOLUME_BITS    : POSITIVE := 4;
  constant DUT_MIN_VOLUME     : INTEGER  := 0;
  constant DUT_MAX_VOLUME     : POSITIVE := 15;
  constant DUT_DEFAULT_VOLUME : POSITIVE := 7;
	----------------------------

	---------- OTHERS ----------

	----------------------------

	-----------------------------------------------------------------

	------------------------ TYPES DECLARATION ----------------------

	--------- SECTION ----------

	----------------------------

	-----------------------------------------------------------------


	------ COMPONENT DECLARATION for the Device Under Test (DUT) ------

	-------- First DUT ---------
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
	----------------------------
	------------------------------------------------------------------




	--------------------- SIGNALS DECLARATION -----------------------


	------- Clock/Reset  -------
	signal	reset	:	STD_LOGIC	:= TB_RESET_INIT;
	signal	clk		:	STD_LOGIC	:= TB_CLK_INIT;
	signal  resetn : std_logic := not reset;
	----------------------------

	----- First DUT Signals ----
  signal dut_btn_up   : std_logic := '0';
  signal dut_btn_down : std_logic := '0';

  signal dut_volume   : std_logic_vector(DUT_VOLUME_BITS-1 downto 0);
  signal dut_led_out  : std_logic_vector(15 downto 0);
	----------------------------


	----- OTHER Signals -------

	----------------------------

	----------------------------------------------------------------


begin




	--------------------- COMPONENTS DUT WRAPPING --------------------

	-------- First DUT ---------
  vlm_ctrl_led : volume_led_ctrl

  Generic map(
              VOLUME_BITS => DUT_VOLUME_BITS,
              MIN_VOLUME  => DUT_MIN_VOLUME,
              MAX_VOLUME  => DUT_MAX_VOLUME,
              DEFAULT_VOLUME => DUT_DEFAULT_VOLUME

  )
  Port Map (
            aclk => clk,
            aresetn => resetn,

            btn_up => dut_btn_up,
            btn_down    => dut_btn_down,

            volume => dut_volume,
            led_out => dut_led_out
  );
	----------------------------

	-------------------------------------------------------------------


	--------------------- TEST BENCH DATA FLOW  -----------------------

	---------- clock ----------
	clk<= not clk after  CLK_PERIOD/2;
	resetn <= not reset;
	----------------------------

	--------- SECTION ----------
	-- NONE
	----------------------------

	-------------------------------------------------------------------


	---------------------- TEST BENCH PROCESS -------------------------


	----- Reset Process --------
	reset_wave :process
	begin
		reset <= TB_RESET_INIT;
		wait for RESET_WND;

		reset <= not reset;
		wait;
    end process;
	----------------------------


  --  ------ Stimulus process -------

    stim_proc: process
    begin
		-- waiting the reset wave
		wait for RESET_WND;


		-- Start


        -- Stop
		wait;




      wait;
    end process;
	-- ----------------------------

  -- proc2: process
  --
	-- begin
  --
	-- 	for I in 0 to N_DATA_TO_SEND-1 loop
	-- 		wait for RESET_WND;
	-- 		wait until rising_edge(clk);
	-- 		wait until rising_edge(clk);
	-- 		dut_s_axis_tdata <= std_logic_vector(to_signed(I*16*k,dut_s_axis_tdata'length));
	-- 		dut_s_axis_tvalid <= '1';
	-- 		--counter <= counter + 1;
	-- 		--if counter = 1 then
	-- 		 k <= -k;
	-- 		 --counter <= (others=>'0');
	-- 		--end if;
  --     dut_s_axis_tlast <= not dut_s_axis_tlast;
  --
	-- 		if dut_s_axis_tready = '1' then
	-- 			wait until rising_edge(clk);
	-- 			dut_s_axis_tvalid <= '0';
	-- 		else
	-- 			wait until dut_s_axis_tready = '1';
	-- 			dut_s_axis_tvalid <= '0';
	-- 		end if;
	-- 	end loop;
  --
  --
	-- 	wait;
	-- end process;

	-------------------------------------------------------------------


end;
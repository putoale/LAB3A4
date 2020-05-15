
--  ############ Insert Only the Usefor Sections ################

---------- DEFAULT LIBRARY ---------
library IEEE;
	use IEEE.STD_LOGIC_1164.all;
	use IEEE.NUMERIC_STD.ALL;
	use IEEE.MATH_REAL.all;
------------------------------------

entity tb_mov_avg is
end tb_mov_avg;

architecture Behavioral of tb_mov_avg is

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
  constant DUT_MEAN_AV_WIDTH2   : positive := 2;
  constant DUT_DATA_WIDTH : positive := 16;
	----------------------------

	---------- OTHERS ----------
  constant N_DATA_TO_SEND : positive := 32;
	----------------------------

	-----------------------------------------------------------------

	------------------------ TYPES DECLARATION ----------------------

	--------- SECTION ----------

	----------------------------

	-----------------------------------------------------------------


	------ COMPONENT DECLARATION for the Device Under Test (DUT) ------

	-------- First DUT ---------
  component moving_avarage is
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
	signal dut_m_axis_tready : std_logic:='1';
    signal dut_m_axis_tvalid : std_logic;
      signal dut_m_axis_tdata  : std_logic_vector (DUT_DATA_WIDTH-1 downto 0);
      signal dut_m_axis_tlast  : std_logic;
    
      signal dut_s_axis_tready : std_logic;
      signal dut_s_axis_tvalid : std_logic;
      signal dut_s_axis_tdata  : std_logic_vector (DUT_DATA_WIDTH-1 downto 0);
      signal dut_s_axis_tlast  : std_logic := '1';

     signal dut_sw_in : std_logic :='1';
     
     signal k : integer := 1;
     signal counter : unsigned(1 downto 0) := (others=>'0');
	----------------------------


	----- OTHER Signals -------
	-- NONE
	----------------------------

	----------------------------------------------------------------


begin




	--------------------- COMPONENTS DUT WRAPPING --------------------

	-------- First DUT ---------
  dut_mov_avg : moving_avarage
  Generic Map (
                MEAN_AV_WIDTH2   => DUT_MEAN_AV_WIDTH2,
                DATA_WIDTH => DUT_DATA_WIDTH
  )
  Port Map(
            clk     => clk,
            aresetn => resetn,
            sw_in   => dut_sw_in,

            s_axis_tvalid => dut_s_axis_tvalid,
            s_axis_tready => dut_s_axis_tready,
            s_axis_tdata  => dut_s_axis_tdata,
            s_axis_tlast  => dut_s_axis_tlast,

            m_axis_tvalid => dut_m_axis_tvalid,
            m_axis_tready => dut_m_axis_tready,
            m_axis_tdata  => dut_m_axis_tdata,
            m_axis_tlast  => dut_m_axis_tlast
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
  --
  --   stim_proc: process
  --   begin
	-- 	-- waiting the reset wave
	-- 	wait for RESET_WND;
  --
  --
	-- 	-- Start
  --
  --
  --       -- Stop
	-- 	wait;
  --
  --
  --
  --
  --     wait;
  --   end process;
	-- ----------------------------

  proc2: process

	begin

		for I in 0 to N_DATA_TO_SEND-1 loop
			wait for RESET_WND;
			wait until rising_edge(clk);
			wait until rising_edge(clk);
			dut_s_axis_tdata <= std_logic_vector(to_signed(I*16*k,dut_s_axis_tdata'length));
			dut_s_axis_tvalid <= '1';
			counter<=counter+1;
			if counter=1 then
			 k<=-k;
			 counter<=(others=>'0');
			end if;
            dut_s_axis_tlast <= not dut_s_axis_tlast;

			if dut_s_axis_tready = '1' then
				wait until rising_edge(clk);
				dut_s_axis_tvalid <= '0';
			else
				wait until dut_s_axis_tready = '1';
				dut_s_axis_tvalid <= '0';
			end if;
		end loop;


		wait;
	end process;

	-------------------------------------------------------------------


end;

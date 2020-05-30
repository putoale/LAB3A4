
---------- DEFAULT LIBRARY ---------
library IEEE;
	use IEEE.STD_LOGIC_1164.all;
	use IEEE.NUMERIC_STD.ALL;
	use IEEE.MATH_REAL.all;
------------------------------------

entity tb_vol_control is
end tb_vol_control;

architecture Behavioral of tb_vol_control is

	constant period         : TIME     :=1 ns;
  constant DATA_WIDTH     : POSITIVE := 16;

  constant VOLUME_BITS    : POSITIVE := 4;
  constant MIN_VOLUME     : INTEGER  := 0;
  constant MAX_VOLUME     : POSITIVE := 15;
  constant DEFAULT_VOLUME : POSITIVE := 7;
	-----------------------------------


	--------- DUT COMPONENT-----------
  component volume_controller is
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
  end component;
	----------------------------


  signal aclk    :  std_logic:='1';
  signal aresetn :  std_logic:='1';

  signal volume_up     :  std_logic:='0';
  signal volume_down   :  std_logic:='0';

  signal s_axis_tvalid :  std_logic:='0';
  signal s_axis_tready :  std_logic:='0';
  signal s_axis_tdata  :  std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s_axis_tlast  :  std_logic:='0';

  signal m_axis_tvalid :  std_logic;
  signal m_axis_tready :  std_logic:='1';
  signal m_axis_tdata  :  std_logic_vector(DATA_WIDTH-1 downto 0);
  signal m_axis_tlast  :  std_logic;

  signal volume_level  :  std_logic_vector (15 downto 0);


  type signal_input is array (0 to 8) of std_logic_vector(DATA_WIDTH-1 downto 0);

  -- signal inputs : signal_input:=(std_logic_vector(to_signed(10,DATA_WIDTH)),
	-- std_logic_vector(to_signed(-10,DATA_WIDTH)),
	-- std_logic_vector(to_signed(120,DATA_WIDTH)),
	-- std_logic_vector(to_signed(-120,DATA_WIDTH)),
	-- std_logic_vector(to_signed(40,DATA_WIDTH)),
	-- std_logic_vector(to_signed(80,DATA_WIDTH)),
	-- std_logic_vector(to_signed(40,DATA_WIDTH)),
	-- std_logic_vector(to_signed(30,DATA_WIDTH)),
	-- std_logic_vector(to_signed(-84,DATA_WIDTH)));

	signal inputs : signal_input:=(std_logic_vector(to_signed(10,DATA_WIDTH)),
	std_logic_vector(to_signed(-10487,DATA_WIDTH)),
	std_logic_vector(to_signed(-10487,DATA_WIDTH)),
	std_logic_vector(to_signed(-10487,DATA_WIDTH)),
	std_logic_vector(to_signed(-10487,DATA_WIDTH)),
	std_logic_vector(to_signed(-10487,DATA_WIDTH)),
	std_logic_vector(to_signed(-10487,DATA_WIDTH)),
	std_logic_vector(to_signed(-10487,DATA_WIDTH)),
	std_logic_vector(to_signed(-10487,DATA_WIDTH)));


begin


	dut_volume_controller : volume_controller
		generic map(
      DATA_WIDTH     =>DATA_WIDTH,

      VOLUME_BITS    =>VOLUME_BITS,
      MIN_VOLUME     =>MIN_VOLUME,
      MAX_VOLUME     =>MAX_VOLUME,
      DEFAULT_VOLUME =>DEFAULT_VOLUME
		)
		port map (
     aclk      =>aclk,
     aresetn   =>aresetn,

     volume_up     =>volume_up,
     volume_down   =>volume_down,

     s_axis_tvalid =>s_axis_tvalid,
     s_axis_tready =>s_axis_tready,
     s_axis_tdata  =>s_axis_tdata,
     s_axis_tlast  =>s_axis_tlast,

     m_axis_tvalid =>m_axis_tvalid,
     m_axis_tready =>m_axis_tready,
     m_axis_tdata  =>m_axis_tdata,
     m_axis_tlast  =>m_axis_tlast,

    volume_level   =>volume_level

		);

    aclk<=not aclk after period/2;

	dut_vol_controller : process
	begin
    wait until rising_edge(aclk);
    aresetn<='0';
    wait until rising_edge(aclk);
    aresetn<='1';
    volume_up<='0';
    volume_down<='0';
    wait until rising_edge(aclk);

    for  i in 0 to 8 loop
      s_axis_tvalid<='1';
      s_axis_tdata<=inputs(i);

      if (i/2)*2/=(i*2)/2 then
        s_axis_tlast<='1';
      else
        s_axis_tlast<='0';
      end if;
      wait until rising_edge(aclk);
      wait until m_axis_tvalid='1';
      if i<3 then
        volume_up<='1';
        volume_down<='0';
      else
        volume_up<='0';
        volume_down<='1';
      end if;
      s_axis_tvalid<='0';
      s_axis_tlast<='0';
      wait until rising_edge(aclk);
      volume_up<='0';
      volume_down<='0';

    end loop;





		wait;

	end process;
end;

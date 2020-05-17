--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Sun May 17 22:38:21 2020
--Host        : DESKTOP-O39JAIK running 64-bit major release  (build 9200)
--Command     : generate_target top_bd_1.bd
--Design      : top_bd_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_bd_1 is
  port (
    reset : in STD_LOGIC;
    sw_in_0 : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of top_bd_1 : entity is "top_bd_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top_bd_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=6,numReposBlks=6,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of top_bd_1 : entity is "top_bd_1.hwdef";
end top_bd_1;

architecture STRUCTURE of top_bd_1 is
  component top_bd_1_AXI4Stream_UART_0_0 is
  port (
    clk_uart : in STD_LOGIC;
    rst : in STD_LOGIC;
    UART_TX : out STD_LOGIC;
    UART_RX : in STD_LOGIC;
    m00_axis_rx_aclk : in STD_LOGIC;
    m00_axis_rx_aresetn : in STD_LOGIC;
    m00_axis_rx_tvalid : out STD_LOGIC;
    m00_axis_rx_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axis_rx_tready : in STD_LOGIC;
    s00_axis_tx_aclk : in STD_LOGIC;
    s00_axis_tx_aresetn : in STD_LOGIC;
    s00_axis_tx_tready : out STD_LOGIC;
    s00_axis_tx_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axis_tx_tvalid : in STD_LOGIC
  );
  end component top_bd_1_AXI4Stream_UART_0_0;
  component top_bd_1_depacketizer_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
  end component top_bd_1_depacketizer_0_0;
  component top_bd_1_packetizer_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tready : in STD_LOGIC
  );
  end component top_bd_1_packetizer_0_0;
  component top_bd_1_clk_wiz_0_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component top_bd_1_clk_wiz_0_0;
  component top_bd_1_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Res : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component top_bd_1_util_vector_logic_0_0;
  component top_bd_1_moving_avarage_0_0 is
  port (
    clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    sw_in : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
  end component top_bd_1_moving_avarage_0_0;
  signal AXI4Stream_UART_0_M00_AXIS_RX_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal AXI4Stream_UART_0_M00_AXIS_RX_TREADY : STD_LOGIC;
  signal AXI4Stream_UART_0_M00_AXIS_RX_TVALID : STD_LOGIC;
  signal AXI4Stream_UART_0_UART_RxD : STD_LOGIC;
  signal AXI4Stream_UART_0_UART_TxD : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_clk_out2 : STD_LOGIC;
  signal depacketizer_0_m_axis_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal depacketizer_0_m_axis_TLAST : STD_LOGIC;
  signal depacketizer_0_m_axis_TREADY : STD_LOGIC;
  signal depacketizer_0_m_axis_TVALID : STD_LOGIC;
  signal moving_avarage_0_m_axis_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal moving_avarage_0_m_axis_TLAST : STD_LOGIC;
  signal moving_avarage_0_m_axis_TREADY : STD_LOGIC;
  signal moving_avarage_0_m_axis_TVALID : STD_LOGIC;
  signal packetizer_0_m_axis_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal packetizer_0_m_axis_TREADY : STD_LOGIC;
  signal packetizer_0_m_axis_TVALID : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
  signal sw_in_0_1 : STD_LOGIC;
  signal sys_clock_1 : STD_LOGIC;
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_clk_wiz_0_locked_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of sys_clock : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK";
  attribute X_INTERFACE_PARAMETER of sys_clock : signal is "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN top_bd_1_sys_clock, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of usb_uart_rxd : signal is "xilinx.com:interface:uart:1.0 usb_uart RxD";
  attribute X_INTERFACE_INFO of usb_uart_txd : signal is "xilinx.com:interface:uart:1.0 usb_uart TxD";
begin
  AXI4Stream_UART_0_UART_RxD <= usb_uart_rxd;
  reset_1 <= reset;
  sw_in_0_1 <= sw_in_0;
  sys_clock_1 <= sys_clock;
  usb_uart_txd <= AXI4Stream_UART_0_UART_TxD;
AXI4Stream_UART_0: component top_bd_1_AXI4Stream_UART_0_0
     port map (
      UART_RX => AXI4Stream_UART_0_UART_RxD,
      UART_TX => AXI4Stream_UART_0_UART_TxD,
      clk_uart => clk_wiz_0_clk_out1,
      m00_axis_rx_aclk => clk_wiz_0_clk_out2,
      m00_axis_rx_aresetn => util_vector_logic_0_Res(0),
      m00_axis_rx_tdata(7 downto 0) => AXI4Stream_UART_0_M00_AXIS_RX_TDATA(7 downto 0),
      m00_axis_rx_tready => AXI4Stream_UART_0_M00_AXIS_RX_TREADY,
      m00_axis_rx_tvalid => AXI4Stream_UART_0_M00_AXIS_RX_TVALID,
      rst => reset_1,
      s00_axis_tx_aclk => clk_wiz_0_clk_out2,
      s00_axis_tx_aresetn => util_vector_logic_0_Res(0),
      s00_axis_tx_tdata(7 downto 0) => packetizer_0_m_axis_TDATA(7 downto 0),
      s00_axis_tx_tready => packetizer_0_m_axis_TREADY,
      s00_axis_tx_tvalid => packetizer_0_m_axis_TVALID
    );
clk_wiz_0: component top_bd_1_clk_wiz_0_0
     port map (
      clk_in1 => sys_clock_1,
      clk_out1 => clk_wiz_0_clk_out1,
      clk_out2 => clk_wiz_0_clk_out2,
      locked => NLW_clk_wiz_0_locked_UNCONNECTED,
      reset => reset_1
    );
depacketizer_0: component top_bd_1_depacketizer_0_0
     port map (
      aclk => clk_wiz_0_clk_out2,
      aresetn => util_vector_logic_0_Res(0),
      m_axis_tdata(15 downto 0) => depacketizer_0_m_axis_TDATA(15 downto 0),
      m_axis_tlast => depacketizer_0_m_axis_TLAST,
      m_axis_tready => depacketizer_0_m_axis_TREADY,
      m_axis_tvalid => depacketizer_0_m_axis_TVALID,
      s_axis_tdata(7 downto 0) => AXI4Stream_UART_0_M00_AXIS_RX_TDATA(7 downto 0),
      s_axis_tready => AXI4Stream_UART_0_M00_AXIS_RX_TREADY,
      s_axis_tvalid => AXI4Stream_UART_0_M00_AXIS_RX_TVALID
    );
moving_avarage_0: component top_bd_1_moving_avarage_0_0
     port map (
      aresetn => util_vector_logic_0_Res(0),
      clk => clk_wiz_0_clk_out2,
      m_axis_tdata(15 downto 0) => moving_avarage_0_m_axis_TDATA(15 downto 0),
      m_axis_tlast => moving_avarage_0_m_axis_TLAST,
      m_axis_tready => moving_avarage_0_m_axis_TREADY,
      m_axis_tvalid => moving_avarage_0_m_axis_TVALID,
      s_axis_tdata(15 downto 0) => depacketizer_0_m_axis_TDATA(15 downto 0),
      s_axis_tlast => depacketizer_0_m_axis_TLAST,
      s_axis_tready => depacketizer_0_m_axis_TREADY,
      s_axis_tvalid => depacketizer_0_m_axis_TVALID,
      sw_in => sw_in_0_1
    );
packetizer_0: component top_bd_1_packetizer_0_0
     port map (
      aclk => clk_wiz_0_clk_out2,
      aresetn => util_vector_logic_0_Res(0),
      m_axis_tdata(7 downto 0) => packetizer_0_m_axis_TDATA(7 downto 0),
      m_axis_tready => packetizer_0_m_axis_TREADY,
      m_axis_tvalid => packetizer_0_m_axis_TVALID,
      s_axis_tdata(15 downto 0) => moving_avarage_0_m_axis_TDATA(15 downto 0),
      s_axis_tlast => moving_avarage_0_m_axis_TLAST,
      s_axis_tready => moving_avarage_0_m_axis_TREADY,
      s_axis_tvalid => moving_avarage_0_m_axis_TVALID
    );
util_vector_logic_0: component top_bd_1_util_vector_logic_0_0
     port map (
      Op1(7) => reset_1,
      Op1(6) => reset_1,
      Op1(5) => reset_1,
      Op1(4) => reset_1,
      Op1(3) => reset_1,
      Op1(2) => reset_1,
      Op1(1) => reset_1,
      Op1(0) => reset_1,
      Res(7 downto 0) => util_vector_logic_0_Res(7 downto 0)
    );
end STRUCTURE;

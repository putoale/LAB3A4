-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun May 24 18:50:15 2020
-- Host        : DESKTOP-C0MMM6H running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/gallu/Documents/GitHub/LAB3A4/Sources/BD/bd_mov_av_v2/ip/bd_mov_av_v2_edge_detector_0_0/bd_mov_av_v2_edge_detector_0_0_sim_netlist.vhdl
-- Design      : bd_mov_av_v2_edge_detector_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_mov_av_v2_edge_detector_0_0_edge_detector is
  port (
    edge_detected : out STD_LOGIC;
    input_signal : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_mov_av_v2_edge_detector_0_0_edge_detector : entity is "edge_detector";
end bd_mov_av_v2_edge_detector_0_0_edge_detector;

architecture STRUCTURE of bd_mov_av_v2_edge_detector_0_0_edge_detector is
  signal edge_detected_i_1_n_0 : STD_LOGIC;
  signal input_signal_previous : STD_LOGIC;
begin
edge_detected_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => input_signal,
      I1 => input_signal_previous,
      O => edge_detected_i_1_n_0
    );
edge_detected_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => edge_detected_i_1_n_0,
      Q => edge_detected
    );
input_signal_previous_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => input_signal,
      Q => input_signal_previous
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_mov_av_v2_edge_detector_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    input_signal : in STD_LOGIC;
    edge_detected : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_mov_av_v2_edge_detector_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_mov_av_v2_edge_detector_0_0 : entity is "bd_mov_av_v2_edge_detector_0_0,edge_detector,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of bd_mov_av_v2_edge_detector_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of bd_mov_av_v2_edge_detector_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of bd_mov_av_v2_edge_detector_0_0 : entity is "edge_detector,Vivado 2019.2";
end bd_mov_av_v2_edge_detector_0_0;

architecture STRUCTURE of bd_mov_av_v2_edge_detector_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
U0: entity work.bd_mov_av_v2_edge_detector_0_0_edge_detector
     port map (
      clk => clk,
      edge_detected => edge_detected,
      input_signal => input_signal,
      reset => reset
    );
end STRUCTURE;

-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon May 18 22:00:26 2020
-- Host        : DESKTOP-O39JAIK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Vivado_DESD_Project/Project/Personal/Lab3_A4/LAB3A4/Sources/BD/bd_mov_av_v2/ip/bd_mov_av_v2_depacketizer_0_0/bd_mov_av_v2_depacketizer_0_0_stub.vhdl
-- Design      : bd_mov_av_v2_depacketizer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_mov_av_v2_depacketizer_0_0 is
  Port ( 
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

end bd_mov_av_v2_depacketizer_0_0;

architecture stub of bd_mov_av_v2_depacketizer_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axis_tvalid,s_axis_tdata[7:0],s_axis_tready,m_axis_tvalid,m_axis_tdata[15:0],m_axis_tlast,m_axis_tready";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "depacketizer,Vivado 2019.2";
begin
end;

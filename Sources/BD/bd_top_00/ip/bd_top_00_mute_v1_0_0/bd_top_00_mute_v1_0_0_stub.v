// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri May 29 21:59:57 2020
// Host        : DESKTOP-O39JAIK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Vivado_DESD_Project/Project/Personal/Lab3_A4/LAB3A4/Sources/BD/bd_top_00/ip/bd_top_00_mute_v1_0_0/bd_top_00_mute_v1_0_0_stub.v
// Design      : bd_top_00_mute_v1_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mute_v1,Vivado 2019.2" *)
module bd_top_00_mute_v1_0_0(clk, aresetn, mute_left, mute_right, 
  s_mute_tvalid, s_mute_tready, s_mute_tdata, s_mute_tlast, m_mute_tvalid, m_mute_tready, 
  m_mute_tdata, m_mute_tlast)
/* synthesis syn_black_box black_box_pad_pin="clk,aresetn,mute_left,mute_right,s_mute_tvalid,s_mute_tready,s_mute_tdata[15:0],s_mute_tlast,m_mute_tvalid,m_mute_tready,m_mute_tdata[15:0],m_mute_tlast" */;
  input clk;
  input aresetn;
  input mute_left;
  input mute_right;
  input s_mute_tvalid;
  output s_mute_tready;
  input [15:0]s_mute_tdata;
  input s_mute_tlast;
  output m_mute_tvalid;
  input m_mute_tready;
  output [15:0]m_mute_tdata;
  output m_mute_tlast;
endmodule

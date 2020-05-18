// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon May 18 22:00:26 2020
// Host        : DESKTOP-O39JAIK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Vivado_DESD_Project/Project/Personal/Lab3_A4/LAB3A4/Sources/BD/bd_mov_av_v2/ip/bd_mov_av_v2_depacketizer_0_0/bd_mov_av_v2_depacketizer_0_0_stub.v
// Design      : bd_mov_av_v2_depacketizer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "depacketizer,Vivado 2019.2" *)
module bd_mov_av_v2_depacketizer_0_0(aclk, aresetn, s_axis_tvalid, s_axis_tdata, 
  s_axis_tready, m_axis_tvalid, m_axis_tdata, m_axis_tlast, m_axis_tready)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_tvalid,s_axis_tdata[7:0],s_axis_tready,m_axis_tvalid,m_axis_tdata[15:0],m_axis_tlast,m_axis_tready" */;
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  input [7:0]s_axis_tdata;
  output s_axis_tready;
  output m_axis_tvalid;
  output [15:0]m_axis_tdata;
  output m_axis_tlast;
  input m_axis_tready;
endmodule

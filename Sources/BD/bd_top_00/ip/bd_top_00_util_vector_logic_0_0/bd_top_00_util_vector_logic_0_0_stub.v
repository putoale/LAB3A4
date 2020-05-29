// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri May 29 22:00:42 2020
// Host        : DESKTOP-O39JAIK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Vivado_DESD_Project/Project/Personal/Lab3_A4/LAB3A4/Sources/BD/bd_top_00/ip/bd_top_00_util_vector_logic_0_0/bd_top_00_util_vector_logic_0_0_stub.v
// Design      : bd_top_00_util_vector_logic_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.2" *)
module bd_top_00_util_vector_logic_0_0(Op1, Res)
/* synthesis syn_black_box black_box_pad_pin="Op1[7:0],Res[7:0]" */;
  input [7:0]Op1;
  output [7:0]Res;
endmodule

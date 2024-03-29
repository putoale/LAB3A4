// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon May 18 19:17:56 2020
// Host        : DESKTOP-O39JAIK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Vivado_DESD_Project/Project/Personal/Lab3_A4/LAB3A4/Sources/BD/top_bd_1/ip/top_bd_1_AXI4Stream_UART_0_0/top_bd_1_AXI4Stream_UART_0_0_stub.v
// Design      : top_bd_1_AXI4Stream_UART_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "AXI4Stream_UART_v1_0,Vivado 2019.2" *)
module top_bd_1_AXI4Stream_UART_0_0(clk_uart, rst, UART_TX, UART_RX, 
  m00_axis_rx_aclk, m00_axis_rx_aresetn, m00_axis_rx_tvalid, m00_axis_rx_tdata, 
  m00_axis_rx_tready, s00_axis_tx_aclk, s00_axis_tx_aresetn, s00_axis_tx_tready, 
  s00_axis_tx_tdata, s00_axis_tx_tvalid)
/* synthesis syn_black_box black_box_pad_pin="clk_uart,rst,UART_TX,UART_RX,m00_axis_rx_aclk,m00_axis_rx_aresetn,m00_axis_rx_tvalid,m00_axis_rx_tdata[7:0],m00_axis_rx_tready,s00_axis_tx_aclk,s00_axis_tx_aresetn,s00_axis_tx_tready,s00_axis_tx_tdata[7:0],s00_axis_tx_tvalid" */;
  input clk_uart;
  input rst;
  output UART_TX;
  input UART_RX;
  input m00_axis_rx_aclk;
  input m00_axis_rx_aresetn;
  output m00_axis_rx_tvalid;
  output [7:0]m00_axis_rx_tdata;
  input m00_axis_rx_tready;
  input s00_axis_tx_aclk;
  input s00_axis_tx_aresetn;
  output s00_axis_tx_tready;
  input [7:0]s00_axis_tx_tdata;
  input s00_axis_tx_tvalid;
endmodule

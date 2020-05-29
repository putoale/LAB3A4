// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun May 24 18:47:51 2020
// Host        : DESKTOP-C0MMM6H running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/gallu/Documents/GitHub/LAB3A4/Sources/BD/top_bd_1/ip/top_bd_1_moving_average_0_0/top_bd_1_moving_average_0_0_sim_netlist.v
// Design      : top_bd_1_moving_average_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_bd_1_moving_average_0_0,moving_average,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "moving_average,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module top_bd_1_moving_average_0_0
   (clk,
    aresetn,
    sw_in,
    s_axis_tvalid,
    s_axis_tdata,
    s_axis_tlast,
    s_axis_tready,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 248958333, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input sw_in;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 248958333, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [15:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 248958333, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [15:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;

  wire aresetn;
  wire clk;
  wire [15:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [15:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire sw_in;

  top_bd_1_moving_average_0_0_moving_average U0
       (.aresetn(aresetn),
        .clk(clk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .sw_in(sw_in));
endmodule

(* ORIG_REF_NAME = "moving_average" *) 
module top_bd_1_moving_average_0_0_moving_average
   (m_axis_tdata,
    m_axis_tlast,
    m_axis_tvalid,
    s_axis_tready,
    clk,
    s_axis_tdata,
    aresetn,
    m_axis_tready,
    s_axis_tvalid,
    s_axis_tlast,
    sw_in);
  output [15:0]m_axis_tdata;
  output m_axis_tlast;
  output m_axis_tvalid;
  output s_axis_tready;
  input clk;
  input [15:0]s_axis_tdata;
  input aresetn;
  input m_axis_tready;
  input s_axis_tvalid;
  input s_axis_tlast;
  input sw_in;

  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire _carry__0_i_1_n_0;
  wire _carry__0_i_2_n_0;
  wire _carry__0_i_3_n_0;
  wire _carry__0_i_4_n_0;
  wire _carry__0_n_0;
  wire _carry__0_n_1;
  wire _carry__0_n_2;
  wire _carry__0_n_3;
  wire _carry__1_i_1_n_0;
  wire _carry__1_i_2_n_0;
  wire _carry__1_i_3_n_0;
  wire _carry__1_i_4_n_0;
  wire _carry__1_n_0;
  wire _carry__1_n_1;
  wire _carry__1_n_2;
  wire _carry__1_n_3;
  wire _carry__2_i_1_n_0;
  wire _carry__2_i_2_n_0;
  wire _carry__2_i_3_n_0;
  wire _carry__2_i_4_n_0;
  wire _carry__2_n_0;
  wire _carry__2_n_1;
  wire _carry__2_n_2;
  wire _carry__2_n_3;
  wire _carry__3_i_1_n_0;
  wire _carry_i_1_n_0;
  wire _carry_i_2_n_0;
  wire _carry_i_3_n_0;
  wire _carry_i_4_n_0;
  wire _carry_n_0;
  wire _carry_n_1;
  wire _carry_n_2;
  wire _carry_n_3;
  wire aresetn;
  wire clk;
  wire [15:0]data_in;
  wire data_out0;
  wire data_out0__54_carry__0_i_1_n_0;
  wire data_out0__54_carry__0_i_2_n_0;
  wire data_out0__54_carry__0_i_3_n_0;
  wire data_out0__54_carry__0_i_4_n_0;
  wire data_out0__54_carry__0_n_0;
  wire data_out0__54_carry__0_n_1;
  wire data_out0__54_carry__0_n_2;
  wire data_out0__54_carry__0_n_3;
  wire data_out0__54_carry__0_n_4;
  wire data_out0__54_carry__0_n_5;
  wire data_out0__54_carry__0_n_6;
  wire data_out0__54_carry__1_i_1_n_0;
  wire data_out0__54_carry__1_i_2_n_0;
  wire data_out0__54_carry__1_i_3_n_0;
  wire data_out0__54_carry__1_i_4_n_0;
  wire data_out0__54_carry__1_n_0;
  wire data_out0__54_carry__1_n_1;
  wire data_out0__54_carry__1_n_2;
  wire data_out0__54_carry__1_n_3;
  wire data_out0__54_carry__1_n_4;
  wire data_out0__54_carry__1_n_5;
  wire data_out0__54_carry__1_n_6;
  wire data_out0__54_carry__1_n_7;
  wire data_out0__54_carry__2_i_1_n_0;
  wire data_out0__54_carry__2_i_2_n_0;
  wire data_out0__54_carry__2_i_3_n_0;
  wire data_out0__54_carry__2_i_4_n_0;
  wire data_out0__54_carry__2_n_0;
  wire data_out0__54_carry__2_n_1;
  wire data_out0__54_carry__2_n_2;
  wire data_out0__54_carry__2_n_3;
  wire data_out0__54_carry__2_n_4;
  wire data_out0__54_carry__2_n_5;
  wire data_out0__54_carry__2_n_6;
  wire data_out0__54_carry__2_n_7;
  wire data_out0__54_carry__3_i_1_n_0;
  wire data_out0__54_carry__3_i_2_n_0;
  wire data_out0__54_carry__3_i_3_n_0;
  wire data_out0__54_carry__3_i_4_n_0;
  wire data_out0__54_carry__3_i_5_n_0;
  wire data_out0__54_carry__3_n_0;
  wire data_out0__54_carry__3_n_1;
  wire data_out0__54_carry__3_n_2;
  wire data_out0__54_carry__3_n_3;
  wire data_out0__54_carry__3_n_4;
  wire data_out0__54_carry__3_n_5;
  wire data_out0__54_carry__3_n_6;
  wire data_out0__54_carry__3_n_7;
  wire data_out0__54_carry__4_i_1_n_0;
  wire data_out0__54_carry__4_n_7;
  wire data_out0__54_carry_i_1_n_0;
  wire data_out0__54_carry_i_2_n_0;
  wire data_out0__54_carry_i_3_n_0;
  wire data_out0__54_carry_i_4_n_0;
  wire data_out0__54_carry_n_0;
  wire data_out0__54_carry_n_1;
  wire data_out0__54_carry_n_2;
  wire data_out0__54_carry_n_3;
  wire data_out0_carry__0_i_1_n_0;
  wire data_out0_carry__0_i_2_n_0;
  wire data_out0_carry__0_i_3_n_0;
  wire data_out0_carry__0_i_4_n_0;
  wire data_out0_carry__0_n_0;
  wire data_out0_carry__0_n_1;
  wire data_out0_carry__0_n_2;
  wire data_out0_carry__0_n_3;
  wire data_out0_carry__0_n_4;
  wire data_out0_carry__0_n_5;
  wire data_out0_carry__0_n_6;
  wire data_out0_carry__1_i_1_n_0;
  wire data_out0_carry__1_i_2_n_0;
  wire data_out0_carry__1_i_3_n_0;
  wire data_out0_carry__1_i_4_n_0;
  wire data_out0_carry__1_n_0;
  wire data_out0_carry__1_n_1;
  wire data_out0_carry__1_n_2;
  wire data_out0_carry__1_n_3;
  wire data_out0_carry__1_n_4;
  wire data_out0_carry__1_n_5;
  wire data_out0_carry__1_n_6;
  wire data_out0_carry__1_n_7;
  wire data_out0_carry__2_i_1_n_0;
  wire data_out0_carry__2_i_2_n_0;
  wire data_out0_carry__2_i_3_n_0;
  wire data_out0_carry__2_i_4_n_0;
  wire data_out0_carry__2_n_0;
  wire data_out0_carry__2_n_1;
  wire data_out0_carry__2_n_2;
  wire data_out0_carry__2_n_3;
  wire data_out0_carry__2_n_4;
  wire data_out0_carry__2_n_5;
  wire data_out0_carry__2_n_6;
  wire data_out0_carry__2_n_7;
  wire data_out0_carry__3_i_1_n_0;
  wire data_out0_carry__3_i_2_n_0;
  wire data_out0_carry__3_i_3_n_0;
  wire data_out0_carry__3_i_4_n_0;
  wire data_out0_carry__3_i_5_n_0;
  wire data_out0_carry__3_n_0;
  wire data_out0_carry__3_n_1;
  wire data_out0_carry__3_n_2;
  wire data_out0_carry__3_n_3;
  wire data_out0_carry__3_n_4;
  wire data_out0_carry__3_n_5;
  wire data_out0_carry__3_n_6;
  wire data_out0_carry__3_n_7;
  wire data_out0_carry__4_i_1_n_0;
  wire data_out0_carry__4_n_7;
  wire data_out0_carry_i_1_n_0;
  wire data_out0_carry_i_2_n_0;
  wire data_out0_carry_i_3_n_0;
  wire data_out0_carry_i_4_n_0;
  wire data_out0_carry_n_0;
  wire data_out0_carry_n_1;
  wire data_out0_carry_n_2;
  wire data_out0_carry_n_3;
  wire \data_out[0]_i_1_n_0 ;
  wire \data_out[10]_i_1_n_0 ;
  wire \data_out[11]_i_1_n_0 ;
  wire \data_out[12]_i_1_n_0 ;
  wire \data_out[13]_i_1_n_0 ;
  wire \data_out[14]_i_1_n_0 ;
  wire \data_out[15]_i_2_n_0 ;
  wire \data_out[1]_i_1_n_0 ;
  wire \data_out[2]_i_1_n_0 ;
  wire \data_out[3]_i_1_n_0 ;
  wire \data_out[4]_i_1_n_0 ;
  wire \data_out[5]_i_1_n_0 ;
  wire \data_out[6]_i_1_n_0 ;
  wire \data_out[7]_i_1_n_0 ;
  wire \data_out[8]_i_1_n_0 ;
  wire \data_out[9]_i_1_n_0 ;
  wire last_sum_dx;
  wire \last_sum_dx[0]_i_3_n_0 ;
  wire \last_sum_dx[0]_i_4_n_0 ;
  wire \last_sum_dx[0]_i_5_n_0 ;
  wire \last_sum_dx[0]_i_6_n_0 ;
  wire \last_sum_dx[12]_i_2_n_0 ;
  wire \last_sum_dx[12]_i_3_n_0 ;
  wire \last_sum_dx[12]_i_4_n_0 ;
  wire \last_sum_dx[12]_i_5_n_0 ;
  wire \last_sum_dx[16]_i_2_n_0 ;
  wire \last_sum_dx[16]_i_3_n_0 ;
  wire \last_sum_dx[16]_i_4_n_0 ;
  wire \last_sum_dx[16]_i_5_n_0 ;
  wire \last_sum_dx[20]_i_2_n_0 ;
  wire \last_sum_dx[4]_i_2_n_0 ;
  wire \last_sum_dx[4]_i_3_n_0 ;
  wire \last_sum_dx[4]_i_4_n_0 ;
  wire \last_sum_dx[4]_i_5_n_0 ;
  wire \last_sum_dx[8]_i_2_n_0 ;
  wire \last_sum_dx[8]_i_3_n_0 ;
  wire \last_sum_dx[8]_i_4_n_0 ;
  wire \last_sum_dx[8]_i_5_n_0 ;
  wire [20:0]last_sum_dx_reg;
  wire \last_sum_dx_reg[0]_i_2_n_0 ;
  wire \last_sum_dx_reg[0]_i_2_n_1 ;
  wire \last_sum_dx_reg[0]_i_2_n_2 ;
  wire \last_sum_dx_reg[0]_i_2_n_3 ;
  wire \last_sum_dx_reg[0]_i_2_n_4 ;
  wire \last_sum_dx_reg[0]_i_2_n_5 ;
  wire \last_sum_dx_reg[0]_i_2_n_6 ;
  wire \last_sum_dx_reg[0]_i_2_n_7 ;
  wire \last_sum_dx_reg[12]_i_1_n_0 ;
  wire \last_sum_dx_reg[12]_i_1_n_1 ;
  wire \last_sum_dx_reg[12]_i_1_n_2 ;
  wire \last_sum_dx_reg[12]_i_1_n_3 ;
  wire \last_sum_dx_reg[12]_i_1_n_4 ;
  wire \last_sum_dx_reg[12]_i_1_n_5 ;
  wire \last_sum_dx_reg[12]_i_1_n_6 ;
  wire \last_sum_dx_reg[12]_i_1_n_7 ;
  wire \last_sum_dx_reg[16]_i_1_n_0 ;
  wire \last_sum_dx_reg[16]_i_1_n_1 ;
  wire \last_sum_dx_reg[16]_i_1_n_2 ;
  wire \last_sum_dx_reg[16]_i_1_n_3 ;
  wire \last_sum_dx_reg[16]_i_1_n_4 ;
  wire \last_sum_dx_reg[16]_i_1_n_5 ;
  wire \last_sum_dx_reg[16]_i_1_n_6 ;
  wire \last_sum_dx_reg[16]_i_1_n_7 ;
  wire \last_sum_dx_reg[20]_i_1_n_7 ;
  wire \last_sum_dx_reg[4]_i_1_n_0 ;
  wire \last_sum_dx_reg[4]_i_1_n_1 ;
  wire \last_sum_dx_reg[4]_i_1_n_2 ;
  wire \last_sum_dx_reg[4]_i_1_n_3 ;
  wire \last_sum_dx_reg[4]_i_1_n_4 ;
  wire \last_sum_dx_reg[4]_i_1_n_5 ;
  wire \last_sum_dx_reg[4]_i_1_n_6 ;
  wire \last_sum_dx_reg[4]_i_1_n_7 ;
  wire \last_sum_dx_reg[8]_i_1_n_0 ;
  wire \last_sum_dx_reg[8]_i_1_n_1 ;
  wire \last_sum_dx_reg[8]_i_1_n_2 ;
  wire \last_sum_dx_reg[8]_i_1_n_3 ;
  wire \last_sum_dx_reg[8]_i_1_n_4 ;
  wire \last_sum_dx_reg[8]_i_1_n_5 ;
  wire \last_sum_dx_reg[8]_i_1_n_6 ;
  wire \last_sum_dx_reg[8]_i_1_n_7 ;
  wire last_sum_sx;
  wire \last_sum_sx[0]_i_3_n_0 ;
  wire \last_sum_sx[0]_i_4_n_0 ;
  wire \last_sum_sx[0]_i_5_n_0 ;
  wire \last_sum_sx[0]_i_6_n_0 ;
  wire \last_sum_sx[12]_i_2_n_0 ;
  wire \last_sum_sx[12]_i_3_n_0 ;
  wire \last_sum_sx[12]_i_4_n_0 ;
  wire \last_sum_sx[12]_i_5_n_0 ;
  wire \last_sum_sx[16]_i_2_n_0 ;
  wire \last_sum_sx[16]_i_3_n_0 ;
  wire \last_sum_sx[16]_i_4_n_0 ;
  wire \last_sum_sx[16]_i_5_n_0 ;
  wire \last_sum_sx[20]_i_2_n_0 ;
  wire \last_sum_sx[4]_i_2_n_0 ;
  wire \last_sum_sx[4]_i_3_n_0 ;
  wire \last_sum_sx[4]_i_4_n_0 ;
  wire \last_sum_sx[4]_i_5_n_0 ;
  wire \last_sum_sx[8]_i_2_n_0 ;
  wire \last_sum_sx[8]_i_3_n_0 ;
  wire \last_sum_sx[8]_i_4_n_0 ;
  wire \last_sum_sx[8]_i_5_n_0 ;
  wire [20:0]last_sum_sx_reg;
  wire \last_sum_sx_reg[0]_i_2_n_0 ;
  wire \last_sum_sx_reg[0]_i_2_n_1 ;
  wire \last_sum_sx_reg[0]_i_2_n_2 ;
  wire \last_sum_sx_reg[0]_i_2_n_3 ;
  wire \last_sum_sx_reg[0]_i_2_n_4 ;
  wire \last_sum_sx_reg[0]_i_2_n_5 ;
  wire \last_sum_sx_reg[0]_i_2_n_6 ;
  wire \last_sum_sx_reg[0]_i_2_n_7 ;
  wire \last_sum_sx_reg[12]_i_1_n_0 ;
  wire \last_sum_sx_reg[12]_i_1_n_1 ;
  wire \last_sum_sx_reg[12]_i_1_n_2 ;
  wire \last_sum_sx_reg[12]_i_1_n_3 ;
  wire \last_sum_sx_reg[12]_i_1_n_4 ;
  wire \last_sum_sx_reg[12]_i_1_n_5 ;
  wire \last_sum_sx_reg[12]_i_1_n_6 ;
  wire \last_sum_sx_reg[12]_i_1_n_7 ;
  wire \last_sum_sx_reg[16]_i_1_n_0 ;
  wire \last_sum_sx_reg[16]_i_1_n_1 ;
  wire \last_sum_sx_reg[16]_i_1_n_2 ;
  wire \last_sum_sx_reg[16]_i_1_n_3 ;
  wire \last_sum_sx_reg[16]_i_1_n_4 ;
  wire \last_sum_sx_reg[16]_i_1_n_5 ;
  wire \last_sum_sx_reg[16]_i_1_n_6 ;
  wire \last_sum_sx_reg[16]_i_1_n_7 ;
  wire \last_sum_sx_reg[20]_i_1_n_7 ;
  wire \last_sum_sx_reg[4]_i_1_n_0 ;
  wire \last_sum_sx_reg[4]_i_1_n_1 ;
  wire \last_sum_sx_reg[4]_i_1_n_2 ;
  wire \last_sum_sx_reg[4]_i_1_n_3 ;
  wire \last_sum_sx_reg[4]_i_1_n_4 ;
  wire \last_sum_sx_reg[4]_i_1_n_5 ;
  wire \last_sum_sx_reg[4]_i_1_n_6 ;
  wire \last_sum_sx_reg[4]_i_1_n_7 ;
  wire \last_sum_sx_reg[8]_i_1_n_0 ;
  wire \last_sum_sx_reg[8]_i_1_n_1 ;
  wire \last_sum_sx_reg[8]_i_1_n_2 ;
  wire \last_sum_sx_reg[8]_i_1_n_3 ;
  wire \last_sum_sx_reg[8]_i_1_n_4 ;
  wire \last_sum_sx_reg[8]_i_1_n_5 ;
  wire \last_sum_sx_reg[8]_i_1_n_6 ;
  wire \last_sum_sx_reg[8]_i_1_n_7 ;
  wire \last_values_dx[0]_1 ;
  wire \last_values_dx_reg[29][0]_srl30_U0_last_values_dx_reg_c_58_n_0 ;
  wire \last_values_dx_reg[29][10]_srl30_U0_last_values_dx_reg_c_58_n_0 ;
  wire \last_values_dx_reg[29][11]_srl30_U0_last_values_dx_reg_c_58_n_0 ;
  wire \last_values_dx_reg[29][12]_srl30_U0_last_values_dx_reg_c_58_n_0 ;
  wire \last_values_dx_reg[29][13]_srl30_U0_last_values_dx_reg_c_58_n_0 ;
  wire \last_values_dx_reg[29][14]_srl30_U0_last_values_dx_reg_c_58_n_0 ;
  wire \last_values_dx_reg[29][15]_srl30_U0_last_values_dx_reg_c_58_n_0 ;
  wire \last_values_dx_reg[29][1]_srl30_U0_last_values_dx_reg_c_58_n_0 ;
  wire \last_values_dx_reg[29][2]_srl30_U0_last_values_dx_reg_c_58_n_0 ;
  wire \last_values_dx_reg[29][3]_srl30_U0_last_values_dx_reg_c_58_n_0 ;
  wire \last_values_dx_reg[29][4]_srl30_U0_last_values_dx_reg_c_58_n_0 ;
  wire \last_values_dx_reg[29][5]_srl30_U0_last_values_dx_reg_c_58_n_0 ;
  wire \last_values_dx_reg[29][6]_srl30_U0_last_values_dx_reg_c_58_n_0 ;
  wire \last_values_dx_reg[29][7]_srl30_U0_last_values_dx_reg_c_58_n_0 ;
  wire \last_values_dx_reg[29][8]_srl30_U0_last_values_dx_reg_c_58_n_0 ;
  wire \last_values_dx_reg[29][9]_srl30_U0_last_values_dx_reg_c_58_n_0 ;
  wire \last_values_dx_reg[30][0]_U0_last_values_dx_reg_c_59_n_0 ;
  wire \last_values_dx_reg[30][10]_U0_last_values_dx_reg_c_59_n_0 ;
  wire \last_values_dx_reg[30][11]_U0_last_values_dx_reg_c_59_n_0 ;
  wire \last_values_dx_reg[30][12]_U0_last_values_dx_reg_c_59_n_0 ;
  wire \last_values_dx_reg[30][13]_U0_last_values_dx_reg_c_59_n_0 ;
  wire \last_values_dx_reg[30][14]_U0_last_values_dx_reg_c_59_n_0 ;
  wire \last_values_dx_reg[30][15]_U0_last_values_dx_reg_c_59_n_0 ;
  wire \last_values_dx_reg[30][1]_U0_last_values_dx_reg_c_59_n_0 ;
  wire \last_values_dx_reg[30][2]_U0_last_values_dx_reg_c_59_n_0 ;
  wire \last_values_dx_reg[30][3]_U0_last_values_dx_reg_c_59_n_0 ;
  wire \last_values_dx_reg[30][4]_U0_last_values_dx_reg_c_59_n_0 ;
  wire \last_values_dx_reg[30][5]_U0_last_values_dx_reg_c_59_n_0 ;
  wire \last_values_dx_reg[30][6]_U0_last_values_dx_reg_c_59_n_0 ;
  wire \last_values_dx_reg[30][7]_U0_last_values_dx_reg_c_59_n_0 ;
  wire \last_values_dx_reg[30][8]_U0_last_values_dx_reg_c_59_n_0 ;
  wire \last_values_dx_reg[30][9]_U0_last_values_dx_reg_c_59_n_0 ;
  wire [15:0]\last_values_dx_reg[31] ;
  wire last_values_dx_reg_c_30_n_0;
  wire last_values_dx_reg_c_31_n_0;
  wire last_values_dx_reg_c_32_n_0;
  wire last_values_dx_reg_c_33_n_0;
  wire last_values_dx_reg_c_34_n_0;
  wire last_values_dx_reg_c_35_n_0;
  wire last_values_dx_reg_c_36_n_0;
  wire last_values_dx_reg_c_37_n_0;
  wire last_values_dx_reg_c_38_n_0;
  wire last_values_dx_reg_c_39_n_0;
  wire last_values_dx_reg_c_40_n_0;
  wire last_values_dx_reg_c_41_n_0;
  wire last_values_dx_reg_c_42_n_0;
  wire last_values_dx_reg_c_43_n_0;
  wire last_values_dx_reg_c_44_n_0;
  wire last_values_dx_reg_c_45_n_0;
  wire last_values_dx_reg_c_46_n_0;
  wire last_values_dx_reg_c_47_n_0;
  wire last_values_dx_reg_c_48_n_0;
  wire last_values_dx_reg_c_49_n_0;
  wire last_values_dx_reg_c_50_n_0;
  wire last_values_dx_reg_c_51_n_0;
  wire last_values_dx_reg_c_52_n_0;
  wire last_values_dx_reg_c_53_n_0;
  wire last_values_dx_reg_c_54_n_0;
  wire last_values_dx_reg_c_55_n_0;
  wire last_values_dx_reg_c_56_n_0;
  wire last_values_dx_reg_c_57_n_0;
  wire last_values_dx_reg_c_58_n_0;
  wire last_values_dx_reg_c_59_n_0;
  wire last_values_dx_reg_c_n_0;
  wire last_values_dx_reg_gate__0_n_0;
  wire last_values_dx_reg_gate__10_n_0;
  wire last_values_dx_reg_gate__11_n_0;
  wire last_values_dx_reg_gate__12_n_0;
  wire last_values_dx_reg_gate__13_n_0;
  wire last_values_dx_reg_gate__14_n_0;
  wire last_values_dx_reg_gate__1_n_0;
  wire last_values_dx_reg_gate__2_n_0;
  wire last_values_dx_reg_gate__3_n_0;
  wire last_values_dx_reg_gate__4_n_0;
  wire last_values_dx_reg_gate__5_n_0;
  wire last_values_dx_reg_gate__6_n_0;
  wire last_values_dx_reg_gate__7_n_0;
  wire last_values_dx_reg_gate__8_n_0;
  wire last_values_dx_reg_gate__9_n_0;
  wire last_values_dx_reg_gate_n_0;
  wire \last_values_sx[0]_0 ;
  wire \last_values_sx_reg[29][0]_srl30_U0_last_values_sx_reg_c_28_n_0 ;
  wire \last_values_sx_reg[29][10]_srl30_U0_last_values_sx_reg_c_28_n_0 ;
  wire \last_values_sx_reg[29][11]_srl30_U0_last_values_sx_reg_c_28_n_0 ;
  wire \last_values_sx_reg[29][12]_srl30_U0_last_values_sx_reg_c_28_n_0 ;
  wire \last_values_sx_reg[29][13]_srl30_U0_last_values_sx_reg_c_28_n_0 ;
  wire \last_values_sx_reg[29][14]_srl30_U0_last_values_sx_reg_c_28_n_0 ;
  wire \last_values_sx_reg[29][15]_srl30_U0_last_values_sx_reg_c_28_n_0 ;
  wire \last_values_sx_reg[29][1]_srl30_U0_last_values_sx_reg_c_28_n_0 ;
  wire \last_values_sx_reg[29][2]_srl30_U0_last_values_sx_reg_c_28_n_0 ;
  wire \last_values_sx_reg[29][3]_srl30_U0_last_values_sx_reg_c_28_n_0 ;
  wire \last_values_sx_reg[29][4]_srl30_U0_last_values_sx_reg_c_28_n_0 ;
  wire \last_values_sx_reg[29][5]_srl30_U0_last_values_sx_reg_c_28_n_0 ;
  wire \last_values_sx_reg[29][6]_srl30_U0_last_values_sx_reg_c_28_n_0 ;
  wire \last_values_sx_reg[29][7]_srl30_U0_last_values_sx_reg_c_28_n_0 ;
  wire \last_values_sx_reg[29][8]_srl30_U0_last_values_sx_reg_c_28_n_0 ;
  wire \last_values_sx_reg[29][9]_srl30_U0_last_values_sx_reg_c_28_n_0 ;
  wire \last_values_sx_reg[30][0]_U0_last_values_sx_reg_c_29_n_0 ;
  wire \last_values_sx_reg[30][10]_U0_last_values_sx_reg_c_29_n_0 ;
  wire \last_values_sx_reg[30][11]_U0_last_values_sx_reg_c_29_n_0 ;
  wire \last_values_sx_reg[30][12]_U0_last_values_sx_reg_c_29_n_0 ;
  wire \last_values_sx_reg[30][13]_U0_last_values_sx_reg_c_29_n_0 ;
  wire \last_values_sx_reg[30][14]_U0_last_values_sx_reg_c_29_n_0 ;
  wire \last_values_sx_reg[30][15]_U0_last_values_sx_reg_c_29_n_0 ;
  wire \last_values_sx_reg[30][1]_U0_last_values_sx_reg_c_29_n_0 ;
  wire \last_values_sx_reg[30][2]_U0_last_values_sx_reg_c_29_n_0 ;
  wire \last_values_sx_reg[30][3]_U0_last_values_sx_reg_c_29_n_0 ;
  wire \last_values_sx_reg[30][4]_U0_last_values_sx_reg_c_29_n_0 ;
  wire \last_values_sx_reg[30][5]_U0_last_values_sx_reg_c_29_n_0 ;
  wire \last_values_sx_reg[30][6]_U0_last_values_sx_reg_c_29_n_0 ;
  wire \last_values_sx_reg[30][7]_U0_last_values_sx_reg_c_29_n_0 ;
  wire \last_values_sx_reg[30][8]_U0_last_values_sx_reg_c_29_n_0 ;
  wire \last_values_sx_reg[30][9]_U0_last_values_sx_reg_c_29_n_0 ;
  wire [15:0]\last_values_sx_reg[31] ;
  wire last_values_sx_reg_c_0_n_0;
  wire last_values_sx_reg_c_10_n_0;
  wire last_values_sx_reg_c_11_n_0;
  wire last_values_sx_reg_c_12_n_0;
  wire last_values_sx_reg_c_13_n_0;
  wire last_values_sx_reg_c_14_n_0;
  wire last_values_sx_reg_c_15_n_0;
  wire last_values_sx_reg_c_16_n_0;
  wire last_values_sx_reg_c_17_n_0;
  wire last_values_sx_reg_c_18_n_0;
  wire last_values_sx_reg_c_19_n_0;
  wire last_values_sx_reg_c_1_n_0;
  wire last_values_sx_reg_c_20_n_0;
  wire last_values_sx_reg_c_21_n_0;
  wire last_values_sx_reg_c_22_n_0;
  wire last_values_sx_reg_c_23_n_0;
  wire last_values_sx_reg_c_24_n_0;
  wire last_values_sx_reg_c_25_n_0;
  wire last_values_sx_reg_c_26_n_0;
  wire last_values_sx_reg_c_27_n_0;
  wire last_values_sx_reg_c_28_n_0;
  wire last_values_sx_reg_c_29_n_0;
  wire last_values_sx_reg_c_2_n_0;
  wire last_values_sx_reg_c_3_n_0;
  wire last_values_sx_reg_c_4_n_0;
  wire last_values_sx_reg_c_5_n_0;
  wire last_values_sx_reg_c_6_n_0;
  wire last_values_sx_reg_c_7_n_0;
  wire last_values_sx_reg_c_8_n_0;
  wire last_values_sx_reg_c_9_n_0;
  wire last_values_sx_reg_c_n_0;
  wire last_values_sx_reg_gate__0_n_0;
  wire last_values_sx_reg_gate__10_n_0;
  wire last_values_sx_reg_gate__11_n_0;
  wire last_values_sx_reg_gate__12_n_0;
  wire last_values_sx_reg_gate__13_n_0;
  wire last_values_sx_reg_gate__14_n_0;
  wire last_values_sx_reg_gate__1_n_0;
  wire last_values_sx_reg_gate__2_n_0;
  wire last_values_sx_reg_gate__3_n_0;
  wire last_values_sx_reg_gate__4_n_0;
  wire last_values_sx_reg_gate__5_n_0;
  wire last_values_sx_reg_gate__6_n_0;
  wire last_values_sx_reg_gate__7_n_0;
  wire last_values_sx_reg_gate__8_n_0;
  wire last_values_sx_reg_gate__9_n_0;
  wire last_values_sx_reg_gate_n_0;
  wire [15:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [15:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire state;
  wire [2:0]state__0;
  wire [2:0]state__1;
  wire [16:0]sub;
  wire sub0;
  wire \sub_reg_n_0_[0] ;
  wire \sub_reg_n_0_[10] ;
  wire \sub_reg_n_0_[11] ;
  wire \sub_reg_n_0_[12] ;
  wire \sub_reg_n_0_[13] ;
  wire \sub_reg_n_0_[14] ;
  wire \sub_reg_n_0_[15] ;
  wire \sub_reg_n_0_[16] ;
  wire \sub_reg_n_0_[1] ;
  wire \sub_reg_n_0_[2] ;
  wire \sub_reg_n_0_[3] ;
  wire \sub_reg_n_0_[4] ;
  wire \sub_reg_n_0_[5] ;
  wire \sub_reg_n_0_[6] ;
  wire \sub_reg_n_0_[7] ;
  wire \sub_reg_n_0_[8] ;
  wire \sub_reg_n_0_[9] ;
  wire sw_in;
  wire sw_reg;
  wire sw_reg0;
  wire tlast_expected;
  wire tlast_expected0;
  wire tlast_expected_i_1_n_0;
  wire tlast_sampled;
  wire tlast_sampled_i_1_n_0;
  wire [3:0]NLW__carry__3_CO_UNCONNECTED;
  wire [3:1]NLW__carry__3_O_UNCONNECTED;
  wire [3:0]NLW_data_out0__54_carry_O_UNCONNECTED;
  wire [0:0]NLW_data_out0__54_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_data_out0__54_carry__4_CO_UNCONNECTED;
  wire [3:1]NLW_data_out0__54_carry__4_O_UNCONNECTED;
  wire [3:0]NLW_data_out0_carry_O_UNCONNECTED;
  wire [0:0]NLW_data_out0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_data_out0_carry__4_CO_UNCONNECTED;
  wire [3:1]NLW_data_out0_carry__4_O_UNCONNECTED;
  wire [3:0]\NLW_last_sum_dx_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_last_sum_dx_reg[20]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_last_sum_sx_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_last_sum_sx_reg[20]_i_1_O_UNCONNECTED ;
  wire \NLW_last_values_dx_reg[29][0]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_values_dx_reg[29][10]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_values_dx_reg[29][11]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_values_dx_reg[29][12]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_values_dx_reg[29][13]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_values_dx_reg[29][14]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_values_dx_reg[29][15]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_values_dx_reg[29][1]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_values_dx_reg[29][2]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_values_dx_reg[29][3]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_values_dx_reg[29][4]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_values_dx_reg[29][5]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_values_dx_reg[29][6]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_values_dx_reg[29][7]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_values_dx_reg[29][8]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_values_dx_reg[29][9]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_values_sx_reg[29][0]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_values_sx_reg[29][10]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_values_sx_reg[29][11]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_values_sx_reg[29][12]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_values_sx_reg[29][13]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_values_sx_reg[29][14]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_values_sx_reg[29][15]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_values_sx_reg[29][1]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_values_sx_reg[29][2]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_values_sx_reg[29][3]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_values_sx_reg[29][4]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_values_sx_reg[29][5]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_values_sx_reg[29][6]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_values_sx_reg[29][7]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_values_sx_reg[29][8]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_values_sx_reg[29][9]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .O(state__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0300EFEF)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(m_axis_tready),
        .I4(state__0[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .O(state__1[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(aresetn),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(s_axis_tvalid),
        .I1(s_axis_tlast),
        .I2(tlast_expected),
        .O(state));
  (* FSM_ENCODED_STATES = "idle:000,receive_data:001,subtraction:010,average:011,send_data:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(state__1[0]),
        .Q(state__0[0]));
  (* FSM_ENCODED_STATES = "idle:000,receive_data:001,subtraction:010,average:011,send_data:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]));
  (* FSM_ENCODED_STATES = "idle:000,receive_data:001,subtraction:010,average:011,send_data:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(state__1[2]),
        .Q(state__0[2]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry
       (.CI(1'b0),
        .CO({_carry_n_0,_carry_n_1,_carry_n_2,_carry_n_3}),
        .CYINIT(1'b1),
        .DI(data_in[3:0]),
        .O(sub[3:0]),
        .S({_carry_i_1_n_0,_carry_i_2_n_0,_carry_i_3_n_0,_carry_i_4_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry__0
       (.CI(_carry_n_0),
        .CO({_carry__0_n_0,_carry__0_n_1,_carry__0_n_2,_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(data_in[7:4]),
        .O(sub[7:4]),
        .S({_carry__0_i_1_n_0,_carry__0_i_2_n_0,_carry__0_i_3_n_0,_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'hE41B)) 
    _carry__0_i_1
       (.I0(tlast_sampled),
        .I1(\last_values_sx_reg[31] [7]),
        .I2(\last_values_dx_reg[31] [7]),
        .I3(data_in[7]),
        .O(_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'hE41B)) 
    _carry__0_i_2
       (.I0(tlast_sampled),
        .I1(\last_values_sx_reg[31] [6]),
        .I2(\last_values_dx_reg[31] [6]),
        .I3(data_in[6]),
        .O(_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hE41B)) 
    _carry__0_i_3
       (.I0(tlast_sampled),
        .I1(\last_values_sx_reg[31] [5]),
        .I2(\last_values_dx_reg[31] [5]),
        .I3(data_in[5]),
        .O(_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hE41B)) 
    _carry__0_i_4
       (.I0(tlast_sampled),
        .I1(\last_values_sx_reg[31] [4]),
        .I2(\last_values_dx_reg[31] [4]),
        .I3(data_in[4]),
        .O(_carry__0_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry__1
       (.CI(_carry__0_n_0),
        .CO({_carry__1_n_0,_carry__1_n_1,_carry__1_n_2,_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(data_in[11:8]),
        .O(sub[11:8]),
        .S({_carry__1_i_1_n_0,_carry__1_i_2_n_0,_carry__1_i_3_n_0,_carry__1_i_4_n_0}));
  LUT4 #(
    .INIT(16'hE41B)) 
    _carry__1_i_1
       (.I0(tlast_sampled),
        .I1(\last_values_sx_reg[31] [11]),
        .I2(\last_values_dx_reg[31] [11]),
        .I3(data_in[11]),
        .O(_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'hE41B)) 
    _carry__1_i_2
       (.I0(tlast_sampled),
        .I1(\last_values_sx_reg[31] [10]),
        .I2(\last_values_dx_reg[31] [10]),
        .I3(data_in[10]),
        .O(_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'hE41B)) 
    _carry__1_i_3
       (.I0(tlast_sampled),
        .I1(\last_values_sx_reg[31] [9]),
        .I2(\last_values_dx_reg[31] [9]),
        .I3(data_in[9]),
        .O(_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'hE41B)) 
    _carry__1_i_4
       (.I0(tlast_sampled),
        .I1(\last_values_sx_reg[31] [8]),
        .I2(\last_values_dx_reg[31] [8]),
        .I3(data_in[8]),
        .O(_carry__1_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry__2
       (.CI(_carry__1_n_0),
        .CO({_carry__2_n_0,_carry__2_n_1,_carry__2_n_2,_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(data_in[15:12]),
        .O(sub[15:12]),
        .S({_carry__2_i_1_n_0,_carry__2_i_2_n_0,_carry__2_i_3_n_0,_carry__2_i_4_n_0}));
  LUT4 #(
    .INIT(16'hA965)) 
    _carry__2_i_1
       (.I0(data_in[15]),
        .I1(tlast_sampled),
        .I2(\last_values_sx_reg[31] [15]),
        .I3(\last_values_dx_reg[31] [15]),
        .O(_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'hE41B)) 
    _carry__2_i_2
       (.I0(tlast_sampled),
        .I1(\last_values_sx_reg[31] [14]),
        .I2(\last_values_dx_reg[31] [14]),
        .I3(data_in[14]),
        .O(_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'hE41B)) 
    _carry__2_i_3
       (.I0(tlast_sampled),
        .I1(\last_values_sx_reg[31] [13]),
        .I2(\last_values_dx_reg[31] [13]),
        .I3(data_in[13]),
        .O(_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'hE41B)) 
    _carry__2_i_4
       (.I0(tlast_sampled),
        .I1(\last_values_sx_reg[31] [12]),
        .I2(\last_values_dx_reg[31] [12]),
        .I3(data_in[12]),
        .O(_carry__2_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry__3
       (.CI(_carry__2_n_0),
        .CO(NLW__carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW__carry__3_O_UNCONNECTED[3:1],sub[16]}),
        .S({1'b0,1'b0,1'b0,_carry__3_i_1_n_0}));
  LUT4 #(
    .INIT(16'hA965)) 
    _carry__3_i_1
       (.I0(data_in[15]),
        .I1(tlast_sampled),
        .I2(\last_values_sx_reg[31] [15]),
        .I3(\last_values_dx_reg[31] [15]),
        .O(_carry__3_i_1_n_0));
  LUT4 #(
    .INIT(16'hE41B)) 
    _carry_i_1
       (.I0(tlast_sampled),
        .I1(\last_values_sx_reg[31] [3]),
        .I2(\last_values_dx_reg[31] [3]),
        .I3(data_in[3]),
        .O(_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'hE41B)) 
    _carry_i_2
       (.I0(tlast_sampled),
        .I1(\last_values_sx_reg[31] [2]),
        .I2(\last_values_dx_reg[31] [2]),
        .I3(data_in[2]),
        .O(_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'hE41B)) 
    _carry_i_3
       (.I0(tlast_sampled),
        .I1(\last_values_sx_reg[31] [1]),
        .I2(\last_values_dx_reg[31] [1]),
        .I3(data_in[1]),
        .O(_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hE41B)) 
    _carry_i_4
       (.I0(tlast_sampled),
        .I1(\last_values_sx_reg[31] [0]),
        .I2(\last_values_dx_reg[31] [0]),
        .I3(data_in[0]),
        .O(_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h00000080)) 
    \data_in[15]_i_1 
       (.I0(aresetn),
        .I1(s_axis_tvalid),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .O(sw_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[0] 
       (.C(clk),
        .CE(sw_reg0),
        .D(s_axis_tdata[0]),
        .Q(data_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[10] 
       (.C(clk),
        .CE(sw_reg0),
        .D(s_axis_tdata[10]),
        .Q(data_in[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[11] 
       (.C(clk),
        .CE(sw_reg0),
        .D(s_axis_tdata[11]),
        .Q(data_in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[12] 
       (.C(clk),
        .CE(sw_reg0),
        .D(s_axis_tdata[12]),
        .Q(data_in[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[13] 
       (.C(clk),
        .CE(sw_reg0),
        .D(s_axis_tdata[13]),
        .Q(data_in[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[14] 
       (.C(clk),
        .CE(sw_reg0),
        .D(s_axis_tdata[14]),
        .Q(data_in[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[15] 
       (.C(clk),
        .CE(sw_reg0),
        .D(s_axis_tdata[15]),
        .Q(data_in[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[1] 
       (.C(clk),
        .CE(sw_reg0),
        .D(s_axis_tdata[1]),
        .Q(data_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[2] 
       (.C(clk),
        .CE(sw_reg0),
        .D(s_axis_tdata[2]),
        .Q(data_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[3] 
       (.C(clk),
        .CE(sw_reg0),
        .D(s_axis_tdata[3]),
        .Q(data_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[4] 
       (.C(clk),
        .CE(sw_reg0),
        .D(s_axis_tdata[4]),
        .Q(data_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[5] 
       (.C(clk),
        .CE(sw_reg0),
        .D(s_axis_tdata[5]),
        .Q(data_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[6] 
       (.C(clk),
        .CE(sw_reg0),
        .D(s_axis_tdata[6]),
        .Q(data_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[7] 
       (.C(clk),
        .CE(sw_reg0),
        .D(s_axis_tdata[7]),
        .Q(data_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[8] 
       (.C(clk),
        .CE(sw_reg0),
        .D(s_axis_tdata[8]),
        .Q(data_in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[9] 
       (.C(clk),
        .CE(sw_reg0),
        .D(s_axis_tdata[9]),
        .Q(data_in[9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 data_out0__54_carry
       (.CI(1'b0),
        .CO({data_out0__54_carry_n_0,data_out0__54_carry_n_1,data_out0__54_carry_n_2,data_out0__54_carry_n_3}),
        .CYINIT(1'b0),
        .DI(last_sum_dx_reg[3:0]),
        .O(NLW_data_out0__54_carry_O_UNCONNECTED[3:0]),
        .S({data_out0__54_carry_i_1_n_0,data_out0__54_carry_i_2_n_0,data_out0__54_carry_i_3_n_0,data_out0__54_carry_i_4_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 data_out0__54_carry__0
       (.CI(data_out0__54_carry_n_0),
        .CO({data_out0__54_carry__0_n_0,data_out0__54_carry__0_n_1,data_out0__54_carry__0_n_2,data_out0__54_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(last_sum_dx_reg[7:4]),
        .O({data_out0__54_carry__0_n_4,data_out0__54_carry__0_n_5,data_out0__54_carry__0_n_6,NLW_data_out0__54_carry__0_O_UNCONNECTED[0]}),
        .S({data_out0__54_carry__0_i_1_n_0,data_out0__54_carry__0_i_2_n_0,data_out0__54_carry__0_i_3_n_0,data_out0__54_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0__54_carry__0_i_1
       (.I0(last_sum_dx_reg[7]),
        .I1(\sub_reg_n_0_[7] ),
        .O(data_out0__54_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0__54_carry__0_i_2
       (.I0(last_sum_dx_reg[6]),
        .I1(\sub_reg_n_0_[6] ),
        .O(data_out0__54_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0__54_carry__0_i_3
       (.I0(last_sum_dx_reg[5]),
        .I1(\sub_reg_n_0_[5] ),
        .O(data_out0__54_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0__54_carry__0_i_4
       (.I0(last_sum_dx_reg[4]),
        .I1(\sub_reg_n_0_[4] ),
        .O(data_out0__54_carry__0_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 data_out0__54_carry__1
       (.CI(data_out0__54_carry__0_n_0),
        .CO({data_out0__54_carry__1_n_0,data_out0__54_carry__1_n_1,data_out0__54_carry__1_n_2,data_out0__54_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(last_sum_dx_reg[11:8]),
        .O({data_out0__54_carry__1_n_4,data_out0__54_carry__1_n_5,data_out0__54_carry__1_n_6,data_out0__54_carry__1_n_7}),
        .S({data_out0__54_carry__1_i_1_n_0,data_out0__54_carry__1_i_2_n_0,data_out0__54_carry__1_i_3_n_0,data_out0__54_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0__54_carry__1_i_1
       (.I0(last_sum_dx_reg[11]),
        .I1(\sub_reg_n_0_[11] ),
        .O(data_out0__54_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0__54_carry__1_i_2
       (.I0(last_sum_dx_reg[10]),
        .I1(\sub_reg_n_0_[10] ),
        .O(data_out0__54_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0__54_carry__1_i_3
       (.I0(last_sum_dx_reg[9]),
        .I1(\sub_reg_n_0_[9] ),
        .O(data_out0__54_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0__54_carry__1_i_4
       (.I0(last_sum_dx_reg[8]),
        .I1(\sub_reg_n_0_[8] ),
        .O(data_out0__54_carry__1_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 data_out0__54_carry__2
       (.CI(data_out0__54_carry__1_n_0),
        .CO({data_out0__54_carry__2_n_0,data_out0__54_carry__2_n_1,data_out0__54_carry__2_n_2,data_out0__54_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(last_sum_dx_reg[15:12]),
        .O({data_out0__54_carry__2_n_4,data_out0__54_carry__2_n_5,data_out0__54_carry__2_n_6,data_out0__54_carry__2_n_7}),
        .S({data_out0__54_carry__2_i_1_n_0,data_out0__54_carry__2_i_2_n_0,data_out0__54_carry__2_i_3_n_0,data_out0__54_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0__54_carry__2_i_1
       (.I0(last_sum_dx_reg[15]),
        .I1(\sub_reg_n_0_[15] ),
        .O(data_out0__54_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0__54_carry__2_i_2
       (.I0(last_sum_dx_reg[14]),
        .I1(\sub_reg_n_0_[14] ),
        .O(data_out0__54_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0__54_carry__2_i_3
       (.I0(last_sum_dx_reg[13]),
        .I1(\sub_reg_n_0_[13] ),
        .O(data_out0__54_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0__54_carry__2_i_4
       (.I0(last_sum_dx_reg[12]),
        .I1(\sub_reg_n_0_[12] ),
        .O(data_out0__54_carry__2_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 data_out0__54_carry__3
       (.CI(data_out0__54_carry__2_n_0),
        .CO({data_out0__54_carry__3_n_0,data_out0__54_carry__3_n_1,data_out0__54_carry__3_n_2,data_out0__54_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({last_sum_dx_reg[18:17],data_out0__54_carry__3_i_1_n_0,\sub_reg_n_0_[16] }),
        .O({data_out0__54_carry__3_n_4,data_out0__54_carry__3_n_5,data_out0__54_carry__3_n_6,data_out0__54_carry__3_n_7}),
        .S({data_out0__54_carry__3_i_2_n_0,data_out0__54_carry__3_i_3_n_0,data_out0__54_carry__3_i_4_n_0,data_out0__54_carry__3_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    data_out0__54_carry__3_i_1
       (.I0(\sub_reg_n_0_[16] ),
        .O(data_out0__54_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    data_out0__54_carry__3_i_2
       (.I0(last_sum_dx_reg[18]),
        .I1(last_sum_dx_reg[19]),
        .O(data_out0__54_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    data_out0__54_carry__3_i_3
       (.I0(last_sum_dx_reg[17]),
        .I1(last_sum_dx_reg[18]),
        .O(data_out0__54_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0__54_carry__3_i_4
       (.I0(\sub_reg_n_0_[16] ),
        .I1(last_sum_dx_reg[17]),
        .O(data_out0__54_carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0__54_carry__3_i_5
       (.I0(\sub_reg_n_0_[16] ),
        .I1(last_sum_dx_reg[16]),
        .O(data_out0__54_carry__3_i_5_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 data_out0__54_carry__4
       (.CI(data_out0__54_carry__3_n_0),
        .CO(NLW_data_out0__54_carry__4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_data_out0__54_carry__4_O_UNCONNECTED[3:1],data_out0__54_carry__4_n_7}),
        .S({1'b0,1'b0,1'b0,data_out0__54_carry__4_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    data_out0__54_carry__4_i_1
       (.I0(last_sum_dx_reg[19]),
        .I1(last_sum_dx_reg[20]),
        .O(data_out0__54_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0__54_carry_i_1
       (.I0(last_sum_dx_reg[3]),
        .I1(\sub_reg_n_0_[3] ),
        .O(data_out0__54_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0__54_carry_i_2
       (.I0(last_sum_dx_reg[2]),
        .I1(\sub_reg_n_0_[2] ),
        .O(data_out0__54_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0__54_carry_i_3
       (.I0(last_sum_dx_reg[1]),
        .I1(\sub_reg_n_0_[1] ),
        .O(data_out0__54_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0__54_carry_i_4
       (.I0(last_sum_dx_reg[0]),
        .I1(\sub_reg_n_0_[0] ),
        .O(data_out0__54_carry_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 data_out0_carry
       (.CI(1'b0),
        .CO({data_out0_carry_n_0,data_out0_carry_n_1,data_out0_carry_n_2,data_out0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(last_sum_sx_reg[3:0]),
        .O(NLW_data_out0_carry_O_UNCONNECTED[3:0]),
        .S({data_out0_carry_i_1_n_0,data_out0_carry_i_2_n_0,data_out0_carry_i_3_n_0,data_out0_carry_i_4_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 data_out0_carry__0
       (.CI(data_out0_carry_n_0),
        .CO({data_out0_carry__0_n_0,data_out0_carry__0_n_1,data_out0_carry__0_n_2,data_out0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(last_sum_sx_reg[7:4]),
        .O({data_out0_carry__0_n_4,data_out0_carry__0_n_5,data_out0_carry__0_n_6,NLW_data_out0_carry__0_O_UNCONNECTED[0]}),
        .S({data_out0_carry__0_i_1_n_0,data_out0_carry__0_i_2_n_0,data_out0_carry__0_i_3_n_0,data_out0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0_carry__0_i_1
       (.I0(last_sum_sx_reg[7]),
        .I1(\sub_reg_n_0_[7] ),
        .O(data_out0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0_carry__0_i_2
       (.I0(last_sum_sx_reg[6]),
        .I1(\sub_reg_n_0_[6] ),
        .O(data_out0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0_carry__0_i_3
       (.I0(last_sum_sx_reg[5]),
        .I1(\sub_reg_n_0_[5] ),
        .O(data_out0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0_carry__0_i_4
       (.I0(last_sum_sx_reg[4]),
        .I1(\sub_reg_n_0_[4] ),
        .O(data_out0_carry__0_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 data_out0_carry__1
       (.CI(data_out0_carry__0_n_0),
        .CO({data_out0_carry__1_n_0,data_out0_carry__1_n_1,data_out0_carry__1_n_2,data_out0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(last_sum_sx_reg[11:8]),
        .O({data_out0_carry__1_n_4,data_out0_carry__1_n_5,data_out0_carry__1_n_6,data_out0_carry__1_n_7}),
        .S({data_out0_carry__1_i_1_n_0,data_out0_carry__1_i_2_n_0,data_out0_carry__1_i_3_n_0,data_out0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0_carry__1_i_1
       (.I0(last_sum_sx_reg[11]),
        .I1(\sub_reg_n_0_[11] ),
        .O(data_out0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0_carry__1_i_2
       (.I0(last_sum_sx_reg[10]),
        .I1(\sub_reg_n_0_[10] ),
        .O(data_out0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0_carry__1_i_3
       (.I0(last_sum_sx_reg[9]),
        .I1(\sub_reg_n_0_[9] ),
        .O(data_out0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0_carry__1_i_4
       (.I0(last_sum_sx_reg[8]),
        .I1(\sub_reg_n_0_[8] ),
        .O(data_out0_carry__1_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 data_out0_carry__2
       (.CI(data_out0_carry__1_n_0),
        .CO({data_out0_carry__2_n_0,data_out0_carry__2_n_1,data_out0_carry__2_n_2,data_out0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(last_sum_sx_reg[15:12]),
        .O({data_out0_carry__2_n_4,data_out0_carry__2_n_5,data_out0_carry__2_n_6,data_out0_carry__2_n_7}),
        .S({data_out0_carry__2_i_1_n_0,data_out0_carry__2_i_2_n_0,data_out0_carry__2_i_3_n_0,data_out0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0_carry__2_i_1
       (.I0(last_sum_sx_reg[15]),
        .I1(\sub_reg_n_0_[15] ),
        .O(data_out0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0_carry__2_i_2
       (.I0(last_sum_sx_reg[14]),
        .I1(\sub_reg_n_0_[14] ),
        .O(data_out0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0_carry__2_i_3
       (.I0(last_sum_sx_reg[13]),
        .I1(\sub_reg_n_0_[13] ),
        .O(data_out0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0_carry__2_i_4
       (.I0(last_sum_sx_reg[12]),
        .I1(\sub_reg_n_0_[12] ),
        .O(data_out0_carry__2_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 data_out0_carry__3
       (.CI(data_out0_carry__2_n_0),
        .CO({data_out0_carry__3_n_0,data_out0_carry__3_n_1,data_out0_carry__3_n_2,data_out0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({last_sum_sx_reg[18:17],data_out0_carry__3_i_1_n_0,\sub_reg_n_0_[16] }),
        .O({data_out0_carry__3_n_4,data_out0_carry__3_n_5,data_out0_carry__3_n_6,data_out0_carry__3_n_7}),
        .S({data_out0_carry__3_i_2_n_0,data_out0_carry__3_i_3_n_0,data_out0_carry__3_i_4_n_0,data_out0_carry__3_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    data_out0_carry__3_i_1
       (.I0(\sub_reg_n_0_[16] ),
        .O(data_out0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    data_out0_carry__3_i_2
       (.I0(last_sum_sx_reg[18]),
        .I1(last_sum_sx_reg[19]),
        .O(data_out0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    data_out0_carry__3_i_3
       (.I0(last_sum_sx_reg[17]),
        .I1(last_sum_sx_reg[18]),
        .O(data_out0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0_carry__3_i_4
       (.I0(\sub_reg_n_0_[16] ),
        .I1(last_sum_sx_reg[17]),
        .O(data_out0_carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0_carry__3_i_5
       (.I0(\sub_reg_n_0_[16] ),
        .I1(last_sum_sx_reg[16]),
        .O(data_out0_carry__3_i_5_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 data_out0_carry__4
       (.CI(data_out0_carry__3_n_0),
        .CO(NLW_data_out0_carry__4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_data_out0_carry__4_O_UNCONNECTED[3:1],data_out0_carry__4_n_7}),
        .S({1'b0,1'b0,1'b0,data_out0_carry__4_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    data_out0_carry__4_i_1
       (.I0(last_sum_sx_reg[19]),
        .I1(last_sum_sx_reg[20]),
        .O(data_out0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0_carry_i_1
       (.I0(last_sum_sx_reg[3]),
        .I1(\sub_reg_n_0_[3] ),
        .O(data_out0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0_carry_i_2
       (.I0(last_sum_sx_reg[2]),
        .I1(\sub_reg_n_0_[2] ),
        .O(data_out0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0_carry_i_3
       (.I0(last_sum_sx_reg[1]),
        .I1(\sub_reg_n_0_[1] ),
        .O(data_out0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out0_carry_i_4
       (.I0(last_sum_sx_reg[0]),
        .I1(\sub_reg_n_0_[0] ),
        .O(data_out0_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[0]_i_1 
       (.I0(data_out0__54_carry__0_n_6),
        .I1(tlast_sampled),
        .I2(data_out0_carry__0_n_6),
        .I3(sw_reg),
        .I4(data_in[0]),
        .O(\data_out[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[10]_i_1 
       (.I0(data_out0__54_carry__2_n_4),
        .I1(tlast_sampled),
        .I2(data_out0_carry__2_n_4),
        .I3(sw_reg),
        .I4(data_in[10]),
        .O(\data_out[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[11]_i_1 
       (.I0(data_out0__54_carry__3_n_7),
        .I1(tlast_sampled),
        .I2(data_out0_carry__3_n_7),
        .I3(sw_reg),
        .I4(data_in[11]),
        .O(\data_out[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[12]_i_1 
       (.I0(data_out0__54_carry__3_n_6),
        .I1(tlast_sampled),
        .I2(data_out0_carry__3_n_6),
        .I3(sw_reg),
        .I4(data_in[12]),
        .O(\data_out[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[13]_i_1 
       (.I0(data_out0__54_carry__3_n_5),
        .I1(tlast_sampled),
        .I2(data_out0_carry__3_n_5),
        .I3(sw_reg),
        .I4(data_in[13]),
        .O(\data_out[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[14]_i_1 
       (.I0(data_out0__54_carry__3_n_4),
        .I1(tlast_sampled),
        .I2(data_out0_carry__3_n_4),
        .I3(sw_reg),
        .I4(data_in[14]),
        .O(\data_out[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \data_out[15]_i_1 
       (.I0(aresetn),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .O(data_out0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[15]_i_2 
       (.I0(data_out0__54_carry__4_n_7),
        .I1(tlast_sampled),
        .I2(data_out0_carry__4_n_7),
        .I3(sw_reg),
        .I4(data_in[15]),
        .O(\data_out[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[1]_i_1 
       (.I0(data_out0__54_carry__0_n_5),
        .I1(tlast_sampled),
        .I2(data_out0_carry__0_n_5),
        .I3(sw_reg),
        .I4(data_in[1]),
        .O(\data_out[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[2]_i_1 
       (.I0(data_out0__54_carry__0_n_4),
        .I1(tlast_sampled),
        .I2(data_out0_carry__0_n_4),
        .I3(sw_reg),
        .I4(data_in[2]),
        .O(\data_out[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[3]_i_1 
       (.I0(data_out0__54_carry__1_n_7),
        .I1(tlast_sampled),
        .I2(data_out0_carry__1_n_7),
        .I3(sw_reg),
        .I4(data_in[3]),
        .O(\data_out[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[4]_i_1 
       (.I0(data_out0__54_carry__1_n_6),
        .I1(tlast_sampled),
        .I2(data_out0_carry__1_n_6),
        .I3(sw_reg),
        .I4(data_in[4]),
        .O(\data_out[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[5]_i_1 
       (.I0(data_out0__54_carry__1_n_5),
        .I1(tlast_sampled),
        .I2(data_out0_carry__1_n_5),
        .I3(sw_reg),
        .I4(data_in[5]),
        .O(\data_out[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[6]_i_1 
       (.I0(data_out0__54_carry__1_n_4),
        .I1(tlast_sampled),
        .I2(data_out0_carry__1_n_4),
        .I3(sw_reg),
        .I4(data_in[6]),
        .O(\data_out[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[7]_i_1 
       (.I0(data_out0__54_carry__2_n_7),
        .I1(tlast_sampled),
        .I2(data_out0_carry__2_n_7),
        .I3(sw_reg),
        .I4(data_in[7]),
        .O(\data_out[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[8]_i_1 
       (.I0(data_out0__54_carry__2_n_6),
        .I1(tlast_sampled),
        .I2(data_out0_carry__2_n_6),
        .I3(sw_reg),
        .I4(data_in[8]),
        .O(\data_out[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[9]_i_1 
       (.I0(data_out0__54_carry__2_n_5),
        .I1(tlast_sampled),
        .I2(data_out0_carry__2_n_5),
        .I3(sw_reg),
        .I4(data_in[9]),
        .O(\data_out[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[0]_i_1_n_0 ),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[10] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[10]_i_1_n_0 ),
        .Q(m_axis_tdata[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[11] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[11]_i_1_n_0 ),
        .Q(m_axis_tdata[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[12] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[12]_i_1_n_0 ),
        .Q(m_axis_tdata[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[13] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[13]_i_1_n_0 ),
        .Q(m_axis_tdata[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[14] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[14]_i_1_n_0 ),
        .Q(m_axis_tdata[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[15] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[15]_i_2_n_0 ),
        .Q(m_axis_tdata[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[1]_i_1_n_0 ),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[2]_i_1_n_0 ),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[3]_i_1_n_0 ),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[4]_i_1_n_0 ),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[5]_i_1_n_0 ),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[6]_i_1_n_0 ),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[7]_i_1_n_0 ),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[8] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[8]_i_1_n_0 ),
        .Q(m_axis_tdata[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[9] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[9]_i_1_n_0 ),
        .Q(m_axis_tdata[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2000)) 
    \last_sum_dx[0]_i_1 
       (.I0(tlast_sampled),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(last_sum_dx));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[0]_i_3 
       (.I0(\sub_reg_n_0_[3] ),
        .I1(last_sum_dx_reg[3]),
        .O(\last_sum_dx[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[0]_i_4 
       (.I0(\sub_reg_n_0_[2] ),
        .I1(last_sum_dx_reg[2]),
        .O(\last_sum_dx[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[0]_i_5 
       (.I0(\sub_reg_n_0_[1] ),
        .I1(last_sum_dx_reg[1]),
        .O(\last_sum_dx[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[0]_i_6 
       (.I0(\sub_reg_n_0_[0] ),
        .I1(last_sum_dx_reg[0]),
        .O(\last_sum_dx[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[12]_i_2 
       (.I0(\sub_reg_n_0_[15] ),
        .I1(last_sum_dx_reg[15]),
        .O(\last_sum_dx[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[12]_i_3 
       (.I0(\sub_reg_n_0_[14] ),
        .I1(last_sum_dx_reg[14]),
        .O(\last_sum_dx[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[12]_i_4 
       (.I0(\sub_reg_n_0_[13] ),
        .I1(last_sum_dx_reg[13]),
        .O(\last_sum_dx[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[12]_i_5 
       (.I0(\sub_reg_n_0_[12] ),
        .I1(last_sum_dx_reg[12]),
        .O(\last_sum_dx[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[16]_i_2 
       (.I0(\sub_reg_n_0_[16] ),
        .I1(last_sum_dx_reg[19]),
        .O(\last_sum_dx[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[16]_i_3 
       (.I0(\sub_reg_n_0_[16] ),
        .I1(last_sum_dx_reg[18]),
        .O(\last_sum_dx[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[16]_i_4 
       (.I0(\sub_reg_n_0_[16] ),
        .I1(last_sum_dx_reg[17]),
        .O(\last_sum_dx[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[16]_i_5 
       (.I0(\sub_reg_n_0_[16] ),
        .I1(last_sum_dx_reg[16]),
        .O(\last_sum_dx[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[20]_i_2 
       (.I0(\sub_reg_n_0_[16] ),
        .I1(last_sum_dx_reg[20]),
        .O(\last_sum_dx[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[4]_i_2 
       (.I0(\sub_reg_n_0_[7] ),
        .I1(last_sum_dx_reg[7]),
        .O(\last_sum_dx[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[4]_i_3 
       (.I0(\sub_reg_n_0_[6] ),
        .I1(last_sum_dx_reg[6]),
        .O(\last_sum_dx[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[4]_i_4 
       (.I0(\sub_reg_n_0_[5] ),
        .I1(last_sum_dx_reg[5]),
        .O(\last_sum_dx[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[4]_i_5 
       (.I0(\sub_reg_n_0_[4] ),
        .I1(last_sum_dx_reg[4]),
        .O(\last_sum_dx[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[8]_i_2 
       (.I0(\sub_reg_n_0_[11] ),
        .I1(last_sum_dx_reg[11]),
        .O(\last_sum_dx[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[8]_i_3 
       (.I0(\sub_reg_n_0_[10] ),
        .I1(last_sum_dx_reg[10]),
        .O(\last_sum_dx[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[8]_i_4 
       (.I0(\sub_reg_n_0_[9] ),
        .I1(last_sum_dx_reg[9]),
        .O(\last_sum_dx[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[8]_i_5 
       (.I0(\sub_reg_n_0_[8] ),
        .I1(last_sum_dx_reg[8]),
        .O(\last_sum_dx[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[0] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_dx_reg[0]_i_2_n_7 ),
        .Q(last_sum_dx_reg[0]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \last_sum_dx_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\last_sum_dx_reg[0]_i_2_n_0 ,\last_sum_dx_reg[0]_i_2_n_1 ,\last_sum_dx_reg[0]_i_2_n_2 ,\last_sum_dx_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\sub_reg_n_0_[3] ,\sub_reg_n_0_[2] ,\sub_reg_n_0_[1] ,\sub_reg_n_0_[0] }),
        .O({\last_sum_dx_reg[0]_i_2_n_4 ,\last_sum_dx_reg[0]_i_2_n_5 ,\last_sum_dx_reg[0]_i_2_n_6 ,\last_sum_dx_reg[0]_i_2_n_7 }),
        .S({\last_sum_dx[0]_i_3_n_0 ,\last_sum_dx[0]_i_4_n_0 ,\last_sum_dx[0]_i_5_n_0 ,\last_sum_dx[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[10] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_dx_reg[8]_i_1_n_5 ),
        .Q(last_sum_dx_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[11] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_dx_reg[8]_i_1_n_4 ),
        .Q(last_sum_dx_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[12] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_dx_reg[12]_i_1_n_7 ),
        .Q(last_sum_dx_reg[12]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \last_sum_dx_reg[12]_i_1 
       (.CI(\last_sum_dx_reg[8]_i_1_n_0 ),
        .CO({\last_sum_dx_reg[12]_i_1_n_0 ,\last_sum_dx_reg[12]_i_1_n_1 ,\last_sum_dx_reg[12]_i_1_n_2 ,\last_sum_dx_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sub_reg_n_0_[15] ,\sub_reg_n_0_[14] ,\sub_reg_n_0_[13] ,\sub_reg_n_0_[12] }),
        .O({\last_sum_dx_reg[12]_i_1_n_4 ,\last_sum_dx_reg[12]_i_1_n_5 ,\last_sum_dx_reg[12]_i_1_n_6 ,\last_sum_dx_reg[12]_i_1_n_7 }),
        .S({\last_sum_dx[12]_i_2_n_0 ,\last_sum_dx[12]_i_3_n_0 ,\last_sum_dx[12]_i_4_n_0 ,\last_sum_dx[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[13] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_dx_reg[12]_i_1_n_6 ),
        .Q(last_sum_dx_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[14] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_dx_reg[12]_i_1_n_5 ),
        .Q(last_sum_dx_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[15] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_dx_reg[12]_i_1_n_4 ),
        .Q(last_sum_dx_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[16] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_dx_reg[16]_i_1_n_7 ),
        .Q(last_sum_dx_reg[16]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \last_sum_dx_reg[16]_i_1 
       (.CI(\last_sum_dx_reg[12]_i_1_n_0 ),
        .CO({\last_sum_dx_reg[16]_i_1_n_0 ,\last_sum_dx_reg[16]_i_1_n_1 ,\last_sum_dx_reg[16]_i_1_n_2 ,\last_sum_dx_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sub_reg_n_0_[16] ,\sub_reg_n_0_[16] ,\sub_reg_n_0_[16] ,\sub_reg_n_0_[16] }),
        .O({\last_sum_dx_reg[16]_i_1_n_4 ,\last_sum_dx_reg[16]_i_1_n_5 ,\last_sum_dx_reg[16]_i_1_n_6 ,\last_sum_dx_reg[16]_i_1_n_7 }),
        .S({\last_sum_dx[16]_i_2_n_0 ,\last_sum_dx[16]_i_3_n_0 ,\last_sum_dx[16]_i_4_n_0 ,\last_sum_dx[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[17] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_dx_reg[16]_i_1_n_6 ),
        .Q(last_sum_dx_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[18] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_dx_reg[16]_i_1_n_5 ),
        .Q(last_sum_dx_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[19] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_dx_reg[16]_i_1_n_4 ),
        .Q(last_sum_dx_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[1] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_dx_reg[0]_i_2_n_6 ),
        .Q(last_sum_dx_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[20] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_dx_reg[20]_i_1_n_7 ),
        .Q(last_sum_dx_reg[20]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \last_sum_dx_reg[20]_i_1 
       (.CI(\last_sum_dx_reg[16]_i_1_n_0 ),
        .CO(\NLW_last_sum_dx_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_last_sum_dx_reg[20]_i_1_O_UNCONNECTED [3:1],\last_sum_dx_reg[20]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\last_sum_dx[20]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[2] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_dx_reg[0]_i_2_n_5 ),
        .Q(last_sum_dx_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[3] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_dx_reg[0]_i_2_n_4 ),
        .Q(last_sum_dx_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[4] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_dx_reg[4]_i_1_n_7 ),
        .Q(last_sum_dx_reg[4]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \last_sum_dx_reg[4]_i_1 
       (.CI(\last_sum_dx_reg[0]_i_2_n_0 ),
        .CO({\last_sum_dx_reg[4]_i_1_n_0 ,\last_sum_dx_reg[4]_i_1_n_1 ,\last_sum_dx_reg[4]_i_1_n_2 ,\last_sum_dx_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sub_reg_n_0_[7] ,\sub_reg_n_0_[6] ,\sub_reg_n_0_[5] ,\sub_reg_n_0_[4] }),
        .O({\last_sum_dx_reg[4]_i_1_n_4 ,\last_sum_dx_reg[4]_i_1_n_5 ,\last_sum_dx_reg[4]_i_1_n_6 ,\last_sum_dx_reg[4]_i_1_n_7 }),
        .S({\last_sum_dx[4]_i_2_n_0 ,\last_sum_dx[4]_i_3_n_0 ,\last_sum_dx[4]_i_4_n_0 ,\last_sum_dx[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[5] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_dx_reg[4]_i_1_n_6 ),
        .Q(last_sum_dx_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[6] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_dx_reg[4]_i_1_n_5 ),
        .Q(last_sum_dx_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[7] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_dx_reg[4]_i_1_n_4 ),
        .Q(last_sum_dx_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[8] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_dx_reg[8]_i_1_n_7 ),
        .Q(last_sum_dx_reg[8]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \last_sum_dx_reg[8]_i_1 
       (.CI(\last_sum_dx_reg[4]_i_1_n_0 ),
        .CO({\last_sum_dx_reg[8]_i_1_n_0 ,\last_sum_dx_reg[8]_i_1_n_1 ,\last_sum_dx_reg[8]_i_1_n_2 ,\last_sum_dx_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sub_reg_n_0_[11] ,\sub_reg_n_0_[10] ,\sub_reg_n_0_[9] ,\sub_reg_n_0_[8] }),
        .O({\last_sum_dx_reg[8]_i_1_n_4 ,\last_sum_dx_reg[8]_i_1_n_5 ,\last_sum_dx_reg[8]_i_1_n_6 ,\last_sum_dx_reg[8]_i_1_n_7 }),
        .S({\last_sum_dx[8]_i_2_n_0 ,\last_sum_dx[8]_i_3_n_0 ,\last_sum_dx[8]_i_4_n_0 ,\last_sum_dx[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[9] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_dx_reg[8]_i_1_n_6 ),
        .Q(last_sum_dx_reg[9]));
  LUT4 #(
    .INIT(16'h1000)) 
    \last_sum_sx[0]_i_1 
       (.I0(tlast_sampled),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(last_sum_sx));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[0]_i_3 
       (.I0(\sub_reg_n_0_[3] ),
        .I1(last_sum_sx_reg[3]),
        .O(\last_sum_sx[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[0]_i_4 
       (.I0(\sub_reg_n_0_[2] ),
        .I1(last_sum_sx_reg[2]),
        .O(\last_sum_sx[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[0]_i_5 
       (.I0(\sub_reg_n_0_[1] ),
        .I1(last_sum_sx_reg[1]),
        .O(\last_sum_sx[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[0]_i_6 
       (.I0(\sub_reg_n_0_[0] ),
        .I1(last_sum_sx_reg[0]),
        .O(\last_sum_sx[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[12]_i_2 
       (.I0(\sub_reg_n_0_[15] ),
        .I1(last_sum_sx_reg[15]),
        .O(\last_sum_sx[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[12]_i_3 
       (.I0(\sub_reg_n_0_[14] ),
        .I1(last_sum_sx_reg[14]),
        .O(\last_sum_sx[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[12]_i_4 
       (.I0(\sub_reg_n_0_[13] ),
        .I1(last_sum_sx_reg[13]),
        .O(\last_sum_sx[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[12]_i_5 
       (.I0(\sub_reg_n_0_[12] ),
        .I1(last_sum_sx_reg[12]),
        .O(\last_sum_sx[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[16]_i_2 
       (.I0(\sub_reg_n_0_[16] ),
        .I1(last_sum_sx_reg[19]),
        .O(\last_sum_sx[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[16]_i_3 
       (.I0(\sub_reg_n_0_[16] ),
        .I1(last_sum_sx_reg[18]),
        .O(\last_sum_sx[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[16]_i_4 
       (.I0(\sub_reg_n_0_[16] ),
        .I1(last_sum_sx_reg[17]),
        .O(\last_sum_sx[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[16]_i_5 
       (.I0(\sub_reg_n_0_[16] ),
        .I1(last_sum_sx_reg[16]),
        .O(\last_sum_sx[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[20]_i_2 
       (.I0(\sub_reg_n_0_[16] ),
        .I1(last_sum_sx_reg[20]),
        .O(\last_sum_sx[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[4]_i_2 
       (.I0(\sub_reg_n_0_[7] ),
        .I1(last_sum_sx_reg[7]),
        .O(\last_sum_sx[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[4]_i_3 
       (.I0(\sub_reg_n_0_[6] ),
        .I1(last_sum_sx_reg[6]),
        .O(\last_sum_sx[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[4]_i_4 
       (.I0(\sub_reg_n_0_[5] ),
        .I1(last_sum_sx_reg[5]),
        .O(\last_sum_sx[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[4]_i_5 
       (.I0(\sub_reg_n_0_[4] ),
        .I1(last_sum_sx_reg[4]),
        .O(\last_sum_sx[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[8]_i_2 
       (.I0(\sub_reg_n_0_[11] ),
        .I1(last_sum_sx_reg[11]),
        .O(\last_sum_sx[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[8]_i_3 
       (.I0(\sub_reg_n_0_[10] ),
        .I1(last_sum_sx_reg[10]),
        .O(\last_sum_sx[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[8]_i_4 
       (.I0(\sub_reg_n_0_[9] ),
        .I1(last_sum_sx_reg[9]),
        .O(\last_sum_sx[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[8]_i_5 
       (.I0(\sub_reg_n_0_[8] ),
        .I1(last_sum_sx_reg[8]),
        .O(\last_sum_sx[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[0] 
       (.C(clk),
        .CE(last_sum_sx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_sx_reg[0]_i_2_n_7 ),
        .Q(last_sum_sx_reg[0]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \last_sum_sx_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\last_sum_sx_reg[0]_i_2_n_0 ,\last_sum_sx_reg[0]_i_2_n_1 ,\last_sum_sx_reg[0]_i_2_n_2 ,\last_sum_sx_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\sub_reg_n_0_[3] ,\sub_reg_n_0_[2] ,\sub_reg_n_0_[1] ,\sub_reg_n_0_[0] }),
        .O({\last_sum_sx_reg[0]_i_2_n_4 ,\last_sum_sx_reg[0]_i_2_n_5 ,\last_sum_sx_reg[0]_i_2_n_6 ,\last_sum_sx_reg[0]_i_2_n_7 }),
        .S({\last_sum_sx[0]_i_3_n_0 ,\last_sum_sx[0]_i_4_n_0 ,\last_sum_sx[0]_i_5_n_0 ,\last_sum_sx[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[10] 
       (.C(clk),
        .CE(last_sum_sx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_sx_reg[8]_i_1_n_5 ),
        .Q(last_sum_sx_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[11] 
       (.C(clk),
        .CE(last_sum_sx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_sx_reg[8]_i_1_n_4 ),
        .Q(last_sum_sx_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[12] 
       (.C(clk),
        .CE(last_sum_sx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_sx_reg[12]_i_1_n_7 ),
        .Q(last_sum_sx_reg[12]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \last_sum_sx_reg[12]_i_1 
       (.CI(\last_sum_sx_reg[8]_i_1_n_0 ),
        .CO({\last_sum_sx_reg[12]_i_1_n_0 ,\last_sum_sx_reg[12]_i_1_n_1 ,\last_sum_sx_reg[12]_i_1_n_2 ,\last_sum_sx_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sub_reg_n_0_[15] ,\sub_reg_n_0_[14] ,\sub_reg_n_0_[13] ,\sub_reg_n_0_[12] }),
        .O({\last_sum_sx_reg[12]_i_1_n_4 ,\last_sum_sx_reg[12]_i_1_n_5 ,\last_sum_sx_reg[12]_i_1_n_6 ,\last_sum_sx_reg[12]_i_1_n_7 }),
        .S({\last_sum_sx[12]_i_2_n_0 ,\last_sum_sx[12]_i_3_n_0 ,\last_sum_sx[12]_i_4_n_0 ,\last_sum_sx[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[13] 
       (.C(clk),
        .CE(last_sum_sx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_sx_reg[12]_i_1_n_6 ),
        .Q(last_sum_sx_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[14] 
       (.C(clk),
        .CE(last_sum_sx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_sx_reg[12]_i_1_n_5 ),
        .Q(last_sum_sx_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[15] 
       (.C(clk),
        .CE(last_sum_sx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_sx_reg[12]_i_1_n_4 ),
        .Q(last_sum_sx_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[16] 
       (.C(clk),
        .CE(last_sum_sx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_sx_reg[16]_i_1_n_7 ),
        .Q(last_sum_sx_reg[16]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \last_sum_sx_reg[16]_i_1 
       (.CI(\last_sum_sx_reg[12]_i_1_n_0 ),
        .CO({\last_sum_sx_reg[16]_i_1_n_0 ,\last_sum_sx_reg[16]_i_1_n_1 ,\last_sum_sx_reg[16]_i_1_n_2 ,\last_sum_sx_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sub_reg_n_0_[16] ,\sub_reg_n_0_[16] ,\sub_reg_n_0_[16] ,\sub_reg_n_0_[16] }),
        .O({\last_sum_sx_reg[16]_i_1_n_4 ,\last_sum_sx_reg[16]_i_1_n_5 ,\last_sum_sx_reg[16]_i_1_n_6 ,\last_sum_sx_reg[16]_i_1_n_7 }),
        .S({\last_sum_sx[16]_i_2_n_0 ,\last_sum_sx[16]_i_3_n_0 ,\last_sum_sx[16]_i_4_n_0 ,\last_sum_sx[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[17] 
       (.C(clk),
        .CE(last_sum_sx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_sx_reg[16]_i_1_n_6 ),
        .Q(last_sum_sx_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[18] 
       (.C(clk),
        .CE(last_sum_sx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_sx_reg[16]_i_1_n_5 ),
        .Q(last_sum_sx_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[19] 
       (.C(clk),
        .CE(last_sum_sx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_sx_reg[16]_i_1_n_4 ),
        .Q(last_sum_sx_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[1] 
       (.C(clk),
        .CE(last_sum_sx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_sx_reg[0]_i_2_n_6 ),
        .Q(last_sum_sx_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[20] 
       (.C(clk),
        .CE(last_sum_sx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_sx_reg[20]_i_1_n_7 ),
        .Q(last_sum_sx_reg[20]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \last_sum_sx_reg[20]_i_1 
       (.CI(\last_sum_sx_reg[16]_i_1_n_0 ),
        .CO(\NLW_last_sum_sx_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_last_sum_sx_reg[20]_i_1_O_UNCONNECTED [3:1],\last_sum_sx_reg[20]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\last_sum_sx[20]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[2] 
       (.C(clk),
        .CE(last_sum_sx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_sx_reg[0]_i_2_n_5 ),
        .Q(last_sum_sx_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[3] 
       (.C(clk),
        .CE(last_sum_sx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_sx_reg[0]_i_2_n_4 ),
        .Q(last_sum_sx_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[4] 
       (.C(clk),
        .CE(last_sum_sx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_sx_reg[4]_i_1_n_7 ),
        .Q(last_sum_sx_reg[4]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \last_sum_sx_reg[4]_i_1 
       (.CI(\last_sum_sx_reg[0]_i_2_n_0 ),
        .CO({\last_sum_sx_reg[4]_i_1_n_0 ,\last_sum_sx_reg[4]_i_1_n_1 ,\last_sum_sx_reg[4]_i_1_n_2 ,\last_sum_sx_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sub_reg_n_0_[7] ,\sub_reg_n_0_[6] ,\sub_reg_n_0_[5] ,\sub_reg_n_0_[4] }),
        .O({\last_sum_sx_reg[4]_i_1_n_4 ,\last_sum_sx_reg[4]_i_1_n_5 ,\last_sum_sx_reg[4]_i_1_n_6 ,\last_sum_sx_reg[4]_i_1_n_7 }),
        .S({\last_sum_sx[4]_i_2_n_0 ,\last_sum_sx[4]_i_3_n_0 ,\last_sum_sx[4]_i_4_n_0 ,\last_sum_sx[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[5] 
       (.C(clk),
        .CE(last_sum_sx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_sx_reg[4]_i_1_n_6 ),
        .Q(last_sum_sx_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[6] 
       (.C(clk),
        .CE(last_sum_sx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_sx_reg[4]_i_1_n_5 ),
        .Q(last_sum_sx_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[7] 
       (.C(clk),
        .CE(last_sum_sx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_sx_reg[4]_i_1_n_4 ),
        .Q(last_sum_sx_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[8] 
       (.C(clk),
        .CE(last_sum_sx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_sx_reg[8]_i_1_n_7 ),
        .Q(last_sum_sx_reg[8]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \last_sum_sx_reg[8]_i_1 
       (.CI(\last_sum_sx_reg[4]_i_1_n_0 ),
        .CO({\last_sum_sx_reg[8]_i_1_n_0 ,\last_sum_sx_reg[8]_i_1_n_1 ,\last_sum_sx_reg[8]_i_1_n_2 ,\last_sum_sx_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sub_reg_n_0_[11] ,\sub_reg_n_0_[10] ,\sub_reg_n_0_[9] ,\sub_reg_n_0_[8] }),
        .O({\last_sum_sx_reg[8]_i_1_n_4 ,\last_sum_sx_reg[8]_i_1_n_5 ,\last_sum_sx_reg[8]_i_1_n_6 ,\last_sum_sx_reg[8]_i_1_n_7 }),
        .S({\last_sum_sx[8]_i_2_n_0 ,\last_sum_sx[8]_i_3_n_0 ,\last_sum_sx[8]_i_4_n_0 ,\last_sum_sx[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[9] 
       (.C(clk),
        .CE(last_sum_sx),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_sum_sx_reg[8]_i_1_n_6 ),
        .Q(last_sum_sx_reg[9]));
  LUT4 #(
    .INIT(16'h1000)) 
    last_values_dx_c_i_1
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(tlast_sampled),
        .O(\last_values_dx[0]_1 ));
  (* srl_bus_name = "\U0/last_values_dx_reg[29] " *) 
  (* srl_name = "\U0/last_values_dx_reg[29][0]_srl30_U0_last_values_dx_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_dx_reg[29][0]_srl30_U0_last_values_dx_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_dx[0]_1 ),
        .CLK(clk),
        .D(data_in[0]),
        .Q(\last_values_dx_reg[29][0]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q31(\NLW_last_values_dx_reg[29][0]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_dx_reg[29] " *) 
  (* srl_name = "\U0/last_values_dx_reg[29][10]_srl30_U0_last_values_dx_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_dx_reg[29][10]_srl30_U0_last_values_dx_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_dx[0]_1 ),
        .CLK(clk),
        .D(data_in[10]),
        .Q(\last_values_dx_reg[29][10]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q31(\NLW_last_values_dx_reg[29][10]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_dx_reg[29] " *) 
  (* srl_name = "\U0/last_values_dx_reg[29][11]_srl30_U0_last_values_dx_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_dx_reg[29][11]_srl30_U0_last_values_dx_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_dx[0]_1 ),
        .CLK(clk),
        .D(data_in[11]),
        .Q(\last_values_dx_reg[29][11]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q31(\NLW_last_values_dx_reg[29][11]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_dx_reg[29] " *) 
  (* srl_name = "\U0/last_values_dx_reg[29][12]_srl30_U0_last_values_dx_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_dx_reg[29][12]_srl30_U0_last_values_dx_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_dx[0]_1 ),
        .CLK(clk),
        .D(data_in[12]),
        .Q(\last_values_dx_reg[29][12]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q31(\NLW_last_values_dx_reg[29][12]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_dx_reg[29] " *) 
  (* srl_name = "\U0/last_values_dx_reg[29][13]_srl30_U0_last_values_dx_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_dx_reg[29][13]_srl30_U0_last_values_dx_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_dx[0]_1 ),
        .CLK(clk),
        .D(data_in[13]),
        .Q(\last_values_dx_reg[29][13]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q31(\NLW_last_values_dx_reg[29][13]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_dx_reg[29] " *) 
  (* srl_name = "\U0/last_values_dx_reg[29][14]_srl30_U0_last_values_dx_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_dx_reg[29][14]_srl30_U0_last_values_dx_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_dx[0]_1 ),
        .CLK(clk),
        .D(data_in[14]),
        .Q(\last_values_dx_reg[29][14]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q31(\NLW_last_values_dx_reg[29][14]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_dx_reg[29] " *) 
  (* srl_name = "\U0/last_values_dx_reg[29][15]_srl30_U0_last_values_dx_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_dx_reg[29][15]_srl30_U0_last_values_dx_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_dx[0]_1 ),
        .CLK(clk),
        .D(data_in[15]),
        .Q(\last_values_dx_reg[29][15]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q31(\NLW_last_values_dx_reg[29][15]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_dx_reg[29] " *) 
  (* srl_name = "\U0/last_values_dx_reg[29][1]_srl30_U0_last_values_dx_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_dx_reg[29][1]_srl30_U0_last_values_dx_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_dx[0]_1 ),
        .CLK(clk),
        .D(data_in[1]),
        .Q(\last_values_dx_reg[29][1]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q31(\NLW_last_values_dx_reg[29][1]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_dx_reg[29] " *) 
  (* srl_name = "\U0/last_values_dx_reg[29][2]_srl30_U0_last_values_dx_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_dx_reg[29][2]_srl30_U0_last_values_dx_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_dx[0]_1 ),
        .CLK(clk),
        .D(data_in[2]),
        .Q(\last_values_dx_reg[29][2]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q31(\NLW_last_values_dx_reg[29][2]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_dx_reg[29] " *) 
  (* srl_name = "\U0/last_values_dx_reg[29][3]_srl30_U0_last_values_dx_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_dx_reg[29][3]_srl30_U0_last_values_dx_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_dx[0]_1 ),
        .CLK(clk),
        .D(data_in[3]),
        .Q(\last_values_dx_reg[29][3]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q31(\NLW_last_values_dx_reg[29][3]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_dx_reg[29] " *) 
  (* srl_name = "\U0/last_values_dx_reg[29][4]_srl30_U0_last_values_dx_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_dx_reg[29][4]_srl30_U0_last_values_dx_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_dx[0]_1 ),
        .CLK(clk),
        .D(data_in[4]),
        .Q(\last_values_dx_reg[29][4]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q31(\NLW_last_values_dx_reg[29][4]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_dx_reg[29] " *) 
  (* srl_name = "\U0/last_values_dx_reg[29][5]_srl30_U0_last_values_dx_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_dx_reg[29][5]_srl30_U0_last_values_dx_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_dx[0]_1 ),
        .CLK(clk),
        .D(data_in[5]),
        .Q(\last_values_dx_reg[29][5]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q31(\NLW_last_values_dx_reg[29][5]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_dx_reg[29] " *) 
  (* srl_name = "\U0/last_values_dx_reg[29][6]_srl30_U0_last_values_dx_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_dx_reg[29][6]_srl30_U0_last_values_dx_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_dx[0]_1 ),
        .CLK(clk),
        .D(data_in[6]),
        .Q(\last_values_dx_reg[29][6]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q31(\NLW_last_values_dx_reg[29][6]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_dx_reg[29] " *) 
  (* srl_name = "\U0/last_values_dx_reg[29][7]_srl30_U0_last_values_dx_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_dx_reg[29][7]_srl30_U0_last_values_dx_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_dx[0]_1 ),
        .CLK(clk),
        .D(data_in[7]),
        .Q(\last_values_dx_reg[29][7]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q31(\NLW_last_values_dx_reg[29][7]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_dx_reg[29] " *) 
  (* srl_name = "\U0/last_values_dx_reg[29][8]_srl30_U0_last_values_dx_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_dx_reg[29][8]_srl30_U0_last_values_dx_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_dx[0]_1 ),
        .CLK(clk),
        .D(data_in[8]),
        .Q(\last_values_dx_reg[29][8]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q31(\NLW_last_values_dx_reg[29][8]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_dx_reg[29] " *) 
  (* srl_name = "\U0/last_values_dx_reg[29][9]_srl30_U0_last_values_dx_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_dx_reg[29][9]_srl30_U0_last_values_dx_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_dx[0]_1 ),
        .CLK(clk),
        .D(data_in[9]),
        .Q(\last_values_dx_reg[29][9]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q31(\NLW_last_values_dx_reg[29][9]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ));
  FDRE \last_values_dx_reg[30][0]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .D(\last_values_dx_reg[29][0]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][0]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][10]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .D(\last_values_dx_reg[29][10]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][10]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][11]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .D(\last_values_dx_reg[29][11]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][11]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][12]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .D(\last_values_dx_reg[29][12]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][12]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][13]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .D(\last_values_dx_reg[29][13]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][13]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][14]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .D(\last_values_dx_reg[29][14]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][14]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][15]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .D(\last_values_dx_reg[29][15]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][15]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][1]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .D(\last_values_dx_reg[29][1]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][1]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][2]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .D(\last_values_dx_reg[29][2]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][2]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][3]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .D(\last_values_dx_reg[29][3]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][3]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][4]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .D(\last_values_dx_reg[29][4]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][4]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][5]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .D(\last_values_dx_reg[29][5]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][5]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][6]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .D(\last_values_dx_reg[29][6]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][6]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][7]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .D(\last_values_dx_reg[29][7]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][7]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][8]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .D(\last_values_dx_reg[29][8]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][8]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][9]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .D(\last_values_dx_reg[29][9]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][9]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDCE \last_values_dx_reg[31][0] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__14_n_0),
        .Q(\last_values_dx_reg[31] [0]));
  FDCE \last_values_dx_reg[31][10] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__4_n_0),
        .Q(\last_values_dx_reg[31] [10]));
  FDCE \last_values_dx_reg[31][11] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__3_n_0),
        .Q(\last_values_dx_reg[31] [11]));
  FDCE \last_values_dx_reg[31][12] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__2_n_0),
        .Q(\last_values_dx_reg[31] [12]));
  FDCE \last_values_dx_reg[31][13] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__1_n_0),
        .Q(\last_values_dx_reg[31] [13]));
  FDCE \last_values_dx_reg[31][14] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__0_n_0),
        .Q(\last_values_dx_reg[31] [14]));
  FDCE \last_values_dx_reg[31][15] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate_n_0),
        .Q(\last_values_dx_reg[31] [15]));
  FDCE \last_values_dx_reg[31][1] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__13_n_0),
        .Q(\last_values_dx_reg[31] [1]));
  FDCE \last_values_dx_reg[31][2] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__12_n_0),
        .Q(\last_values_dx_reg[31] [2]));
  FDCE \last_values_dx_reg[31][3] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__11_n_0),
        .Q(\last_values_dx_reg[31] [3]));
  FDCE \last_values_dx_reg[31][4] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__10_n_0),
        .Q(\last_values_dx_reg[31] [4]));
  FDCE \last_values_dx_reg[31][5] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__9_n_0),
        .Q(\last_values_dx_reg[31] [5]));
  FDCE \last_values_dx_reg[31][6] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__8_n_0),
        .Q(\last_values_dx_reg[31] [6]));
  FDCE \last_values_dx_reg[31][7] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__7_n_0),
        .Q(\last_values_dx_reg[31] [7]));
  FDCE \last_values_dx_reg[31][8] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__6_n_0),
        .Q(\last_values_dx_reg[31] [8]));
  FDCE \last_values_dx_reg[31][9] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__5_n_0),
        .Q(\last_values_dx_reg[31] [9]));
  FDCE last_values_dx_reg_c
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(1'b1),
        .Q(last_values_dx_reg_c_n_0));
  FDCE last_values_dx_reg_c_30
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_n_0),
        .Q(last_values_dx_reg_c_30_n_0));
  FDCE last_values_dx_reg_c_31
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_30_n_0),
        .Q(last_values_dx_reg_c_31_n_0));
  FDCE last_values_dx_reg_c_32
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_31_n_0),
        .Q(last_values_dx_reg_c_32_n_0));
  FDCE last_values_dx_reg_c_33
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_32_n_0),
        .Q(last_values_dx_reg_c_33_n_0));
  FDCE last_values_dx_reg_c_34
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_33_n_0),
        .Q(last_values_dx_reg_c_34_n_0));
  FDCE last_values_dx_reg_c_35
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_34_n_0),
        .Q(last_values_dx_reg_c_35_n_0));
  FDCE last_values_dx_reg_c_36
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_35_n_0),
        .Q(last_values_dx_reg_c_36_n_0));
  FDCE last_values_dx_reg_c_37
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_36_n_0),
        .Q(last_values_dx_reg_c_37_n_0));
  FDCE last_values_dx_reg_c_38
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_37_n_0),
        .Q(last_values_dx_reg_c_38_n_0));
  FDCE last_values_dx_reg_c_39
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_38_n_0),
        .Q(last_values_dx_reg_c_39_n_0));
  FDCE last_values_dx_reg_c_40
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_39_n_0),
        .Q(last_values_dx_reg_c_40_n_0));
  FDCE last_values_dx_reg_c_41
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_40_n_0),
        .Q(last_values_dx_reg_c_41_n_0));
  FDCE last_values_dx_reg_c_42
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_41_n_0),
        .Q(last_values_dx_reg_c_42_n_0));
  FDCE last_values_dx_reg_c_43
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_42_n_0),
        .Q(last_values_dx_reg_c_43_n_0));
  FDCE last_values_dx_reg_c_44
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_43_n_0),
        .Q(last_values_dx_reg_c_44_n_0));
  FDCE last_values_dx_reg_c_45
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_44_n_0),
        .Q(last_values_dx_reg_c_45_n_0));
  FDCE last_values_dx_reg_c_46
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_45_n_0),
        .Q(last_values_dx_reg_c_46_n_0));
  FDCE last_values_dx_reg_c_47
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_46_n_0),
        .Q(last_values_dx_reg_c_47_n_0));
  FDCE last_values_dx_reg_c_48
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_47_n_0),
        .Q(last_values_dx_reg_c_48_n_0));
  FDCE last_values_dx_reg_c_49
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_48_n_0),
        .Q(last_values_dx_reg_c_49_n_0));
  FDCE last_values_dx_reg_c_50
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_49_n_0),
        .Q(last_values_dx_reg_c_50_n_0));
  FDCE last_values_dx_reg_c_51
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_50_n_0),
        .Q(last_values_dx_reg_c_51_n_0));
  FDCE last_values_dx_reg_c_52
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_51_n_0),
        .Q(last_values_dx_reg_c_52_n_0));
  FDCE last_values_dx_reg_c_53
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_52_n_0),
        .Q(last_values_dx_reg_c_53_n_0));
  FDCE last_values_dx_reg_c_54
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_53_n_0),
        .Q(last_values_dx_reg_c_54_n_0));
  FDCE last_values_dx_reg_c_55
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_54_n_0),
        .Q(last_values_dx_reg_c_55_n_0));
  FDCE last_values_dx_reg_c_56
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_55_n_0),
        .Q(last_values_dx_reg_c_56_n_0));
  FDCE last_values_dx_reg_c_57
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_56_n_0),
        .Q(last_values_dx_reg_c_57_n_0));
  FDCE last_values_dx_reg_c_58
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_57_n_0),
        .Q(last_values_dx_reg_c_58_n_0));
  FDCE last_values_dx_reg_c_59
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_58_n_0),
        .Q(last_values_dx_reg_c_59_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate
       (.I0(\last_values_dx_reg[30][15]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__0
       (.I0(\last_values_dx_reg[30][14]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__1
       (.I0(\last_values_dx_reg[30][13]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__10
       (.I0(\last_values_dx_reg[30][4]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__11
       (.I0(\last_values_dx_reg[30][3]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__12
       (.I0(\last_values_dx_reg[30][2]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__13
       (.I0(\last_values_dx_reg[30][1]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__14
       (.I0(\last_values_dx_reg[30][0]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__2
       (.I0(\last_values_dx_reg[30][12]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__3
       (.I0(\last_values_dx_reg[30][11]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__4
       (.I0(\last_values_dx_reg[30][10]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__5
       (.I0(\last_values_dx_reg[30][9]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__6
       (.I0(\last_values_dx_reg[30][8]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__7
       (.I0(\last_values_dx_reg[30][7]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__8
       (.I0(\last_values_dx_reg[30][6]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__9
       (.I0(\last_values_dx_reg[30][5]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__9_n_0));
  LUT4 #(
    .INIT(16'h0010)) 
    last_values_sx_c_i_1
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(tlast_sampled),
        .O(\last_values_sx[0]_0 ));
  (* srl_bus_name = "\U0/last_values_sx_reg[29] " *) 
  (* srl_name = "\U0/last_values_sx_reg[29][0]_srl30_U0_last_values_sx_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_sx_reg[29][0]_srl30_U0_last_values_sx_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_sx[0]_0 ),
        .CLK(clk),
        .D(data_in[0]),
        .Q(\last_values_sx_reg[29][0]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q31(\NLW_last_values_sx_reg[29][0]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_sx_reg[29] " *) 
  (* srl_name = "\U0/last_values_sx_reg[29][10]_srl30_U0_last_values_sx_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_sx_reg[29][10]_srl30_U0_last_values_sx_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_sx[0]_0 ),
        .CLK(clk),
        .D(data_in[10]),
        .Q(\last_values_sx_reg[29][10]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q31(\NLW_last_values_sx_reg[29][10]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_sx_reg[29] " *) 
  (* srl_name = "\U0/last_values_sx_reg[29][11]_srl30_U0_last_values_sx_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_sx_reg[29][11]_srl30_U0_last_values_sx_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_sx[0]_0 ),
        .CLK(clk),
        .D(data_in[11]),
        .Q(\last_values_sx_reg[29][11]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q31(\NLW_last_values_sx_reg[29][11]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_sx_reg[29] " *) 
  (* srl_name = "\U0/last_values_sx_reg[29][12]_srl30_U0_last_values_sx_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_sx_reg[29][12]_srl30_U0_last_values_sx_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_sx[0]_0 ),
        .CLK(clk),
        .D(data_in[12]),
        .Q(\last_values_sx_reg[29][12]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q31(\NLW_last_values_sx_reg[29][12]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_sx_reg[29] " *) 
  (* srl_name = "\U0/last_values_sx_reg[29][13]_srl30_U0_last_values_sx_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_sx_reg[29][13]_srl30_U0_last_values_sx_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_sx[0]_0 ),
        .CLK(clk),
        .D(data_in[13]),
        .Q(\last_values_sx_reg[29][13]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q31(\NLW_last_values_sx_reg[29][13]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_sx_reg[29] " *) 
  (* srl_name = "\U0/last_values_sx_reg[29][14]_srl30_U0_last_values_sx_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_sx_reg[29][14]_srl30_U0_last_values_sx_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_sx[0]_0 ),
        .CLK(clk),
        .D(data_in[14]),
        .Q(\last_values_sx_reg[29][14]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q31(\NLW_last_values_sx_reg[29][14]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_sx_reg[29] " *) 
  (* srl_name = "\U0/last_values_sx_reg[29][15]_srl30_U0_last_values_sx_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_sx_reg[29][15]_srl30_U0_last_values_sx_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_sx[0]_0 ),
        .CLK(clk),
        .D(data_in[15]),
        .Q(\last_values_sx_reg[29][15]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q31(\NLW_last_values_sx_reg[29][15]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_sx_reg[29] " *) 
  (* srl_name = "\U0/last_values_sx_reg[29][1]_srl30_U0_last_values_sx_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_sx_reg[29][1]_srl30_U0_last_values_sx_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_sx[0]_0 ),
        .CLK(clk),
        .D(data_in[1]),
        .Q(\last_values_sx_reg[29][1]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q31(\NLW_last_values_sx_reg[29][1]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_sx_reg[29] " *) 
  (* srl_name = "\U0/last_values_sx_reg[29][2]_srl30_U0_last_values_sx_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_sx_reg[29][2]_srl30_U0_last_values_sx_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_sx[0]_0 ),
        .CLK(clk),
        .D(data_in[2]),
        .Q(\last_values_sx_reg[29][2]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q31(\NLW_last_values_sx_reg[29][2]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_sx_reg[29] " *) 
  (* srl_name = "\U0/last_values_sx_reg[29][3]_srl30_U0_last_values_sx_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_sx_reg[29][3]_srl30_U0_last_values_sx_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_sx[0]_0 ),
        .CLK(clk),
        .D(data_in[3]),
        .Q(\last_values_sx_reg[29][3]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q31(\NLW_last_values_sx_reg[29][3]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_sx_reg[29] " *) 
  (* srl_name = "\U0/last_values_sx_reg[29][4]_srl30_U0_last_values_sx_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_sx_reg[29][4]_srl30_U0_last_values_sx_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_sx[0]_0 ),
        .CLK(clk),
        .D(data_in[4]),
        .Q(\last_values_sx_reg[29][4]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q31(\NLW_last_values_sx_reg[29][4]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_sx_reg[29] " *) 
  (* srl_name = "\U0/last_values_sx_reg[29][5]_srl30_U0_last_values_sx_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_sx_reg[29][5]_srl30_U0_last_values_sx_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_sx[0]_0 ),
        .CLK(clk),
        .D(data_in[5]),
        .Q(\last_values_sx_reg[29][5]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q31(\NLW_last_values_sx_reg[29][5]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_sx_reg[29] " *) 
  (* srl_name = "\U0/last_values_sx_reg[29][6]_srl30_U0_last_values_sx_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_sx_reg[29][6]_srl30_U0_last_values_sx_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_sx[0]_0 ),
        .CLK(clk),
        .D(data_in[6]),
        .Q(\last_values_sx_reg[29][6]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q31(\NLW_last_values_sx_reg[29][6]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_sx_reg[29] " *) 
  (* srl_name = "\U0/last_values_sx_reg[29][7]_srl30_U0_last_values_sx_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_sx_reg[29][7]_srl30_U0_last_values_sx_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_sx[0]_0 ),
        .CLK(clk),
        .D(data_in[7]),
        .Q(\last_values_sx_reg[29][7]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q31(\NLW_last_values_sx_reg[29][7]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_sx_reg[29] " *) 
  (* srl_name = "\U0/last_values_sx_reg[29][8]_srl30_U0_last_values_sx_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_sx_reg[29][8]_srl30_U0_last_values_sx_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_sx[0]_0 ),
        .CLK(clk),
        .D(data_in[8]),
        .Q(\last_values_sx_reg[29][8]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q31(\NLW_last_values_sx_reg[29][8]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_values_sx_reg[29] " *) 
  (* srl_name = "\U0/last_values_sx_reg[29][9]_srl30_U0_last_values_sx_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_sx_reg[29][9]_srl30_U0_last_values_sx_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_sx[0]_0 ),
        .CLK(clk),
        .D(data_in[9]),
        .Q(\last_values_sx_reg[29][9]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q31(\NLW_last_values_sx_reg[29][9]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED ));
  FDRE \last_values_sx_reg[30][0]_U0_last_values_sx_reg_c_29 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .D(\last_values_sx_reg[29][0]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q(\last_values_sx_reg[30][0]_U0_last_values_sx_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_values_sx_reg[30][10]_U0_last_values_sx_reg_c_29 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .D(\last_values_sx_reg[29][10]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q(\last_values_sx_reg[30][10]_U0_last_values_sx_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_values_sx_reg[30][11]_U0_last_values_sx_reg_c_29 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .D(\last_values_sx_reg[29][11]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q(\last_values_sx_reg[30][11]_U0_last_values_sx_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_values_sx_reg[30][12]_U0_last_values_sx_reg_c_29 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .D(\last_values_sx_reg[29][12]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q(\last_values_sx_reg[30][12]_U0_last_values_sx_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_values_sx_reg[30][13]_U0_last_values_sx_reg_c_29 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .D(\last_values_sx_reg[29][13]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q(\last_values_sx_reg[30][13]_U0_last_values_sx_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_values_sx_reg[30][14]_U0_last_values_sx_reg_c_29 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .D(\last_values_sx_reg[29][14]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q(\last_values_sx_reg[30][14]_U0_last_values_sx_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_values_sx_reg[30][15]_U0_last_values_sx_reg_c_29 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .D(\last_values_sx_reg[29][15]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q(\last_values_sx_reg[30][15]_U0_last_values_sx_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_values_sx_reg[30][1]_U0_last_values_sx_reg_c_29 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .D(\last_values_sx_reg[29][1]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q(\last_values_sx_reg[30][1]_U0_last_values_sx_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_values_sx_reg[30][2]_U0_last_values_sx_reg_c_29 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .D(\last_values_sx_reg[29][2]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q(\last_values_sx_reg[30][2]_U0_last_values_sx_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_values_sx_reg[30][3]_U0_last_values_sx_reg_c_29 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .D(\last_values_sx_reg[29][3]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q(\last_values_sx_reg[30][3]_U0_last_values_sx_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_values_sx_reg[30][4]_U0_last_values_sx_reg_c_29 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .D(\last_values_sx_reg[29][4]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q(\last_values_sx_reg[30][4]_U0_last_values_sx_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_values_sx_reg[30][5]_U0_last_values_sx_reg_c_29 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .D(\last_values_sx_reg[29][5]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q(\last_values_sx_reg[30][5]_U0_last_values_sx_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_values_sx_reg[30][6]_U0_last_values_sx_reg_c_29 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .D(\last_values_sx_reg[29][6]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q(\last_values_sx_reg[30][6]_U0_last_values_sx_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_values_sx_reg[30][7]_U0_last_values_sx_reg_c_29 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .D(\last_values_sx_reg[29][7]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q(\last_values_sx_reg[30][7]_U0_last_values_sx_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_values_sx_reg[30][8]_U0_last_values_sx_reg_c_29 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .D(\last_values_sx_reg[29][8]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q(\last_values_sx_reg[30][8]_U0_last_values_sx_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_values_sx_reg[30][9]_U0_last_values_sx_reg_c_29 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .D(\last_values_sx_reg[29][9]_srl30_U0_last_values_sx_reg_c_28_n_0 ),
        .Q(\last_values_sx_reg[30][9]_U0_last_values_sx_reg_c_29_n_0 ),
        .R(1'b0));
  FDCE \last_values_sx_reg[31][0] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_gate__14_n_0),
        .Q(\last_values_sx_reg[31] [0]));
  FDCE \last_values_sx_reg[31][10] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_gate__4_n_0),
        .Q(\last_values_sx_reg[31] [10]));
  FDCE \last_values_sx_reg[31][11] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_gate__3_n_0),
        .Q(\last_values_sx_reg[31] [11]));
  FDCE \last_values_sx_reg[31][12] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_gate__2_n_0),
        .Q(\last_values_sx_reg[31] [12]));
  FDCE \last_values_sx_reg[31][13] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_gate__1_n_0),
        .Q(\last_values_sx_reg[31] [13]));
  FDCE \last_values_sx_reg[31][14] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_gate__0_n_0),
        .Q(\last_values_sx_reg[31] [14]));
  FDCE \last_values_sx_reg[31][15] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_gate_n_0),
        .Q(\last_values_sx_reg[31] [15]));
  FDCE \last_values_sx_reg[31][1] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_gate__13_n_0),
        .Q(\last_values_sx_reg[31] [1]));
  FDCE \last_values_sx_reg[31][2] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_gate__12_n_0),
        .Q(\last_values_sx_reg[31] [2]));
  FDCE \last_values_sx_reg[31][3] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_gate__11_n_0),
        .Q(\last_values_sx_reg[31] [3]));
  FDCE \last_values_sx_reg[31][4] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_gate__10_n_0),
        .Q(\last_values_sx_reg[31] [4]));
  FDCE \last_values_sx_reg[31][5] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_gate__9_n_0),
        .Q(\last_values_sx_reg[31] [5]));
  FDCE \last_values_sx_reg[31][6] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_gate__8_n_0),
        .Q(\last_values_sx_reg[31] [6]));
  FDCE \last_values_sx_reg[31][7] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_gate__7_n_0),
        .Q(\last_values_sx_reg[31] [7]));
  FDCE \last_values_sx_reg[31][8] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_gate__6_n_0),
        .Q(\last_values_sx_reg[31] [8]));
  FDCE \last_values_sx_reg[31][9] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_gate__5_n_0),
        .Q(\last_values_sx_reg[31] [9]));
  FDCE last_values_sx_reg_c
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(1'b1),
        .Q(last_values_sx_reg_c_n_0));
  FDCE last_values_sx_reg_c_0
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_n_0),
        .Q(last_values_sx_reg_c_0_n_0));
  FDCE last_values_sx_reg_c_1
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_0_n_0),
        .Q(last_values_sx_reg_c_1_n_0));
  FDCE last_values_sx_reg_c_10
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_9_n_0),
        .Q(last_values_sx_reg_c_10_n_0));
  FDCE last_values_sx_reg_c_11
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_10_n_0),
        .Q(last_values_sx_reg_c_11_n_0));
  FDCE last_values_sx_reg_c_12
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_11_n_0),
        .Q(last_values_sx_reg_c_12_n_0));
  FDCE last_values_sx_reg_c_13
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_12_n_0),
        .Q(last_values_sx_reg_c_13_n_0));
  FDCE last_values_sx_reg_c_14
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_13_n_0),
        .Q(last_values_sx_reg_c_14_n_0));
  FDCE last_values_sx_reg_c_15
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_14_n_0),
        .Q(last_values_sx_reg_c_15_n_0));
  FDCE last_values_sx_reg_c_16
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_15_n_0),
        .Q(last_values_sx_reg_c_16_n_0));
  FDCE last_values_sx_reg_c_17
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_16_n_0),
        .Q(last_values_sx_reg_c_17_n_0));
  FDCE last_values_sx_reg_c_18
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_17_n_0),
        .Q(last_values_sx_reg_c_18_n_0));
  FDCE last_values_sx_reg_c_19
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_18_n_0),
        .Q(last_values_sx_reg_c_19_n_0));
  FDCE last_values_sx_reg_c_2
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_1_n_0),
        .Q(last_values_sx_reg_c_2_n_0));
  FDCE last_values_sx_reg_c_20
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_19_n_0),
        .Q(last_values_sx_reg_c_20_n_0));
  FDCE last_values_sx_reg_c_21
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_20_n_0),
        .Q(last_values_sx_reg_c_21_n_0));
  FDCE last_values_sx_reg_c_22
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_21_n_0),
        .Q(last_values_sx_reg_c_22_n_0));
  FDCE last_values_sx_reg_c_23
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_22_n_0),
        .Q(last_values_sx_reg_c_23_n_0));
  FDCE last_values_sx_reg_c_24
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_23_n_0),
        .Q(last_values_sx_reg_c_24_n_0));
  FDCE last_values_sx_reg_c_25
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_24_n_0),
        .Q(last_values_sx_reg_c_25_n_0));
  FDCE last_values_sx_reg_c_26
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_25_n_0),
        .Q(last_values_sx_reg_c_26_n_0));
  FDCE last_values_sx_reg_c_27
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_26_n_0),
        .Q(last_values_sx_reg_c_27_n_0));
  FDCE last_values_sx_reg_c_28
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_27_n_0),
        .Q(last_values_sx_reg_c_28_n_0));
  FDCE last_values_sx_reg_c_29
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_28_n_0),
        .Q(last_values_sx_reg_c_29_n_0));
  FDCE last_values_sx_reg_c_3
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_2_n_0),
        .Q(last_values_sx_reg_c_3_n_0));
  FDCE last_values_sx_reg_c_4
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_3_n_0),
        .Q(last_values_sx_reg_c_4_n_0));
  FDCE last_values_sx_reg_c_5
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_4_n_0),
        .Q(last_values_sx_reg_c_5_n_0));
  FDCE last_values_sx_reg_c_6
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_5_n_0),
        .Q(last_values_sx_reg_c_6_n_0));
  FDCE last_values_sx_reg_c_7
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_6_n_0),
        .Q(last_values_sx_reg_c_7_n_0));
  FDCE last_values_sx_reg_c_8
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_7_n_0),
        .Q(last_values_sx_reg_c_8_n_0));
  FDCE last_values_sx_reg_c_9
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_sx_reg_c_8_n_0),
        .Q(last_values_sx_reg_c_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate
       (.I0(\last_values_sx_reg[30][15]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__0
       (.I0(\last_values_sx_reg[30][14]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__1
       (.I0(\last_values_sx_reg[30][13]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__10
       (.I0(\last_values_sx_reg[30][4]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__11
       (.I0(\last_values_sx_reg[30][3]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__12
       (.I0(\last_values_sx_reg[30][2]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__13
       (.I0(\last_values_sx_reg[30][1]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__14
       (.I0(\last_values_sx_reg[30][0]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__2
       (.I0(\last_values_sx_reg[30][12]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__3
       (.I0(\last_values_sx_reg[30][11]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__4
       (.I0(\last_values_sx_reg[30][10]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__5
       (.I0(\last_values_sx_reg[30][9]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__6
       (.I0(\last_values_sx_reg[30][8]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__7
       (.I0(\last_values_sx_reg[30][7]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__8
       (.I0(\last_values_sx_reg[30][6]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__9
       (.I0(\last_values_sx_reg[30][5]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    m_axis_tlast_INST_0
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(tlast_sampled),
        .I3(state__0[2]),
        .O(m_axis_tlast));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h02)) 
    m_axis_tvalid_INST_0
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .O(m_axis_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h02)) 
    s_axis_tready_INST_0
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .O(s_axis_tready));
  LUT4 #(
    .INIT(16'h0200)) 
    \sub[16]_i_1 
       (.I0(aresetn),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .O(sub0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_reg[0] 
       (.C(clk),
        .CE(sub0),
        .D(sub[0]),
        .Q(\sub_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_reg[10] 
       (.C(clk),
        .CE(sub0),
        .D(sub[10]),
        .Q(\sub_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_reg[11] 
       (.C(clk),
        .CE(sub0),
        .D(sub[11]),
        .Q(\sub_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_reg[12] 
       (.C(clk),
        .CE(sub0),
        .D(sub[12]),
        .Q(\sub_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_reg[13] 
       (.C(clk),
        .CE(sub0),
        .D(sub[13]),
        .Q(\sub_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_reg[14] 
       (.C(clk),
        .CE(sub0),
        .D(sub[14]),
        .Q(\sub_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_reg[15] 
       (.C(clk),
        .CE(sub0),
        .D(sub[15]),
        .Q(\sub_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_reg[16] 
       (.C(clk),
        .CE(sub0),
        .D(sub[16]),
        .Q(\sub_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_reg[1] 
       (.C(clk),
        .CE(sub0),
        .D(sub[1]),
        .Q(\sub_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_reg[2] 
       (.C(clk),
        .CE(sub0),
        .D(sub[2]),
        .Q(\sub_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_reg[3] 
       (.C(clk),
        .CE(sub0),
        .D(sub[3]),
        .Q(\sub_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_reg[4] 
       (.C(clk),
        .CE(sub0),
        .D(sub[4]),
        .Q(\sub_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_reg[5] 
       (.C(clk),
        .CE(sub0),
        .D(sub[5]),
        .Q(\sub_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_reg[6] 
       (.C(clk),
        .CE(sub0),
        .D(sub[6]),
        .Q(\sub_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_reg[7] 
       (.C(clk),
        .CE(sub0),
        .D(sub[7]),
        .Q(\sub_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_reg[8] 
       (.C(clk),
        .CE(sub0),
        .D(sub[8]),
        .Q(\sub_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_reg[9] 
       (.C(clk),
        .CE(sub0),
        .D(sub[9]),
        .Q(\sub_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sw_reg_reg
       (.C(clk),
        .CE(sw_reg0),
        .D(sw_in),
        .Q(sw_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEFFFFFFF10000000)) 
    tlast_expected_i_1
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state),
        .I4(aresetn),
        .I5(tlast_expected),
        .O(tlast_expected_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tlast_expected_reg
       (.C(clk),
        .CE(1'b1),
        .D(tlast_expected_i_1_n_0),
        .Q(tlast_expected),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    tlast_sampled_i_1
       (.I0(s_axis_tlast),
        .I1(tlast_expected0),
        .I2(tlast_sampled),
        .O(tlast_sampled_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    tlast_sampled_i_2
       (.I0(aresetn),
        .I1(state),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .O(tlast_expected0));
  FDRE #(
    .INIT(1'b0)) 
    tlast_sampled_reg
       (.C(clk),
        .CE(1'b1),
        .D(tlast_sampled_i_1_n_0),
        .Q(tlast_sampled),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif

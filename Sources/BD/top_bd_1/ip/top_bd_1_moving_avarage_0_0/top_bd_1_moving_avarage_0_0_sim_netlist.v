// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri May 15 18:28:46 2020
// Host        : DESKTOP-O39JAIK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Vivado_DESD_Project/Project/Personal/Lab3_A4/LAB3A4/Sources/BD/top_bd_1/ip/top_bd_1_moving_avarage_0_0/top_bd_1_moving_avarage_0_0_sim_netlist.v
// Design      : top_bd_1_moving_avarage_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_bd_1_moving_avarage_0_0,moving_avarage,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "moving_avarage,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module top_bd_1_moving_avarage_0_0
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input sw_in;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [15:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
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

  top_bd_1_moving_avarage_0_0_moving_avarage U0
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

(* ORIG_REF_NAME = "moving_avarage" *) 
module top_bd_1_moving_avarage_0_0_moving_avarage
   (m_axis_tdata,
    s_axis_tready,
    m_axis_tvalid,
    m_axis_tlast,
    clk,
    s_axis_tlast,
    sw_in,
    s_axis_tdata,
    s_axis_tvalid,
    aresetn,
    m_axis_tready);
  output [15:0]m_axis_tdata;
  output s_axis_tready;
  output m_axis_tvalid;
  output m_axis_tlast;
  input clk;
  input s_axis_tlast;
  input sw_in;
  input [15:0]s_axis_tdata;
  input s_axis_tvalid;
  input aresetn;
  input m_axis_tready;

  wire [15:0]ARG;
  wire [30:0]ARG0;
  wire [11:1]ARG1;
  wire [16:5]ARG3;
  wire ARG_carry__0_i_1_n_0;
  wire ARG_carry__0_i_2_n_0;
  wire ARG_carry__0_i_3_n_0;
  wire ARG_carry__0_i_4_n_0;
  wire ARG_carry__0_n_0;
  wire ARG_carry__0_n_1;
  wire ARG_carry__0_n_2;
  wire ARG_carry__0_n_3;
  wire ARG_carry__0_n_4;
  wire ARG_carry__0_n_5;
  wire ARG_carry__0_n_6;
  wire ARG_carry__0_n_7;
  wire ARG_carry__1_i_1_n_0;
  wire ARG_carry__1_i_2_n_0;
  wire ARG_carry__1_i_3_n_0;
  wire ARG_carry__1_i_4_n_0;
  wire ARG_carry__1_n_0;
  wire ARG_carry__1_n_1;
  wire ARG_carry__1_n_2;
  wire ARG_carry__1_n_3;
  wire ARG_carry__1_n_4;
  wire ARG_carry__1_n_5;
  wire ARG_carry__1_n_6;
  wire ARG_carry__1_n_7;
  wire ARG_carry__2_i_1_n_0;
  wire ARG_carry__2_i_2_n_0;
  wire ARG_carry__2_i_3_n_0;
  wire ARG_carry__2_i_4_n_0;
  wire ARG_carry__2_n_1;
  wire ARG_carry__2_n_2;
  wire ARG_carry__2_n_3;
  wire ARG_carry__2_n_4;
  wire ARG_carry__2_n_5;
  wire ARG_carry__2_n_6;
  wire ARG_carry__2_n_7;
  wire ARG_carry_i_1_n_0;
  wire ARG_carry_i_2_n_0;
  wire ARG_carry_i_3_n_0;
  wire ARG_carry_i_4_n_0;
  wire ARG_carry_n_0;
  wire ARG_carry_n_1;
  wire ARG_carry_n_2;
  wire ARG_carry_n_3;
  wire ARG_carry_n_4;
  wire ARG_carry_n_5;
  wire ARG_carry_n_6;
  wire ARG_carry_n_7;
  wire \ARG_inferred__0/i__carry__0_n_0 ;
  wire \ARG_inferred__0/i__carry__0_n_1 ;
  wire \ARG_inferred__0/i__carry__0_n_2 ;
  wire \ARG_inferred__0/i__carry__0_n_3 ;
  wire \ARG_inferred__0/i__carry__1_n_0 ;
  wire \ARG_inferred__0/i__carry__1_n_1 ;
  wire \ARG_inferred__0/i__carry__1_n_2 ;
  wire \ARG_inferred__0/i__carry__1_n_3 ;
  wire \ARG_inferred__0/i__carry__2_n_1 ;
  wire \ARG_inferred__0/i__carry__2_n_2 ;
  wire \ARG_inferred__0/i__carry__2_n_3 ;
  wire \ARG_inferred__0/i__carry_n_0 ;
  wire \ARG_inferred__0/i__carry_n_1 ;
  wire \ARG_inferred__0/i__carry_n_2 ;
  wire \ARG_inferred__0/i__carry_n_3 ;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire aresetn;
  wire clk;
  wire [15:0]data_in;
  wire data_out0;
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
  wire data_out0_carry__0_n_7;
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
  wire data_out0_carry__2_n_1;
  wire data_out0_carry__2_n_2;
  wire data_out0_carry__2_n_3;
  wire data_out0_carry__2_n_4;
  wire data_out0_carry__2_n_5;
  wire data_out0_carry__2_n_6;
  wire data_out0_carry__2_n_7;
  wire data_out0_carry_i_1_n_0;
  wire data_out0_carry_i_2_n_0;
  wire data_out0_carry_i_3_n_0;
  wire data_out0_carry_i_4_n_0;
  wire data_out0_carry_n_0;
  wire data_out0_carry_n_1;
  wire data_out0_carry_n_2;
  wire data_out0_carry_n_3;
  wire data_out0_carry_n_4;
  wire data_out0_carry_n_5;
  wire data_out0_carry_n_6;
  wire data_out0_carry_n_7;
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
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire \last_avarage_dx[0]_i_3_n_0 ;
  wire \last_avarage_dx[0]_i_4_n_0 ;
  wire \last_avarage_dx[0]_i_5_n_0 ;
  wire \last_avarage_dx[0]_i_6_n_0 ;
  wire \last_avarage_dx[12]_i_2_n_0 ;
  wire \last_avarage_dx[12]_i_3_n_0 ;
  wire \last_avarage_dx[12]_i_4_n_0 ;
  wire \last_avarage_dx[12]_i_5_n_0 ;
  wire \last_avarage_dx[4]_i_2_n_0 ;
  wire \last_avarage_dx[4]_i_3_n_0 ;
  wire \last_avarage_dx[4]_i_4_n_0 ;
  wire \last_avarage_dx[4]_i_5_n_0 ;
  wire \last_avarage_dx[8]_i_2_n_0 ;
  wire \last_avarage_dx[8]_i_3_n_0 ;
  wire \last_avarage_dx[8]_i_4_n_0 ;
  wire \last_avarage_dx[8]_i_5_n_0 ;
  wire [15:0]last_avarage_dx_reg;
  wire \last_avarage_dx_reg[0]_i_2_n_0 ;
  wire \last_avarage_dx_reg[0]_i_2_n_1 ;
  wire \last_avarage_dx_reg[0]_i_2_n_2 ;
  wire \last_avarage_dx_reg[0]_i_2_n_3 ;
  wire \last_avarage_dx_reg[0]_i_2_n_4 ;
  wire \last_avarage_dx_reg[0]_i_2_n_5 ;
  wire \last_avarage_dx_reg[0]_i_2_n_6 ;
  wire \last_avarage_dx_reg[0]_i_2_n_7 ;
  wire \last_avarage_dx_reg[12]_i_1_n_1 ;
  wire \last_avarage_dx_reg[12]_i_1_n_2 ;
  wire \last_avarage_dx_reg[12]_i_1_n_3 ;
  wire \last_avarage_dx_reg[12]_i_1_n_4 ;
  wire \last_avarage_dx_reg[12]_i_1_n_5 ;
  wire \last_avarage_dx_reg[12]_i_1_n_6 ;
  wire \last_avarage_dx_reg[12]_i_1_n_7 ;
  wire \last_avarage_dx_reg[4]_i_1_n_0 ;
  wire \last_avarage_dx_reg[4]_i_1_n_1 ;
  wire \last_avarage_dx_reg[4]_i_1_n_2 ;
  wire \last_avarage_dx_reg[4]_i_1_n_3 ;
  wire \last_avarage_dx_reg[4]_i_1_n_4 ;
  wire \last_avarage_dx_reg[4]_i_1_n_5 ;
  wire \last_avarage_dx_reg[4]_i_1_n_6 ;
  wire \last_avarage_dx_reg[4]_i_1_n_7 ;
  wire \last_avarage_dx_reg[8]_i_1_n_0 ;
  wire \last_avarage_dx_reg[8]_i_1_n_1 ;
  wire \last_avarage_dx_reg[8]_i_1_n_2 ;
  wire \last_avarage_dx_reg[8]_i_1_n_3 ;
  wire \last_avarage_dx_reg[8]_i_1_n_4 ;
  wire \last_avarage_dx_reg[8]_i_1_n_5 ;
  wire \last_avarage_dx_reg[8]_i_1_n_6 ;
  wire \last_avarage_dx_reg[8]_i_1_n_7 ;
  wire last_avarage_sx0;
  wire \last_avarage_sx[0]_i_3_n_0 ;
  wire \last_avarage_sx[0]_i_4_n_0 ;
  wire \last_avarage_sx[0]_i_5_n_0 ;
  wire \last_avarage_sx[0]_i_6_n_0 ;
  wire \last_avarage_sx[12]_i_2_n_0 ;
  wire \last_avarage_sx[12]_i_3_n_0 ;
  wire \last_avarage_sx[12]_i_4_n_0 ;
  wire \last_avarage_sx[12]_i_5_n_0 ;
  wire \last_avarage_sx[4]_i_2_n_0 ;
  wire \last_avarage_sx[4]_i_3_n_0 ;
  wire \last_avarage_sx[4]_i_4_n_0 ;
  wire \last_avarage_sx[4]_i_5_n_0 ;
  wire \last_avarage_sx[8]_i_2_n_0 ;
  wire \last_avarage_sx[8]_i_3_n_0 ;
  wire \last_avarage_sx[8]_i_4_n_0 ;
  wire \last_avarage_sx[8]_i_5_n_0 ;
  wire [15:0]last_avarage_sx_reg;
  wire \last_avarage_sx_reg[0]_i_2_n_0 ;
  wire \last_avarage_sx_reg[0]_i_2_n_1 ;
  wire \last_avarage_sx_reg[0]_i_2_n_2 ;
  wire \last_avarage_sx_reg[0]_i_2_n_3 ;
  wire \last_avarage_sx_reg[0]_i_2_n_4 ;
  wire \last_avarage_sx_reg[0]_i_2_n_5 ;
  wire \last_avarage_sx_reg[0]_i_2_n_6 ;
  wire \last_avarage_sx_reg[0]_i_2_n_7 ;
  wire \last_avarage_sx_reg[12]_i_1_n_1 ;
  wire \last_avarage_sx_reg[12]_i_1_n_2 ;
  wire \last_avarage_sx_reg[12]_i_1_n_3 ;
  wire \last_avarage_sx_reg[12]_i_1_n_4 ;
  wire \last_avarage_sx_reg[12]_i_1_n_5 ;
  wire \last_avarage_sx_reg[12]_i_1_n_6 ;
  wire \last_avarage_sx_reg[12]_i_1_n_7 ;
  wire \last_avarage_sx_reg[4]_i_1_n_0 ;
  wire \last_avarage_sx_reg[4]_i_1_n_1 ;
  wire \last_avarage_sx_reg[4]_i_1_n_2 ;
  wire \last_avarage_sx_reg[4]_i_1_n_3 ;
  wire \last_avarage_sx_reg[4]_i_1_n_4 ;
  wire \last_avarage_sx_reg[4]_i_1_n_5 ;
  wire \last_avarage_sx_reg[4]_i_1_n_6 ;
  wire \last_avarage_sx_reg[4]_i_1_n_7 ;
  wire \last_avarage_sx_reg[8]_i_1_n_0 ;
  wire \last_avarage_sx_reg[8]_i_1_n_1 ;
  wire \last_avarage_sx_reg[8]_i_1_n_2 ;
  wire \last_avarage_sx_reg[8]_i_1_n_3 ;
  wire \last_avarage_sx_reg[8]_i_1_n_4 ;
  wire \last_avarage_sx_reg[8]_i_1_n_5 ;
  wire \last_avarage_sx_reg[8]_i_1_n_6 ;
  wire \last_avarage_sx_reg[8]_i_1_n_7 ;
  wire \last_values_dx[0] ;
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
  wire sel;
  wire [2:0]state;
  wire [2:1]state__0;
  wire [15:0]sub_sig;
  wire sub_sig0;
  wire \sub_sig[0]_i_10_n_0 ;
  wire \sub_sig[0]_i_11_n_0 ;
  wire \sub_sig[0]_i_12_n_0 ;
  wire \sub_sig[0]_i_4_n_0 ;
  wire \sub_sig[0]_i_5_n_0 ;
  wire \sub_sig[0]_i_6_n_0 ;
  wire \sub_sig[0]_i_7_n_0 ;
  wire \sub_sig[0]_i_8_n_0 ;
  wire \sub_sig[0]_i_9_n_0 ;
  wire \sub_sig[15]_i_10_n_0 ;
  wire \sub_sig[15]_i_11_n_0 ;
  wire \sub_sig[15]_i_4_n_0 ;
  wire \sub_sig[15]_i_5_n_0 ;
  wire \sub_sig[15]_i_6_n_0 ;
  wire \sub_sig[15]_i_8_n_0 ;
  wire \sub_sig[15]_i_9_n_0 ;
  wire \sub_sig[4]_i_3_n_0 ;
  wire \sub_sig[4]_i_4_n_0 ;
  wire \sub_sig[4]_i_5_n_0 ;
  wire \sub_sig[4]_i_6_n_0 ;
  wire \sub_sig[4]_i_7_n_0 ;
  wire \sub_sig[8]_i_10_n_0 ;
  wire \sub_sig[8]_i_11_n_0 ;
  wire \sub_sig[8]_i_3_n_0 ;
  wire \sub_sig[8]_i_4_n_0 ;
  wire \sub_sig[8]_i_5_n_0 ;
  wire \sub_sig[8]_i_6_n_0 ;
  wire \sub_sig[8]_i_8_n_0 ;
  wire \sub_sig[8]_i_9_n_0 ;
  wire \sub_sig_reg[0]_i_2_n_0 ;
  wire \sub_sig_reg[0]_i_2_n_1 ;
  wire \sub_sig_reg[0]_i_2_n_2 ;
  wire \sub_sig_reg[0]_i_2_n_3 ;
  wire \sub_sig_reg[0]_i_3_n_0 ;
  wire \sub_sig_reg[0]_i_3_n_1 ;
  wire \sub_sig_reg[0]_i_3_n_2 ;
  wire \sub_sig_reg[0]_i_3_n_3 ;
  wire \sub_sig_reg[15]_i_3_n_0 ;
  wire \sub_sig_reg[15]_i_3_n_2 ;
  wire \sub_sig_reg[15]_i_3_n_3 ;
  wire \sub_sig_reg[15]_i_7_n_1 ;
  wire \sub_sig_reg[15]_i_7_n_2 ;
  wire \sub_sig_reg[15]_i_7_n_3 ;
  wire \sub_sig_reg[4]_i_2_n_0 ;
  wire \sub_sig_reg[4]_i_2_n_1 ;
  wire \sub_sig_reg[4]_i_2_n_2 ;
  wire \sub_sig_reg[4]_i_2_n_3 ;
  wire \sub_sig_reg[8]_i_2_n_0 ;
  wire \sub_sig_reg[8]_i_2_n_1 ;
  wire \sub_sig_reg[8]_i_2_n_2 ;
  wire \sub_sig_reg[8]_i_2_n_3 ;
  wire \sub_sig_reg[8]_i_7_n_0 ;
  wire \sub_sig_reg[8]_i_7_n_1 ;
  wire \sub_sig_reg[8]_i_7_n_2 ;
  wire \sub_sig_reg[8]_i_7_n_3 ;
  wire sw_in;
  wire sw_reg;
  wire sw_reg0;
  wire tlast_expected;
  wire tlast_expected_i_1_n_0;
  wire tlast_sampled;
  wire [3:3]NLW_ARG_carry__2_CO_UNCONNECTED;
  wire [3:3]\NLW_ARG_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:3]NLW_data_out0_carry__2_CO_UNCONNECTED;
  wire [3:3]\NLW_last_avarage_dx_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_last_avarage_sx_reg[12]_i_1_CO_UNCONNECTED ;
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
  wire [3:0]\NLW_sub_sig_reg[0]_i_3_O_UNCONNECTED ;
  wire [2:2]\NLW_sub_sig_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_sub_sig_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_sub_sig_reg[15]_i_7_CO_UNCONNECTED ;

  CARRY4 ARG_carry
       (.CI(1'b0),
        .CO({ARG_carry_n_0,ARG_carry_n_1,ARG_carry_n_2,ARG_carry_n_3}),
        .CYINIT(1'b1),
        .DI(data_in[3:0]),
        .O({ARG_carry_n_4,ARG_carry_n_5,ARG_carry_n_6,ARG_carry_n_7}),
        .S({ARG_carry_i_1_n_0,ARG_carry_i_2_n_0,ARG_carry_i_3_n_0,ARG_carry_i_4_n_0}));
  CARRY4 ARG_carry__0
       (.CI(ARG_carry_n_0),
        .CO({ARG_carry__0_n_0,ARG_carry__0_n_1,ARG_carry__0_n_2,ARG_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(data_in[7:4]),
        .O({ARG_carry__0_n_4,ARG_carry__0_n_5,ARG_carry__0_n_6,ARG_carry__0_n_7}),
        .S({ARG_carry__0_i_1_n_0,ARG_carry__0_i_2_n_0,ARG_carry__0_i_3_n_0,ARG_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    ARG_carry__0_i_1
       (.I0(data_in[7]),
        .I1(\last_values_sx_reg[31] [7]),
        .O(ARG_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ARG_carry__0_i_2
       (.I0(data_in[6]),
        .I1(\last_values_sx_reg[31] [6]),
        .O(ARG_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ARG_carry__0_i_3
       (.I0(data_in[5]),
        .I1(\last_values_sx_reg[31] [5]),
        .O(ARG_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ARG_carry__0_i_4
       (.I0(data_in[4]),
        .I1(\last_values_sx_reg[31] [4]),
        .O(ARG_carry__0_i_4_n_0));
  CARRY4 ARG_carry__1
       (.CI(ARG_carry__0_n_0),
        .CO({ARG_carry__1_n_0,ARG_carry__1_n_1,ARG_carry__1_n_2,ARG_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(data_in[11:8]),
        .O({ARG_carry__1_n_4,ARG_carry__1_n_5,ARG_carry__1_n_6,ARG_carry__1_n_7}),
        .S({ARG_carry__1_i_1_n_0,ARG_carry__1_i_2_n_0,ARG_carry__1_i_3_n_0,ARG_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    ARG_carry__1_i_1
       (.I0(data_in[11]),
        .I1(\last_values_sx_reg[31] [11]),
        .O(ARG_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ARG_carry__1_i_2
       (.I0(data_in[10]),
        .I1(\last_values_sx_reg[31] [10]),
        .O(ARG_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ARG_carry__1_i_3
       (.I0(data_in[9]),
        .I1(\last_values_sx_reg[31] [9]),
        .O(ARG_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ARG_carry__1_i_4
       (.I0(data_in[8]),
        .I1(\last_values_sx_reg[31] [8]),
        .O(ARG_carry__1_i_4_n_0));
  CARRY4 ARG_carry__2
       (.CI(ARG_carry__1_n_0),
        .CO({NLW_ARG_carry__2_CO_UNCONNECTED[3],ARG_carry__2_n_1,ARG_carry__2_n_2,ARG_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,data_in[14:12]}),
        .O({ARG_carry__2_n_4,ARG_carry__2_n_5,ARG_carry__2_n_6,ARG_carry__2_n_7}),
        .S({ARG_carry__2_i_1_n_0,ARG_carry__2_i_2_n_0,ARG_carry__2_i_3_n_0,ARG_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    ARG_carry__2_i_1
       (.I0(data_in[15]),
        .I1(\last_values_sx_reg[31] [15]),
        .O(ARG_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ARG_carry__2_i_2
       (.I0(data_in[14]),
        .I1(\last_values_sx_reg[31] [14]),
        .O(ARG_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ARG_carry__2_i_3
       (.I0(data_in[13]),
        .I1(\last_values_sx_reg[31] [13]),
        .O(ARG_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ARG_carry__2_i_4
       (.I0(data_in[12]),
        .I1(\last_values_sx_reg[31] [12]),
        .O(ARG_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ARG_carry_i_1
       (.I0(data_in[3]),
        .I1(\last_values_sx_reg[31] [3]),
        .O(ARG_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ARG_carry_i_2
       (.I0(data_in[2]),
        .I1(\last_values_sx_reg[31] [2]),
        .O(ARG_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ARG_carry_i_3
       (.I0(data_in[1]),
        .I1(\last_values_sx_reg[31] [1]),
        .O(ARG_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ARG_carry_i_4
       (.I0(data_in[0]),
        .I1(\last_values_sx_reg[31] [0]),
        .O(ARG_carry_i_4_n_0));
  CARRY4 \ARG_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\ARG_inferred__0/i__carry_n_0 ,\ARG_inferred__0/i__carry_n_1 ,\ARG_inferred__0/i__carry_n_2 ,\ARG_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(data_in[3:0]),
        .O(ARG[3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \ARG_inferred__0/i__carry__0 
       (.CI(\ARG_inferred__0/i__carry_n_0 ),
        .CO({\ARG_inferred__0/i__carry__0_n_0 ,\ARG_inferred__0/i__carry__0_n_1 ,\ARG_inferred__0/i__carry__0_n_2 ,\ARG_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(data_in[7:4]),
        .O(ARG[7:4]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \ARG_inferred__0/i__carry__1 
       (.CI(\ARG_inferred__0/i__carry__0_n_0 ),
        .CO({\ARG_inferred__0/i__carry__1_n_0 ,\ARG_inferred__0/i__carry__1_n_1 ,\ARG_inferred__0/i__carry__1_n_2 ,\ARG_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(data_in[11:8]),
        .O(ARG[11:8]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  CARRY4 \ARG_inferred__0/i__carry__2 
       (.CI(\ARG_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW_ARG_inferred__0/i__carry__2_CO_UNCONNECTED [3],\ARG_inferred__0/i__carry__2_n_1 ,\ARG_inferred__0/i__carry__2_n_2 ,\ARG_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,data_in[14:12]}),
        .O(ARG[15:12]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(state__0[1]));
  LUT6 #(
    .INIT(64'h3333333330BB3088)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(m_axis_tready),
        .I1(state[2]),
        .I2(\FSM_sequential_state[2]_i_4_n_0 ),
        .I3(state[0]),
        .I4(s_axis_tvalid),
        .I5(state[1]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(state__0[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(aresetn),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(tlast_expected),
        .I1(tlast_sampled),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,receive_data:001,subtraction:010,avarage:011,send_data:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "idle:000,receive_data:001,subtraction:010,avarage:011,send_data:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(state__0[1]),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "idle:000,receive_data:001,subtraction:010,avarage:011,send_data:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(state__0[2]),
        .Q(state[2]));
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
  CARRY4 data_out0_carry
       (.CI(1'b0),
        .CO({data_out0_carry_n_0,data_out0_carry_n_1,data_out0_carry_n_2,data_out0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(sub_sig[3:0]),
        .O({data_out0_carry_n_4,data_out0_carry_n_5,data_out0_carry_n_6,data_out0_carry_n_7}),
        .S({data_out0_carry_i_1_n_0,data_out0_carry_i_2_n_0,data_out0_carry_i_3_n_0,data_out0_carry_i_4_n_0}));
  CARRY4 data_out0_carry__0
       (.CI(data_out0_carry_n_0),
        .CO({data_out0_carry__0_n_0,data_out0_carry__0_n_1,data_out0_carry__0_n_2,data_out0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(sub_sig[7:4]),
        .O({data_out0_carry__0_n_4,data_out0_carry__0_n_5,data_out0_carry__0_n_6,data_out0_carry__0_n_7}),
        .S({data_out0_carry__0_i_1_n_0,data_out0_carry__0_i_2_n_0,data_out0_carry__0_i_3_n_0,data_out0_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h56A6)) 
    data_out0_carry__0_i_1
       (.I0(sub_sig[7]),
        .I1(last_avarage_sx_reg[7]),
        .I2(tlast_sampled),
        .I3(last_avarage_dx_reg[7]),
        .O(data_out0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    data_out0_carry__0_i_2
       (.I0(sub_sig[6]),
        .I1(last_avarage_sx_reg[6]),
        .I2(tlast_sampled),
        .I3(last_avarage_dx_reg[6]),
        .O(data_out0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    data_out0_carry__0_i_3
       (.I0(sub_sig[5]),
        .I1(last_avarage_sx_reg[5]),
        .I2(tlast_sampled),
        .I3(last_avarage_dx_reg[5]),
        .O(data_out0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    data_out0_carry__0_i_4
       (.I0(sub_sig[4]),
        .I1(last_avarage_sx_reg[4]),
        .I2(tlast_sampled),
        .I3(last_avarage_dx_reg[4]),
        .O(data_out0_carry__0_i_4_n_0));
  CARRY4 data_out0_carry__1
       (.CI(data_out0_carry__0_n_0),
        .CO({data_out0_carry__1_n_0,data_out0_carry__1_n_1,data_out0_carry__1_n_2,data_out0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(sub_sig[11:8]),
        .O({data_out0_carry__1_n_4,data_out0_carry__1_n_5,data_out0_carry__1_n_6,data_out0_carry__1_n_7}),
        .S({data_out0_carry__1_i_1_n_0,data_out0_carry__1_i_2_n_0,data_out0_carry__1_i_3_n_0,data_out0_carry__1_i_4_n_0}));
  LUT4 #(
    .INIT(16'h56A6)) 
    data_out0_carry__1_i_1
       (.I0(sub_sig[11]),
        .I1(last_avarage_sx_reg[11]),
        .I2(tlast_sampled),
        .I3(last_avarage_dx_reg[11]),
        .O(data_out0_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    data_out0_carry__1_i_2
       (.I0(sub_sig[10]),
        .I1(last_avarage_sx_reg[10]),
        .I2(tlast_sampled),
        .I3(last_avarage_dx_reg[10]),
        .O(data_out0_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    data_out0_carry__1_i_3
       (.I0(sub_sig[9]),
        .I1(last_avarage_sx_reg[9]),
        .I2(tlast_sampled),
        .I3(last_avarage_dx_reg[9]),
        .O(data_out0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    data_out0_carry__1_i_4
       (.I0(sub_sig[8]),
        .I1(last_avarage_sx_reg[8]),
        .I2(tlast_sampled),
        .I3(last_avarage_dx_reg[8]),
        .O(data_out0_carry__1_i_4_n_0));
  CARRY4 data_out0_carry__2
       (.CI(data_out0_carry__1_n_0),
        .CO({NLW_data_out0_carry__2_CO_UNCONNECTED[3],data_out0_carry__2_n_1,data_out0_carry__2_n_2,data_out0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,sub_sig[15],sub_sig[15],sub_sig[15]}),
        .O({data_out0_carry__2_n_4,data_out0_carry__2_n_5,data_out0_carry__2_n_6,data_out0_carry__2_n_7}),
        .S({data_out0_carry__2_i_1_n_0,data_out0_carry__2_i_2_n_0,data_out0_carry__2_i_3_n_0,data_out0_carry__2_i_4_n_0}));
  LUT4 #(
    .INIT(16'h4B78)) 
    data_out0_carry__2_i_1
       (.I0(last_avarage_dx_reg[15]),
        .I1(tlast_sampled),
        .I2(sub_sig[15]),
        .I3(last_avarage_sx_reg[15]),
        .O(data_out0_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    data_out0_carry__2_i_2
       (.I0(sub_sig[15]),
        .I1(last_avarage_sx_reg[14]),
        .I2(tlast_sampled),
        .I3(last_avarage_dx_reg[14]),
        .O(data_out0_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    data_out0_carry__2_i_3
       (.I0(sub_sig[15]),
        .I1(last_avarage_sx_reg[13]),
        .I2(tlast_sampled),
        .I3(last_avarage_dx_reg[13]),
        .O(data_out0_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    data_out0_carry__2_i_4
       (.I0(sub_sig[15]),
        .I1(last_avarage_sx_reg[12]),
        .I2(tlast_sampled),
        .I3(last_avarage_dx_reg[12]),
        .O(data_out0_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    data_out0_carry_i_1
       (.I0(sub_sig[3]),
        .I1(last_avarage_sx_reg[3]),
        .I2(tlast_sampled),
        .I3(last_avarage_dx_reg[3]),
        .O(data_out0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    data_out0_carry_i_2
       (.I0(sub_sig[2]),
        .I1(last_avarage_sx_reg[2]),
        .I2(tlast_sampled),
        .I3(last_avarage_dx_reg[2]),
        .O(data_out0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    data_out0_carry_i_3
       (.I0(sub_sig[1]),
        .I1(last_avarage_sx_reg[1]),
        .I2(tlast_sampled),
        .I3(last_avarage_dx_reg[1]),
        .O(data_out0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    data_out0_carry_i_4
       (.I0(sub_sig[0]),
        .I1(last_avarage_sx_reg[0]),
        .I2(tlast_sampled),
        .I3(last_avarage_dx_reg[0]),
        .O(data_out0_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[0]_i_1 
       (.I0(data_out0_carry_n_7),
        .I1(sw_reg),
        .I2(data_in[0]),
        .I3(state[1]),
        .I4(s_axis_tdata[0]),
        .O(\data_out[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[10]_i_1 
       (.I0(data_out0_carry__1_n_5),
        .I1(sw_reg),
        .I2(data_in[10]),
        .I3(state[1]),
        .I4(s_axis_tdata[10]),
        .O(\data_out[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[11]_i_1 
       (.I0(data_out0_carry__1_n_4),
        .I1(sw_reg),
        .I2(data_in[11]),
        .I3(state[1]),
        .I4(s_axis_tdata[11]),
        .O(\data_out[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[12]_i_1 
       (.I0(data_out0_carry__2_n_7),
        .I1(sw_reg),
        .I2(data_in[12]),
        .I3(state[1]),
        .I4(s_axis_tdata[12]),
        .O(\data_out[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[13]_i_1 
       (.I0(data_out0_carry__2_n_6),
        .I1(sw_reg),
        .I2(data_in[13]),
        .I3(state[1]),
        .I4(s_axis_tdata[13]),
        .O(\data_out[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[14]_i_1 
       (.I0(data_out0_carry__2_n_5),
        .I1(sw_reg),
        .I2(data_in[14]),
        .I3(state[1]),
        .I4(s_axis_tdata[14]),
        .O(\data_out[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \data_out[15]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(aresetn),
        .O(data_out0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[15]_i_2 
       (.I0(data_out0_carry__2_n_4),
        .I1(sw_reg),
        .I2(data_in[15]),
        .I3(state[1]),
        .I4(s_axis_tdata[15]),
        .O(\data_out[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[1]_i_1 
       (.I0(data_out0_carry_n_6),
        .I1(sw_reg),
        .I2(data_in[1]),
        .I3(state[1]),
        .I4(s_axis_tdata[1]),
        .O(\data_out[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[2]_i_1 
       (.I0(data_out0_carry_n_5),
        .I1(sw_reg),
        .I2(data_in[2]),
        .I3(state[1]),
        .I4(s_axis_tdata[2]),
        .O(\data_out[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[3]_i_1 
       (.I0(data_out0_carry_n_4),
        .I1(sw_reg),
        .I2(data_in[3]),
        .I3(state[1]),
        .I4(s_axis_tdata[3]),
        .O(\data_out[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[4]_i_1 
       (.I0(data_out0_carry__0_n_7),
        .I1(sw_reg),
        .I2(data_in[4]),
        .I3(state[1]),
        .I4(s_axis_tdata[4]),
        .O(\data_out[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[5]_i_1 
       (.I0(data_out0_carry__0_n_6),
        .I1(sw_reg),
        .I2(data_in[5]),
        .I3(state[1]),
        .I4(s_axis_tdata[5]),
        .O(\data_out[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[6]_i_1 
       (.I0(data_out0_carry__0_n_5),
        .I1(sw_reg),
        .I2(data_in[6]),
        .I3(state[1]),
        .I4(s_axis_tdata[6]),
        .O(\data_out[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[7]_i_1 
       (.I0(data_out0_carry__0_n_4),
        .I1(sw_reg),
        .I2(data_in[7]),
        .I3(state[1]),
        .I4(s_axis_tdata[7]),
        .O(\data_out[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[8]_i_1 
       (.I0(data_out0_carry__1_n_7),
        .I1(sw_reg),
        .I2(data_in[8]),
        .I3(state[1]),
        .I4(s_axis_tdata[8]),
        .O(\data_out[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[9]_i_1 
       (.I0(data_out0_carry__1_n_6),
        .I1(sw_reg),
        .I2(data_in[9]),
        .I3(state[1]),
        .I4(s_axis_tdata[9]),
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
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1
       (.I0(data_in[7]),
        .I1(\last_values_dx_reg[31] [7]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2
       (.I0(data_in[6]),
        .I1(\last_values_dx_reg[31] [6]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3
       (.I0(data_in[5]),
        .I1(\last_values_dx_reg[31] [5]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4
       (.I0(data_in[4]),
        .I1(\last_values_dx_reg[31] [4]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1
       (.I0(data_in[11]),
        .I1(\last_values_dx_reg[31] [11]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2
       (.I0(data_in[10]),
        .I1(\last_values_dx_reg[31] [10]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_3
       (.I0(data_in[9]),
        .I1(\last_values_dx_reg[31] [9]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_4
       (.I0(data_in[8]),
        .I1(\last_values_dx_reg[31] [8]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_1
       (.I0(data_in[15]),
        .I1(\last_values_dx_reg[31] [15]),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_2
       (.I0(data_in[14]),
        .I1(\last_values_dx_reg[31] [14]),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_3
       (.I0(data_in[13]),
        .I1(\last_values_dx_reg[31] [13]),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_4
       (.I0(data_in[12]),
        .I1(\last_values_dx_reg[31] [12]),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1
       (.I0(data_in[3]),
        .I1(\last_values_dx_reg[31] [3]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2
       (.I0(data_in[2]),
        .I1(\last_values_dx_reg[31] [2]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3
       (.I0(data_in[1]),
        .I1(\last_values_dx_reg[31] [1]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4
       (.I0(data_in[0]),
        .I1(\last_values_dx_reg[31] [0]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \last_avarage_dx[0]_i_1 
       (.I0(state[0]),
        .I1(tlast_sampled),
        .I2(state[1]),
        .I3(state[2]),
        .O(sel));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_dx[0]_i_3 
       (.I0(sub_sig[3]),
        .I1(last_avarage_dx_reg[3]),
        .O(\last_avarage_dx[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_dx[0]_i_4 
       (.I0(sub_sig[2]),
        .I1(last_avarage_dx_reg[2]),
        .O(\last_avarage_dx[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_dx[0]_i_5 
       (.I0(sub_sig[1]),
        .I1(last_avarage_dx_reg[1]),
        .O(\last_avarage_dx[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_dx[0]_i_6 
       (.I0(sub_sig[0]),
        .I1(last_avarage_dx_reg[0]),
        .O(\last_avarage_dx[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_dx[12]_i_2 
       (.I0(sub_sig[15]),
        .I1(last_avarage_dx_reg[15]),
        .O(\last_avarage_dx[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_dx[12]_i_3 
       (.I0(sub_sig[15]),
        .I1(last_avarage_dx_reg[14]),
        .O(\last_avarage_dx[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_dx[12]_i_4 
       (.I0(sub_sig[15]),
        .I1(last_avarage_dx_reg[13]),
        .O(\last_avarage_dx[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_dx[12]_i_5 
       (.I0(sub_sig[15]),
        .I1(last_avarage_dx_reg[12]),
        .O(\last_avarage_dx[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_dx[4]_i_2 
       (.I0(sub_sig[7]),
        .I1(last_avarage_dx_reg[7]),
        .O(\last_avarage_dx[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_dx[4]_i_3 
       (.I0(sub_sig[6]),
        .I1(last_avarage_dx_reg[6]),
        .O(\last_avarage_dx[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_dx[4]_i_4 
       (.I0(sub_sig[5]),
        .I1(last_avarage_dx_reg[5]),
        .O(\last_avarage_dx[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_dx[4]_i_5 
       (.I0(sub_sig[4]),
        .I1(last_avarage_dx_reg[4]),
        .O(\last_avarage_dx[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_dx[8]_i_2 
       (.I0(sub_sig[11]),
        .I1(last_avarage_dx_reg[11]),
        .O(\last_avarage_dx[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_dx[8]_i_3 
       (.I0(sub_sig[10]),
        .I1(last_avarage_dx_reg[10]),
        .O(\last_avarage_dx[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_dx[8]_i_4 
       (.I0(sub_sig[9]),
        .I1(last_avarage_dx_reg[9]),
        .O(\last_avarage_dx[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_dx[8]_i_5 
       (.I0(sub_sig[8]),
        .I1(last_avarage_dx_reg[8]),
        .O(\last_avarage_dx[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \last_avarage_dx_reg[0] 
       (.C(clk),
        .CE(sel),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_avarage_dx_reg[0]_i_2_n_7 ),
        .Q(last_avarage_dx_reg[0]));
  CARRY4 \last_avarage_dx_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\last_avarage_dx_reg[0]_i_2_n_0 ,\last_avarage_dx_reg[0]_i_2_n_1 ,\last_avarage_dx_reg[0]_i_2_n_2 ,\last_avarage_dx_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(sub_sig[3:0]),
        .O({\last_avarage_dx_reg[0]_i_2_n_4 ,\last_avarage_dx_reg[0]_i_2_n_5 ,\last_avarage_dx_reg[0]_i_2_n_6 ,\last_avarage_dx_reg[0]_i_2_n_7 }),
        .S({\last_avarage_dx[0]_i_3_n_0 ,\last_avarage_dx[0]_i_4_n_0 ,\last_avarage_dx[0]_i_5_n_0 ,\last_avarage_dx[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \last_avarage_dx_reg[10] 
       (.C(clk),
        .CE(sel),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_avarage_dx_reg[8]_i_1_n_5 ),
        .Q(last_avarage_dx_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \last_avarage_dx_reg[11] 
       (.C(clk),
        .CE(sel),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_avarage_dx_reg[8]_i_1_n_4 ),
        .Q(last_avarage_dx_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \last_avarage_dx_reg[12] 
       (.C(clk),
        .CE(sel),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_avarage_dx_reg[12]_i_1_n_7 ),
        .Q(last_avarage_dx_reg[12]));
  CARRY4 \last_avarage_dx_reg[12]_i_1 
       (.CI(\last_avarage_dx_reg[8]_i_1_n_0 ),
        .CO({\NLW_last_avarage_dx_reg[12]_i_1_CO_UNCONNECTED [3],\last_avarage_dx_reg[12]_i_1_n_1 ,\last_avarage_dx_reg[12]_i_1_n_2 ,\last_avarage_dx_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,sub_sig[15],sub_sig[15],sub_sig[15]}),
        .O({\last_avarage_dx_reg[12]_i_1_n_4 ,\last_avarage_dx_reg[12]_i_1_n_5 ,\last_avarage_dx_reg[12]_i_1_n_6 ,\last_avarage_dx_reg[12]_i_1_n_7 }),
        .S({\last_avarage_dx[12]_i_2_n_0 ,\last_avarage_dx[12]_i_3_n_0 ,\last_avarage_dx[12]_i_4_n_0 ,\last_avarage_dx[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \last_avarage_dx_reg[13] 
       (.C(clk),
        .CE(sel),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_avarage_dx_reg[12]_i_1_n_6 ),
        .Q(last_avarage_dx_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \last_avarage_dx_reg[14] 
       (.C(clk),
        .CE(sel),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_avarage_dx_reg[12]_i_1_n_5 ),
        .Q(last_avarage_dx_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \last_avarage_dx_reg[15] 
       (.C(clk),
        .CE(sel),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_avarage_dx_reg[12]_i_1_n_4 ),
        .Q(last_avarage_dx_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \last_avarage_dx_reg[1] 
       (.C(clk),
        .CE(sel),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_avarage_dx_reg[0]_i_2_n_6 ),
        .Q(last_avarage_dx_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \last_avarage_dx_reg[2] 
       (.C(clk),
        .CE(sel),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_avarage_dx_reg[0]_i_2_n_5 ),
        .Q(last_avarage_dx_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \last_avarage_dx_reg[3] 
       (.C(clk),
        .CE(sel),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_avarage_dx_reg[0]_i_2_n_4 ),
        .Q(last_avarage_dx_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \last_avarage_dx_reg[4] 
       (.C(clk),
        .CE(sel),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_avarage_dx_reg[4]_i_1_n_7 ),
        .Q(last_avarage_dx_reg[4]));
  CARRY4 \last_avarage_dx_reg[4]_i_1 
       (.CI(\last_avarage_dx_reg[0]_i_2_n_0 ),
        .CO({\last_avarage_dx_reg[4]_i_1_n_0 ,\last_avarage_dx_reg[4]_i_1_n_1 ,\last_avarage_dx_reg[4]_i_1_n_2 ,\last_avarage_dx_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sub_sig[7:4]),
        .O({\last_avarage_dx_reg[4]_i_1_n_4 ,\last_avarage_dx_reg[4]_i_1_n_5 ,\last_avarage_dx_reg[4]_i_1_n_6 ,\last_avarage_dx_reg[4]_i_1_n_7 }),
        .S({\last_avarage_dx[4]_i_2_n_0 ,\last_avarage_dx[4]_i_3_n_0 ,\last_avarage_dx[4]_i_4_n_0 ,\last_avarage_dx[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \last_avarage_dx_reg[5] 
       (.C(clk),
        .CE(sel),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_avarage_dx_reg[4]_i_1_n_6 ),
        .Q(last_avarage_dx_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \last_avarage_dx_reg[6] 
       (.C(clk),
        .CE(sel),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_avarage_dx_reg[4]_i_1_n_5 ),
        .Q(last_avarage_dx_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \last_avarage_dx_reg[7] 
       (.C(clk),
        .CE(sel),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_avarage_dx_reg[4]_i_1_n_4 ),
        .Q(last_avarage_dx_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \last_avarage_dx_reg[8] 
       (.C(clk),
        .CE(sel),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_avarage_dx_reg[8]_i_1_n_7 ),
        .Q(last_avarage_dx_reg[8]));
  CARRY4 \last_avarage_dx_reg[8]_i_1 
       (.CI(\last_avarage_dx_reg[4]_i_1_n_0 ),
        .CO({\last_avarage_dx_reg[8]_i_1_n_0 ,\last_avarage_dx_reg[8]_i_1_n_1 ,\last_avarage_dx_reg[8]_i_1_n_2 ,\last_avarage_dx_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sub_sig[11:8]),
        .O({\last_avarage_dx_reg[8]_i_1_n_4 ,\last_avarage_dx_reg[8]_i_1_n_5 ,\last_avarage_dx_reg[8]_i_1_n_6 ,\last_avarage_dx_reg[8]_i_1_n_7 }),
        .S({\last_avarage_dx[8]_i_2_n_0 ,\last_avarage_dx[8]_i_3_n_0 ,\last_avarage_dx[8]_i_4_n_0 ,\last_avarage_dx[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \last_avarage_dx_reg[9] 
       (.C(clk),
        .CE(sel),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\last_avarage_dx_reg[8]_i_1_n_6 ),
        .Q(last_avarage_dx_reg[9]));
  LUT5 #(
    .INIT(32'h10000000)) 
    \last_avarage_sx[0]_i_1 
       (.I0(state[2]),
        .I1(tlast_sampled),
        .I2(state[1]),
        .I3(state[0]),
        .I4(aresetn),
        .O(last_avarage_sx0));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_sx[0]_i_3 
       (.I0(sub_sig[3]),
        .I1(last_avarage_sx_reg[3]),
        .O(\last_avarage_sx[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_sx[0]_i_4 
       (.I0(sub_sig[2]),
        .I1(last_avarage_sx_reg[2]),
        .O(\last_avarage_sx[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_sx[0]_i_5 
       (.I0(sub_sig[1]),
        .I1(last_avarage_sx_reg[1]),
        .O(\last_avarage_sx[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_sx[0]_i_6 
       (.I0(sub_sig[0]),
        .I1(last_avarage_sx_reg[0]),
        .O(\last_avarage_sx[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_sx[12]_i_2 
       (.I0(sub_sig[15]),
        .I1(last_avarage_sx_reg[15]),
        .O(\last_avarage_sx[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_sx[12]_i_3 
       (.I0(sub_sig[15]),
        .I1(last_avarage_sx_reg[14]),
        .O(\last_avarage_sx[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_sx[12]_i_4 
       (.I0(sub_sig[15]),
        .I1(last_avarage_sx_reg[13]),
        .O(\last_avarage_sx[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_sx[12]_i_5 
       (.I0(sub_sig[15]),
        .I1(last_avarage_sx_reg[12]),
        .O(\last_avarage_sx[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_sx[4]_i_2 
       (.I0(sub_sig[7]),
        .I1(last_avarage_sx_reg[7]),
        .O(\last_avarage_sx[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_sx[4]_i_3 
       (.I0(sub_sig[6]),
        .I1(last_avarage_sx_reg[6]),
        .O(\last_avarage_sx[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_sx[4]_i_4 
       (.I0(sub_sig[5]),
        .I1(last_avarage_sx_reg[5]),
        .O(\last_avarage_sx[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_sx[4]_i_5 
       (.I0(sub_sig[4]),
        .I1(last_avarage_sx_reg[4]),
        .O(\last_avarage_sx[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_sx[8]_i_2 
       (.I0(sub_sig[11]),
        .I1(last_avarage_sx_reg[11]),
        .O(\last_avarage_sx[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_sx[8]_i_3 
       (.I0(sub_sig[10]),
        .I1(last_avarage_sx_reg[10]),
        .O(\last_avarage_sx[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_sx[8]_i_4 
       (.I0(sub_sig[9]),
        .I1(last_avarage_sx_reg[9]),
        .O(\last_avarage_sx[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_avarage_sx[8]_i_5 
       (.I0(sub_sig[8]),
        .I1(last_avarage_sx_reg[8]),
        .O(\last_avarage_sx[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \last_avarage_sx_reg[0] 
       (.C(clk),
        .CE(last_avarage_sx0),
        .D(\last_avarage_sx_reg[0]_i_2_n_7 ),
        .Q(last_avarage_sx_reg[0]),
        .R(1'b0));
  CARRY4 \last_avarage_sx_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\last_avarage_sx_reg[0]_i_2_n_0 ,\last_avarage_sx_reg[0]_i_2_n_1 ,\last_avarage_sx_reg[0]_i_2_n_2 ,\last_avarage_sx_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(sub_sig[3:0]),
        .O({\last_avarage_sx_reg[0]_i_2_n_4 ,\last_avarage_sx_reg[0]_i_2_n_5 ,\last_avarage_sx_reg[0]_i_2_n_6 ,\last_avarage_sx_reg[0]_i_2_n_7 }),
        .S({\last_avarage_sx[0]_i_3_n_0 ,\last_avarage_sx[0]_i_4_n_0 ,\last_avarage_sx[0]_i_5_n_0 ,\last_avarage_sx[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \last_avarage_sx_reg[10] 
       (.C(clk),
        .CE(last_avarage_sx0),
        .D(\last_avarage_sx_reg[8]_i_1_n_5 ),
        .Q(last_avarage_sx_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_avarage_sx_reg[11] 
       (.C(clk),
        .CE(last_avarage_sx0),
        .D(\last_avarage_sx_reg[8]_i_1_n_4 ),
        .Q(last_avarage_sx_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_avarage_sx_reg[12] 
       (.C(clk),
        .CE(last_avarage_sx0),
        .D(\last_avarage_sx_reg[12]_i_1_n_7 ),
        .Q(last_avarage_sx_reg[12]),
        .R(1'b0));
  CARRY4 \last_avarage_sx_reg[12]_i_1 
       (.CI(\last_avarage_sx_reg[8]_i_1_n_0 ),
        .CO({\NLW_last_avarage_sx_reg[12]_i_1_CO_UNCONNECTED [3],\last_avarage_sx_reg[12]_i_1_n_1 ,\last_avarage_sx_reg[12]_i_1_n_2 ,\last_avarage_sx_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,sub_sig[15],sub_sig[15],sub_sig[15]}),
        .O({\last_avarage_sx_reg[12]_i_1_n_4 ,\last_avarage_sx_reg[12]_i_1_n_5 ,\last_avarage_sx_reg[12]_i_1_n_6 ,\last_avarage_sx_reg[12]_i_1_n_7 }),
        .S({\last_avarage_sx[12]_i_2_n_0 ,\last_avarage_sx[12]_i_3_n_0 ,\last_avarage_sx[12]_i_4_n_0 ,\last_avarage_sx[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \last_avarage_sx_reg[13] 
       (.C(clk),
        .CE(last_avarage_sx0),
        .D(\last_avarage_sx_reg[12]_i_1_n_6 ),
        .Q(last_avarage_sx_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_avarage_sx_reg[14] 
       (.C(clk),
        .CE(last_avarage_sx0),
        .D(\last_avarage_sx_reg[12]_i_1_n_5 ),
        .Q(last_avarage_sx_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_avarage_sx_reg[15] 
       (.C(clk),
        .CE(last_avarage_sx0),
        .D(\last_avarage_sx_reg[12]_i_1_n_4 ),
        .Q(last_avarage_sx_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_avarage_sx_reg[1] 
       (.C(clk),
        .CE(last_avarage_sx0),
        .D(\last_avarage_sx_reg[0]_i_2_n_6 ),
        .Q(last_avarage_sx_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_avarage_sx_reg[2] 
       (.C(clk),
        .CE(last_avarage_sx0),
        .D(\last_avarage_sx_reg[0]_i_2_n_5 ),
        .Q(last_avarage_sx_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_avarage_sx_reg[3] 
       (.C(clk),
        .CE(last_avarage_sx0),
        .D(\last_avarage_sx_reg[0]_i_2_n_4 ),
        .Q(last_avarage_sx_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_avarage_sx_reg[4] 
       (.C(clk),
        .CE(last_avarage_sx0),
        .D(\last_avarage_sx_reg[4]_i_1_n_7 ),
        .Q(last_avarage_sx_reg[4]),
        .R(1'b0));
  CARRY4 \last_avarage_sx_reg[4]_i_1 
       (.CI(\last_avarage_sx_reg[0]_i_2_n_0 ),
        .CO({\last_avarage_sx_reg[4]_i_1_n_0 ,\last_avarage_sx_reg[4]_i_1_n_1 ,\last_avarage_sx_reg[4]_i_1_n_2 ,\last_avarage_sx_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sub_sig[7:4]),
        .O({\last_avarage_sx_reg[4]_i_1_n_4 ,\last_avarage_sx_reg[4]_i_1_n_5 ,\last_avarage_sx_reg[4]_i_1_n_6 ,\last_avarage_sx_reg[4]_i_1_n_7 }),
        .S({\last_avarage_sx[4]_i_2_n_0 ,\last_avarage_sx[4]_i_3_n_0 ,\last_avarage_sx[4]_i_4_n_0 ,\last_avarage_sx[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \last_avarage_sx_reg[5] 
       (.C(clk),
        .CE(last_avarage_sx0),
        .D(\last_avarage_sx_reg[4]_i_1_n_6 ),
        .Q(last_avarage_sx_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_avarage_sx_reg[6] 
       (.C(clk),
        .CE(last_avarage_sx0),
        .D(\last_avarage_sx_reg[4]_i_1_n_5 ),
        .Q(last_avarage_sx_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_avarage_sx_reg[7] 
       (.C(clk),
        .CE(last_avarage_sx0),
        .D(\last_avarage_sx_reg[4]_i_1_n_4 ),
        .Q(last_avarage_sx_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_avarage_sx_reg[8] 
       (.C(clk),
        .CE(last_avarage_sx0),
        .D(\last_avarage_sx_reg[8]_i_1_n_7 ),
        .Q(last_avarage_sx_reg[8]),
        .R(1'b0));
  CARRY4 \last_avarage_sx_reg[8]_i_1 
       (.CI(\last_avarage_sx_reg[4]_i_1_n_0 ),
        .CO({\last_avarage_sx_reg[8]_i_1_n_0 ,\last_avarage_sx_reg[8]_i_1_n_1 ,\last_avarage_sx_reg[8]_i_1_n_2 ,\last_avarage_sx_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sub_sig[11:8]),
        .O({\last_avarage_sx_reg[8]_i_1_n_4 ,\last_avarage_sx_reg[8]_i_1_n_5 ,\last_avarage_sx_reg[8]_i_1_n_6 ,\last_avarage_sx_reg[8]_i_1_n_7 }),
        .S({\last_avarage_sx[8]_i_2_n_0 ,\last_avarage_sx[8]_i_3_n_0 ,\last_avarage_sx[8]_i_4_n_0 ,\last_avarage_sx[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \last_avarage_sx_reg[9] 
       (.C(clk),
        .CE(last_avarage_sx0),
        .D(\last_avarage_sx_reg[8]_i_1_n_6 ),
        .Q(last_avarage_sx_reg[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0040)) 
    last_values_dx_c_i_1
       (.I0(state[0]),
        .I1(tlast_sampled),
        .I2(state[1]),
        .I3(state[2]),
        .O(\last_values_dx[0] ));
  (* srl_bus_name = "\U0/last_values_dx_reg[29] " *) 
  (* srl_name = "\U0/last_values_dx_reg[29][0]_srl30_U0_last_values_dx_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_dx_reg[29][0]_srl30_U0_last_values_dx_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_dx[0] ),
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
        .CE(\last_values_dx[0] ),
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
        .CE(\last_values_dx[0] ),
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
        .CE(\last_values_dx[0] ),
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
        .CE(\last_values_dx[0] ),
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
        .CE(\last_values_dx[0] ),
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
        .CE(\last_values_dx[0] ),
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
        .CE(\last_values_dx[0] ),
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
        .CE(\last_values_dx[0] ),
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
        .CE(\last_values_dx[0] ),
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
        .CE(\last_values_dx[0] ),
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
        .CE(\last_values_dx[0] ),
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
        .CE(\last_values_dx[0] ),
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
        .CE(\last_values_dx[0] ),
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
        .CE(\last_values_dx[0] ),
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
        .CE(\last_values_dx[0] ),
        .CLK(clk),
        .D(data_in[9]),
        .Q(\last_values_dx_reg[29][9]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q31(\NLW_last_values_dx_reg[29][9]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED ));
  FDRE \last_values_dx_reg[30][0]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .D(\last_values_dx_reg[29][0]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][0]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][10]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .D(\last_values_dx_reg[29][10]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][10]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][11]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .D(\last_values_dx_reg[29][11]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][11]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][12]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .D(\last_values_dx_reg[29][12]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][12]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][13]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .D(\last_values_dx_reg[29][13]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][13]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][14]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .D(\last_values_dx_reg[29][14]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][14]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][15]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .D(\last_values_dx_reg[29][15]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][15]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][1]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .D(\last_values_dx_reg[29][1]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][1]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][2]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .D(\last_values_dx_reg[29][2]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][2]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][3]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .D(\last_values_dx_reg[29][3]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][3]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][4]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .D(\last_values_dx_reg[29][4]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][4]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][5]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .D(\last_values_dx_reg[29][5]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][5]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][6]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .D(\last_values_dx_reg[29][6]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][6]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][7]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .D(\last_values_dx_reg[29][7]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][7]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][8]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .D(\last_values_dx_reg[29][8]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][8]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_values_dx_reg[30][9]_U0_last_values_dx_reg_c_59 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .D(\last_values_dx_reg[29][9]_srl30_U0_last_values_dx_reg_c_58_n_0 ),
        .Q(\last_values_dx_reg[30][9]_U0_last_values_dx_reg_c_59_n_0 ),
        .R(1'b0));
  FDCE \last_values_dx_reg[31][0] 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__14_n_0),
        .Q(\last_values_dx_reg[31] [0]));
  FDCE \last_values_dx_reg[31][10] 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__4_n_0),
        .Q(\last_values_dx_reg[31] [10]));
  FDCE \last_values_dx_reg[31][11] 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__3_n_0),
        .Q(\last_values_dx_reg[31] [11]));
  FDCE \last_values_dx_reg[31][12] 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__2_n_0),
        .Q(\last_values_dx_reg[31] [12]));
  FDCE \last_values_dx_reg[31][13] 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__1_n_0),
        .Q(\last_values_dx_reg[31] [13]));
  FDCE \last_values_dx_reg[31][14] 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__0_n_0),
        .Q(\last_values_dx_reg[31] [14]));
  FDCE \last_values_dx_reg[31][15] 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate_n_0),
        .Q(\last_values_dx_reg[31] [15]));
  FDCE \last_values_dx_reg[31][1] 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__13_n_0),
        .Q(\last_values_dx_reg[31] [1]));
  FDCE \last_values_dx_reg[31][2] 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__12_n_0),
        .Q(\last_values_dx_reg[31] [2]));
  FDCE \last_values_dx_reg[31][3] 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__11_n_0),
        .Q(\last_values_dx_reg[31] [3]));
  FDCE \last_values_dx_reg[31][4] 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__10_n_0),
        .Q(\last_values_dx_reg[31] [4]));
  FDCE \last_values_dx_reg[31][5] 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__9_n_0),
        .Q(\last_values_dx_reg[31] [5]));
  FDCE \last_values_dx_reg[31][6] 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__8_n_0),
        .Q(\last_values_dx_reg[31] [6]));
  FDCE \last_values_dx_reg[31][7] 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__7_n_0),
        .Q(\last_values_dx_reg[31] [7]));
  FDCE \last_values_dx_reg[31][8] 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__6_n_0),
        .Q(\last_values_dx_reg[31] [8]));
  FDCE \last_values_dx_reg[31][9] 
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_gate__5_n_0),
        .Q(\last_values_dx_reg[31] [9]));
  FDCE last_values_dx_reg_c
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(1'b1),
        .Q(last_values_dx_reg_c_n_0));
  FDCE last_values_dx_reg_c_30
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_n_0),
        .Q(last_values_dx_reg_c_30_n_0));
  FDCE last_values_dx_reg_c_31
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_30_n_0),
        .Q(last_values_dx_reg_c_31_n_0));
  FDCE last_values_dx_reg_c_32
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_31_n_0),
        .Q(last_values_dx_reg_c_32_n_0));
  FDCE last_values_dx_reg_c_33
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_32_n_0),
        .Q(last_values_dx_reg_c_33_n_0));
  FDCE last_values_dx_reg_c_34
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_33_n_0),
        .Q(last_values_dx_reg_c_34_n_0));
  FDCE last_values_dx_reg_c_35
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_34_n_0),
        .Q(last_values_dx_reg_c_35_n_0));
  FDCE last_values_dx_reg_c_36
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_35_n_0),
        .Q(last_values_dx_reg_c_36_n_0));
  FDCE last_values_dx_reg_c_37
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_36_n_0),
        .Q(last_values_dx_reg_c_37_n_0));
  FDCE last_values_dx_reg_c_38
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_37_n_0),
        .Q(last_values_dx_reg_c_38_n_0));
  FDCE last_values_dx_reg_c_39
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_38_n_0),
        .Q(last_values_dx_reg_c_39_n_0));
  FDCE last_values_dx_reg_c_40
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_39_n_0),
        .Q(last_values_dx_reg_c_40_n_0));
  FDCE last_values_dx_reg_c_41
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_40_n_0),
        .Q(last_values_dx_reg_c_41_n_0));
  FDCE last_values_dx_reg_c_42
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_41_n_0),
        .Q(last_values_dx_reg_c_42_n_0));
  FDCE last_values_dx_reg_c_43
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_42_n_0),
        .Q(last_values_dx_reg_c_43_n_0));
  FDCE last_values_dx_reg_c_44
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_43_n_0),
        .Q(last_values_dx_reg_c_44_n_0));
  FDCE last_values_dx_reg_c_45
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_44_n_0),
        .Q(last_values_dx_reg_c_45_n_0));
  FDCE last_values_dx_reg_c_46
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_45_n_0),
        .Q(last_values_dx_reg_c_46_n_0));
  FDCE last_values_dx_reg_c_47
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_46_n_0),
        .Q(last_values_dx_reg_c_47_n_0));
  FDCE last_values_dx_reg_c_48
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_47_n_0),
        .Q(last_values_dx_reg_c_48_n_0));
  FDCE last_values_dx_reg_c_49
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_48_n_0),
        .Q(last_values_dx_reg_c_49_n_0));
  FDCE last_values_dx_reg_c_50
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_49_n_0),
        .Q(last_values_dx_reg_c_50_n_0));
  FDCE last_values_dx_reg_c_51
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_50_n_0),
        .Q(last_values_dx_reg_c_51_n_0));
  FDCE last_values_dx_reg_c_52
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_51_n_0),
        .Q(last_values_dx_reg_c_52_n_0));
  FDCE last_values_dx_reg_c_53
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_52_n_0),
        .Q(last_values_dx_reg_c_53_n_0));
  FDCE last_values_dx_reg_c_54
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_53_n_0),
        .Q(last_values_dx_reg_c_54_n_0));
  FDCE last_values_dx_reg_c_55
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_54_n_0),
        .Q(last_values_dx_reg_c_55_n_0));
  FDCE last_values_dx_reg_c_56
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_55_n_0),
        .Q(last_values_dx_reg_c_56_n_0));
  FDCE last_values_dx_reg_c_57
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_56_n_0),
        .Q(last_values_dx_reg_c_57_n_0));
  FDCE last_values_dx_reg_c_58
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_57_n_0),
        .Q(last_values_dx_reg_c_58_n_0));
  FDCE last_values_dx_reg_c_59
       (.C(clk),
        .CE(\last_values_dx[0] ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(last_values_dx_reg_c_58_n_0),
        .Q(last_values_dx_reg_c_59_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate
       (.I0(\last_values_dx_reg[30][15]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__0
       (.I0(\last_values_dx_reg[30][14]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__1
       (.I0(\last_values_dx_reg[30][13]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__10
       (.I0(\last_values_dx_reg[30][4]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__11
       (.I0(\last_values_dx_reg[30][3]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__12
       (.I0(\last_values_dx_reg[30][2]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__13
       (.I0(\last_values_dx_reg[30][1]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__14
       (.I0(\last_values_dx_reg[30][0]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__2
       (.I0(\last_values_dx_reg[30][12]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__3
       (.I0(\last_values_dx_reg[30][11]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__4
       (.I0(\last_values_dx_reg[30][10]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__5
       (.I0(\last_values_dx_reg[30][9]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__6
       (.I0(\last_values_dx_reg[30][8]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__7
       (.I0(\last_values_dx_reg[30][7]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__8
       (.I0(\last_values_dx_reg[30][6]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__9
       (.I0(\last_values_dx_reg[30][5]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__9_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    last_values_sx_c_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(tlast_sampled),
        .I3(state[2]),
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
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate
       (.I0(\last_values_sx_reg[30][15]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__0
       (.I0(\last_values_sx_reg[30][14]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__1
       (.I0(\last_values_sx_reg[30][13]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__10
       (.I0(\last_values_sx_reg[30][4]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__11
       (.I0(\last_values_sx_reg[30][3]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__12
       (.I0(\last_values_sx_reg[30][2]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__13
       (.I0(\last_values_sx_reg[30][1]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__14
       (.I0(\last_values_sx_reg[30][0]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__2
       (.I0(\last_values_sx_reg[30][12]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__3
       (.I0(\last_values_sx_reg[30][11]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__4
       (.I0(\last_values_sx_reg[30][10]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__5
       (.I0(\last_values_sx_reg[30][9]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__6
       (.I0(\last_values_sx_reg[30][8]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__7
       (.I0(\last_values_sx_reg[30][7]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__8
       (.I0(\last_values_sx_reg[30][6]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__9
       (.I0(\last_values_sx_reg[30][5]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    m_axis_tlast_INST_0
       (.I0(state[0]),
        .I1(tlast_sampled),
        .I2(state[1]),
        .I3(state[2]),
        .O(m_axis_tlast));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h10)) 
    m_axis_tvalid_INST_0
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(m_axis_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    s_axis_tready_INST_0
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(s_axis_tready));
  LUT6 #(
    .INIT(64'hACAAACAAACFFAC00)) 
    \sub_sig[0]_i_1 
       (.I0(ARG3[5]),
        .I1(ARG[5]),
        .I2(ARG[15]),
        .I3(tlast_sampled),
        .I4(ARG_carry__0_n_6),
        .I5(ARG_carry__2_n_4),
        .O(ARG0[0]));
  LUT3 #(
    .INIT(8'h47)) 
    \sub_sig[0]_i_10 
       (.I0(ARG[3]),
        .I1(tlast_sampled),
        .I2(ARG_carry_n_4),
        .O(\sub_sig[0]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \sub_sig[0]_i_11 
       (.I0(ARG[2]),
        .I1(tlast_sampled),
        .I2(ARG_carry_n_5),
        .O(\sub_sig[0]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \sub_sig[0]_i_12 
       (.I0(ARG[1]),
        .I1(tlast_sampled),
        .I2(ARG_carry_n_6),
        .O(\sub_sig[0]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \sub_sig[0]_i_4 
       (.I0(ARG[8]),
        .I1(tlast_sampled),
        .I2(ARG_carry__1_n_7),
        .O(\sub_sig[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \sub_sig[0]_i_5 
       (.I0(ARG[7]),
        .I1(tlast_sampled),
        .I2(ARG_carry__0_n_4),
        .O(\sub_sig[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \sub_sig[0]_i_6 
       (.I0(ARG[6]),
        .I1(tlast_sampled),
        .I2(ARG_carry__0_n_5),
        .O(\sub_sig[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \sub_sig[0]_i_7 
       (.I0(ARG[5]),
        .I1(tlast_sampled),
        .I2(ARG_carry__0_n_6),
        .O(\sub_sig[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \sub_sig[0]_i_8 
       (.I0(ARG[0]),
        .I1(tlast_sampled),
        .I2(ARG_carry_n_7),
        .O(\sub_sig[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \sub_sig[0]_i_9 
       (.I0(ARG[4]),
        .I1(tlast_sampled),
        .I2(ARG_carry__0_n_7),
        .O(\sub_sig[0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \sub_sig[10]_i_1 
       (.I0(ARG_carry__2_n_4),
        .I1(tlast_sampled),
        .I2(ARG[15]),
        .I3(ARG1[10]),
        .O(ARG0[10]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \sub_sig[11]_i_1 
       (.I0(ARG_carry__2_n_4),
        .I1(tlast_sampled),
        .I2(ARG[15]),
        .I3(ARG1[11]),
        .O(ARG0[11]));
  LUT4 #(
    .INIT(16'h0400)) 
    \sub_sig[15]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(aresetn),
        .O(sub_sig0));
  LUT3 #(
    .INIT(8'h47)) 
    \sub_sig[15]_i_10 
       (.I0(ARG[14]),
        .I1(tlast_sampled),
        .I2(ARG_carry__2_n_5),
        .O(\sub_sig[15]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \sub_sig[15]_i_11 
       (.I0(ARG[13]),
        .I1(tlast_sampled),
        .I2(ARG_carry__2_n_6),
        .O(\sub_sig[15]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \sub_sig[15]_i_2 
       (.I0(ARG_carry__2_n_4),
        .I1(tlast_sampled),
        .I2(ARG[15]),
        .I3(\sub_sig_reg[15]_i_3_n_0 ),
        .O(ARG0[30]));
  LUT4 #(
    .INIT(16'h1DFF)) 
    \sub_sig[15]_i_4 
       (.I0(ARG_carry__2_n_4),
        .I1(tlast_sampled),
        .I2(ARG[15]),
        .I3(ARG3[16]),
        .O(\sub_sig[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1DFF)) 
    \sub_sig[15]_i_5 
       (.I0(ARG_carry__2_n_4),
        .I1(tlast_sampled),
        .I2(ARG[15]),
        .I3(ARG3[15]),
        .O(\sub_sig[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h47554700475547FF)) 
    \sub_sig[15]_i_6 
       (.I0(ARG3[14]),
        .I1(ARG[15]),
        .I2(ARG[14]),
        .I3(tlast_sampled),
        .I4(ARG_carry__2_n_4),
        .I5(ARG_carry__2_n_5),
        .O(\sub_sig[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \sub_sig[15]_i_8 
       (.I0(ARG[15]),
        .I1(tlast_sampled),
        .I2(ARG_carry__2_n_4),
        .O(\sub_sig[15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \sub_sig[15]_i_9 
       (.I0(ARG[15]),
        .I1(tlast_sampled),
        .I2(ARG_carry__2_n_4),
        .O(\sub_sig[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hACAAACAAACFFAC00)) 
    \sub_sig[1]_i_1 
       (.I0(ARG1[1]),
        .I1(ARG[6]),
        .I2(ARG[15]),
        .I3(tlast_sampled),
        .I4(ARG_carry__0_n_5),
        .I5(ARG_carry__2_n_4),
        .O(ARG0[1]));
  LUT6 #(
    .INIT(64'hACAAACAAACFFAC00)) 
    \sub_sig[2]_i_1 
       (.I0(ARG1[2]),
        .I1(ARG[7]),
        .I2(ARG[15]),
        .I3(tlast_sampled),
        .I4(ARG_carry__0_n_4),
        .I5(ARG_carry__2_n_4),
        .O(ARG0[2]));
  LUT6 #(
    .INIT(64'hACAAACAAACFFAC00)) 
    \sub_sig[3]_i_1 
       (.I0(ARG1[3]),
        .I1(ARG[8]),
        .I2(ARG[15]),
        .I3(tlast_sampled),
        .I4(ARG_carry__1_n_7),
        .I5(ARG_carry__2_n_4),
        .O(ARG0[3]));
  LUT6 #(
    .INIT(64'hACAAACAAACFFAC00)) 
    \sub_sig[4]_i_1 
       (.I0(ARG1[4]),
        .I1(ARG[9]),
        .I2(ARG[15]),
        .I3(tlast_sampled),
        .I4(ARG_carry__1_n_6),
        .I5(ARG_carry__2_n_4),
        .O(ARG0[4]));
  LUT6 #(
    .INIT(64'h47554700475547FF)) 
    \sub_sig[4]_i_3 
       (.I0(ARG3[5]),
        .I1(ARG[15]),
        .I2(ARG[5]),
        .I3(tlast_sampled),
        .I4(ARG_carry__2_n_4),
        .I5(ARG_carry__0_n_6),
        .O(\sub_sig[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h47554700475547FF)) 
    \sub_sig[4]_i_4 
       (.I0(ARG3[9]),
        .I1(ARG[15]),
        .I2(ARG[9]),
        .I3(tlast_sampled),
        .I4(ARG_carry__2_n_4),
        .I5(ARG_carry__1_n_6),
        .O(\sub_sig[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h47554700475547FF)) 
    \sub_sig[4]_i_5 
       (.I0(ARG3[8]),
        .I1(ARG[15]),
        .I2(ARG[8]),
        .I3(tlast_sampled),
        .I4(ARG_carry__2_n_4),
        .I5(ARG_carry__1_n_7),
        .O(\sub_sig[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h47554700475547FF)) 
    \sub_sig[4]_i_6 
       (.I0(ARG3[7]),
        .I1(ARG[15]),
        .I2(ARG[7]),
        .I3(tlast_sampled),
        .I4(ARG_carry__2_n_4),
        .I5(ARG_carry__0_n_4),
        .O(\sub_sig[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h47554700475547FF)) 
    \sub_sig[4]_i_7 
       (.I0(ARG3[6]),
        .I1(ARG[15]),
        .I2(ARG[6]),
        .I3(tlast_sampled),
        .I4(ARG_carry__2_n_4),
        .I5(ARG_carry__0_n_5),
        .O(\sub_sig[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hACAAACAAACFFAC00)) 
    \sub_sig[5]_i_1 
       (.I0(ARG1[5]),
        .I1(ARG[10]),
        .I2(ARG[15]),
        .I3(tlast_sampled),
        .I4(ARG_carry__1_n_5),
        .I5(ARG_carry__2_n_4),
        .O(ARG0[5]));
  LUT6 #(
    .INIT(64'hACAAACAAACFFAC00)) 
    \sub_sig[6]_i_1 
       (.I0(ARG1[6]),
        .I1(ARG[11]),
        .I2(ARG[15]),
        .I3(tlast_sampled),
        .I4(ARG_carry__1_n_4),
        .I5(ARG_carry__2_n_4),
        .O(ARG0[6]));
  LUT6 #(
    .INIT(64'hACAAACAAACFFAC00)) 
    \sub_sig[7]_i_1 
       (.I0(ARG1[7]),
        .I1(ARG[12]),
        .I2(ARG[15]),
        .I3(tlast_sampled),
        .I4(ARG_carry__2_n_7),
        .I5(ARG_carry__2_n_4),
        .O(ARG0[7]));
  LUT6 #(
    .INIT(64'hACAAACAAACFFAC00)) 
    \sub_sig[8]_i_1 
       (.I0(ARG1[8]),
        .I1(ARG[13]),
        .I2(ARG[15]),
        .I3(tlast_sampled),
        .I4(ARG_carry__2_n_6),
        .I5(ARG_carry__2_n_4),
        .O(ARG0[8]));
  LUT3 #(
    .INIT(8'h47)) 
    \sub_sig[8]_i_10 
       (.I0(ARG[10]),
        .I1(tlast_sampled),
        .I2(ARG_carry__1_n_5),
        .O(\sub_sig[8]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \sub_sig[8]_i_11 
       (.I0(ARG[9]),
        .I1(tlast_sampled),
        .I2(ARG_carry__1_n_6),
        .O(\sub_sig[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h47554700475547FF)) 
    \sub_sig[8]_i_3 
       (.I0(ARG3[13]),
        .I1(ARG[15]),
        .I2(ARG[13]),
        .I3(tlast_sampled),
        .I4(ARG_carry__2_n_4),
        .I5(ARG_carry__2_n_6),
        .O(\sub_sig[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h47554700475547FF)) 
    \sub_sig[8]_i_4 
       (.I0(ARG3[12]),
        .I1(ARG[15]),
        .I2(ARG[12]),
        .I3(tlast_sampled),
        .I4(ARG_carry__2_n_4),
        .I5(ARG_carry__2_n_7),
        .O(\sub_sig[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h47554700475547FF)) 
    \sub_sig[8]_i_5 
       (.I0(ARG3[11]),
        .I1(ARG[15]),
        .I2(ARG[11]),
        .I3(tlast_sampled),
        .I4(ARG_carry__2_n_4),
        .I5(ARG_carry__1_n_4),
        .O(\sub_sig[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h47554700475547FF)) 
    \sub_sig[8]_i_6 
       (.I0(ARG3[10]),
        .I1(ARG[15]),
        .I2(ARG[10]),
        .I3(tlast_sampled),
        .I4(ARG_carry__2_n_4),
        .I5(ARG_carry__1_n_5),
        .O(\sub_sig[8]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \sub_sig[8]_i_8 
       (.I0(ARG[12]),
        .I1(tlast_sampled),
        .I2(ARG_carry__2_n_7),
        .O(\sub_sig[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \sub_sig[8]_i_9 
       (.I0(ARG[11]),
        .I1(tlast_sampled),
        .I2(ARG_carry__1_n_4),
        .O(\sub_sig[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hACAAACAAACFFAC00)) 
    \sub_sig[9]_i_1 
       (.I0(ARG1[9]),
        .I1(ARG[14]),
        .I2(ARG[15]),
        .I3(tlast_sampled),
        .I4(ARG_carry__2_n_5),
        .I5(ARG_carry__2_n_4),
        .O(ARG0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sig_reg[0] 
       (.C(clk),
        .CE(sub_sig0),
        .D(ARG0[0]),
        .Q(sub_sig[0]),
        .R(1'b0));
  CARRY4 \sub_sig_reg[0]_i_2 
       (.CI(\sub_sig_reg[0]_i_3_n_0 ),
        .CO({\sub_sig_reg[0]_i_2_n_0 ,\sub_sig_reg[0]_i_2_n_1 ,\sub_sig_reg[0]_i_2_n_2 ,\sub_sig_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ARG3[8:5]),
        .S({\sub_sig[0]_i_4_n_0 ,\sub_sig[0]_i_5_n_0 ,\sub_sig[0]_i_6_n_0 ,\sub_sig[0]_i_7_n_0 }));
  CARRY4 \sub_sig_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\sub_sig_reg[0]_i_3_n_0 ,\sub_sig_reg[0]_i_3_n_1 ,\sub_sig_reg[0]_i_3_n_2 ,\sub_sig_reg[0]_i_3_n_3 }),
        .CYINIT(\sub_sig[0]_i_8_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_sub_sig_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({\sub_sig[0]_i_9_n_0 ,\sub_sig[0]_i_10_n_0 ,\sub_sig[0]_i_11_n_0 ,\sub_sig[0]_i_12_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sig_reg[10] 
       (.C(clk),
        .CE(sub_sig0),
        .D(ARG0[10]),
        .Q(sub_sig[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sig_reg[11] 
       (.C(clk),
        .CE(sub_sig0),
        .D(ARG0[11]),
        .Q(sub_sig[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sig_reg[15] 
       (.C(clk),
        .CE(sub_sig0),
        .D(ARG0[30]),
        .Q(sub_sig[15]),
        .R(1'b0));
  CARRY4 \sub_sig_reg[15]_i_3 
       (.CI(\sub_sig_reg[8]_i_2_n_0 ),
        .CO({\sub_sig_reg[15]_i_3_n_0 ,\NLW_sub_sig_reg[15]_i_3_CO_UNCONNECTED [2],\sub_sig_reg[15]_i_3_n_2 ,\sub_sig_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sub_sig_reg[15]_i_3_O_UNCONNECTED [3],ARG1[11:9]}),
        .S({1'b1,\sub_sig[15]_i_4_n_0 ,\sub_sig[15]_i_5_n_0 ,\sub_sig[15]_i_6_n_0 }));
  CARRY4 \sub_sig_reg[15]_i_7 
       (.CI(\sub_sig_reg[8]_i_7_n_0 ),
        .CO({\NLW_sub_sig_reg[15]_i_7_CO_UNCONNECTED [3],\sub_sig_reg[15]_i_7_n_1 ,\sub_sig_reg[15]_i_7_n_2 ,\sub_sig_reg[15]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ARG3[16:13]),
        .S({\sub_sig[15]_i_8_n_0 ,\sub_sig[15]_i_9_n_0 ,\sub_sig[15]_i_10_n_0 ,\sub_sig[15]_i_11_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sig_reg[1] 
       (.C(clk),
        .CE(sub_sig0),
        .D(ARG0[1]),
        .Q(sub_sig[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sig_reg[2] 
       (.C(clk),
        .CE(sub_sig0),
        .D(ARG0[2]),
        .Q(sub_sig[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sig_reg[3] 
       (.C(clk),
        .CE(sub_sig0),
        .D(ARG0[3]),
        .Q(sub_sig[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sig_reg[4] 
       (.C(clk),
        .CE(sub_sig0),
        .D(ARG0[4]),
        .Q(sub_sig[4]),
        .R(1'b0));
  CARRY4 \sub_sig_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\sub_sig_reg[4]_i_2_n_0 ,\sub_sig_reg[4]_i_2_n_1 ,\sub_sig_reg[4]_i_2_n_2 ,\sub_sig_reg[4]_i_2_n_3 }),
        .CYINIT(\sub_sig[4]_i_3_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ARG1[4:1]),
        .S({\sub_sig[4]_i_4_n_0 ,\sub_sig[4]_i_5_n_0 ,\sub_sig[4]_i_6_n_0 ,\sub_sig[4]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sig_reg[5] 
       (.C(clk),
        .CE(sub_sig0),
        .D(ARG0[5]),
        .Q(sub_sig[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sig_reg[6] 
       (.C(clk),
        .CE(sub_sig0),
        .D(ARG0[6]),
        .Q(sub_sig[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sig_reg[7] 
       (.C(clk),
        .CE(sub_sig0),
        .D(ARG0[7]),
        .Q(sub_sig[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sig_reg[8] 
       (.C(clk),
        .CE(sub_sig0),
        .D(ARG0[8]),
        .Q(sub_sig[8]),
        .R(1'b0));
  CARRY4 \sub_sig_reg[8]_i_2 
       (.CI(\sub_sig_reg[4]_i_2_n_0 ),
        .CO({\sub_sig_reg[8]_i_2_n_0 ,\sub_sig_reg[8]_i_2_n_1 ,\sub_sig_reg[8]_i_2_n_2 ,\sub_sig_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ARG1[8:5]),
        .S({\sub_sig[8]_i_3_n_0 ,\sub_sig[8]_i_4_n_0 ,\sub_sig[8]_i_5_n_0 ,\sub_sig[8]_i_6_n_0 }));
  CARRY4 \sub_sig_reg[8]_i_7 
       (.CI(\sub_sig_reg[0]_i_2_n_0 ),
        .CO({\sub_sig_reg[8]_i_7_n_0 ,\sub_sig_reg[8]_i_7_n_1 ,\sub_sig_reg[8]_i_7_n_2 ,\sub_sig_reg[8]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ARG3[12:9]),
        .S({\sub_sig[8]_i_8_n_0 ,\sub_sig[8]_i_9_n_0 ,\sub_sig[8]_i_10_n_0 ,\sub_sig[8]_i_11_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sig_reg[9] 
       (.C(clk),
        .CE(sub_sig0),
        .D(ARG0[9]),
        .Q(sub_sig[9]),
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
    .INIT(64'hFFFFFF7F00000008)) 
    tlast_expected_i_1
       (.I0(aresetn),
        .I1(state[0]),
        .I2(tlast_sampled),
        .I3(state[1]),
        .I4(state[2]),
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
  LUT5 #(
    .INIT(32'h00100000)) 
    tlast_sampled_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(s_axis_tvalid),
        .I3(state[0]),
        .I4(aresetn),
        .O(sw_reg0));
  FDRE #(
    .INIT(1'b0)) 
    tlast_sampled_reg
       (.C(clk),
        .CE(sw_reg0),
        .D(s_axis_tlast),
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

// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon May 25 15:44:52 2020
// Host        : DESKTOP-O39JAIK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Vivado_DESD_Project/Project/Personal/Lab3_A4/LAB3A4/Sources/BD/bd_mov_av_v2/ip/bd_mov_av_v2_moving_average_v2_0_0/bd_mov_av_v2_moving_average_v2_0_0_sim_netlist.v
// Design      : bd_mov_av_v2_moving_average_v2_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_mov_av_v2_moving_average_v2_0_0,moving_average_v2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "moving_average_v2,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module bd_mov_av_v2_moving_average_v2_0_0
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input sw_in;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [15:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
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

  bd_mov_av_v2_moving_average_v2_0_0_moving_average_v2 U0
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

(* ORIG_REF_NAME = "moving_average_v2" *) 
module bd_mov_av_v2_moving_average_v2_0_0_moving_average_v2
   (m_axis_tdata,
    m_axis_tvalid,
    s_axis_tready,
    m_axis_tlast,
    clk,
    s_axis_tdata,
    s_axis_tvalid,
    aresetn,
    s_axis_tlast,
    m_axis_tready,
    sw_in);
  output [15:0]m_axis_tdata;
  output m_axis_tvalid;
  output s_axis_tready;
  output m_axis_tlast;
  input clk;
  input [15:0]s_axis_tdata;
  input s_axis_tvalid;
  input aresetn;
  input s_axis_tlast;
  input m_axis_tready;
  input sw_in;

  wire \FSM_onehot_state_dx[5]_i_1_n_0 ;
  wire \FSM_onehot_state_dx[5]_i_2_n_0 ;
  wire \FSM_onehot_state_dx_reg_n_0_[1] ;
  wire \FSM_onehot_state_dx_reg_n_0_[2] ;
  wire \FSM_onehot_state_dx_reg_n_0_[3] ;
  wire \FSM_onehot_state_dx_reg_n_0_[4] ;
  wire \FSM_onehot_state_dx_reg_n_0_[5] ;
  wire \FSM_onehot_state_sx[5]_i_1_n_0 ;
  wire \FSM_onehot_state_sx[5]_i_2_n_0 ;
  wire \FSM_onehot_state_sx[5]_i_3_n_0 ;
  wire \FSM_onehot_state_sx[5]_i_4_n_0 ;
  wire \FSM_onehot_state_sx_reg_n_0_[1] ;
  wire \FSM_onehot_state_sx_reg_n_0_[2] ;
  wire \FSM_onehot_state_sx_reg_n_0_[3] ;
  wire \FSM_onehot_state_sx_reg_n_0_[4] ;
  wire \FSM_onehot_state_sx_reg_n_0_[5] ;
  wire aresetn;
  wire clk;
  wire [15:0]data_in_dx;
  wire [15:0]data_in_sx;
  wire [15:0]data_out_dx;
  wire data_out_dx0;
  wire data_out_dx0_carry__0_i_1_n_0;
  wire data_out_dx0_carry__0_i_2_n_0;
  wire data_out_dx0_carry__0_i_3_n_0;
  wire data_out_dx0_carry__0_i_4_n_0;
  wire data_out_dx0_carry__0_n_0;
  wire data_out_dx0_carry__0_n_1;
  wire data_out_dx0_carry__0_n_2;
  wire data_out_dx0_carry__0_n_3;
  wire data_out_dx0_carry__0_n_4;
  wire data_out_dx0_carry__0_n_5;
  wire data_out_dx0_carry__0_n_6;
  wire data_out_dx0_carry__1_i_1_n_0;
  wire data_out_dx0_carry__1_i_2_n_0;
  wire data_out_dx0_carry__1_i_3_n_0;
  wire data_out_dx0_carry__1_i_4_n_0;
  wire data_out_dx0_carry__1_n_0;
  wire data_out_dx0_carry__1_n_1;
  wire data_out_dx0_carry__1_n_2;
  wire data_out_dx0_carry__1_n_3;
  wire data_out_dx0_carry__1_n_4;
  wire data_out_dx0_carry__1_n_5;
  wire data_out_dx0_carry__1_n_6;
  wire data_out_dx0_carry__1_n_7;
  wire data_out_dx0_carry__2_i_1_n_0;
  wire data_out_dx0_carry__2_i_2_n_0;
  wire data_out_dx0_carry__2_i_3_n_0;
  wire data_out_dx0_carry__2_i_4_n_0;
  wire data_out_dx0_carry__2_n_0;
  wire data_out_dx0_carry__2_n_1;
  wire data_out_dx0_carry__2_n_2;
  wire data_out_dx0_carry__2_n_3;
  wire data_out_dx0_carry__2_n_4;
  wire data_out_dx0_carry__2_n_5;
  wire data_out_dx0_carry__2_n_6;
  wire data_out_dx0_carry__2_n_7;
  wire data_out_dx0_carry__3_i_1_n_0;
  wire data_out_dx0_carry__3_i_2_n_0;
  wire data_out_dx0_carry__3_i_3_n_0;
  wire data_out_dx0_carry__3_i_4_n_0;
  wire data_out_dx0_carry__3_i_5_n_0;
  wire data_out_dx0_carry__3_n_0;
  wire data_out_dx0_carry__3_n_1;
  wire data_out_dx0_carry__3_n_2;
  wire data_out_dx0_carry__3_n_3;
  wire data_out_dx0_carry__3_n_4;
  wire data_out_dx0_carry__3_n_5;
  wire data_out_dx0_carry__3_n_6;
  wire data_out_dx0_carry__3_n_7;
  wire data_out_dx0_carry__4_i_1_n_0;
  wire data_out_dx0_carry__4_n_7;
  wire data_out_dx0_carry_i_1_n_0;
  wire data_out_dx0_carry_i_2_n_0;
  wire data_out_dx0_carry_i_3_n_0;
  wire data_out_dx0_carry_i_4_n_0;
  wire data_out_dx0_carry_n_0;
  wire data_out_dx0_carry_n_1;
  wire data_out_dx0_carry_n_2;
  wire data_out_dx0_carry_n_3;
  wire \data_out_dx[0]_i_1_n_0 ;
  wire \data_out_dx[10]_i_1_n_0 ;
  wire \data_out_dx[11]_i_1_n_0 ;
  wire \data_out_dx[12]_i_1_n_0 ;
  wire \data_out_dx[13]_i_1_n_0 ;
  wire \data_out_dx[14]_i_1_n_0 ;
  wire \data_out_dx[15]_i_2_n_0 ;
  wire \data_out_dx[1]_i_1_n_0 ;
  wire \data_out_dx[2]_i_1_n_0 ;
  wire \data_out_dx[3]_i_1_n_0 ;
  wire \data_out_dx[4]_i_1_n_0 ;
  wire \data_out_dx[5]_i_1_n_0 ;
  wire \data_out_dx[6]_i_1_n_0 ;
  wire \data_out_dx[7]_i_1_n_0 ;
  wire \data_out_dx[8]_i_1_n_0 ;
  wire \data_out_dx[9]_i_1_n_0 ;
  wire [15:0]data_out_sx;
  wire data_out_sx0;
  wire data_out_sx0_carry__0_i_1_n_0;
  wire data_out_sx0_carry__0_i_2_n_0;
  wire data_out_sx0_carry__0_i_3_n_0;
  wire data_out_sx0_carry__0_i_4_n_0;
  wire data_out_sx0_carry__0_n_0;
  wire data_out_sx0_carry__0_n_1;
  wire data_out_sx0_carry__0_n_2;
  wire data_out_sx0_carry__0_n_3;
  wire data_out_sx0_carry__0_n_4;
  wire data_out_sx0_carry__0_n_5;
  wire data_out_sx0_carry__0_n_6;
  wire data_out_sx0_carry__1_i_1_n_0;
  wire data_out_sx0_carry__1_i_2_n_0;
  wire data_out_sx0_carry__1_i_3_n_0;
  wire data_out_sx0_carry__1_i_4_n_0;
  wire data_out_sx0_carry__1_n_0;
  wire data_out_sx0_carry__1_n_1;
  wire data_out_sx0_carry__1_n_2;
  wire data_out_sx0_carry__1_n_3;
  wire data_out_sx0_carry__1_n_4;
  wire data_out_sx0_carry__1_n_5;
  wire data_out_sx0_carry__1_n_6;
  wire data_out_sx0_carry__1_n_7;
  wire data_out_sx0_carry__2_i_1_n_0;
  wire data_out_sx0_carry__2_i_2_n_0;
  wire data_out_sx0_carry__2_i_3_n_0;
  wire data_out_sx0_carry__2_i_4_n_0;
  wire data_out_sx0_carry__2_n_0;
  wire data_out_sx0_carry__2_n_1;
  wire data_out_sx0_carry__2_n_2;
  wire data_out_sx0_carry__2_n_3;
  wire data_out_sx0_carry__2_n_4;
  wire data_out_sx0_carry__2_n_5;
  wire data_out_sx0_carry__2_n_6;
  wire data_out_sx0_carry__2_n_7;
  wire data_out_sx0_carry__3_i_1_n_0;
  wire data_out_sx0_carry__3_i_2_n_0;
  wire data_out_sx0_carry__3_i_3_n_0;
  wire data_out_sx0_carry__3_i_4_n_0;
  wire data_out_sx0_carry__3_i_5_n_0;
  wire data_out_sx0_carry__3_n_0;
  wire data_out_sx0_carry__3_n_1;
  wire data_out_sx0_carry__3_n_2;
  wire data_out_sx0_carry__3_n_3;
  wire data_out_sx0_carry__3_n_4;
  wire data_out_sx0_carry__3_n_5;
  wire data_out_sx0_carry__3_n_6;
  wire data_out_sx0_carry__3_n_7;
  wire data_out_sx0_carry__4_i_1_n_0;
  wire data_out_sx0_carry__4_n_7;
  wire data_out_sx0_carry_i_1_n_0;
  wire data_out_sx0_carry_i_2_n_0;
  wire data_out_sx0_carry_i_3_n_0;
  wire data_out_sx0_carry_i_4_n_0;
  wire data_out_sx0_carry_n_0;
  wire data_out_sx0_carry_n_1;
  wire data_out_sx0_carry_n_2;
  wire data_out_sx0_carry_n_3;
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
  wire \last_sum_sx[0]_i_1_n_0 ;
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
  wire \m_axis_tdata_reg[0]_i_1_n_0 ;
  wire \m_axis_tdata_reg[10]_i_1_n_0 ;
  wire \m_axis_tdata_reg[11]_i_1_n_0 ;
  wire \m_axis_tdata_reg[12]_i_1_n_0 ;
  wire \m_axis_tdata_reg[13]_i_1_n_0 ;
  wire \m_axis_tdata_reg[14]_i_1_n_0 ;
  wire \m_axis_tdata_reg[15]_i_1_n_0 ;
  wire \m_axis_tdata_reg[1]_i_1_n_0 ;
  wire \m_axis_tdata_reg[2]_i_1_n_0 ;
  wire \m_axis_tdata_reg[3]_i_1_n_0 ;
  wire \m_axis_tdata_reg[4]_i_1_n_0 ;
  wire \m_axis_tdata_reg[5]_i_1_n_0 ;
  wire \m_axis_tdata_reg[6]_i_1_n_0 ;
  wire \m_axis_tdata_reg[7]_i_1_n_0 ;
  wire \m_axis_tdata_reg[8]_i_1_n_0 ;
  wire \m_axis_tdata_reg[9]_i_1_n_0 ;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [15:0]p_0_in;
  wire p_0_in7_in;
  wire p_0_in8_in;
  wire read_allowed_sx_i_1_n_0;
  wire read_allowed_sx_reg_n_0;
  wire [15:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [16:0]sub_dx;
  wire sub_dx0;
  wire [16:0]sub_dx00_in;
  wire sub_dx0_carry__0_i_1_n_0;
  wire sub_dx0_carry__0_i_2_n_0;
  wire sub_dx0_carry__0_i_3_n_0;
  wire sub_dx0_carry__0_i_4_n_0;
  wire sub_dx0_carry__0_n_0;
  wire sub_dx0_carry__0_n_1;
  wire sub_dx0_carry__0_n_2;
  wire sub_dx0_carry__0_n_3;
  wire sub_dx0_carry__1_i_1_n_0;
  wire sub_dx0_carry__1_i_2_n_0;
  wire sub_dx0_carry__1_i_3_n_0;
  wire sub_dx0_carry__1_i_4_n_0;
  wire sub_dx0_carry__1_n_0;
  wire sub_dx0_carry__1_n_1;
  wire sub_dx0_carry__1_n_2;
  wire sub_dx0_carry__1_n_3;
  wire sub_dx0_carry__2_i_1_n_0;
  wire sub_dx0_carry__2_i_2_n_0;
  wire sub_dx0_carry__2_i_3_n_0;
  wire sub_dx0_carry__2_i_4_n_0;
  wire sub_dx0_carry__2_n_0;
  wire sub_dx0_carry__2_n_1;
  wire sub_dx0_carry__2_n_2;
  wire sub_dx0_carry__2_n_3;
  wire sub_dx0_carry_i_1_n_0;
  wire sub_dx0_carry_i_2_n_0;
  wire sub_dx0_carry_i_3_n_0;
  wire sub_dx0_carry_i_4_n_0;
  wire sub_dx0_carry_n_0;
  wire sub_dx0_carry_n_1;
  wire sub_dx0_carry_n_2;
  wire sub_dx0_carry_n_3;
  wire [16:0]sub_sx;
  wire sub_sx0;
  wire [16:0]sub_sx00_in;
  wire sub_sx0_carry__0_i_1_n_0;
  wire sub_sx0_carry__0_i_2_n_0;
  wire sub_sx0_carry__0_i_3_n_0;
  wire sub_sx0_carry__0_i_4_n_0;
  wire sub_sx0_carry__0_n_0;
  wire sub_sx0_carry__0_n_1;
  wire sub_sx0_carry__0_n_2;
  wire sub_sx0_carry__0_n_3;
  wire sub_sx0_carry__1_i_1_n_0;
  wire sub_sx0_carry__1_i_2_n_0;
  wire sub_sx0_carry__1_i_3_n_0;
  wire sub_sx0_carry__1_i_4_n_0;
  wire sub_sx0_carry__1_n_0;
  wire sub_sx0_carry__1_n_1;
  wire sub_sx0_carry__1_n_2;
  wire sub_sx0_carry__1_n_3;
  wire sub_sx0_carry__2_i_1_n_0;
  wire sub_sx0_carry__2_i_2_n_0;
  wire sub_sx0_carry__2_i_3_n_0;
  wire sub_sx0_carry__2_i_4_n_0;
  wire sub_sx0_carry__2_n_0;
  wire sub_sx0_carry__2_n_1;
  wire sub_sx0_carry__2_n_2;
  wire sub_sx0_carry__2_n_3;
  wire sub_sx0_carry_i_1_n_0;
  wire sub_sx0_carry_i_2_n_0;
  wire sub_sx0_carry_i_3_n_0;
  wire sub_sx0_carry_i_4_n_0;
  wire sub_sx0_carry_n_0;
  wire sub_sx0_carry_n_1;
  wire sub_sx0_carry_n_2;
  wire sub_sx0_carry_n_3;
  wire sw_in;
  wire sw_reg_dx0;
  wire sw_reg_dx_reg_n_0;
  wire sw_reg_sx0;
  wire sw_reg_sx_reg_n_0;
  wire tlast_sampled_dx_i_1_n_0;
  wire tlast_sampled_dx_reg_n_0;
  wire tlast_sampled_sx_i_1_n_0;
  wire tlast_sampled_sx_reg_n_0;
  wire write_allowed_sx_i_1_n_0;
  wire write_allowed_sx_reg_n_0;
  wire [3:0]NLW_data_out_dx0_carry_O_UNCONNECTED;
  wire [0:0]NLW_data_out_dx0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_data_out_dx0_carry__4_CO_UNCONNECTED;
  wire [3:1]NLW_data_out_dx0_carry__4_O_UNCONNECTED;
  wire [3:0]NLW_data_out_sx0_carry_O_UNCONNECTED;
  wire [0:0]NLW_data_out_sx0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_data_out_sx0_carry__4_CO_UNCONNECTED;
  wire [3:1]NLW_data_out_sx0_carry__4_O_UNCONNECTED;
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
  wire [3:0]NLW_sub_dx0_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_sub_dx0_carry__3_O_UNCONNECTED;
  wire [3:0]NLW_sub_sx0_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_sub_sx0_carry__3_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEEEEE)) 
    \FSM_onehot_state_dx[5]_i_1 
       (.I0(\FSM_onehot_state_dx_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_dx[5]_i_2_n_0 ),
        .I2(s_axis_tvalid),
        .I3(\FSM_onehot_state_dx_reg_n_0_[5] ),
        .I4(s_axis_tlast),
        .I5(\FSM_onehot_state_dx_reg_n_0_[4] ),
        .O(\FSM_onehot_state_dx[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88F8FFFF88F888F8)) 
    \FSM_onehot_state_dx[5]_i_2 
       (.I0(p_0_in7_in),
        .I1(m_axis_tready),
        .I2(\FSM_onehot_state_dx_reg_n_0_[2] ),
        .I3(write_allowed_sx_reg_n_0),
        .I4(read_allowed_sx_reg_n_0),
        .I5(\FSM_onehot_state_dx_reg_n_0_[1] ),
        .O(\FSM_onehot_state_dx[5]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000010,receive_data:100000,subtraction:010000,average:001000,wait_write:000100,send_data:000001," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_dx_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_state_dx[5]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\FSM_onehot_state_dx_reg_n_0_[2] ),
        .Q(p_0_in7_in));
  (* FSM_ENCODED_STATES = "idle:000010,receive_data:100000,subtraction:010000,average:001000,wait_write:000100,send_data:000001," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_dx_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_state_dx[5]_i_1_n_0 ),
        .D(p_0_in7_in),
        .PRE(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .Q(\FSM_onehot_state_dx_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "idle:000010,receive_data:100000,subtraction:010000,average:001000,wait_write:000100,send_data:000001," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_dx_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_state_dx[5]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\FSM_onehot_state_dx_reg_n_0_[3] ),
        .Q(\FSM_onehot_state_dx_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "idle:000010,receive_data:100000,subtraction:010000,average:001000,wait_write:000100,send_data:000001," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_dx_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_state_dx[5]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\FSM_onehot_state_dx_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_dx_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "idle:000010,receive_data:100000,subtraction:010000,average:001000,wait_write:000100,send_data:000001," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_dx_reg[4] 
       (.C(clk),
        .CE(\FSM_onehot_state_dx[5]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\FSM_onehot_state_dx_reg_n_0_[5] ),
        .Q(\FSM_onehot_state_dx_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "idle:000010,receive_data:100000,subtraction:010000,average:001000,wait_write:000100,send_data:000001," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_dx_reg[5] 
       (.C(clk),
        .CE(\FSM_onehot_state_dx[5]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\FSM_onehot_state_dx_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_dx_reg_n_0_[5] ));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \FSM_onehot_state_sx[5]_i_1 
       (.I0(\FSM_onehot_state_sx[5]_i_3_n_0 ),
        .I1(m_axis_tready),
        .I2(p_0_in8_in),
        .I3(\FSM_onehot_state_sx_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_sx_reg_n_0_[3] ),
        .O(\FSM_onehot_state_sx[5]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state_sx[5]_i_2 
       (.I0(aresetn),
        .O(\FSM_onehot_state_sx[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \FSM_onehot_state_sx[5]_i_3 
       (.I0(\FSM_onehot_state_sx[5]_i_4_n_0 ),
        .I1(s_axis_tlast),
        .I2(write_allowed_sx_reg_n_0),
        .I3(\FSM_onehot_state_sx_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_sx_reg_n_0_[1] ),
        .I5(read_allowed_sx_reg_n_0),
        .O(\FSM_onehot_state_sx[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state_sx[5]_i_4 
       (.I0(\FSM_onehot_state_sx_reg_n_0_[5] ),
        .I1(s_axis_tvalid),
        .O(\FSM_onehot_state_sx[5]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000010,receive_data:100000,subtraction:010000,average:001000,wait_write:000100,send_data:000001," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_sx_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_state_sx[5]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\FSM_onehot_state_sx_reg_n_0_[2] ),
        .Q(p_0_in8_in));
  (* FSM_ENCODED_STATES = "idle:000010,receive_data:100000,subtraction:010000,average:001000,wait_write:000100,send_data:000001," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_sx_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_state_sx[5]_i_1_n_0 ),
        .D(p_0_in8_in),
        .PRE(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .Q(\FSM_onehot_state_sx_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "idle:000010,receive_data:100000,subtraction:010000,average:001000,wait_write:000100,send_data:000001," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_sx_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_state_sx[5]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\FSM_onehot_state_sx_reg_n_0_[3] ),
        .Q(\FSM_onehot_state_sx_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "idle:000010,receive_data:100000,subtraction:010000,average:001000,wait_write:000100,send_data:000001," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_sx_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_state_sx[5]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\FSM_onehot_state_sx_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_sx_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "idle:000010,receive_data:100000,subtraction:010000,average:001000,wait_write:000100,send_data:000001," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_sx_reg[4] 
       (.C(clk),
        .CE(\FSM_onehot_state_sx[5]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\FSM_onehot_state_sx_reg_n_0_[5] ),
        .Q(\FSM_onehot_state_sx_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "idle:000010,receive_data:100000,subtraction:010000,average:001000,wait_write:000100,send_data:000001," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_sx_reg[5] 
       (.C(clk),
        .CE(\FSM_onehot_state_sx[5]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\FSM_onehot_state_sx_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_sx_reg_n_0_[5] ));
  LUT3 #(
    .INIT(8'h80)) 
    \data_in_dx[15]_i_1 
       (.I0(s_axis_tvalid),
        .I1(\FSM_onehot_state_dx_reg_n_0_[5] ),
        .I2(aresetn),
        .O(sw_reg_dx0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_dx_reg[0] 
       (.C(clk),
        .CE(sw_reg_dx0),
        .D(s_axis_tdata[0]),
        .Q(data_in_dx[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_dx_reg[10] 
       (.C(clk),
        .CE(sw_reg_dx0),
        .D(s_axis_tdata[10]),
        .Q(data_in_dx[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_dx_reg[11] 
       (.C(clk),
        .CE(sw_reg_dx0),
        .D(s_axis_tdata[11]),
        .Q(data_in_dx[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_dx_reg[12] 
       (.C(clk),
        .CE(sw_reg_dx0),
        .D(s_axis_tdata[12]),
        .Q(data_in_dx[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_dx_reg[13] 
       (.C(clk),
        .CE(sw_reg_dx0),
        .D(s_axis_tdata[13]),
        .Q(data_in_dx[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_dx_reg[14] 
       (.C(clk),
        .CE(sw_reg_dx0),
        .D(s_axis_tdata[14]),
        .Q(data_in_dx[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_dx_reg[15] 
       (.C(clk),
        .CE(sw_reg_dx0),
        .D(s_axis_tdata[15]),
        .Q(data_in_dx[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_dx_reg[1] 
       (.C(clk),
        .CE(sw_reg_dx0),
        .D(s_axis_tdata[1]),
        .Q(data_in_dx[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_dx_reg[2] 
       (.C(clk),
        .CE(sw_reg_dx0),
        .D(s_axis_tdata[2]),
        .Q(data_in_dx[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_dx_reg[3] 
       (.C(clk),
        .CE(sw_reg_dx0),
        .D(s_axis_tdata[3]),
        .Q(data_in_dx[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_dx_reg[4] 
       (.C(clk),
        .CE(sw_reg_dx0),
        .D(s_axis_tdata[4]),
        .Q(data_in_dx[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_dx_reg[5] 
       (.C(clk),
        .CE(sw_reg_dx0),
        .D(s_axis_tdata[5]),
        .Q(data_in_dx[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_dx_reg[6] 
       (.C(clk),
        .CE(sw_reg_dx0),
        .D(s_axis_tdata[6]),
        .Q(data_in_dx[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_dx_reg[7] 
       (.C(clk),
        .CE(sw_reg_dx0),
        .D(s_axis_tdata[7]),
        .Q(data_in_dx[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_dx_reg[8] 
       (.C(clk),
        .CE(sw_reg_dx0),
        .D(s_axis_tdata[8]),
        .Q(data_in_dx[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_dx_reg[9] 
       (.C(clk),
        .CE(sw_reg_dx0),
        .D(s_axis_tdata[9]),
        .Q(data_in_dx[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \data_in_sx[15]_i_1 
       (.I0(s_axis_tvalid),
        .I1(\FSM_onehot_state_sx_reg_n_0_[5] ),
        .I2(aresetn),
        .O(sw_reg_sx0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_sx_reg[0] 
       (.C(clk),
        .CE(sw_reg_sx0),
        .D(s_axis_tdata[0]),
        .Q(data_in_sx[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_sx_reg[10] 
       (.C(clk),
        .CE(sw_reg_sx0),
        .D(s_axis_tdata[10]),
        .Q(data_in_sx[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_sx_reg[11] 
       (.C(clk),
        .CE(sw_reg_sx0),
        .D(s_axis_tdata[11]),
        .Q(data_in_sx[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_sx_reg[12] 
       (.C(clk),
        .CE(sw_reg_sx0),
        .D(s_axis_tdata[12]),
        .Q(data_in_sx[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_sx_reg[13] 
       (.C(clk),
        .CE(sw_reg_sx0),
        .D(s_axis_tdata[13]),
        .Q(data_in_sx[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_sx_reg[14] 
       (.C(clk),
        .CE(sw_reg_sx0),
        .D(s_axis_tdata[14]),
        .Q(data_in_sx[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_sx_reg[15] 
       (.C(clk),
        .CE(sw_reg_sx0),
        .D(s_axis_tdata[15]),
        .Q(data_in_sx[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_sx_reg[1] 
       (.C(clk),
        .CE(sw_reg_sx0),
        .D(s_axis_tdata[1]),
        .Q(data_in_sx[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_sx_reg[2] 
       (.C(clk),
        .CE(sw_reg_sx0),
        .D(s_axis_tdata[2]),
        .Q(data_in_sx[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_sx_reg[3] 
       (.C(clk),
        .CE(sw_reg_sx0),
        .D(s_axis_tdata[3]),
        .Q(data_in_sx[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_sx_reg[4] 
       (.C(clk),
        .CE(sw_reg_sx0),
        .D(s_axis_tdata[4]),
        .Q(data_in_sx[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_sx_reg[5] 
       (.C(clk),
        .CE(sw_reg_sx0),
        .D(s_axis_tdata[5]),
        .Q(data_in_sx[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_sx_reg[6] 
       (.C(clk),
        .CE(sw_reg_sx0),
        .D(s_axis_tdata[6]),
        .Q(data_in_sx[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_sx_reg[7] 
       (.C(clk),
        .CE(sw_reg_sx0),
        .D(s_axis_tdata[7]),
        .Q(data_in_sx[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_sx_reg[8] 
       (.C(clk),
        .CE(sw_reg_sx0),
        .D(s_axis_tdata[8]),
        .Q(data_in_sx[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_sx_reg[9] 
       (.C(clk),
        .CE(sw_reg_sx0),
        .D(s_axis_tdata[9]),
        .Q(data_in_sx[9]),
        .R(1'b0));
  CARRY4 data_out_dx0_carry
       (.CI(1'b0),
        .CO({data_out_dx0_carry_n_0,data_out_dx0_carry_n_1,data_out_dx0_carry_n_2,data_out_dx0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(last_sum_dx_reg[3:0]),
        .O(NLW_data_out_dx0_carry_O_UNCONNECTED[3:0]),
        .S({data_out_dx0_carry_i_1_n_0,data_out_dx0_carry_i_2_n_0,data_out_dx0_carry_i_3_n_0,data_out_dx0_carry_i_4_n_0}));
  CARRY4 data_out_dx0_carry__0
       (.CI(data_out_dx0_carry_n_0),
        .CO({data_out_dx0_carry__0_n_0,data_out_dx0_carry__0_n_1,data_out_dx0_carry__0_n_2,data_out_dx0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(last_sum_dx_reg[7:4]),
        .O({data_out_dx0_carry__0_n_4,data_out_dx0_carry__0_n_5,data_out_dx0_carry__0_n_6,NLW_data_out_dx0_carry__0_O_UNCONNECTED[0]}),
        .S({data_out_dx0_carry__0_i_1_n_0,data_out_dx0_carry__0_i_2_n_0,data_out_dx0_carry__0_i_3_n_0,data_out_dx0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_dx0_carry__0_i_1
       (.I0(last_sum_dx_reg[7]),
        .I1(sub_dx[7]),
        .O(data_out_dx0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_dx0_carry__0_i_2
       (.I0(last_sum_dx_reg[6]),
        .I1(sub_dx[6]),
        .O(data_out_dx0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_dx0_carry__0_i_3
       (.I0(last_sum_dx_reg[5]),
        .I1(sub_dx[5]),
        .O(data_out_dx0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_dx0_carry__0_i_4
       (.I0(last_sum_dx_reg[4]),
        .I1(sub_dx[4]),
        .O(data_out_dx0_carry__0_i_4_n_0));
  CARRY4 data_out_dx0_carry__1
       (.CI(data_out_dx0_carry__0_n_0),
        .CO({data_out_dx0_carry__1_n_0,data_out_dx0_carry__1_n_1,data_out_dx0_carry__1_n_2,data_out_dx0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(last_sum_dx_reg[11:8]),
        .O({data_out_dx0_carry__1_n_4,data_out_dx0_carry__1_n_5,data_out_dx0_carry__1_n_6,data_out_dx0_carry__1_n_7}),
        .S({data_out_dx0_carry__1_i_1_n_0,data_out_dx0_carry__1_i_2_n_0,data_out_dx0_carry__1_i_3_n_0,data_out_dx0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_dx0_carry__1_i_1
       (.I0(last_sum_dx_reg[11]),
        .I1(sub_dx[11]),
        .O(data_out_dx0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_dx0_carry__1_i_2
       (.I0(last_sum_dx_reg[10]),
        .I1(sub_dx[10]),
        .O(data_out_dx0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_dx0_carry__1_i_3
       (.I0(last_sum_dx_reg[9]),
        .I1(sub_dx[9]),
        .O(data_out_dx0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_dx0_carry__1_i_4
       (.I0(last_sum_dx_reg[8]),
        .I1(sub_dx[8]),
        .O(data_out_dx0_carry__1_i_4_n_0));
  CARRY4 data_out_dx0_carry__2
       (.CI(data_out_dx0_carry__1_n_0),
        .CO({data_out_dx0_carry__2_n_0,data_out_dx0_carry__2_n_1,data_out_dx0_carry__2_n_2,data_out_dx0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(last_sum_dx_reg[15:12]),
        .O({data_out_dx0_carry__2_n_4,data_out_dx0_carry__2_n_5,data_out_dx0_carry__2_n_6,data_out_dx0_carry__2_n_7}),
        .S({data_out_dx0_carry__2_i_1_n_0,data_out_dx0_carry__2_i_2_n_0,data_out_dx0_carry__2_i_3_n_0,data_out_dx0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_dx0_carry__2_i_1
       (.I0(last_sum_dx_reg[15]),
        .I1(sub_dx[15]),
        .O(data_out_dx0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_dx0_carry__2_i_2
       (.I0(last_sum_dx_reg[14]),
        .I1(sub_dx[14]),
        .O(data_out_dx0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_dx0_carry__2_i_3
       (.I0(last_sum_dx_reg[13]),
        .I1(sub_dx[13]),
        .O(data_out_dx0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_dx0_carry__2_i_4
       (.I0(last_sum_dx_reg[12]),
        .I1(sub_dx[12]),
        .O(data_out_dx0_carry__2_i_4_n_0));
  CARRY4 data_out_dx0_carry__3
       (.CI(data_out_dx0_carry__2_n_0),
        .CO({data_out_dx0_carry__3_n_0,data_out_dx0_carry__3_n_1,data_out_dx0_carry__3_n_2,data_out_dx0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({last_sum_dx_reg[18:17],data_out_dx0_carry__3_i_1_n_0,sub_dx[16]}),
        .O({data_out_dx0_carry__3_n_4,data_out_dx0_carry__3_n_5,data_out_dx0_carry__3_n_6,data_out_dx0_carry__3_n_7}),
        .S({data_out_dx0_carry__3_i_2_n_0,data_out_dx0_carry__3_i_3_n_0,data_out_dx0_carry__3_i_4_n_0,data_out_dx0_carry__3_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_dx0_carry__3_i_1
       (.I0(sub_dx[16]),
        .O(data_out_dx0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    data_out_dx0_carry__3_i_2
       (.I0(last_sum_dx_reg[18]),
        .I1(last_sum_dx_reg[19]),
        .O(data_out_dx0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    data_out_dx0_carry__3_i_3
       (.I0(last_sum_dx_reg[17]),
        .I1(last_sum_dx_reg[18]),
        .O(data_out_dx0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_dx0_carry__3_i_4
       (.I0(sub_dx[16]),
        .I1(last_sum_dx_reg[17]),
        .O(data_out_dx0_carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_dx0_carry__3_i_5
       (.I0(sub_dx[16]),
        .I1(last_sum_dx_reg[16]),
        .O(data_out_dx0_carry__3_i_5_n_0));
  CARRY4 data_out_dx0_carry__4
       (.CI(data_out_dx0_carry__3_n_0),
        .CO(NLW_data_out_dx0_carry__4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_data_out_dx0_carry__4_O_UNCONNECTED[3:1],data_out_dx0_carry__4_n_7}),
        .S({1'b0,1'b0,1'b0,data_out_dx0_carry__4_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    data_out_dx0_carry__4_i_1
       (.I0(last_sum_dx_reg[19]),
        .I1(last_sum_dx_reg[20]),
        .O(data_out_dx0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_dx0_carry_i_1
       (.I0(last_sum_dx_reg[3]),
        .I1(sub_dx[3]),
        .O(data_out_dx0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_dx0_carry_i_2
       (.I0(last_sum_dx_reg[2]),
        .I1(sub_dx[2]),
        .O(data_out_dx0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_dx0_carry_i_3
       (.I0(last_sum_dx_reg[1]),
        .I1(sub_dx[1]),
        .O(data_out_dx0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_dx0_carry_i_4
       (.I0(last_sum_dx_reg[0]),
        .I1(sub_dx[0]),
        .O(data_out_dx0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_dx[0]_i_1 
       (.I0(data_out_dx0_carry__0_n_6),
        .I1(sw_reg_dx_reg_n_0),
        .I2(data_in_dx[0]),
        .O(\data_out_dx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_dx[10]_i_1 
       (.I0(data_out_dx0_carry__2_n_4),
        .I1(sw_reg_dx_reg_n_0),
        .I2(data_in_dx[10]),
        .O(\data_out_dx[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_dx[11]_i_1 
       (.I0(data_out_dx0_carry__3_n_7),
        .I1(sw_reg_dx_reg_n_0),
        .I2(data_in_dx[11]),
        .O(\data_out_dx[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_dx[12]_i_1 
       (.I0(data_out_dx0_carry__3_n_6),
        .I1(sw_reg_dx_reg_n_0),
        .I2(data_in_dx[12]),
        .O(\data_out_dx[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_dx[13]_i_1 
       (.I0(data_out_dx0_carry__3_n_5),
        .I1(sw_reg_dx_reg_n_0),
        .I2(data_in_dx[13]),
        .O(\data_out_dx[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_dx[14]_i_1 
       (.I0(data_out_dx0_carry__3_n_4),
        .I1(sw_reg_dx_reg_n_0),
        .I2(data_in_dx[14]),
        .O(\data_out_dx[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8808)) 
    \data_out_dx[15]_i_1 
       (.I0(aresetn),
        .I1(\FSM_onehot_state_dx_reg_n_0_[3] ),
        .I2(sw_reg_dx_reg_n_0),
        .I3(tlast_sampled_dx_reg_n_0),
        .O(data_out_dx0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_dx[15]_i_2 
       (.I0(data_out_dx0_carry__4_n_7),
        .I1(sw_reg_dx_reg_n_0),
        .I2(data_in_dx[15]),
        .O(\data_out_dx[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_dx[1]_i_1 
       (.I0(data_out_dx0_carry__0_n_5),
        .I1(sw_reg_dx_reg_n_0),
        .I2(data_in_dx[1]),
        .O(\data_out_dx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_dx[2]_i_1 
       (.I0(data_out_dx0_carry__0_n_4),
        .I1(sw_reg_dx_reg_n_0),
        .I2(data_in_dx[2]),
        .O(\data_out_dx[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_dx[3]_i_1 
       (.I0(data_out_dx0_carry__1_n_7),
        .I1(sw_reg_dx_reg_n_0),
        .I2(data_in_dx[3]),
        .O(\data_out_dx[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_dx[4]_i_1 
       (.I0(data_out_dx0_carry__1_n_6),
        .I1(sw_reg_dx_reg_n_0),
        .I2(data_in_dx[4]),
        .O(\data_out_dx[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_dx[5]_i_1 
       (.I0(data_out_dx0_carry__1_n_5),
        .I1(sw_reg_dx_reg_n_0),
        .I2(data_in_dx[5]),
        .O(\data_out_dx[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_dx[6]_i_1 
       (.I0(data_out_dx0_carry__1_n_4),
        .I1(sw_reg_dx_reg_n_0),
        .I2(data_in_dx[6]),
        .O(\data_out_dx[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_dx[7]_i_1 
       (.I0(data_out_dx0_carry__2_n_7),
        .I1(sw_reg_dx_reg_n_0),
        .I2(data_in_dx[7]),
        .O(\data_out_dx[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_dx[8]_i_1 
       (.I0(data_out_dx0_carry__2_n_6),
        .I1(sw_reg_dx_reg_n_0),
        .I2(data_in_dx[8]),
        .O(\data_out_dx[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_dx[9]_i_1 
       (.I0(data_out_dx0_carry__2_n_5),
        .I1(sw_reg_dx_reg_n_0),
        .I2(data_in_dx[9]),
        .O(\data_out_dx[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_dx_reg[0] 
       (.C(clk),
        .CE(data_out_dx0),
        .D(\data_out_dx[0]_i_1_n_0 ),
        .Q(data_out_dx[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_dx_reg[10] 
       (.C(clk),
        .CE(data_out_dx0),
        .D(\data_out_dx[10]_i_1_n_0 ),
        .Q(data_out_dx[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_dx_reg[11] 
       (.C(clk),
        .CE(data_out_dx0),
        .D(\data_out_dx[11]_i_1_n_0 ),
        .Q(data_out_dx[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_dx_reg[12] 
       (.C(clk),
        .CE(data_out_dx0),
        .D(\data_out_dx[12]_i_1_n_0 ),
        .Q(data_out_dx[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_dx_reg[13] 
       (.C(clk),
        .CE(data_out_dx0),
        .D(\data_out_dx[13]_i_1_n_0 ),
        .Q(data_out_dx[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_dx_reg[14] 
       (.C(clk),
        .CE(data_out_dx0),
        .D(\data_out_dx[14]_i_1_n_0 ),
        .Q(data_out_dx[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_dx_reg[15] 
       (.C(clk),
        .CE(data_out_dx0),
        .D(\data_out_dx[15]_i_2_n_0 ),
        .Q(data_out_dx[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_dx_reg[1] 
       (.C(clk),
        .CE(data_out_dx0),
        .D(\data_out_dx[1]_i_1_n_0 ),
        .Q(data_out_dx[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_dx_reg[2] 
       (.C(clk),
        .CE(data_out_dx0),
        .D(\data_out_dx[2]_i_1_n_0 ),
        .Q(data_out_dx[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_dx_reg[3] 
       (.C(clk),
        .CE(data_out_dx0),
        .D(\data_out_dx[3]_i_1_n_0 ),
        .Q(data_out_dx[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_dx_reg[4] 
       (.C(clk),
        .CE(data_out_dx0),
        .D(\data_out_dx[4]_i_1_n_0 ),
        .Q(data_out_dx[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_dx_reg[5] 
       (.C(clk),
        .CE(data_out_dx0),
        .D(\data_out_dx[5]_i_1_n_0 ),
        .Q(data_out_dx[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_dx_reg[6] 
       (.C(clk),
        .CE(data_out_dx0),
        .D(\data_out_dx[6]_i_1_n_0 ),
        .Q(data_out_dx[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_dx_reg[7] 
       (.C(clk),
        .CE(data_out_dx0),
        .D(\data_out_dx[7]_i_1_n_0 ),
        .Q(data_out_dx[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_dx_reg[8] 
       (.C(clk),
        .CE(data_out_dx0),
        .D(\data_out_dx[8]_i_1_n_0 ),
        .Q(data_out_dx[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_dx_reg[9] 
       (.C(clk),
        .CE(data_out_dx0),
        .D(\data_out_dx[9]_i_1_n_0 ),
        .Q(data_out_dx[9]),
        .R(1'b0));
  CARRY4 data_out_sx0_carry
       (.CI(1'b0),
        .CO({data_out_sx0_carry_n_0,data_out_sx0_carry_n_1,data_out_sx0_carry_n_2,data_out_sx0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(last_sum_sx_reg[3:0]),
        .O(NLW_data_out_sx0_carry_O_UNCONNECTED[3:0]),
        .S({data_out_sx0_carry_i_1_n_0,data_out_sx0_carry_i_2_n_0,data_out_sx0_carry_i_3_n_0,data_out_sx0_carry_i_4_n_0}));
  CARRY4 data_out_sx0_carry__0
       (.CI(data_out_sx0_carry_n_0),
        .CO({data_out_sx0_carry__0_n_0,data_out_sx0_carry__0_n_1,data_out_sx0_carry__0_n_2,data_out_sx0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(last_sum_sx_reg[7:4]),
        .O({data_out_sx0_carry__0_n_4,data_out_sx0_carry__0_n_5,data_out_sx0_carry__0_n_6,NLW_data_out_sx0_carry__0_O_UNCONNECTED[0]}),
        .S({data_out_sx0_carry__0_i_1_n_0,data_out_sx0_carry__0_i_2_n_0,data_out_sx0_carry__0_i_3_n_0,data_out_sx0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_sx0_carry__0_i_1
       (.I0(last_sum_sx_reg[7]),
        .I1(sub_sx[7]),
        .O(data_out_sx0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_sx0_carry__0_i_2
       (.I0(last_sum_sx_reg[6]),
        .I1(sub_sx[6]),
        .O(data_out_sx0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_sx0_carry__0_i_3
       (.I0(last_sum_sx_reg[5]),
        .I1(sub_sx[5]),
        .O(data_out_sx0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_sx0_carry__0_i_4
       (.I0(last_sum_sx_reg[4]),
        .I1(sub_sx[4]),
        .O(data_out_sx0_carry__0_i_4_n_0));
  CARRY4 data_out_sx0_carry__1
       (.CI(data_out_sx0_carry__0_n_0),
        .CO({data_out_sx0_carry__1_n_0,data_out_sx0_carry__1_n_1,data_out_sx0_carry__1_n_2,data_out_sx0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(last_sum_sx_reg[11:8]),
        .O({data_out_sx0_carry__1_n_4,data_out_sx0_carry__1_n_5,data_out_sx0_carry__1_n_6,data_out_sx0_carry__1_n_7}),
        .S({data_out_sx0_carry__1_i_1_n_0,data_out_sx0_carry__1_i_2_n_0,data_out_sx0_carry__1_i_3_n_0,data_out_sx0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_sx0_carry__1_i_1
       (.I0(last_sum_sx_reg[11]),
        .I1(sub_sx[11]),
        .O(data_out_sx0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_sx0_carry__1_i_2
       (.I0(last_sum_sx_reg[10]),
        .I1(sub_sx[10]),
        .O(data_out_sx0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_sx0_carry__1_i_3
       (.I0(last_sum_sx_reg[9]),
        .I1(sub_sx[9]),
        .O(data_out_sx0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_sx0_carry__1_i_4
       (.I0(last_sum_sx_reg[8]),
        .I1(sub_sx[8]),
        .O(data_out_sx0_carry__1_i_4_n_0));
  CARRY4 data_out_sx0_carry__2
       (.CI(data_out_sx0_carry__1_n_0),
        .CO({data_out_sx0_carry__2_n_0,data_out_sx0_carry__2_n_1,data_out_sx0_carry__2_n_2,data_out_sx0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(last_sum_sx_reg[15:12]),
        .O({data_out_sx0_carry__2_n_4,data_out_sx0_carry__2_n_5,data_out_sx0_carry__2_n_6,data_out_sx0_carry__2_n_7}),
        .S({data_out_sx0_carry__2_i_1_n_0,data_out_sx0_carry__2_i_2_n_0,data_out_sx0_carry__2_i_3_n_0,data_out_sx0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_sx0_carry__2_i_1
       (.I0(last_sum_sx_reg[15]),
        .I1(sub_sx[15]),
        .O(data_out_sx0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_sx0_carry__2_i_2
       (.I0(last_sum_sx_reg[14]),
        .I1(sub_sx[14]),
        .O(data_out_sx0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_sx0_carry__2_i_3
       (.I0(last_sum_sx_reg[13]),
        .I1(sub_sx[13]),
        .O(data_out_sx0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_sx0_carry__2_i_4
       (.I0(last_sum_sx_reg[12]),
        .I1(sub_sx[12]),
        .O(data_out_sx0_carry__2_i_4_n_0));
  CARRY4 data_out_sx0_carry__3
       (.CI(data_out_sx0_carry__2_n_0),
        .CO({data_out_sx0_carry__3_n_0,data_out_sx0_carry__3_n_1,data_out_sx0_carry__3_n_2,data_out_sx0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({last_sum_sx_reg[18:17],data_out_sx0_carry__3_i_1_n_0,sub_sx[16]}),
        .O({data_out_sx0_carry__3_n_4,data_out_sx0_carry__3_n_5,data_out_sx0_carry__3_n_6,data_out_sx0_carry__3_n_7}),
        .S({data_out_sx0_carry__3_i_2_n_0,data_out_sx0_carry__3_i_3_n_0,data_out_sx0_carry__3_i_4_n_0,data_out_sx0_carry__3_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    data_out_sx0_carry__3_i_1
       (.I0(sub_sx[16]),
        .O(data_out_sx0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    data_out_sx0_carry__3_i_2
       (.I0(last_sum_sx_reg[18]),
        .I1(last_sum_sx_reg[19]),
        .O(data_out_sx0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    data_out_sx0_carry__3_i_3
       (.I0(last_sum_sx_reg[17]),
        .I1(last_sum_sx_reg[18]),
        .O(data_out_sx0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_sx0_carry__3_i_4
       (.I0(sub_sx[16]),
        .I1(last_sum_sx_reg[17]),
        .O(data_out_sx0_carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_sx0_carry__3_i_5
       (.I0(sub_sx[16]),
        .I1(last_sum_sx_reg[16]),
        .O(data_out_sx0_carry__3_i_5_n_0));
  CARRY4 data_out_sx0_carry__4
       (.CI(data_out_sx0_carry__3_n_0),
        .CO(NLW_data_out_sx0_carry__4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_data_out_sx0_carry__4_O_UNCONNECTED[3:1],data_out_sx0_carry__4_n_7}),
        .S({1'b0,1'b0,1'b0,data_out_sx0_carry__4_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    data_out_sx0_carry__4_i_1
       (.I0(last_sum_sx_reg[19]),
        .I1(last_sum_sx_reg[20]),
        .O(data_out_sx0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_sx0_carry_i_1
       (.I0(last_sum_sx_reg[3]),
        .I1(sub_sx[3]),
        .O(data_out_sx0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_sx0_carry_i_2
       (.I0(last_sum_sx_reg[2]),
        .I1(sub_sx[2]),
        .O(data_out_sx0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_sx0_carry_i_3
       (.I0(last_sum_sx_reg[1]),
        .I1(sub_sx[1]),
        .O(data_out_sx0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    data_out_sx0_carry_i_4
       (.I0(last_sum_sx_reg[0]),
        .I1(sub_sx[0]),
        .O(data_out_sx0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_sx[0]_i_1 
       (.I0(data_out_sx0_carry__0_n_6),
        .I1(sw_reg_sx_reg_n_0),
        .I2(data_in_sx[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_sx[10]_i_1 
       (.I0(data_out_sx0_carry__2_n_4),
        .I1(sw_reg_sx_reg_n_0),
        .I2(data_in_sx[10]),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_sx[11]_i_1 
       (.I0(data_out_sx0_carry__3_n_7),
        .I1(sw_reg_sx_reg_n_0),
        .I2(data_in_sx[11]),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_sx[12]_i_1 
       (.I0(data_out_sx0_carry__3_n_6),
        .I1(sw_reg_sx_reg_n_0),
        .I2(data_in_sx[12]),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_sx[13]_i_1 
       (.I0(data_out_sx0_carry__3_n_5),
        .I1(sw_reg_sx_reg_n_0),
        .I2(data_in_sx[13]),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_sx[14]_i_1 
       (.I0(data_out_sx0_carry__3_n_4),
        .I1(sw_reg_sx_reg_n_0),
        .I2(data_in_sx[14]),
        .O(p_0_in[14]));
  LUT4 #(
    .INIT(16'h0888)) 
    \data_out_sx[15]_i_1 
       (.I0(aresetn),
        .I1(\FSM_onehot_state_sx_reg_n_0_[3] ),
        .I2(tlast_sampled_sx_reg_n_0),
        .I3(sw_reg_sx_reg_n_0),
        .O(data_out_sx0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_sx[15]_i_2 
       (.I0(data_out_sx0_carry__4_n_7),
        .I1(sw_reg_sx_reg_n_0),
        .I2(data_in_sx[15]),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_sx[1]_i_1 
       (.I0(data_out_sx0_carry__0_n_5),
        .I1(sw_reg_sx_reg_n_0),
        .I2(data_in_sx[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_sx[2]_i_1 
       (.I0(data_out_sx0_carry__0_n_4),
        .I1(sw_reg_sx_reg_n_0),
        .I2(data_in_sx[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_sx[3]_i_1 
       (.I0(data_out_sx0_carry__1_n_7),
        .I1(sw_reg_sx_reg_n_0),
        .I2(data_in_sx[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_sx[4]_i_1 
       (.I0(data_out_sx0_carry__1_n_6),
        .I1(sw_reg_sx_reg_n_0),
        .I2(data_in_sx[4]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_sx[5]_i_1 
       (.I0(data_out_sx0_carry__1_n_5),
        .I1(sw_reg_sx_reg_n_0),
        .I2(data_in_sx[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_sx[6]_i_1 
       (.I0(data_out_sx0_carry__1_n_4),
        .I1(sw_reg_sx_reg_n_0),
        .I2(data_in_sx[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_sx[7]_i_1 
       (.I0(data_out_sx0_carry__2_n_7),
        .I1(sw_reg_sx_reg_n_0),
        .I2(data_in_sx[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_sx[8]_i_1 
       (.I0(data_out_sx0_carry__2_n_6),
        .I1(sw_reg_sx_reg_n_0),
        .I2(data_in_sx[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_sx[9]_i_1 
       (.I0(data_out_sx0_carry__2_n_5),
        .I1(sw_reg_sx_reg_n_0),
        .I2(data_in_sx[9]),
        .O(p_0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_sx_reg[0] 
       (.C(clk),
        .CE(data_out_sx0),
        .D(p_0_in[0]),
        .Q(data_out_sx[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_sx_reg[10] 
       (.C(clk),
        .CE(data_out_sx0),
        .D(p_0_in[10]),
        .Q(data_out_sx[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_sx_reg[11] 
       (.C(clk),
        .CE(data_out_sx0),
        .D(p_0_in[11]),
        .Q(data_out_sx[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_sx_reg[12] 
       (.C(clk),
        .CE(data_out_sx0),
        .D(p_0_in[12]),
        .Q(data_out_sx[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_sx_reg[13] 
       (.C(clk),
        .CE(data_out_sx0),
        .D(p_0_in[13]),
        .Q(data_out_sx[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_sx_reg[14] 
       (.C(clk),
        .CE(data_out_sx0),
        .D(p_0_in[14]),
        .Q(data_out_sx[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_sx_reg[15] 
       (.C(clk),
        .CE(data_out_sx0),
        .D(p_0_in[15]),
        .Q(data_out_sx[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_sx_reg[1] 
       (.C(clk),
        .CE(data_out_sx0),
        .D(p_0_in[1]),
        .Q(data_out_sx[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_sx_reg[2] 
       (.C(clk),
        .CE(data_out_sx0),
        .D(p_0_in[2]),
        .Q(data_out_sx[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_sx_reg[3] 
       (.C(clk),
        .CE(data_out_sx0),
        .D(p_0_in[3]),
        .Q(data_out_sx[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_sx_reg[4] 
       (.C(clk),
        .CE(data_out_sx0),
        .D(p_0_in[4]),
        .Q(data_out_sx[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_sx_reg[5] 
       (.C(clk),
        .CE(data_out_sx0),
        .D(p_0_in[5]),
        .Q(data_out_sx[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_sx_reg[6] 
       (.C(clk),
        .CE(data_out_sx0),
        .D(p_0_in[6]),
        .Q(data_out_sx[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_sx_reg[7] 
       (.C(clk),
        .CE(data_out_sx0),
        .D(p_0_in[7]),
        .Q(data_out_sx[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_sx_reg[8] 
       (.C(clk),
        .CE(data_out_sx0),
        .D(p_0_in[8]),
        .Q(data_out_sx[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_sx_reg[9] 
       (.C(clk),
        .CE(data_out_sx0),
        .D(p_0_in[9]),
        .Q(data_out_sx[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \last_sum_dx[0]_i_1 
       (.I0(\FSM_onehot_state_dx_reg_n_0_[3] ),
        .I1(tlast_sampled_dx_reg_n_0),
        .O(last_sum_dx));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[0]_i_3 
       (.I0(sub_dx[3]),
        .I1(last_sum_dx_reg[3]),
        .O(\last_sum_dx[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[0]_i_4 
       (.I0(sub_dx[2]),
        .I1(last_sum_dx_reg[2]),
        .O(\last_sum_dx[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[0]_i_5 
       (.I0(sub_dx[1]),
        .I1(last_sum_dx_reg[1]),
        .O(\last_sum_dx[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[0]_i_6 
       (.I0(sub_dx[0]),
        .I1(last_sum_dx_reg[0]),
        .O(\last_sum_dx[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[12]_i_2 
       (.I0(sub_dx[15]),
        .I1(last_sum_dx_reg[15]),
        .O(\last_sum_dx[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[12]_i_3 
       (.I0(sub_dx[14]),
        .I1(last_sum_dx_reg[14]),
        .O(\last_sum_dx[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[12]_i_4 
       (.I0(sub_dx[13]),
        .I1(last_sum_dx_reg[13]),
        .O(\last_sum_dx[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[12]_i_5 
       (.I0(sub_dx[12]),
        .I1(last_sum_dx_reg[12]),
        .O(\last_sum_dx[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[16]_i_2 
       (.I0(sub_dx[16]),
        .I1(last_sum_dx_reg[19]),
        .O(\last_sum_dx[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[16]_i_3 
       (.I0(sub_dx[16]),
        .I1(last_sum_dx_reg[18]),
        .O(\last_sum_dx[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[16]_i_4 
       (.I0(sub_dx[16]),
        .I1(last_sum_dx_reg[17]),
        .O(\last_sum_dx[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[16]_i_5 
       (.I0(sub_dx[16]),
        .I1(last_sum_dx_reg[16]),
        .O(\last_sum_dx[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[20]_i_2 
       (.I0(sub_dx[16]),
        .I1(last_sum_dx_reg[20]),
        .O(\last_sum_dx[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[4]_i_2 
       (.I0(sub_dx[7]),
        .I1(last_sum_dx_reg[7]),
        .O(\last_sum_dx[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[4]_i_3 
       (.I0(sub_dx[6]),
        .I1(last_sum_dx_reg[6]),
        .O(\last_sum_dx[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[4]_i_4 
       (.I0(sub_dx[5]),
        .I1(last_sum_dx_reg[5]),
        .O(\last_sum_dx[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[4]_i_5 
       (.I0(sub_dx[4]),
        .I1(last_sum_dx_reg[4]),
        .O(\last_sum_dx[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[8]_i_2 
       (.I0(sub_dx[11]),
        .I1(last_sum_dx_reg[11]),
        .O(\last_sum_dx[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[8]_i_3 
       (.I0(sub_dx[10]),
        .I1(last_sum_dx_reg[10]),
        .O(\last_sum_dx[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[8]_i_4 
       (.I0(sub_dx[9]),
        .I1(last_sum_dx_reg[9]),
        .O(\last_sum_dx[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_dx[8]_i_5 
       (.I0(sub_dx[8]),
        .I1(last_sum_dx_reg[8]),
        .O(\last_sum_dx[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[0] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_dx_reg[0]_i_2_n_7 ),
        .Q(last_sum_dx_reg[0]));
  CARRY4 \last_sum_dx_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\last_sum_dx_reg[0]_i_2_n_0 ,\last_sum_dx_reg[0]_i_2_n_1 ,\last_sum_dx_reg[0]_i_2_n_2 ,\last_sum_dx_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(sub_dx[3:0]),
        .O({\last_sum_dx_reg[0]_i_2_n_4 ,\last_sum_dx_reg[0]_i_2_n_5 ,\last_sum_dx_reg[0]_i_2_n_6 ,\last_sum_dx_reg[0]_i_2_n_7 }),
        .S({\last_sum_dx[0]_i_3_n_0 ,\last_sum_dx[0]_i_4_n_0 ,\last_sum_dx[0]_i_5_n_0 ,\last_sum_dx[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[10] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_dx_reg[8]_i_1_n_5 ),
        .Q(last_sum_dx_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[11] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_dx_reg[8]_i_1_n_4 ),
        .Q(last_sum_dx_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[12] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_dx_reg[12]_i_1_n_7 ),
        .Q(last_sum_dx_reg[12]));
  CARRY4 \last_sum_dx_reg[12]_i_1 
       (.CI(\last_sum_dx_reg[8]_i_1_n_0 ),
        .CO({\last_sum_dx_reg[12]_i_1_n_0 ,\last_sum_dx_reg[12]_i_1_n_1 ,\last_sum_dx_reg[12]_i_1_n_2 ,\last_sum_dx_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sub_dx[15:12]),
        .O({\last_sum_dx_reg[12]_i_1_n_4 ,\last_sum_dx_reg[12]_i_1_n_5 ,\last_sum_dx_reg[12]_i_1_n_6 ,\last_sum_dx_reg[12]_i_1_n_7 }),
        .S({\last_sum_dx[12]_i_2_n_0 ,\last_sum_dx[12]_i_3_n_0 ,\last_sum_dx[12]_i_4_n_0 ,\last_sum_dx[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[13] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_dx_reg[12]_i_1_n_6 ),
        .Q(last_sum_dx_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[14] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_dx_reg[12]_i_1_n_5 ),
        .Q(last_sum_dx_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[15] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_dx_reg[12]_i_1_n_4 ),
        .Q(last_sum_dx_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[16] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_dx_reg[16]_i_1_n_7 ),
        .Q(last_sum_dx_reg[16]));
  CARRY4 \last_sum_dx_reg[16]_i_1 
       (.CI(\last_sum_dx_reg[12]_i_1_n_0 ),
        .CO({\last_sum_dx_reg[16]_i_1_n_0 ,\last_sum_dx_reg[16]_i_1_n_1 ,\last_sum_dx_reg[16]_i_1_n_2 ,\last_sum_dx_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({sub_dx[16],sub_dx[16],sub_dx[16],sub_dx[16]}),
        .O({\last_sum_dx_reg[16]_i_1_n_4 ,\last_sum_dx_reg[16]_i_1_n_5 ,\last_sum_dx_reg[16]_i_1_n_6 ,\last_sum_dx_reg[16]_i_1_n_7 }),
        .S({\last_sum_dx[16]_i_2_n_0 ,\last_sum_dx[16]_i_3_n_0 ,\last_sum_dx[16]_i_4_n_0 ,\last_sum_dx[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[17] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_dx_reg[16]_i_1_n_6 ),
        .Q(last_sum_dx_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[18] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_dx_reg[16]_i_1_n_5 ),
        .Q(last_sum_dx_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[19] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_dx_reg[16]_i_1_n_4 ),
        .Q(last_sum_dx_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[1] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_dx_reg[0]_i_2_n_6 ),
        .Q(last_sum_dx_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[20] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_dx_reg[20]_i_1_n_7 ),
        .Q(last_sum_dx_reg[20]));
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
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_dx_reg[0]_i_2_n_5 ),
        .Q(last_sum_dx_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[3] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_dx_reg[0]_i_2_n_4 ),
        .Q(last_sum_dx_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[4] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_dx_reg[4]_i_1_n_7 ),
        .Q(last_sum_dx_reg[4]));
  CARRY4 \last_sum_dx_reg[4]_i_1 
       (.CI(\last_sum_dx_reg[0]_i_2_n_0 ),
        .CO({\last_sum_dx_reg[4]_i_1_n_0 ,\last_sum_dx_reg[4]_i_1_n_1 ,\last_sum_dx_reg[4]_i_1_n_2 ,\last_sum_dx_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sub_dx[7:4]),
        .O({\last_sum_dx_reg[4]_i_1_n_4 ,\last_sum_dx_reg[4]_i_1_n_5 ,\last_sum_dx_reg[4]_i_1_n_6 ,\last_sum_dx_reg[4]_i_1_n_7 }),
        .S({\last_sum_dx[4]_i_2_n_0 ,\last_sum_dx[4]_i_3_n_0 ,\last_sum_dx[4]_i_4_n_0 ,\last_sum_dx[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[5] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_dx_reg[4]_i_1_n_6 ),
        .Q(last_sum_dx_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[6] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_dx_reg[4]_i_1_n_5 ),
        .Q(last_sum_dx_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[7] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_dx_reg[4]_i_1_n_4 ),
        .Q(last_sum_dx_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[8] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_dx_reg[8]_i_1_n_7 ),
        .Q(last_sum_dx_reg[8]));
  CARRY4 \last_sum_dx_reg[8]_i_1 
       (.CI(\last_sum_dx_reg[4]_i_1_n_0 ),
        .CO({\last_sum_dx_reg[8]_i_1_n_0 ,\last_sum_dx_reg[8]_i_1_n_1 ,\last_sum_dx_reg[8]_i_1_n_2 ,\last_sum_dx_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sub_dx[11:8]),
        .O({\last_sum_dx_reg[8]_i_1_n_4 ,\last_sum_dx_reg[8]_i_1_n_5 ,\last_sum_dx_reg[8]_i_1_n_6 ,\last_sum_dx_reg[8]_i_1_n_7 }),
        .S({\last_sum_dx[8]_i_2_n_0 ,\last_sum_dx[8]_i_3_n_0 ,\last_sum_dx[8]_i_4_n_0 ,\last_sum_dx[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_dx_reg[9] 
       (.C(clk),
        .CE(last_sum_dx),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_dx_reg[8]_i_1_n_6 ),
        .Q(last_sum_dx_reg[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \last_sum_sx[0]_i_1 
       (.I0(\FSM_onehot_state_sx_reg_n_0_[3] ),
        .I1(tlast_sampled_sx_reg_n_0),
        .O(\last_sum_sx[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[0]_i_3 
       (.I0(sub_sx[3]),
        .I1(last_sum_sx_reg[3]),
        .O(\last_sum_sx[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[0]_i_4 
       (.I0(sub_sx[2]),
        .I1(last_sum_sx_reg[2]),
        .O(\last_sum_sx[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[0]_i_5 
       (.I0(sub_sx[1]),
        .I1(last_sum_sx_reg[1]),
        .O(\last_sum_sx[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[0]_i_6 
       (.I0(sub_sx[0]),
        .I1(last_sum_sx_reg[0]),
        .O(\last_sum_sx[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[12]_i_2 
       (.I0(sub_sx[15]),
        .I1(last_sum_sx_reg[15]),
        .O(\last_sum_sx[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[12]_i_3 
       (.I0(sub_sx[14]),
        .I1(last_sum_sx_reg[14]),
        .O(\last_sum_sx[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[12]_i_4 
       (.I0(sub_sx[13]),
        .I1(last_sum_sx_reg[13]),
        .O(\last_sum_sx[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[12]_i_5 
       (.I0(sub_sx[12]),
        .I1(last_sum_sx_reg[12]),
        .O(\last_sum_sx[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[16]_i_2 
       (.I0(sub_sx[16]),
        .I1(last_sum_sx_reg[19]),
        .O(\last_sum_sx[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[16]_i_3 
       (.I0(sub_sx[16]),
        .I1(last_sum_sx_reg[18]),
        .O(\last_sum_sx[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[16]_i_4 
       (.I0(sub_sx[16]),
        .I1(last_sum_sx_reg[17]),
        .O(\last_sum_sx[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[16]_i_5 
       (.I0(sub_sx[16]),
        .I1(last_sum_sx_reg[16]),
        .O(\last_sum_sx[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[20]_i_2 
       (.I0(sub_sx[16]),
        .I1(last_sum_sx_reg[20]),
        .O(\last_sum_sx[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[4]_i_2 
       (.I0(sub_sx[7]),
        .I1(last_sum_sx_reg[7]),
        .O(\last_sum_sx[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[4]_i_3 
       (.I0(sub_sx[6]),
        .I1(last_sum_sx_reg[6]),
        .O(\last_sum_sx[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[4]_i_4 
       (.I0(sub_sx[5]),
        .I1(last_sum_sx_reg[5]),
        .O(\last_sum_sx[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[4]_i_5 
       (.I0(sub_sx[4]),
        .I1(last_sum_sx_reg[4]),
        .O(\last_sum_sx[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[8]_i_2 
       (.I0(sub_sx[11]),
        .I1(last_sum_sx_reg[11]),
        .O(\last_sum_sx[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[8]_i_3 
       (.I0(sub_sx[10]),
        .I1(last_sum_sx_reg[10]),
        .O(\last_sum_sx[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[8]_i_4 
       (.I0(sub_sx[9]),
        .I1(last_sum_sx_reg[9]),
        .O(\last_sum_sx[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \last_sum_sx[8]_i_5 
       (.I0(sub_sx[8]),
        .I1(last_sum_sx_reg[8]),
        .O(\last_sum_sx[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[0] 
       (.C(clk),
        .CE(\last_sum_sx[0]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_sx_reg[0]_i_2_n_7 ),
        .Q(last_sum_sx_reg[0]));
  CARRY4 \last_sum_sx_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\last_sum_sx_reg[0]_i_2_n_0 ,\last_sum_sx_reg[0]_i_2_n_1 ,\last_sum_sx_reg[0]_i_2_n_2 ,\last_sum_sx_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(sub_sx[3:0]),
        .O({\last_sum_sx_reg[0]_i_2_n_4 ,\last_sum_sx_reg[0]_i_2_n_5 ,\last_sum_sx_reg[0]_i_2_n_6 ,\last_sum_sx_reg[0]_i_2_n_7 }),
        .S({\last_sum_sx[0]_i_3_n_0 ,\last_sum_sx[0]_i_4_n_0 ,\last_sum_sx[0]_i_5_n_0 ,\last_sum_sx[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[10] 
       (.C(clk),
        .CE(\last_sum_sx[0]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_sx_reg[8]_i_1_n_5 ),
        .Q(last_sum_sx_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[11] 
       (.C(clk),
        .CE(\last_sum_sx[0]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_sx_reg[8]_i_1_n_4 ),
        .Q(last_sum_sx_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[12] 
       (.C(clk),
        .CE(\last_sum_sx[0]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_sx_reg[12]_i_1_n_7 ),
        .Q(last_sum_sx_reg[12]));
  CARRY4 \last_sum_sx_reg[12]_i_1 
       (.CI(\last_sum_sx_reg[8]_i_1_n_0 ),
        .CO({\last_sum_sx_reg[12]_i_1_n_0 ,\last_sum_sx_reg[12]_i_1_n_1 ,\last_sum_sx_reg[12]_i_1_n_2 ,\last_sum_sx_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sub_sx[15:12]),
        .O({\last_sum_sx_reg[12]_i_1_n_4 ,\last_sum_sx_reg[12]_i_1_n_5 ,\last_sum_sx_reg[12]_i_1_n_6 ,\last_sum_sx_reg[12]_i_1_n_7 }),
        .S({\last_sum_sx[12]_i_2_n_0 ,\last_sum_sx[12]_i_3_n_0 ,\last_sum_sx[12]_i_4_n_0 ,\last_sum_sx[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[13] 
       (.C(clk),
        .CE(\last_sum_sx[0]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_sx_reg[12]_i_1_n_6 ),
        .Q(last_sum_sx_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[14] 
       (.C(clk),
        .CE(\last_sum_sx[0]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_sx_reg[12]_i_1_n_5 ),
        .Q(last_sum_sx_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[15] 
       (.C(clk),
        .CE(\last_sum_sx[0]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_sx_reg[12]_i_1_n_4 ),
        .Q(last_sum_sx_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[16] 
       (.C(clk),
        .CE(\last_sum_sx[0]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_sx_reg[16]_i_1_n_7 ),
        .Q(last_sum_sx_reg[16]));
  CARRY4 \last_sum_sx_reg[16]_i_1 
       (.CI(\last_sum_sx_reg[12]_i_1_n_0 ),
        .CO({\last_sum_sx_reg[16]_i_1_n_0 ,\last_sum_sx_reg[16]_i_1_n_1 ,\last_sum_sx_reg[16]_i_1_n_2 ,\last_sum_sx_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({sub_sx[16],sub_sx[16],sub_sx[16],sub_sx[16]}),
        .O({\last_sum_sx_reg[16]_i_1_n_4 ,\last_sum_sx_reg[16]_i_1_n_5 ,\last_sum_sx_reg[16]_i_1_n_6 ,\last_sum_sx_reg[16]_i_1_n_7 }),
        .S({\last_sum_sx[16]_i_2_n_0 ,\last_sum_sx[16]_i_3_n_0 ,\last_sum_sx[16]_i_4_n_0 ,\last_sum_sx[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[17] 
       (.C(clk),
        .CE(\last_sum_sx[0]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_sx_reg[16]_i_1_n_6 ),
        .Q(last_sum_sx_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[18] 
       (.C(clk),
        .CE(\last_sum_sx[0]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_sx_reg[16]_i_1_n_5 ),
        .Q(last_sum_sx_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[19] 
       (.C(clk),
        .CE(\last_sum_sx[0]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_sx_reg[16]_i_1_n_4 ),
        .Q(last_sum_sx_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[1] 
       (.C(clk),
        .CE(\last_sum_sx[0]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_sx_reg[0]_i_2_n_6 ),
        .Q(last_sum_sx_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[20] 
       (.C(clk),
        .CE(\last_sum_sx[0]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_sx_reg[20]_i_1_n_7 ),
        .Q(last_sum_sx_reg[20]));
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
        .CE(\last_sum_sx[0]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_sx_reg[0]_i_2_n_5 ),
        .Q(last_sum_sx_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[3] 
       (.C(clk),
        .CE(\last_sum_sx[0]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_sx_reg[0]_i_2_n_4 ),
        .Q(last_sum_sx_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[4] 
       (.C(clk),
        .CE(\last_sum_sx[0]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_sx_reg[4]_i_1_n_7 ),
        .Q(last_sum_sx_reg[4]));
  CARRY4 \last_sum_sx_reg[4]_i_1 
       (.CI(\last_sum_sx_reg[0]_i_2_n_0 ),
        .CO({\last_sum_sx_reg[4]_i_1_n_0 ,\last_sum_sx_reg[4]_i_1_n_1 ,\last_sum_sx_reg[4]_i_1_n_2 ,\last_sum_sx_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sub_sx[7:4]),
        .O({\last_sum_sx_reg[4]_i_1_n_4 ,\last_sum_sx_reg[4]_i_1_n_5 ,\last_sum_sx_reg[4]_i_1_n_6 ,\last_sum_sx_reg[4]_i_1_n_7 }),
        .S({\last_sum_sx[4]_i_2_n_0 ,\last_sum_sx[4]_i_3_n_0 ,\last_sum_sx[4]_i_4_n_0 ,\last_sum_sx[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[5] 
       (.C(clk),
        .CE(\last_sum_sx[0]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_sx_reg[4]_i_1_n_6 ),
        .Q(last_sum_sx_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[6] 
       (.C(clk),
        .CE(\last_sum_sx[0]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_sx_reg[4]_i_1_n_5 ),
        .Q(last_sum_sx_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[7] 
       (.C(clk),
        .CE(\last_sum_sx[0]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_sx_reg[4]_i_1_n_4 ),
        .Q(last_sum_sx_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[8] 
       (.C(clk),
        .CE(\last_sum_sx[0]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_sx_reg[8]_i_1_n_7 ),
        .Q(last_sum_sx_reg[8]));
  CARRY4 \last_sum_sx_reg[8]_i_1 
       (.CI(\last_sum_sx_reg[4]_i_1_n_0 ),
        .CO({\last_sum_sx_reg[8]_i_1_n_0 ,\last_sum_sx_reg[8]_i_1_n_1 ,\last_sum_sx_reg[8]_i_1_n_2 ,\last_sum_sx_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sub_sx[11:8]),
        .O({\last_sum_sx_reg[8]_i_1_n_4 ,\last_sum_sx_reg[8]_i_1_n_5 ,\last_sum_sx_reg[8]_i_1_n_6 ,\last_sum_sx_reg[8]_i_1_n_7 }),
        .S({\last_sum_sx[8]_i_2_n_0 ,\last_sum_sx[8]_i_3_n_0 ,\last_sum_sx[8]_i_4_n_0 ,\last_sum_sx[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \last_sum_sx_reg[9] 
       (.C(clk),
        .CE(\last_sum_sx[0]_i_1_n_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(\last_sum_sx_reg[8]_i_1_n_6 ),
        .Q(last_sum_sx_reg[9]));
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_c_i_1
       (.I0(tlast_sampled_dx_reg_n_0),
        .I1(\FSM_onehot_state_dx_reg_n_0_[4] ),
        .O(\last_values_dx[0]_1 ));
  (* srl_bus_name = "\U0/last_values_dx_reg[29] " *) 
  (* srl_name = "\U0/last_values_dx_reg[29][0]_srl30_U0_last_values_dx_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_dx_reg[29][0]_srl30_U0_last_values_dx_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_dx[0]_1 ),
        .CLK(clk),
        .D(data_in_dx[0]),
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
        .D(data_in_dx[10]),
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
        .D(data_in_dx[11]),
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
        .D(data_in_dx[12]),
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
        .D(data_in_dx[13]),
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
        .D(data_in_dx[14]),
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
        .D(data_in_dx[15]),
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
        .D(data_in_dx[1]),
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
        .D(data_in_dx[2]),
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
        .D(data_in_dx[3]),
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
        .D(data_in_dx[4]),
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
        .D(data_in_dx[5]),
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
        .D(data_in_dx[6]),
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
        .D(data_in_dx[7]),
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
        .D(data_in_dx[8]),
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
        .D(data_in_dx[9]),
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
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_gate__14_n_0),
        .Q(\last_values_dx_reg[31] [0]));
  FDCE \last_values_dx_reg[31][10] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_gate__4_n_0),
        .Q(\last_values_dx_reg[31] [10]));
  FDCE \last_values_dx_reg[31][11] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_gate__3_n_0),
        .Q(\last_values_dx_reg[31] [11]));
  FDCE \last_values_dx_reg[31][12] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_gate__2_n_0),
        .Q(\last_values_dx_reg[31] [12]));
  FDCE \last_values_dx_reg[31][13] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_gate__1_n_0),
        .Q(\last_values_dx_reg[31] [13]));
  FDCE \last_values_dx_reg[31][14] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_gate__0_n_0),
        .Q(\last_values_dx_reg[31] [14]));
  FDCE \last_values_dx_reg[31][15] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_gate_n_0),
        .Q(\last_values_dx_reg[31] [15]));
  FDCE \last_values_dx_reg[31][1] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_gate__13_n_0),
        .Q(\last_values_dx_reg[31] [1]));
  FDCE \last_values_dx_reg[31][2] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_gate__12_n_0),
        .Q(\last_values_dx_reg[31] [2]));
  FDCE \last_values_dx_reg[31][3] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_gate__11_n_0),
        .Q(\last_values_dx_reg[31] [3]));
  FDCE \last_values_dx_reg[31][4] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_gate__10_n_0),
        .Q(\last_values_dx_reg[31] [4]));
  FDCE \last_values_dx_reg[31][5] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_gate__9_n_0),
        .Q(\last_values_dx_reg[31] [5]));
  FDCE \last_values_dx_reg[31][6] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_gate__8_n_0),
        .Q(\last_values_dx_reg[31] [6]));
  FDCE \last_values_dx_reg[31][7] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_gate__7_n_0),
        .Q(\last_values_dx_reg[31] [7]));
  FDCE \last_values_dx_reg[31][8] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_gate__6_n_0),
        .Q(\last_values_dx_reg[31] [8]));
  FDCE \last_values_dx_reg[31][9] 
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_gate__5_n_0),
        .Q(\last_values_dx_reg[31] [9]));
  FDCE last_values_dx_reg_c
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(1'b1),
        .Q(last_values_dx_reg_c_n_0));
  FDCE last_values_dx_reg_c_30
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_n_0),
        .Q(last_values_dx_reg_c_30_n_0));
  FDCE last_values_dx_reg_c_31
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_30_n_0),
        .Q(last_values_dx_reg_c_31_n_0));
  FDCE last_values_dx_reg_c_32
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_31_n_0),
        .Q(last_values_dx_reg_c_32_n_0));
  FDCE last_values_dx_reg_c_33
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_32_n_0),
        .Q(last_values_dx_reg_c_33_n_0));
  FDCE last_values_dx_reg_c_34
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_33_n_0),
        .Q(last_values_dx_reg_c_34_n_0));
  FDCE last_values_dx_reg_c_35
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_34_n_0),
        .Q(last_values_dx_reg_c_35_n_0));
  FDCE last_values_dx_reg_c_36
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_35_n_0),
        .Q(last_values_dx_reg_c_36_n_0));
  FDCE last_values_dx_reg_c_37
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_36_n_0),
        .Q(last_values_dx_reg_c_37_n_0));
  FDCE last_values_dx_reg_c_38
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_37_n_0),
        .Q(last_values_dx_reg_c_38_n_0));
  FDCE last_values_dx_reg_c_39
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_38_n_0),
        .Q(last_values_dx_reg_c_39_n_0));
  FDCE last_values_dx_reg_c_40
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_39_n_0),
        .Q(last_values_dx_reg_c_40_n_0));
  FDCE last_values_dx_reg_c_41
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_40_n_0),
        .Q(last_values_dx_reg_c_41_n_0));
  FDCE last_values_dx_reg_c_42
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_41_n_0),
        .Q(last_values_dx_reg_c_42_n_0));
  FDCE last_values_dx_reg_c_43
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_42_n_0),
        .Q(last_values_dx_reg_c_43_n_0));
  FDCE last_values_dx_reg_c_44
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_43_n_0),
        .Q(last_values_dx_reg_c_44_n_0));
  FDCE last_values_dx_reg_c_45
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_44_n_0),
        .Q(last_values_dx_reg_c_45_n_0));
  FDCE last_values_dx_reg_c_46
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_45_n_0),
        .Q(last_values_dx_reg_c_46_n_0));
  FDCE last_values_dx_reg_c_47
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_46_n_0),
        .Q(last_values_dx_reg_c_47_n_0));
  FDCE last_values_dx_reg_c_48
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_47_n_0),
        .Q(last_values_dx_reg_c_48_n_0));
  FDCE last_values_dx_reg_c_49
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_48_n_0),
        .Q(last_values_dx_reg_c_49_n_0));
  FDCE last_values_dx_reg_c_50
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_49_n_0),
        .Q(last_values_dx_reg_c_50_n_0));
  FDCE last_values_dx_reg_c_51
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_50_n_0),
        .Q(last_values_dx_reg_c_51_n_0));
  FDCE last_values_dx_reg_c_52
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_51_n_0),
        .Q(last_values_dx_reg_c_52_n_0));
  FDCE last_values_dx_reg_c_53
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_52_n_0),
        .Q(last_values_dx_reg_c_53_n_0));
  FDCE last_values_dx_reg_c_54
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_53_n_0),
        .Q(last_values_dx_reg_c_54_n_0));
  FDCE last_values_dx_reg_c_55
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_54_n_0),
        .Q(last_values_dx_reg_c_55_n_0));
  FDCE last_values_dx_reg_c_56
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_55_n_0),
        .Q(last_values_dx_reg_c_56_n_0));
  FDCE last_values_dx_reg_c_57
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_56_n_0),
        .Q(last_values_dx_reg_c_57_n_0));
  FDCE last_values_dx_reg_c_58
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_57_n_0),
        .Q(last_values_dx_reg_c_58_n_0));
  FDCE last_values_dx_reg_c_59
       (.C(clk),
        .CE(\last_values_dx[0]_1 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_dx_reg_c_58_n_0),
        .Q(last_values_dx_reg_c_59_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate
       (.I0(\last_values_dx_reg[30][15]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__0
       (.I0(\last_values_dx_reg[30][14]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__1
       (.I0(\last_values_dx_reg[30][13]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__10
       (.I0(\last_values_dx_reg[30][4]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__11
       (.I0(\last_values_dx_reg[30][3]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__12
       (.I0(\last_values_dx_reg[30][2]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__13
       (.I0(\last_values_dx_reg[30][1]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__14
       (.I0(\last_values_dx_reg[30][0]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__2
       (.I0(\last_values_dx_reg[30][12]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__3
       (.I0(\last_values_dx_reg[30][11]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__4
       (.I0(\last_values_dx_reg[30][10]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__5
       (.I0(\last_values_dx_reg[30][9]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__6
       (.I0(\last_values_dx_reg[30][8]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__7
       (.I0(\last_values_dx_reg[30][7]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__8
       (.I0(\last_values_dx_reg[30][6]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_dx_reg_gate__9
       (.I0(\last_values_dx_reg[30][5]_U0_last_values_dx_reg_c_59_n_0 ),
        .I1(last_values_dx_reg_c_59_n_0),
        .O(last_values_dx_reg_gate__9_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    last_values_sx_c_i_1
       (.I0(\FSM_onehot_state_sx_reg_n_0_[4] ),
        .I1(tlast_sampled_sx_reg_n_0),
        .O(\last_values_sx[0]_0 ));
  (* srl_bus_name = "\U0/last_values_sx_reg[29] " *) 
  (* srl_name = "\U0/last_values_sx_reg[29][0]_srl30_U0_last_values_sx_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_values_sx_reg[29][0]_srl30_U0_last_values_sx_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\last_values_sx[0]_0 ),
        .CLK(clk),
        .D(data_in_sx[0]),
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
        .D(data_in_sx[10]),
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
        .D(data_in_sx[11]),
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
        .D(data_in_sx[12]),
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
        .D(data_in_sx[13]),
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
        .D(data_in_sx[14]),
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
        .D(data_in_sx[15]),
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
        .D(data_in_sx[1]),
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
        .D(data_in_sx[2]),
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
        .D(data_in_sx[3]),
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
        .D(data_in_sx[4]),
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
        .D(data_in_sx[5]),
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
        .D(data_in_sx[6]),
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
        .D(data_in_sx[7]),
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
        .D(data_in_sx[8]),
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
        .D(data_in_sx[9]),
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
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_gate__14_n_0),
        .Q(\last_values_sx_reg[31] [0]));
  FDCE \last_values_sx_reg[31][10] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_gate__4_n_0),
        .Q(\last_values_sx_reg[31] [10]));
  FDCE \last_values_sx_reg[31][11] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_gate__3_n_0),
        .Q(\last_values_sx_reg[31] [11]));
  FDCE \last_values_sx_reg[31][12] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_gate__2_n_0),
        .Q(\last_values_sx_reg[31] [12]));
  FDCE \last_values_sx_reg[31][13] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_gate__1_n_0),
        .Q(\last_values_sx_reg[31] [13]));
  FDCE \last_values_sx_reg[31][14] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_gate__0_n_0),
        .Q(\last_values_sx_reg[31] [14]));
  FDCE \last_values_sx_reg[31][15] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_gate_n_0),
        .Q(\last_values_sx_reg[31] [15]));
  FDCE \last_values_sx_reg[31][1] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_gate__13_n_0),
        .Q(\last_values_sx_reg[31] [1]));
  FDCE \last_values_sx_reg[31][2] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_gate__12_n_0),
        .Q(\last_values_sx_reg[31] [2]));
  FDCE \last_values_sx_reg[31][3] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_gate__11_n_0),
        .Q(\last_values_sx_reg[31] [3]));
  FDCE \last_values_sx_reg[31][4] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_gate__10_n_0),
        .Q(\last_values_sx_reg[31] [4]));
  FDCE \last_values_sx_reg[31][5] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_gate__9_n_0),
        .Q(\last_values_sx_reg[31] [5]));
  FDCE \last_values_sx_reg[31][6] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_gate__8_n_0),
        .Q(\last_values_sx_reg[31] [6]));
  FDCE \last_values_sx_reg[31][7] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_gate__7_n_0),
        .Q(\last_values_sx_reg[31] [7]));
  FDCE \last_values_sx_reg[31][8] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_gate__6_n_0),
        .Q(\last_values_sx_reg[31] [8]));
  FDCE \last_values_sx_reg[31][9] 
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_gate__5_n_0),
        .Q(\last_values_sx_reg[31] [9]));
  FDCE last_values_sx_reg_c
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(1'b1),
        .Q(last_values_sx_reg_c_n_0));
  FDCE last_values_sx_reg_c_0
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_n_0),
        .Q(last_values_sx_reg_c_0_n_0));
  FDCE last_values_sx_reg_c_1
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_0_n_0),
        .Q(last_values_sx_reg_c_1_n_0));
  FDCE last_values_sx_reg_c_10
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_9_n_0),
        .Q(last_values_sx_reg_c_10_n_0));
  FDCE last_values_sx_reg_c_11
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_10_n_0),
        .Q(last_values_sx_reg_c_11_n_0));
  FDCE last_values_sx_reg_c_12
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_11_n_0),
        .Q(last_values_sx_reg_c_12_n_0));
  FDCE last_values_sx_reg_c_13
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_12_n_0),
        .Q(last_values_sx_reg_c_13_n_0));
  FDCE last_values_sx_reg_c_14
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_13_n_0),
        .Q(last_values_sx_reg_c_14_n_0));
  FDCE last_values_sx_reg_c_15
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_14_n_0),
        .Q(last_values_sx_reg_c_15_n_0));
  FDCE last_values_sx_reg_c_16
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_15_n_0),
        .Q(last_values_sx_reg_c_16_n_0));
  FDCE last_values_sx_reg_c_17
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_16_n_0),
        .Q(last_values_sx_reg_c_17_n_0));
  FDCE last_values_sx_reg_c_18
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_17_n_0),
        .Q(last_values_sx_reg_c_18_n_0));
  FDCE last_values_sx_reg_c_19
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_18_n_0),
        .Q(last_values_sx_reg_c_19_n_0));
  FDCE last_values_sx_reg_c_2
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_1_n_0),
        .Q(last_values_sx_reg_c_2_n_0));
  FDCE last_values_sx_reg_c_20
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_19_n_0),
        .Q(last_values_sx_reg_c_20_n_0));
  FDCE last_values_sx_reg_c_21
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_20_n_0),
        .Q(last_values_sx_reg_c_21_n_0));
  FDCE last_values_sx_reg_c_22
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_21_n_0),
        .Q(last_values_sx_reg_c_22_n_0));
  FDCE last_values_sx_reg_c_23
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_22_n_0),
        .Q(last_values_sx_reg_c_23_n_0));
  FDCE last_values_sx_reg_c_24
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_23_n_0),
        .Q(last_values_sx_reg_c_24_n_0));
  FDCE last_values_sx_reg_c_25
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_24_n_0),
        .Q(last_values_sx_reg_c_25_n_0));
  FDCE last_values_sx_reg_c_26
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_25_n_0),
        .Q(last_values_sx_reg_c_26_n_0));
  FDCE last_values_sx_reg_c_27
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_26_n_0),
        .Q(last_values_sx_reg_c_27_n_0));
  FDCE last_values_sx_reg_c_28
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_27_n_0),
        .Q(last_values_sx_reg_c_28_n_0));
  FDCE last_values_sx_reg_c_29
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_28_n_0),
        .Q(last_values_sx_reg_c_29_n_0));
  FDCE last_values_sx_reg_c_3
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_2_n_0),
        .Q(last_values_sx_reg_c_3_n_0));
  FDCE last_values_sx_reg_c_4
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_3_n_0),
        .Q(last_values_sx_reg_c_4_n_0));
  FDCE last_values_sx_reg_c_5
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_4_n_0),
        .Q(last_values_sx_reg_c_5_n_0));
  FDCE last_values_sx_reg_c_6
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_5_n_0),
        .Q(last_values_sx_reg_c_6_n_0));
  FDCE last_values_sx_reg_c_7
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_6_n_0),
        .Q(last_values_sx_reg_c_7_n_0));
  FDCE last_values_sx_reg_c_8
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_7_n_0),
        .Q(last_values_sx_reg_c_8_n_0));
  FDCE last_values_sx_reg_c_9
       (.C(clk),
        .CE(\last_values_sx[0]_0 ),
        .CLR(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .D(last_values_sx_reg_c_8_n_0),
        .Q(last_values_sx_reg_c_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate
       (.I0(\last_values_sx_reg[30][15]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__0
       (.I0(\last_values_sx_reg[30][14]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__1
       (.I0(\last_values_sx_reg[30][13]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__10
       (.I0(\last_values_sx_reg[30][4]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__11
       (.I0(\last_values_sx_reg[30][3]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__12
       (.I0(\last_values_sx_reg[30][2]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__13
       (.I0(\last_values_sx_reg[30][1]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__14
       (.I0(\last_values_sx_reg[30][0]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__2
       (.I0(\last_values_sx_reg[30][12]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__3
       (.I0(\last_values_sx_reg[30][11]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__4
       (.I0(\last_values_sx_reg[30][10]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__5
       (.I0(\last_values_sx_reg[30][9]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__6
       (.I0(\last_values_sx_reg[30][8]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__7
       (.I0(\last_values_sx_reg[30][7]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__8
       (.I0(\last_values_sx_reg[30][6]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_values_sx_reg_gate__9
       (.I0(\last_values_sx_reg[30][5]_U0_last_values_sx_reg_c_29_n_0 ),
        .I1(last_values_sx_reg_c_29_n_0),
        .O(last_values_sx_reg_gate__9_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[0] 
       (.CLR(1'b0),
        .D(\m_axis_tdata_reg[0]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[0]_i_1 
       (.I0(data_out_sx[0]),
        .I1(p_0_in8_in),
        .I2(data_out_dx[0]),
        .O(\m_axis_tdata_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[10] 
       (.CLR(1'b0),
        .D(\m_axis_tdata_reg[10]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[10]_i_1 
       (.I0(data_out_sx[10]),
        .I1(p_0_in8_in),
        .I2(data_out_dx[10]),
        .O(\m_axis_tdata_reg[10]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[11] 
       (.CLR(1'b0),
        .D(\m_axis_tdata_reg[11]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[11]_i_1 
       (.I0(data_out_sx[11]),
        .I1(p_0_in8_in),
        .I2(data_out_dx[11]),
        .O(\m_axis_tdata_reg[11]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[12] 
       (.CLR(1'b0),
        .D(\m_axis_tdata_reg[12]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[12]_i_1 
       (.I0(data_out_sx[12]),
        .I1(p_0_in8_in),
        .I2(data_out_dx[12]),
        .O(\m_axis_tdata_reg[12]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[13] 
       (.CLR(1'b0),
        .D(\m_axis_tdata_reg[13]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[13]_i_1 
       (.I0(data_out_sx[13]),
        .I1(p_0_in8_in),
        .I2(data_out_dx[13]),
        .O(\m_axis_tdata_reg[13]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[14] 
       (.CLR(1'b0),
        .D(\m_axis_tdata_reg[14]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[14]_i_1 
       (.I0(data_out_sx[14]),
        .I1(p_0_in8_in),
        .I2(data_out_dx[14]),
        .O(\m_axis_tdata_reg[14]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[15] 
       (.CLR(1'b0),
        .D(\m_axis_tdata_reg[15]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[15]_i_1 
       (.I0(data_out_sx[15]),
        .I1(p_0_in8_in),
        .I2(data_out_dx[15]),
        .O(\m_axis_tdata_reg[15]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[1] 
       (.CLR(1'b0),
        .D(\m_axis_tdata_reg[1]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[1]_i_1 
       (.I0(data_out_sx[1]),
        .I1(p_0_in8_in),
        .I2(data_out_dx[1]),
        .O(\m_axis_tdata_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[2] 
       (.CLR(1'b0),
        .D(\m_axis_tdata_reg[2]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[2]_i_1 
       (.I0(data_out_sx[2]),
        .I1(p_0_in8_in),
        .I2(data_out_dx[2]),
        .O(\m_axis_tdata_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[3] 
       (.CLR(1'b0),
        .D(\m_axis_tdata_reg[3]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[3]_i_1 
       (.I0(data_out_sx[3]),
        .I1(p_0_in8_in),
        .I2(data_out_dx[3]),
        .O(\m_axis_tdata_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[4] 
       (.CLR(1'b0),
        .D(\m_axis_tdata_reg[4]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[4]_i_1 
       (.I0(data_out_sx[4]),
        .I1(p_0_in8_in),
        .I2(data_out_dx[4]),
        .O(\m_axis_tdata_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[5] 
       (.CLR(1'b0),
        .D(\m_axis_tdata_reg[5]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[5]_i_1 
       (.I0(data_out_sx[5]),
        .I1(p_0_in8_in),
        .I2(data_out_dx[5]),
        .O(\m_axis_tdata_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[6] 
       (.CLR(1'b0),
        .D(\m_axis_tdata_reg[6]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[6]_i_1 
       (.I0(data_out_sx[6]),
        .I1(p_0_in8_in),
        .I2(data_out_dx[6]),
        .O(\m_axis_tdata_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[7] 
       (.CLR(1'b0),
        .D(\m_axis_tdata_reg[7]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[7]_i_1 
       (.I0(data_out_sx[7]),
        .I1(p_0_in8_in),
        .I2(data_out_dx[7]),
        .O(\m_axis_tdata_reg[7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[8] 
       (.CLR(1'b0),
        .D(\m_axis_tdata_reg[8]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[8]_i_1 
       (.I0(data_out_sx[8]),
        .I1(p_0_in8_in),
        .I2(data_out_dx[8]),
        .O(\m_axis_tdata_reg[8]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[9] 
       (.CLR(1'b0),
        .D(\m_axis_tdata_reg[9]_i_1_n_0 ),
        .G(m_axis_tvalid),
        .GE(1'b1),
        .Q(m_axis_tdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata_reg[9]_i_1 
       (.I0(data_out_sx[9]),
        .I1(p_0_in8_in),
        .I2(data_out_dx[9]),
        .O(\m_axis_tdata_reg[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    m_axis_tlast_INST_0
       (.I0(tlast_sampled_sx_reg_n_0),
        .I1(p_0_in8_in),
        .I2(tlast_sampled_dx_reg_n_0),
        .I3(p_0_in7_in),
        .O(m_axis_tlast));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    m_axis_tvalid_INST_0
       (.I0(p_0_in7_in),
        .I1(p_0_in8_in),
        .O(m_axis_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hDDFFC000)) 
    read_allowed_sx_i_1
       (.I0(\FSM_onehot_state_sx_reg_n_0_[5] ),
        .I1(s_axis_tlast),
        .I2(\FSM_onehot_state_dx_reg_n_0_[5] ),
        .I3(s_axis_tvalid),
        .I4(read_allowed_sx_reg_n_0),
        .O(read_allowed_sx_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    read_allowed_sx_reg
       (.C(clk),
        .CE(1'b1),
        .D(read_allowed_sx_i_1_n_0),
        .PRE(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .Q(read_allowed_sx_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    s_axis_tready_INST_0
       (.I0(\FSM_onehot_state_sx_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_dx_reg_n_0_[5] ),
        .O(s_axis_tready));
  CARRY4 sub_dx0_carry
       (.CI(1'b0),
        .CO({sub_dx0_carry_n_0,sub_dx0_carry_n_1,sub_dx0_carry_n_2,sub_dx0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(data_in_dx[3:0]),
        .O(sub_dx00_in[3:0]),
        .S({sub_dx0_carry_i_1_n_0,sub_dx0_carry_i_2_n_0,sub_dx0_carry_i_3_n_0,sub_dx0_carry_i_4_n_0}));
  CARRY4 sub_dx0_carry__0
       (.CI(sub_dx0_carry_n_0),
        .CO({sub_dx0_carry__0_n_0,sub_dx0_carry__0_n_1,sub_dx0_carry__0_n_2,sub_dx0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(data_in_dx[7:4]),
        .O(sub_dx00_in[7:4]),
        .S({sub_dx0_carry__0_i_1_n_0,sub_dx0_carry__0_i_2_n_0,sub_dx0_carry__0_i_3_n_0,sub_dx0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sub_dx0_carry__0_i_1
       (.I0(data_in_dx[7]),
        .I1(\last_values_dx_reg[31] [7]),
        .O(sub_dx0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_dx0_carry__0_i_2
       (.I0(data_in_dx[6]),
        .I1(\last_values_dx_reg[31] [6]),
        .O(sub_dx0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_dx0_carry__0_i_3
       (.I0(data_in_dx[5]),
        .I1(\last_values_dx_reg[31] [5]),
        .O(sub_dx0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_dx0_carry__0_i_4
       (.I0(data_in_dx[4]),
        .I1(\last_values_dx_reg[31] [4]),
        .O(sub_dx0_carry__0_i_4_n_0));
  CARRY4 sub_dx0_carry__1
       (.CI(sub_dx0_carry__0_n_0),
        .CO({sub_dx0_carry__1_n_0,sub_dx0_carry__1_n_1,sub_dx0_carry__1_n_2,sub_dx0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(data_in_dx[11:8]),
        .O(sub_dx00_in[11:8]),
        .S({sub_dx0_carry__1_i_1_n_0,sub_dx0_carry__1_i_2_n_0,sub_dx0_carry__1_i_3_n_0,sub_dx0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sub_dx0_carry__1_i_1
       (.I0(data_in_dx[11]),
        .I1(\last_values_dx_reg[31] [11]),
        .O(sub_dx0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_dx0_carry__1_i_2
       (.I0(data_in_dx[10]),
        .I1(\last_values_dx_reg[31] [10]),
        .O(sub_dx0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_dx0_carry__1_i_3
       (.I0(data_in_dx[9]),
        .I1(\last_values_dx_reg[31] [9]),
        .O(sub_dx0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_dx0_carry__1_i_4
       (.I0(data_in_dx[8]),
        .I1(\last_values_dx_reg[31] [8]),
        .O(sub_dx0_carry__1_i_4_n_0));
  CARRY4 sub_dx0_carry__2
       (.CI(sub_dx0_carry__1_n_0),
        .CO({sub_dx0_carry__2_n_0,sub_dx0_carry__2_n_1,sub_dx0_carry__2_n_2,sub_dx0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\last_values_dx_reg[31] [15],data_in_dx[14:12]}),
        .O(sub_dx00_in[15:12]),
        .S({sub_dx0_carry__2_i_1_n_0,sub_dx0_carry__2_i_2_n_0,sub_dx0_carry__2_i_3_n_0,sub_dx0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sub_dx0_carry__2_i_1
       (.I0(data_in_dx[15]),
        .I1(\last_values_dx_reg[31] [15]),
        .O(sub_dx0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_dx0_carry__2_i_2
       (.I0(data_in_dx[14]),
        .I1(\last_values_dx_reg[31] [14]),
        .O(sub_dx0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_dx0_carry__2_i_3
       (.I0(data_in_dx[13]),
        .I1(\last_values_dx_reg[31] [13]),
        .O(sub_dx0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_dx0_carry__2_i_4
       (.I0(data_in_dx[12]),
        .I1(\last_values_dx_reg[31] [12]),
        .O(sub_dx0_carry__2_i_4_n_0));
  CARRY4 sub_dx0_carry__3
       (.CI(sub_dx0_carry__2_n_0),
        .CO(NLW_sub_dx0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sub_dx0_carry__3_O_UNCONNECTED[3:1],sub_dx00_in[16]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    sub_dx0_carry_i_1
       (.I0(data_in_dx[3]),
        .I1(\last_values_dx_reg[31] [3]),
        .O(sub_dx0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_dx0_carry_i_2
       (.I0(data_in_dx[2]),
        .I1(\last_values_dx_reg[31] [2]),
        .O(sub_dx0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_dx0_carry_i_3
       (.I0(data_in_dx[1]),
        .I1(\last_values_dx_reg[31] [1]),
        .O(sub_dx0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_dx0_carry_i_4
       (.I0(data_in_dx[0]),
        .I1(\last_values_dx_reg[31] [0]),
        .O(sub_dx0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    \sub_dx[16]_i_1 
       (.I0(aresetn),
        .I1(\FSM_onehot_state_dx_reg_n_0_[4] ),
        .I2(tlast_sampled_dx_reg_n_0),
        .O(sub_dx0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_dx_reg[0] 
       (.C(clk),
        .CE(sub_dx0),
        .D(sub_dx00_in[0]),
        .Q(sub_dx[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_dx_reg[10] 
       (.C(clk),
        .CE(sub_dx0),
        .D(sub_dx00_in[10]),
        .Q(sub_dx[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_dx_reg[11] 
       (.C(clk),
        .CE(sub_dx0),
        .D(sub_dx00_in[11]),
        .Q(sub_dx[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_dx_reg[12] 
       (.C(clk),
        .CE(sub_dx0),
        .D(sub_dx00_in[12]),
        .Q(sub_dx[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_dx_reg[13] 
       (.C(clk),
        .CE(sub_dx0),
        .D(sub_dx00_in[13]),
        .Q(sub_dx[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_dx_reg[14] 
       (.C(clk),
        .CE(sub_dx0),
        .D(sub_dx00_in[14]),
        .Q(sub_dx[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_dx_reg[15] 
       (.C(clk),
        .CE(sub_dx0),
        .D(sub_dx00_in[15]),
        .Q(sub_dx[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_dx_reg[16] 
       (.C(clk),
        .CE(sub_dx0),
        .D(sub_dx00_in[16]),
        .Q(sub_dx[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_dx_reg[1] 
       (.C(clk),
        .CE(sub_dx0),
        .D(sub_dx00_in[1]),
        .Q(sub_dx[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_dx_reg[2] 
       (.C(clk),
        .CE(sub_dx0),
        .D(sub_dx00_in[2]),
        .Q(sub_dx[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_dx_reg[3] 
       (.C(clk),
        .CE(sub_dx0),
        .D(sub_dx00_in[3]),
        .Q(sub_dx[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_dx_reg[4] 
       (.C(clk),
        .CE(sub_dx0),
        .D(sub_dx00_in[4]),
        .Q(sub_dx[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_dx_reg[5] 
       (.C(clk),
        .CE(sub_dx0),
        .D(sub_dx00_in[5]),
        .Q(sub_dx[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_dx_reg[6] 
       (.C(clk),
        .CE(sub_dx0),
        .D(sub_dx00_in[6]),
        .Q(sub_dx[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_dx_reg[7] 
       (.C(clk),
        .CE(sub_dx0),
        .D(sub_dx00_in[7]),
        .Q(sub_dx[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_dx_reg[8] 
       (.C(clk),
        .CE(sub_dx0),
        .D(sub_dx00_in[8]),
        .Q(sub_dx[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_dx_reg[9] 
       (.C(clk),
        .CE(sub_dx0),
        .D(sub_dx00_in[9]),
        .Q(sub_dx[9]),
        .R(1'b0));
  CARRY4 sub_sx0_carry
       (.CI(1'b0),
        .CO({sub_sx0_carry_n_0,sub_sx0_carry_n_1,sub_sx0_carry_n_2,sub_sx0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(data_in_sx[3:0]),
        .O(sub_sx00_in[3:0]),
        .S({sub_sx0_carry_i_1_n_0,sub_sx0_carry_i_2_n_0,sub_sx0_carry_i_3_n_0,sub_sx0_carry_i_4_n_0}));
  CARRY4 sub_sx0_carry__0
       (.CI(sub_sx0_carry_n_0),
        .CO({sub_sx0_carry__0_n_0,sub_sx0_carry__0_n_1,sub_sx0_carry__0_n_2,sub_sx0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(data_in_sx[7:4]),
        .O(sub_sx00_in[7:4]),
        .S({sub_sx0_carry__0_i_1_n_0,sub_sx0_carry__0_i_2_n_0,sub_sx0_carry__0_i_3_n_0,sub_sx0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sub_sx0_carry__0_i_1
       (.I0(data_in_sx[7]),
        .I1(\last_values_sx_reg[31] [7]),
        .O(sub_sx0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_sx0_carry__0_i_2
       (.I0(data_in_sx[6]),
        .I1(\last_values_sx_reg[31] [6]),
        .O(sub_sx0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_sx0_carry__0_i_3
       (.I0(data_in_sx[5]),
        .I1(\last_values_sx_reg[31] [5]),
        .O(sub_sx0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_sx0_carry__0_i_4
       (.I0(data_in_sx[4]),
        .I1(\last_values_sx_reg[31] [4]),
        .O(sub_sx0_carry__0_i_4_n_0));
  CARRY4 sub_sx0_carry__1
       (.CI(sub_sx0_carry__0_n_0),
        .CO({sub_sx0_carry__1_n_0,sub_sx0_carry__1_n_1,sub_sx0_carry__1_n_2,sub_sx0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(data_in_sx[11:8]),
        .O(sub_sx00_in[11:8]),
        .S({sub_sx0_carry__1_i_1_n_0,sub_sx0_carry__1_i_2_n_0,sub_sx0_carry__1_i_3_n_0,sub_sx0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sub_sx0_carry__1_i_1
       (.I0(data_in_sx[11]),
        .I1(\last_values_sx_reg[31] [11]),
        .O(sub_sx0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_sx0_carry__1_i_2
       (.I0(data_in_sx[10]),
        .I1(\last_values_sx_reg[31] [10]),
        .O(sub_sx0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_sx0_carry__1_i_3
       (.I0(data_in_sx[9]),
        .I1(\last_values_sx_reg[31] [9]),
        .O(sub_sx0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_sx0_carry__1_i_4
       (.I0(data_in_sx[8]),
        .I1(\last_values_sx_reg[31] [8]),
        .O(sub_sx0_carry__1_i_4_n_0));
  CARRY4 sub_sx0_carry__2
       (.CI(sub_sx0_carry__1_n_0),
        .CO({sub_sx0_carry__2_n_0,sub_sx0_carry__2_n_1,sub_sx0_carry__2_n_2,sub_sx0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\last_values_sx_reg[31] [15],data_in_sx[14:12]}),
        .O(sub_sx00_in[15:12]),
        .S({sub_sx0_carry__2_i_1_n_0,sub_sx0_carry__2_i_2_n_0,sub_sx0_carry__2_i_3_n_0,sub_sx0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sub_sx0_carry__2_i_1
       (.I0(data_in_sx[15]),
        .I1(\last_values_sx_reg[31] [15]),
        .O(sub_sx0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_sx0_carry__2_i_2
       (.I0(data_in_sx[14]),
        .I1(\last_values_sx_reg[31] [14]),
        .O(sub_sx0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_sx0_carry__2_i_3
       (.I0(data_in_sx[13]),
        .I1(\last_values_sx_reg[31] [13]),
        .O(sub_sx0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_sx0_carry__2_i_4
       (.I0(data_in_sx[12]),
        .I1(\last_values_sx_reg[31] [12]),
        .O(sub_sx0_carry__2_i_4_n_0));
  CARRY4 sub_sx0_carry__3
       (.CI(sub_sx0_carry__2_n_0),
        .CO(NLW_sub_sx0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sub_sx0_carry__3_O_UNCONNECTED[3:1],sub_sx00_in[16]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    sub_sx0_carry_i_1
       (.I0(data_in_sx[3]),
        .I1(\last_values_sx_reg[31] [3]),
        .O(sub_sx0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_sx0_carry_i_2
       (.I0(data_in_sx[2]),
        .I1(\last_values_sx_reg[31] [2]),
        .O(sub_sx0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_sx0_carry_i_3
       (.I0(data_in_sx[1]),
        .I1(\last_values_sx_reg[31] [1]),
        .O(sub_sx0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_sx0_carry_i_4
       (.I0(data_in_sx[0]),
        .I1(\last_values_sx_reg[31] [0]),
        .O(sub_sx0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    \sub_sx[16]_i_1 
       (.I0(aresetn),
        .I1(\FSM_onehot_state_sx_reg_n_0_[4] ),
        .I2(tlast_sampled_sx_reg_n_0),
        .O(sub_sx0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sx_reg[0] 
       (.C(clk),
        .CE(sub_sx0),
        .D(sub_sx00_in[0]),
        .Q(sub_sx[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sx_reg[10] 
       (.C(clk),
        .CE(sub_sx0),
        .D(sub_sx00_in[10]),
        .Q(sub_sx[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sx_reg[11] 
       (.C(clk),
        .CE(sub_sx0),
        .D(sub_sx00_in[11]),
        .Q(sub_sx[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sx_reg[12] 
       (.C(clk),
        .CE(sub_sx0),
        .D(sub_sx00_in[12]),
        .Q(sub_sx[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sx_reg[13] 
       (.C(clk),
        .CE(sub_sx0),
        .D(sub_sx00_in[13]),
        .Q(sub_sx[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sx_reg[14] 
       (.C(clk),
        .CE(sub_sx0),
        .D(sub_sx00_in[14]),
        .Q(sub_sx[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sx_reg[15] 
       (.C(clk),
        .CE(sub_sx0),
        .D(sub_sx00_in[15]),
        .Q(sub_sx[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sx_reg[16] 
       (.C(clk),
        .CE(sub_sx0),
        .D(sub_sx00_in[16]),
        .Q(sub_sx[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sx_reg[1] 
       (.C(clk),
        .CE(sub_sx0),
        .D(sub_sx00_in[1]),
        .Q(sub_sx[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sx_reg[2] 
       (.C(clk),
        .CE(sub_sx0),
        .D(sub_sx00_in[2]),
        .Q(sub_sx[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sx_reg[3] 
       (.C(clk),
        .CE(sub_sx0),
        .D(sub_sx00_in[3]),
        .Q(sub_sx[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sx_reg[4] 
       (.C(clk),
        .CE(sub_sx0),
        .D(sub_sx00_in[4]),
        .Q(sub_sx[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sx_reg[5] 
       (.C(clk),
        .CE(sub_sx0),
        .D(sub_sx00_in[5]),
        .Q(sub_sx[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sx_reg[6] 
       (.C(clk),
        .CE(sub_sx0),
        .D(sub_sx00_in[6]),
        .Q(sub_sx[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sx_reg[7] 
       (.C(clk),
        .CE(sub_sx0),
        .D(sub_sx00_in[7]),
        .Q(sub_sx[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sx_reg[8] 
       (.C(clk),
        .CE(sub_sx0),
        .D(sub_sx00_in[8]),
        .Q(sub_sx[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sub_sx_reg[9] 
       (.C(clk),
        .CE(sub_sx0),
        .D(sub_sx00_in[9]),
        .Q(sub_sx[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sw_reg_dx_reg
       (.C(clk),
        .CE(sw_reg_dx0),
        .D(sw_in),
        .Q(sw_reg_dx_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sw_reg_sx_reg
       (.C(clk),
        .CE(sw_reg_sx0),
        .D(sw_in),
        .Q(sw_reg_sx_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    tlast_sampled_dx_i_1
       (.I0(s_axis_tlast),
        .I1(\FSM_onehot_state_dx_reg_n_0_[5] ),
        .I2(s_axis_tvalid),
        .I3(aresetn),
        .I4(tlast_sampled_dx_reg_n_0),
        .O(tlast_sampled_dx_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tlast_sampled_dx_reg
       (.C(clk),
        .CE(1'b1),
        .D(tlast_sampled_dx_i_1_n_0),
        .Q(tlast_sampled_dx_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBFFF0000)) 
    tlast_sampled_sx_i_1
       (.I0(s_axis_tlast),
        .I1(aresetn),
        .I2(s_axis_tvalid),
        .I3(\FSM_onehot_state_sx_reg_n_0_[5] ),
        .I4(tlast_sampled_sx_reg_n_0),
        .O(tlast_sampled_sx_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tlast_sampled_sx_reg
       (.C(clk),
        .CE(1'b1),
        .D(tlast_sampled_sx_i_1_n_0),
        .Q(tlast_sampled_sx_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h5F40)) 
    write_allowed_sx_i_1
       (.I0(p_0_in8_in),
        .I1(p_0_in7_in),
        .I2(m_axis_tready),
        .I3(write_allowed_sx_reg_n_0),
        .O(write_allowed_sx_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    write_allowed_sx_reg
       (.C(clk),
        .CE(1'b1),
        .D(write_allowed_sx_i_1_n_0),
        .PRE(\FSM_onehot_state_sx[5]_i_2_n_0 ),
        .Q(write_allowed_sx_reg_n_0));
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

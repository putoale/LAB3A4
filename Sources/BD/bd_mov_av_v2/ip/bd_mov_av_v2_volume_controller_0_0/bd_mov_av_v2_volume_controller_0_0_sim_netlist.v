// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue May 19 21:13:23 2020
// Host        : DESKTOP-O39JAIK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Vivado_DESD_Project/Project/Personal/Lab3_A4/LAB3A4/Sources/BD/bd_mov_av_v2/ip/bd_mov_av_v2_volume_controller_0_0/bd_mov_av_v2_volume_controller_0_0_sim_netlist.v
// Design      : bd_mov_av_v2_volume_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_mov_av_v2_volume_controller_0_0,volume_controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "volume_controller,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module bd_mov_av_v2_volume_controller_0_0
   (aclk,
    aresetn,
    volume_up,
    volume_down,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tlast,
    volume_level);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input volume_up;
  input volume_down;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [15:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [15:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  output [15:0]volume_level;

  wire aclk;
  wire aresetn;
  wire [15:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [15:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire volume_down;
  wire [4:0]\^volume_level ;
  wire volume_up;

  assign volume_level[15] = \^volume_level [4];
  assign volume_level[14] = \^volume_level [4];
  assign volume_level[13] = \^volume_level [4];
  assign volume_level[12] = \^volume_level [4];
  assign volume_level[11] = \^volume_level [4];
  assign volume_level[10] = \^volume_level [4];
  assign volume_level[9] = \^volume_level [4];
  assign volume_level[8] = \^volume_level [4];
  assign volume_level[7] = \^volume_level [4];
  assign volume_level[6] = \^volume_level [4];
  assign volume_level[5] = \^volume_level [4];
  assign volume_level[4:0] = \^volume_level [4:0];
  bd_mov_av_v2_volume_controller_0_0_volume_controller U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .volume_down(volume_down),
        .volume_level(\^volume_level ),
        .volume_up(volume_up));
endmodule

(* ORIG_REF_NAME = "volume_controller" *) 
module bd_mov_av_v2_volume_controller_0_0_volume_controller
   (m_axis_tvalid,
    s_axis_tready,
    m_axis_tdata,
    volume_level,
    m_axis_tlast,
    aclk,
    s_axis_tdata,
    aresetn,
    s_axis_tvalid,
    s_axis_tlast,
    volume_up,
    volume_down,
    m_axis_tready);
  output m_axis_tvalid;
  output s_axis_tready;
  output [15:0]m_axis_tdata;
  output [4:0]volume_level;
  output m_axis_tlast;
  input aclk;
  input [15:0]s_axis_tdata;
  input aresetn;
  input s_axis_tvalid;
  input s_axis_tlast;
  input volume_up;
  input volume_down;
  input m_axis_tready;

  wire ARG__0_carry__0_i_10_n_0;
  wire ARG__0_carry__0_i_11_n_0;
  wire ARG__0_carry__0_i_12_n_0;
  wire ARG__0_carry__0_i_1_n_0;
  wire ARG__0_carry__0_i_2_n_0;
  wire ARG__0_carry__0_i_3_n_0;
  wire ARG__0_carry__0_i_4_n_0;
  wire ARG__0_carry__0_i_5_n_0;
  wire ARG__0_carry__0_i_6_n_0;
  wire ARG__0_carry__0_i_7_n_0;
  wire ARG__0_carry__0_i_8_n_0;
  wire ARG__0_carry__0_i_9_n_0;
  wire ARG__0_carry__0_n_0;
  wire ARG__0_carry__0_n_1;
  wire ARG__0_carry__0_n_2;
  wire ARG__0_carry__0_n_3;
  wire ARG__0_carry__0_n_4;
  wire ARG__0_carry__0_n_5;
  wire ARG__0_carry__0_n_6;
  wire ARG__0_carry__0_n_7;
  wire ARG__0_carry__1_i_10_n_0;
  wire ARG__0_carry__1_i_11_n_0;
  wire ARG__0_carry__1_i_12_n_0;
  wire ARG__0_carry__1_i_1_n_0;
  wire ARG__0_carry__1_i_2_n_0;
  wire ARG__0_carry__1_i_3_n_0;
  wire ARG__0_carry__1_i_4_n_0;
  wire ARG__0_carry__1_i_5_n_0;
  wire ARG__0_carry__1_i_6_n_0;
  wire ARG__0_carry__1_i_7_n_0;
  wire ARG__0_carry__1_i_8_n_0;
  wire ARG__0_carry__1_i_9_n_0;
  wire ARG__0_carry__1_n_0;
  wire ARG__0_carry__1_n_1;
  wire ARG__0_carry__1_n_2;
  wire ARG__0_carry__1_n_3;
  wire ARG__0_carry__1_n_4;
  wire ARG__0_carry__1_n_5;
  wire ARG__0_carry__1_n_6;
  wire ARG__0_carry__1_n_7;
  wire ARG__0_carry__2_i_10_n_0;
  wire ARG__0_carry__2_i_11_n_0;
  wire ARG__0_carry__2_i_12_n_0;
  wire ARG__0_carry__2_i_1_n_0;
  wire ARG__0_carry__2_i_2_n_0;
  wire ARG__0_carry__2_i_3_n_0;
  wire ARG__0_carry__2_i_4_n_0;
  wire ARG__0_carry__2_i_5_n_0;
  wire ARG__0_carry__2_i_6_n_0;
  wire ARG__0_carry__2_i_7_n_0;
  wire ARG__0_carry__2_i_8_n_0;
  wire ARG__0_carry__2_i_9_n_0;
  wire ARG__0_carry__2_n_0;
  wire ARG__0_carry__2_n_1;
  wire ARG__0_carry__2_n_2;
  wire ARG__0_carry__2_n_3;
  wire ARG__0_carry__2_n_4;
  wire ARG__0_carry__2_n_5;
  wire ARG__0_carry__2_n_6;
  wire ARG__0_carry__2_n_7;
  wire ARG__0_carry__3_i_1_n_0;
  wire ARG__0_carry__3_i_2_n_0;
  wire ARG__0_carry__3_i_3_n_0;
  wire ARG__0_carry__3_i_4_n_0;
  wire ARG__0_carry__3_n_1;
  wire ARG__0_carry__3_n_3;
  wire ARG__0_carry__3_n_6;
  wire ARG__0_carry__3_n_7;
  wire ARG__0_carry_i_1_n_0;
  wire ARG__0_carry_i_2_n_0;
  wire ARG__0_carry_i_3_n_0;
  wire ARG__0_carry_i_4_n_0;
  wire ARG__0_carry_i_5_n_0;
  wire ARG__0_carry_i_6_n_0;
  wire ARG__0_carry_i_7_n_0;
  wire ARG__0_carry_i_8_n_0;
  wire ARG__0_carry_n_0;
  wire ARG__0_carry_n_1;
  wire ARG__0_carry_n_2;
  wire ARG__0_carry_n_3;
  wire ARG__0_carry_n_4;
  wire ARG__0_carry_n_5;
  wire ARG__0_carry_n_6;
  wire ARG__0_carry_n_7;
  wire ARG__53_carry__0_i_1_n_0;
  wire ARG__53_carry__0_i_2_n_0;
  wire ARG__53_carry__0_i_3_n_0;
  wire ARG__53_carry__0_i_4_n_0;
  wire ARG__53_carry__0_i_5_n_0;
  wire ARG__53_carry__0_i_6_n_0;
  wire ARG__53_carry__0_i_7_n_0;
  wire ARG__53_carry__0_i_8_n_0;
  wire ARG__53_carry__0_n_0;
  wire ARG__53_carry__0_n_1;
  wire ARG__53_carry__0_n_2;
  wire ARG__53_carry__0_n_3;
  wire ARG__53_carry__0_n_4;
  wire ARG__53_carry__0_n_5;
  wire ARG__53_carry__0_n_6;
  wire ARG__53_carry__0_n_7;
  wire ARG__53_carry__1_i_1_n_0;
  wire ARG__53_carry__1_i_2_n_0;
  wire ARG__53_carry__1_i_3_n_0;
  wire ARG__53_carry__1_i_4_n_0;
  wire ARG__53_carry__1_i_5_n_0;
  wire ARG__53_carry__1_i_6_n_0;
  wire ARG__53_carry__1_i_7_n_0;
  wire ARG__53_carry__1_i_8_n_0;
  wire ARG__53_carry__1_n_0;
  wire ARG__53_carry__1_n_1;
  wire ARG__53_carry__1_n_2;
  wire ARG__53_carry__1_n_3;
  wire ARG__53_carry__1_n_4;
  wire ARG__53_carry__1_n_5;
  wire ARG__53_carry__1_n_6;
  wire ARG__53_carry__1_n_7;
  wire ARG__53_carry__2_i_10_n_0;
  wire ARG__53_carry__2_i_11_n_0;
  wire ARG__53_carry__2_i_12_n_0;
  wire ARG__53_carry__2_i_1_n_0;
  wire ARG__53_carry__2_i_2_n_0;
  wire ARG__53_carry__2_i_3_n_0;
  wire ARG__53_carry__2_i_4_n_0;
  wire ARG__53_carry__2_i_5_n_0;
  wire ARG__53_carry__2_i_6_n_0;
  wire ARG__53_carry__2_i_7_n_0;
  wire ARG__53_carry__2_i_8_n_0;
  wire ARG__53_carry__2_i_9_n_0;
  wire ARG__53_carry__2_n_0;
  wire ARG__53_carry__2_n_1;
  wire ARG__53_carry__2_n_2;
  wire ARG__53_carry__2_n_3;
  wire ARG__53_carry__2_n_4;
  wire ARG__53_carry__2_n_5;
  wire ARG__53_carry__2_n_7;
  wire ARG__53_carry__3_i_1_n_0;
  wire ARG__53_carry__3_i_2_n_0;
  wire ARG__53_carry__3_i_3_n_0;
  wire ARG__53_carry__3_i_4_n_0;
  wire ARG__53_carry__3_i_5_n_0;
  wire ARG__53_carry__3_i_6_n_0;
  wire ARG__53_carry__3_i_7_n_0;
  wire ARG__53_carry__3_n_2;
  wire ARG__53_carry__3_n_3;
  wire ARG__53_carry__3_n_6;
  wire ARG__53_carry__3_n_7;
  wire ARG__53_carry_i_1_n_0;
  wire ARG__53_carry_i_2_n_0;
  wire ARG__53_carry_i_3_n_0;
  wire ARG__53_carry_i_4_n_0;
  wire ARG__53_carry_i_5_n_0;
  wire ARG__53_carry_n_0;
  wire ARG__53_carry_n_1;
  wire ARG__53_carry_n_2;
  wire ARG__53_carry_n_3;
  wire ARG__53_carry_n_4;
  wire ARG__53_carry_n_5;
  wire ARG__53_carry_n_6;
  wire ARG__53_carry_n_7;
  wire [4:0]B;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[1]_i_3_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire SHIFT_RIGHT3_carry__0_i_1_n_0;
  wire SHIFT_RIGHT3_carry__0_i_5_n_0;
  wire SHIFT_RIGHT3_carry__0_i_6_n_0;
  wire SHIFT_RIGHT3_carry__0_i_7_n_0;
  wire SHIFT_RIGHT3_carry__0_i_8_n_0;
  wire SHIFT_RIGHT3_carry__0_n_0;
  wire SHIFT_RIGHT3_carry__0_n_1;
  wire SHIFT_RIGHT3_carry__0_n_2;
  wire SHIFT_RIGHT3_carry__0_n_3;
  wire SHIFT_RIGHT3_carry__0_n_4;
  wire SHIFT_RIGHT3_carry__0_n_5;
  wire SHIFT_RIGHT3_carry__0_n_6;
  wire SHIFT_RIGHT3_carry__0_n_7;
  wire SHIFT_RIGHT3_carry__1_i_5_n_0;
  wire SHIFT_RIGHT3_carry__1_i_6_n_0;
  wire SHIFT_RIGHT3_carry__1_i_7_n_0;
  wire SHIFT_RIGHT3_carry__1_i_8_n_0;
  wire SHIFT_RIGHT3_carry__1_n_0;
  wire SHIFT_RIGHT3_carry__1_n_1;
  wire SHIFT_RIGHT3_carry__1_n_2;
  wire SHIFT_RIGHT3_carry__1_n_3;
  wire SHIFT_RIGHT3_carry__1_n_4;
  wire SHIFT_RIGHT3_carry__1_n_5;
  wire SHIFT_RIGHT3_carry__1_n_6;
  wire SHIFT_RIGHT3_carry__1_n_7;
  wire SHIFT_RIGHT3_carry__2_i_3_n_0;
  wire SHIFT_RIGHT3_carry__2_i_4_n_0;
  wire SHIFT_RIGHT3_carry__2_i_5_n_0;
  wire SHIFT_RIGHT3_carry__2_n_2;
  wire SHIFT_RIGHT3_carry__2_n_3;
  wire SHIFT_RIGHT3_carry__2_n_5;
  wire SHIFT_RIGHT3_carry__2_n_6;
  wire SHIFT_RIGHT3_carry__2_n_7;
  wire SHIFT_RIGHT3_carry_i_6_n_0;
  wire SHIFT_RIGHT3_carry_i_7_n_0;
  wire SHIFT_RIGHT3_carry_i_8_n_0;
  wire SHIFT_RIGHT3_carry_i_9_n_0;
  wire SHIFT_RIGHT3_carry_n_0;
  wire SHIFT_RIGHT3_carry_n_1;
  wire SHIFT_RIGHT3_carry_n_2;
  wire SHIFT_RIGHT3_carry_n_3;
  wire SHIFT_RIGHT3_carry_n_4;
  wire SHIFT_RIGHT3_carry_n_5;
  wire SHIFT_RIGHT3_carry_n_6;
  wire SHIFT_RIGHT3_carry_n_7;
  wire [14:0]SHIFT_RIGHT4;
  wire aclk;
  wire aresetn;
  wire data_in0;
  wire \data_in_reg_n_0_[0] ;
  wire \data_in_reg_n_0_[10] ;
  wire \data_in_reg_n_0_[11] ;
  wire \data_in_reg_n_0_[12] ;
  wire \data_in_reg_n_0_[13] ;
  wire \data_in_reg_n_0_[14] ;
  wire \data_in_reg_n_0_[15] ;
  wire \data_in_reg_n_0_[1] ;
  wire \data_in_reg_n_0_[2] ;
  wire \data_in_reg_n_0_[3] ;
  wire \data_in_reg_n_0_[4] ;
  wire \data_in_reg_n_0_[5] ;
  wire \data_in_reg_n_0_[6] ;
  wire \data_in_reg_n_0_[7] ;
  wire \data_in_reg_n_0_[8] ;
  wire \data_in_reg_n_0_[9] ;
  wire data_out;
  wire data_out0;
  wire data_out12_in;
  wire data_out1_carry_i_1_n_0;
  wire data_out1_carry_i_2_n_0;
  wire data_out1_carry_i_3_n_0;
  wire data_out1_carry_i_4_n_0;
  wire data_out1_carry_i_5_n_0;
  wire data_out1_carry_n_2;
  wire data_out1_carry_n_3;
  wire \data_out[0]_i_1_n_0 ;
  wire \data_out[10]_i_1_n_0 ;
  wire \data_out[10]_i_2_n_0 ;
  wire \data_out[10]_i_3_n_0 ;
  wire \data_out[10]_i_4_n_0 ;
  wire \data_out[10]_i_5_n_0 ;
  wire \data_out[10]_i_6_n_0 ;
  wire \data_out[11]_i_1_n_0 ;
  wire \data_out[11]_i_2_n_0 ;
  wire \data_out[11]_i_3_n_0 ;
  wire \data_out[11]_i_4_n_0 ;
  wire \data_out[11]_i_5_n_0 ;
  wire \data_out[12]_i_1_n_0 ;
  wire \data_out[12]_i_2_n_0 ;
  wire \data_out[12]_i_3_n_0 ;
  wire \data_out[12]_i_4_n_0 ;
  wire \data_out[12]_i_5_n_0 ;
  wire \data_out[13]_i_1_n_0 ;
  wire \data_out[13]_i_2_n_0 ;
  wire \data_out[13]_i_3_n_0 ;
  wire \data_out[13]_i_4_n_0 ;
  wire \data_out[13]_i_5_n_0 ;
  wire \data_out[14]_i_1_n_0 ;
  wire \data_out[14]_i_2_n_0 ;
  wire \data_out[14]_i_3_n_0 ;
  wire \data_out[14]_i_4_n_0 ;
  wire \data_out[14]_i_5_n_0 ;
  wire \data_out[14]_i_6_n_0 ;
  wire \data_out[14]_i_7_n_0 ;
  wire \data_out[14]_i_8_n_0 ;
  wire \data_out[15]_i_10_n_0 ;
  wire \data_out[15]_i_11_n_0 ;
  wire \data_out[15]_i_2_n_0 ;
  wire \data_out[15]_i_3_n_0 ;
  wire \data_out[15]_i_4_n_0 ;
  wire \data_out[15]_i_5_n_0 ;
  wire \data_out[15]_i_6_n_0 ;
  wire \data_out[15]_i_7_n_0 ;
  wire \data_out[15]_i_8_n_0 ;
  wire \data_out[15]_i_9_n_0 ;
  wire \data_out[1]_i_1_n_0 ;
  wire \data_out[1]_i_2_n_0 ;
  wire \data_out[1]_i_3_n_0 ;
  wire \data_out[2]_i_1_n_0 ;
  wire \data_out[2]_i_2_n_0 ;
  wire \data_out[2]_i_3_n_0 ;
  wire \data_out[3]_i_1_n_0 ;
  wire \data_out[3]_i_2_n_0 ;
  wire \data_out[3]_i_3_n_0 ;
  wire \data_out[3]_i_4_n_0 ;
  wire \data_out[4]_i_1_n_0 ;
  wire \data_out[4]_i_2_n_0 ;
  wire \data_out[4]_i_3_n_0 ;
  wire \data_out[4]_i_4_n_0 ;
  wire \data_out[5]_i_1_n_0 ;
  wire \data_out[5]_i_2_n_0 ;
  wire \data_out[5]_i_3_n_0 ;
  wire \data_out[5]_i_4_n_0 ;
  wire \data_out[6]_i_1_n_0 ;
  wire \data_out[6]_i_2_n_0 ;
  wire \data_out[6]_i_3_n_0 ;
  wire \data_out[6]_i_4_n_0 ;
  wire \data_out[7]_i_1_n_0 ;
  wire \data_out[7]_i_2_n_0 ;
  wire \data_out[7]_i_3_n_0 ;
  wire \data_out[7]_i_4_n_0 ;
  wire \data_out[7]_i_5_n_0 ;
  wire \data_out[7]_i_6_n_0 ;
  wire \data_out[8]_i_1_n_0 ;
  wire \data_out[8]_i_2_n_0 ;
  wire \data_out[8]_i_3_n_0 ;
  wire \data_out[8]_i_4_n_0 ;
  wire \data_out[8]_i_5_n_0 ;
  wire \data_out[8]_i_6_n_0 ;
  wire \data_out[8]_i_7_n_0 ;
  wire \data_out[8]_i_8_n_0 ;
  wire \data_out[9]_i_1_n_0 ;
  wire \data_out[9]_i_2_n_0 ;
  wire \data_out[9]_i_3_n_0 ;
  wire \data_out[9]_i_4_n_0 ;
  wire [4:0]diff;
  wire [15:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire p_0_out0;
  wire [4:0]plusOp0;
  wire [15:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire tlast_expected;
  wire tlast_expected_i_1_n_0;
  wire tlast_sampled;
  wire tlast_sampled0;
  wire \volume[0]_i_1_n_0 ;
  wire \volume[1]_i_1_n_0 ;
  wire \volume[2]_i_1_n_0 ;
  wire \volume[3]_i_1_n_0 ;
  wire volume_down;
  wire [4:0]volume_level;
  wire [3:0]volume_reg;
  wire volume_up;
  wire [3:1]NLW_ARG__0_carry__3_CO_UNCONNECTED;
  wire [3:2]NLW_ARG__0_carry__3_O_UNCONNECTED;
  wire [1:1]NLW_ARG__53_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_ARG__53_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_ARG__53_carry__3_O_UNCONNECTED;
  wire [3:2]NLW_SHIFT_RIGHT3_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_SHIFT_RIGHT3_carry__2_O_UNCONNECTED;
  wire [3:3]NLW_data_out1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_data_out1_carry_O_UNCONNECTED;

  CARRY4 ARG__0_carry
       (.CI(1'b0),
        .CO({ARG__0_carry_n_0,ARG__0_carry_n_1,ARG__0_carry_n_2,ARG__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({ARG__0_carry_i_1_n_0,ARG__0_carry_i_2_n_0,ARG__0_carry_i_3_n_0,1'b0}),
        .O({ARG__0_carry_n_4,ARG__0_carry_n_5,ARG__0_carry_n_6,ARG__0_carry_n_7}),
        .S({ARG__0_carry_i_4_n_0,ARG__0_carry_i_5_n_0,ARG__0_carry_i_6_n_0,ARG__0_carry_i_7_n_0}));
  CARRY4 ARG__0_carry__0
       (.CI(ARG__0_carry_n_0),
        .CO({ARG__0_carry__0_n_0,ARG__0_carry__0_n_1,ARG__0_carry__0_n_2,ARG__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({ARG__0_carry__0_i_1_n_0,ARG__0_carry__0_i_2_n_0,ARG__0_carry__0_i_3_n_0,ARG__0_carry__0_i_4_n_0}),
        .O({ARG__0_carry__0_n_4,ARG__0_carry__0_n_5,ARG__0_carry__0_n_6,ARG__0_carry__0_n_7}),
        .S({ARG__0_carry__0_i_5_n_0,ARG__0_carry__0_i_6_n_0,ARG__0_carry__0_i_7_n_0,ARG__0_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    ARG__0_carry__0_i_1
       (.I0(diff[2]),
        .I1(\data_in_reg_n_0_[4] ),
        .I2(diff[1]),
        .I3(\data_in_reg_n_0_[5] ),
        .I4(diff[0]),
        .I5(\data_in_reg_n_0_[6] ),
        .O(ARG__0_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ARG__0_carry__0_i_10
       (.I0(\data_in_reg_n_0_[5] ),
        .I1(diff[1]),
        .O(ARG__0_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ARG__0_carry__0_i_11
       (.I0(\data_in_reg_n_0_[4] ),
        .I1(diff[1]),
        .O(ARG__0_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ARG__0_carry__0_i_12
       (.I0(\data_in_reg_n_0_[3] ),
        .I1(diff[1]),
        .O(ARG__0_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    ARG__0_carry__0_i_2
       (.I0(diff[2]),
        .I1(\data_in_reg_n_0_[3] ),
        .I2(diff[1]),
        .I3(\data_in_reg_n_0_[4] ),
        .I4(diff[0]),
        .I5(\data_in_reg_n_0_[5] ),
        .O(ARG__0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    ARG__0_carry__0_i_3
       (.I0(diff[2]),
        .I1(\data_in_reg_n_0_[2] ),
        .I2(diff[1]),
        .I3(\data_in_reg_n_0_[3] ),
        .I4(diff[0]),
        .I5(\data_in_reg_n_0_[4] ),
        .O(ARG__0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    ARG__0_carry__0_i_4
       (.I0(diff[2]),
        .I1(\data_in_reg_n_0_[1] ),
        .I2(diff[1]),
        .I3(\data_in_reg_n_0_[2] ),
        .I4(diff[0]),
        .I5(\data_in_reg_n_0_[3] ),
        .O(ARG__0_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    ARG__0_carry__0_i_5
       (.I0(ARG__0_carry__0_i_1_n_0),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[5] ),
        .I3(ARG__0_carry__0_i_9_n_0),
        .I4(diff[0]),
        .I5(\data_in_reg_n_0_[7] ),
        .O(ARG__0_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    ARG__0_carry__0_i_6
       (.I0(ARG__0_carry__0_i_2_n_0),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[4] ),
        .I3(ARG__0_carry__0_i_10_n_0),
        .I4(diff[0]),
        .I5(\data_in_reg_n_0_[6] ),
        .O(ARG__0_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    ARG__0_carry__0_i_7
       (.I0(ARG__0_carry__0_i_3_n_0),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[3] ),
        .I3(ARG__0_carry__0_i_11_n_0),
        .I4(diff[0]),
        .I5(\data_in_reg_n_0_[5] ),
        .O(ARG__0_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    ARG__0_carry__0_i_8
       (.I0(ARG__0_carry__0_i_4_n_0),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[2] ),
        .I3(ARG__0_carry__0_i_12_n_0),
        .I4(diff[0]),
        .I5(\data_in_reg_n_0_[4] ),
        .O(ARG__0_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ARG__0_carry__0_i_9
       (.I0(\data_in_reg_n_0_[6] ),
        .I1(diff[1]),
        .O(ARG__0_carry__0_i_9_n_0));
  CARRY4 ARG__0_carry__1
       (.CI(ARG__0_carry__0_n_0),
        .CO({ARG__0_carry__1_n_0,ARG__0_carry__1_n_1,ARG__0_carry__1_n_2,ARG__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({ARG__0_carry__1_i_1_n_0,ARG__0_carry__1_i_2_n_0,ARG__0_carry__1_i_3_n_0,ARG__0_carry__1_i_4_n_0}),
        .O({ARG__0_carry__1_n_4,ARG__0_carry__1_n_5,ARG__0_carry__1_n_6,ARG__0_carry__1_n_7}),
        .S({ARG__0_carry__1_i_5_n_0,ARG__0_carry__1_i_6_n_0,ARG__0_carry__1_i_7_n_0,ARG__0_carry__1_i_8_n_0}));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    ARG__0_carry__1_i_1
       (.I0(diff[2]),
        .I1(\data_in_reg_n_0_[8] ),
        .I2(diff[1]),
        .I3(\data_in_reg_n_0_[9] ),
        .I4(diff[0]),
        .I5(\data_in_reg_n_0_[10] ),
        .O(ARG__0_carry__1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ARG__0_carry__1_i_10
       (.I0(\data_in_reg_n_0_[9] ),
        .I1(diff[1]),
        .O(ARG__0_carry__1_i_10_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ARG__0_carry__1_i_11
       (.I0(\data_in_reg_n_0_[8] ),
        .I1(diff[1]),
        .O(ARG__0_carry__1_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ARG__0_carry__1_i_12
       (.I0(\data_in_reg_n_0_[7] ),
        .I1(diff[1]),
        .O(ARG__0_carry__1_i_12_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    ARG__0_carry__1_i_2
       (.I0(diff[2]),
        .I1(\data_in_reg_n_0_[7] ),
        .I2(diff[1]),
        .I3(\data_in_reg_n_0_[8] ),
        .I4(diff[0]),
        .I5(\data_in_reg_n_0_[9] ),
        .O(ARG__0_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    ARG__0_carry__1_i_3
       (.I0(diff[2]),
        .I1(\data_in_reg_n_0_[6] ),
        .I2(diff[1]),
        .I3(\data_in_reg_n_0_[7] ),
        .I4(diff[0]),
        .I5(\data_in_reg_n_0_[8] ),
        .O(ARG__0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    ARG__0_carry__1_i_4
       (.I0(diff[2]),
        .I1(\data_in_reg_n_0_[5] ),
        .I2(diff[1]),
        .I3(\data_in_reg_n_0_[6] ),
        .I4(diff[0]),
        .I5(\data_in_reg_n_0_[7] ),
        .O(ARG__0_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    ARG__0_carry__1_i_5
       (.I0(ARG__0_carry__1_i_1_n_0),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[9] ),
        .I3(ARG__0_carry__1_i_9_n_0),
        .I4(diff[0]),
        .I5(\data_in_reg_n_0_[11] ),
        .O(ARG__0_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    ARG__0_carry__1_i_6
       (.I0(ARG__0_carry__1_i_2_n_0),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[8] ),
        .I3(ARG__0_carry__1_i_10_n_0),
        .I4(diff[0]),
        .I5(\data_in_reg_n_0_[10] ),
        .O(ARG__0_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    ARG__0_carry__1_i_7
       (.I0(ARG__0_carry__1_i_3_n_0),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[7] ),
        .I3(ARG__0_carry__1_i_11_n_0),
        .I4(diff[0]),
        .I5(\data_in_reg_n_0_[9] ),
        .O(ARG__0_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    ARG__0_carry__1_i_8
       (.I0(ARG__0_carry__1_i_4_n_0),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[6] ),
        .I3(ARG__0_carry__1_i_12_n_0),
        .I4(diff[0]),
        .I5(\data_in_reg_n_0_[8] ),
        .O(ARG__0_carry__1_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ARG__0_carry__1_i_9
       (.I0(\data_in_reg_n_0_[10] ),
        .I1(diff[1]),
        .O(ARG__0_carry__1_i_9_n_0));
  CARRY4 ARG__0_carry__2
       (.CI(ARG__0_carry__1_n_0),
        .CO({ARG__0_carry__2_n_0,ARG__0_carry__2_n_1,ARG__0_carry__2_n_2,ARG__0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({ARG__0_carry__2_i_1_n_0,ARG__0_carry__2_i_2_n_0,ARG__0_carry__2_i_3_n_0,ARG__0_carry__2_i_4_n_0}),
        .O({ARG__0_carry__2_n_4,ARG__0_carry__2_n_5,ARG__0_carry__2_n_6,ARG__0_carry__2_n_7}),
        .S({ARG__0_carry__2_i_5_n_0,ARG__0_carry__2_i_6_n_0,ARG__0_carry__2_i_7_n_0,ARG__0_carry__2_i_8_n_0}));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    ARG__0_carry__2_i_1
       (.I0(diff[2]),
        .I1(\data_in_reg_n_0_[12] ),
        .I2(diff[1]),
        .I3(\data_in_reg_n_0_[13] ),
        .I4(diff[0]),
        .I5(\data_in_reg_n_0_[14] ),
        .O(ARG__0_carry__2_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ARG__0_carry__2_i_10
       (.I0(\data_in_reg_n_0_[13] ),
        .I1(diff[1]),
        .O(ARG__0_carry__2_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ARG__0_carry__2_i_11
       (.I0(\data_in_reg_n_0_[12] ),
        .I1(diff[1]),
        .O(ARG__0_carry__2_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ARG__0_carry__2_i_12
       (.I0(\data_in_reg_n_0_[11] ),
        .I1(diff[1]),
        .O(ARG__0_carry__2_i_12_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    ARG__0_carry__2_i_2
       (.I0(diff[2]),
        .I1(\data_in_reg_n_0_[11] ),
        .I2(diff[1]),
        .I3(\data_in_reg_n_0_[12] ),
        .I4(diff[0]),
        .I5(\data_in_reg_n_0_[13] ),
        .O(ARG__0_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    ARG__0_carry__2_i_3
       (.I0(diff[2]),
        .I1(\data_in_reg_n_0_[10] ),
        .I2(diff[1]),
        .I3(\data_in_reg_n_0_[11] ),
        .I4(diff[0]),
        .I5(\data_in_reg_n_0_[12] ),
        .O(ARG__0_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    ARG__0_carry__2_i_4
       (.I0(diff[2]),
        .I1(\data_in_reg_n_0_[9] ),
        .I2(diff[1]),
        .I3(\data_in_reg_n_0_[10] ),
        .I4(diff[0]),
        .I5(\data_in_reg_n_0_[11] ),
        .O(ARG__0_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'h956A6A6A6A959595)) 
    ARG__0_carry__2_i_5
       (.I0(ARG__0_carry__2_i_1_n_0),
        .I1(\data_in_reg_n_0_[14] ),
        .I2(diff[1]),
        .I3(\data_in_reg_n_0_[13] ),
        .I4(diff[2]),
        .I5(ARG__0_carry__2_i_9_n_0),
        .O(ARG__0_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    ARG__0_carry__2_i_6
       (.I0(ARG__0_carry__2_i_2_n_0),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[12] ),
        .I3(ARG__0_carry__2_i_10_n_0),
        .I4(diff[0]),
        .I5(\data_in_reg_n_0_[14] ),
        .O(ARG__0_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    ARG__0_carry__2_i_7
       (.I0(ARG__0_carry__2_i_3_n_0),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[11] ),
        .I3(ARG__0_carry__2_i_11_n_0),
        .I4(diff[0]),
        .I5(\data_in_reg_n_0_[13] ),
        .O(ARG__0_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    ARG__0_carry__2_i_8
       (.I0(ARG__0_carry__2_i_4_n_0),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[10] ),
        .I3(ARG__0_carry__2_i_12_n_0),
        .I4(diff[0]),
        .I5(\data_in_reg_n_0_[12] ),
        .O(ARG__0_carry__2_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ARG__0_carry__2_i_9
       (.I0(diff[0]),
        .I1(\data_in_reg_n_0_[15] ),
        .O(ARG__0_carry__2_i_9_n_0));
  CARRY4 ARG__0_carry__3
       (.CI(ARG__0_carry__2_n_0),
        .CO({NLW_ARG__0_carry__3_CO_UNCONNECTED[3],ARG__0_carry__3_n_1,NLW_ARG__0_carry__3_CO_UNCONNECTED[1],ARG__0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,ARG__0_carry__3_i_1_n_0,ARG__0_carry__3_i_2_n_0}),
        .O({NLW_ARG__0_carry__3_O_UNCONNECTED[3:2],ARG__0_carry__3_n_6,ARG__0_carry__3_n_7}),
        .S({1'b0,1'b1,ARG__0_carry__3_i_3_n_0,ARG__0_carry__3_i_4_n_0}));
  LUT4 #(
    .INIT(16'h0888)) 
    ARG__0_carry__3_i_1
       (.I0(diff[2]),
        .I1(\data_in_reg_n_0_[14] ),
        .I2(diff[1]),
        .I3(\data_in_reg_n_0_[15] ),
        .O(ARG__0_carry__3_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000EAC0EAC0EAC0)) 
    ARG__0_carry__3_i_2
       (.I0(diff[1]),
        .I1(\data_in_reg_n_0_[13] ),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[14] ),
        .I4(diff[0]),
        .I5(\data_in_reg_n_0_[15] ),
        .O(ARG__0_carry__3_i_2_n_0));
  LUT4 #(
    .INIT(16'h4F3F)) 
    ARG__0_carry__3_i_3
       (.I0(diff[1]),
        .I1(\data_in_reg_n_0_[14] ),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[15] ),
        .O(ARG__0_carry__3_i_3_n_0));
  LUT6 #(
    .INIT(64'h25404FBFF03FCF3F)) 
    ARG__0_carry__3_i_4
       (.I0(diff[0]),
        .I1(\data_in_reg_n_0_[13] ),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[14] ),
        .I4(diff[1]),
        .I5(\data_in_reg_n_0_[15] ),
        .O(ARG__0_carry__3_i_4_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    ARG__0_carry_i_1
       (.I0(\data_in_reg_n_0_[3] ),
        .I1(diff[0]),
        .I2(\data_in_reg_n_0_[2] ),
        .I3(diff[1]),
        .I4(\data_in_reg_n_0_[1] ),
        .I5(diff[2]),
        .O(ARG__0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    ARG__0_carry_i_2
       (.I0(diff[1]),
        .I1(\data_in_reg_n_0_[1] ),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[0] ),
        .O(ARG__0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ARG__0_carry_i_3
       (.I0(\data_in_reg_n_0_[0] ),
        .I1(diff[1]),
        .O(ARG__0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6A953F3F6A6AC0C0)) 
    ARG__0_carry_i_4
       (.I0(\data_in_reg_n_0_[2] ),
        .I1(diff[0]),
        .I2(\data_in_reg_n_0_[3] ),
        .I3(\data_in_reg_n_0_[0] ),
        .I4(diff[1]),
        .I5(ARG__0_carry_i_8_n_0),
        .O(ARG__0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    ARG__0_carry_i_5
       (.I0(\data_in_reg_n_0_[0] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[1] ),
        .I3(diff[1]),
        .I4(\data_in_reg_n_0_[2] ),
        .I5(diff[0]),
        .O(ARG__0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    ARG__0_carry_i_6
       (.I0(\data_in_reg_n_0_[1] ),
        .I1(diff[0]),
        .I2(diff[1]),
        .I3(\data_in_reg_n_0_[0] ),
        .O(ARG__0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ARG__0_carry_i_7
       (.I0(diff[0]),
        .I1(\data_in_reg_n_0_[0] ),
        .O(ARG__0_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ARG__0_carry_i_8
       (.I0(\data_in_reg_n_0_[1] ),
        .I1(diff[2]),
        .O(ARG__0_carry_i_8_n_0));
  CARRY4 ARG__53_carry
       (.CI(1'b0),
        .CO({ARG__53_carry_n_0,ARG__53_carry_n_1,ARG__53_carry_n_2,ARG__53_carry_n_3}),
        .CYINIT(1'b0),
        .DI({ARG__53_carry_i_1_n_0,ARG__53_carry_i_2_n_0,ARG__0_carry_n_4,1'b0}),
        .O({ARG__53_carry_n_4,ARG__53_carry_n_5,ARG__53_carry_n_6,ARG__53_carry_n_7}),
        .S({ARG__53_carry_i_3_n_0,ARG__53_carry_i_4_n_0,ARG__53_carry_i_5_n_0,ARG__0_carry_n_5}));
  CARRY4 ARG__53_carry__0
       (.CI(ARG__53_carry_n_0),
        .CO({ARG__53_carry__0_n_0,ARG__53_carry__0_n_1,ARG__53_carry__0_n_2,ARG__53_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({ARG__53_carry__0_i_1_n_0,ARG__53_carry__0_i_2_n_0,ARG__53_carry__0_i_3_n_0,ARG__53_carry__0_i_4_n_0}),
        .O({ARG__53_carry__0_n_4,ARG__53_carry__0_n_5,ARG__53_carry__0_n_6,ARG__53_carry__0_n_7}),
        .S({ARG__53_carry__0_i_5_n_0,ARG__53_carry__0_i_6_n_0,ARG__53_carry__0_i_7_n_0,ARG__53_carry__0_i_8_n_0}));
  LUT5 #(
    .INIT(32'h8FFF0888)) 
    ARG__53_carry__0_i_1
       (.I0(diff[3]),
        .I1(\data_in_reg_n_0_[5] ),
        .I2(diff[4]),
        .I3(\data_in_reg_n_0_[4] ),
        .I4(ARG__0_carry__1_n_7),
        .O(ARG__53_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h8FFF0888)) 
    ARG__53_carry__0_i_2
       (.I0(diff[3]),
        .I1(\data_in_reg_n_0_[4] ),
        .I2(diff[4]),
        .I3(\data_in_reg_n_0_[3] ),
        .I4(ARG__0_carry__0_n_4),
        .O(ARG__53_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h8FFF0888)) 
    ARG__53_carry__0_i_3
       (.I0(diff[3]),
        .I1(\data_in_reg_n_0_[3] ),
        .I2(diff[4]),
        .I3(\data_in_reg_n_0_[2] ),
        .I4(ARG__0_carry__0_n_5),
        .O(ARG__53_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h8FFF0888)) 
    ARG__53_carry__0_i_4
       (.I0(diff[3]),
        .I1(\data_in_reg_n_0_[2] ),
        .I2(diff[4]),
        .I3(\data_in_reg_n_0_[1] ),
        .I4(ARG__0_carry__0_n_6),
        .O(ARG__53_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h956A6A6A6A959595)) 
    ARG__53_carry__0_i_5
       (.I0(ARG__53_carry__0_i_1_n_0),
        .I1(diff[3]),
        .I2(\data_in_reg_n_0_[6] ),
        .I3(diff[4]),
        .I4(\data_in_reg_n_0_[5] ),
        .I5(ARG__0_carry__1_n_6),
        .O(ARG__53_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h956A6A6A6A959595)) 
    ARG__53_carry__0_i_6
       (.I0(ARG__53_carry__0_i_2_n_0),
        .I1(diff[3]),
        .I2(\data_in_reg_n_0_[5] ),
        .I3(diff[4]),
        .I4(\data_in_reg_n_0_[4] ),
        .I5(ARG__0_carry__1_n_7),
        .O(ARG__53_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h956A6A6A6A959595)) 
    ARG__53_carry__0_i_7
       (.I0(ARG__53_carry__0_i_3_n_0),
        .I1(diff[3]),
        .I2(\data_in_reg_n_0_[4] ),
        .I3(diff[4]),
        .I4(\data_in_reg_n_0_[3] ),
        .I5(ARG__0_carry__0_n_4),
        .O(ARG__53_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h956A6A6A6A959595)) 
    ARG__53_carry__0_i_8
       (.I0(ARG__53_carry__0_i_4_n_0),
        .I1(diff[3]),
        .I2(\data_in_reg_n_0_[3] ),
        .I3(diff[4]),
        .I4(\data_in_reg_n_0_[2] ),
        .I5(ARG__0_carry__0_n_5),
        .O(ARG__53_carry__0_i_8_n_0));
  CARRY4 ARG__53_carry__1
       (.CI(ARG__53_carry__0_n_0),
        .CO({ARG__53_carry__1_n_0,ARG__53_carry__1_n_1,ARG__53_carry__1_n_2,ARG__53_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({ARG__53_carry__1_i_1_n_0,ARG__53_carry__1_i_2_n_0,ARG__53_carry__1_i_3_n_0,ARG__53_carry__1_i_4_n_0}),
        .O({ARG__53_carry__1_n_4,ARG__53_carry__1_n_5,ARG__53_carry__1_n_6,ARG__53_carry__1_n_7}),
        .S({ARG__53_carry__1_i_5_n_0,ARG__53_carry__1_i_6_n_0,ARG__53_carry__1_i_7_n_0,ARG__53_carry__1_i_8_n_0}));
  LUT5 #(
    .INIT(32'h8FFF0888)) 
    ARG__53_carry__1_i_1
       (.I0(diff[3]),
        .I1(\data_in_reg_n_0_[9] ),
        .I2(diff[4]),
        .I3(\data_in_reg_n_0_[8] ),
        .I4(ARG__0_carry__2_n_7),
        .O(ARG__53_carry__1_i_1_n_0));
  LUT5 #(
    .INIT(32'h8FFF0888)) 
    ARG__53_carry__1_i_2
       (.I0(diff[3]),
        .I1(\data_in_reg_n_0_[8] ),
        .I2(diff[4]),
        .I3(\data_in_reg_n_0_[7] ),
        .I4(ARG__0_carry__1_n_4),
        .O(ARG__53_carry__1_i_2_n_0));
  LUT5 #(
    .INIT(32'h8FFF0888)) 
    ARG__53_carry__1_i_3
       (.I0(diff[3]),
        .I1(\data_in_reg_n_0_[7] ),
        .I2(diff[4]),
        .I3(\data_in_reg_n_0_[6] ),
        .I4(ARG__0_carry__1_n_5),
        .O(ARG__53_carry__1_i_3_n_0));
  LUT5 #(
    .INIT(32'h8FFF0888)) 
    ARG__53_carry__1_i_4
       (.I0(diff[3]),
        .I1(\data_in_reg_n_0_[6] ),
        .I2(diff[4]),
        .I3(\data_in_reg_n_0_[5] ),
        .I4(ARG__0_carry__1_n_6),
        .O(ARG__53_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h956A6A6A6A959595)) 
    ARG__53_carry__1_i_5
       (.I0(ARG__53_carry__1_i_1_n_0),
        .I1(diff[3]),
        .I2(\data_in_reg_n_0_[10] ),
        .I3(diff[4]),
        .I4(\data_in_reg_n_0_[9] ),
        .I5(ARG__0_carry__2_n_6),
        .O(ARG__53_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h956A6A6A6A959595)) 
    ARG__53_carry__1_i_6
       (.I0(ARG__53_carry__1_i_2_n_0),
        .I1(diff[3]),
        .I2(\data_in_reg_n_0_[9] ),
        .I3(diff[4]),
        .I4(\data_in_reg_n_0_[8] ),
        .I5(ARG__0_carry__2_n_7),
        .O(ARG__53_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h956A6A6A6A959595)) 
    ARG__53_carry__1_i_7
       (.I0(ARG__53_carry__1_i_3_n_0),
        .I1(diff[3]),
        .I2(\data_in_reg_n_0_[8] ),
        .I3(diff[4]),
        .I4(\data_in_reg_n_0_[7] ),
        .I5(ARG__0_carry__1_n_4),
        .O(ARG__53_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'h956A6A6A6A959595)) 
    ARG__53_carry__1_i_8
       (.I0(ARG__53_carry__1_i_4_n_0),
        .I1(diff[3]),
        .I2(\data_in_reg_n_0_[7] ),
        .I3(diff[4]),
        .I4(\data_in_reg_n_0_[6] ),
        .I5(ARG__0_carry__1_n_5),
        .O(ARG__53_carry__1_i_8_n_0));
  CARRY4 ARG__53_carry__2
       (.CI(ARG__53_carry__1_n_0),
        .CO({ARG__53_carry__2_n_0,ARG__53_carry__2_n_1,ARG__53_carry__2_n_2,ARG__53_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({ARG__53_carry__2_i_1_n_0,ARG__53_carry__2_i_2_n_0,ARG__53_carry__2_i_3_n_0,ARG__53_carry__2_i_4_n_0}),
        .O({ARG__53_carry__2_n_4,ARG__53_carry__2_n_5,NLW_ARG__53_carry__2_O_UNCONNECTED[1],ARG__53_carry__2_n_7}),
        .S({ARG__53_carry__2_i_5_n_0,ARG__53_carry__2_i_6_n_0,ARG__53_carry__2_i_7_n_0,ARG__53_carry__2_i_8_n_0}));
  LUT6 #(
    .INIT(64'h0DFFD000D0000DFF)) 
    ARG__53_carry__2_i_1
       (.I0(\data_in_reg_n_0_[11] ),
        .I1(ARG__0_carry__2_n_4),
        .I2(\data_in_reg_n_0_[12] ),
        .I3(diff[4]),
        .I4(ARG__53_carry__2_i_9_n_0),
        .I5(ARG__0_carry__3_n_7),
        .O(ARG__53_carry__2_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h6A959595)) 
    ARG__53_carry__2_i_10
       (.I0(ARG__0_carry__3_n_6),
        .I1(diff[4]),
        .I2(\data_in_reg_n_0_[13] ),
        .I3(diff[3]),
        .I4(\data_in_reg_n_0_[14] ),
        .O(ARG__53_carry__2_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h8FFF0888)) 
    ARG__53_carry__2_i_11
       (.I0(diff[3]),
        .I1(\data_in_reg_n_0_[13] ),
        .I2(diff[4]),
        .I3(\data_in_reg_n_0_[12] ),
        .I4(ARG__0_carry__3_n_7),
        .O(ARG__53_carry__2_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h6A959595)) 
    ARG__53_carry__2_i_12
       (.I0(ARG__0_carry__3_n_7),
        .I1(diff[3]),
        .I2(\data_in_reg_n_0_[13] ),
        .I3(diff[4]),
        .I4(\data_in_reg_n_0_[12] ),
        .O(ARG__53_carry__2_i_12_n_0));
  LUT5 #(
    .INIT(32'h08888000)) 
    ARG__53_carry__2_i_2
       (.I0(diff[3]),
        .I1(\data_in_reg_n_0_[12] ),
        .I2(\data_in_reg_n_0_[11] ),
        .I3(diff[4]),
        .I4(ARG__0_carry__2_n_4),
        .O(ARG__53_carry__2_i_2_n_0));
  LUT5 #(
    .INIT(32'h87787878)) 
    ARG__53_carry__2_i_3
       (.I0(\data_in_reg_n_0_[12] ),
        .I1(diff[3]),
        .I2(ARG__0_carry__2_n_4),
        .I3(diff[4]),
        .I4(\data_in_reg_n_0_[11] ),
        .O(ARG__53_carry__2_i_3_n_0));
  LUT5 #(
    .INIT(32'h8FFF0888)) 
    ARG__53_carry__2_i_4
       (.I0(diff[3]),
        .I1(\data_in_reg_n_0_[10] ),
        .I2(diff[4]),
        .I3(\data_in_reg_n_0_[9] ),
        .I4(ARG__0_carry__2_n_6),
        .O(ARG__53_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    ARG__53_carry__2_i_5
       (.I0(ARG__53_carry__2_i_1_n_0),
        .I1(ARG__53_carry__2_i_10_n_0),
        .I2(ARG__53_carry__2_i_11_n_0),
        .O(ARG__53_carry__2_i_5_n_0));
  LUT5 #(
    .INIT(32'h96999999)) 
    ARG__53_carry__2_i_6
       (.I0(ARG__53_carry__2_i_2_n_0),
        .I1(ARG__53_carry__2_i_12_n_0),
        .I2(ARG__0_carry__2_n_4),
        .I3(diff[4]),
        .I4(\data_in_reg_n_0_[11] ),
        .O(ARG__53_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'h6555A666A666A666)) 
    ARG__53_carry__2_i_7
       (.I0(ARG__53_carry__2_i_3_n_0),
        .I1(ARG__0_carry__2_n_5),
        .I2(\data_in_reg_n_0_[10] ),
        .I3(diff[4]),
        .I4(\data_in_reg_n_0_[11] ),
        .I5(diff[3]),
        .O(ARG__53_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'h956A6A6A6A959595)) 
    ARG__53_carry__2_i_8
       (.I0(ARG__53_carry__2_i_4_n_0),
        .I1(diff[3]),
        .I2(\data_in_reg_n_0_[11] ),
        .I3(diff[4]),
        .I4(\data_in_reg_n_0_[10] ),
        .I5(ARG__0_carry__2_n_5),
        .O(ARG__53_carry__2_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ARG__53_carry__2_i_9
       (.I0(\data_in_reg_n_0_[13] ),
        .I1(diff[3]),
        .O(ARG__53_carry__2_i_9_n_0));
  CARRY4 ARG__53_carry__3
       (.CI(ARG__53_carry__2_n_0),
        .CO({NLW_ARG__53_carry__3_CO_UNCONNECTED[3:2],ARG__53_carry__3_n_2,ARG__53_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,ARG__53_carry__3_i_1_n_0,ARG__53_carry__3_i_2_n_0}),
        .O({NLW_ARG__53_carry__3_O_UNCONNECTED[3],p_0_out0,ARG__53_carry__3_n_6,ARG__53_carry__3_n_7}),
        .S({1'b0,ARG__53_carry__3_i_3_n_0,ARG__53_carry__3_i_4_n_0,ARG__53_carry__3_i_5_n_0}));
  LUT6 #(
    .INIT(64'h956A6A6A00000000)) 
    ARG__53_carry__3_i_1
       (.I0(ARG__0_carry__3_n_1),
        .I1(diff[3]),
        .I2(\data_in_reg_n_0_[15] ),
        .I3(\data_in_reg_n_0_[14] ),
        .I4(diff[4]),
        .I5(ARG__53_carry__3_i_6_n_0),
        .O(ARG__53_carry__3_i_1_n_0));
  LUT6 #(
    .INIT(64'hBF2A2A2A00000000)) 
    ARG__53_carry__3_i_2
       (.I0(ARG__0_carry__3_n_7),
        .I1(\data_in_reg_n_0_[12] ),
        .I2(diff[4]),
        .I3(\data_in_reg_n_0_[13] ),
        .I4(diff[3]),
        .I5(ARG__53_carry__2_i_10_n_0),
        .O(ARG__53_carry__3_i_2_n_0));
  LUT5 #(
    .INIT(32'hDF5FFFDF)) 
    ARG__53_carry__3_i_3
       (.I0(diff[4]),
        .I1(\data_in_reg_n_0_[14] ),
        .I2(\data_in_reg_n_0_[15] ),
        .I3(diff[3]),
        .I4(ARG__0_carry__3_n_1),
        .O(ARG__53_carry__3_i_3_n_0));
  LUT6 #(
    .INIT(64'h71EE1877E777E777)) 
    ARG__53_carry__3_i_4
       (.I0(ARG__53_carry__3_i_6_n_0),
        .I1(ARG__0_carry__3_n_1),
        .I2(diff[3]),
        .I3(\data_in_reg_n_0_[15] ),
        .I4(\data_in_reg_n_0_[14] ),
        .I5(diff[4]),
        .O(ARG__53_carry__3_i_4_n_0));
  LUT6 #(
    .INIT(64'h9666699969999666)) 
    ARG__53_carry__3_i_5
       (.I0(ARG__53_carry__3_i_2_n_0),
        .I1(ARG__53_carry__3_i_6_n_0),
        .I2(diff[4]),
        .I3(\data_in_reg_n_0_[14] ),
        .I4(ARG__53_carry__3_i_7_n_0),
        .I5(ARG__0_carry__3_n_1),
        .O(ARG__53_carry__3_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h8FFF0888)) 
    ARG__53_carry__3_i_6
       (.I0(diff[3]),
        .I1(\data_in_reg_n_0_[14] ),
        .I2(diff[4]),
        .I3(\data_in_reg_n_0_[13] ),
        .I4(ARG__0_carry__3_n_6),
        .O(ARG__53_carry__3_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ARG__53_carry__3_i_7
       (.I0(\data_in_reg_n_0_[15] ),
        .I1(diff[3]),
        .O(ARG__53_carry__3_i_7_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    ARG__53_carry_i_1
       (.I0(ARG__0_carry__0_n_7),
        .I1(diff[4]),
        .I2(\data_in_reg_n_0_[0] ),
        .O(ARG__53_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    ARG__53_carry_i_2
       (.I0(ARG__0_carry__0_n_7),
        .I1(diff[4]),
        .I2(\data_in_reg_n_0_[0] ),
        .O(ARG__53_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h956A6A6A6A959595)) 
    ARG__53_carry_i_3
       (.I0(ARG__53_carry_i_1_n_0),
        .I1(diff[3]),
        .I2(\data_in_reg_n_0_[2] ),
        .I3(diff[4]),
        .I4(\data_in_reg_n_0_[1] ),
        .I5(ARG__0_carry__0_n_6),
        .O(ARG__53_carry_i_3_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h956A6A6A)) 
    ARG__53_carry_i_4
       (.I0(ARG__0_carry__0_n_7),
        .I1(diff[4]),
        .I2(\data_in_reg_n_0_[0] ),
        .I3(diff[3]),
        .I4(\data_in_reg_n_0_[1] ),
        .O(ARG__53_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    ARG__53_carry_i_5
       (.I0(ARG__0_carry_n_4),
        .I1(diff[3]),
        .I2(\data_in_reg_n_0_[0] ),
        .O(ARG__53_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state[1]_i_3_n_0 ),
        .I2(data_out),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(aresetn),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF900090009000)) 
    \FSM_onehot_state[1]_i_3 
       (.I0(s_axis_tlast),
        .I1(tlast_expected),
        .I2(s_axis_tvalid),
        .I3(s_axis_tready),
        .I4(m_axis_tvalid),
        .I5(m_axis_tready),
        .O(\FSM_onehot_state[1]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "idle:0001,receive_data:0010,multiply:0100,send_data:1000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(\FSM_onehot_state[1]_i_1_n_0 ),
        .D(m_axis_tvalid),
        .PRE(\FSM_onehot_state[1]_i_2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "idle:0001,receive_data:0010,multiply:0100,send_data:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(\FSM_onehot_state[1]_i_1_n_0 ),
        .CLR(\FSM_onehot_state[1]_i_2_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[0] ),
        .Q(s_axis_tready));
  (* FSM_ENCODED_STATES = "idle:0001,receive_data:0010,multiply:0100,send_data:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(aclk),
        .CE(\FSM_onehot_state[1]_i_1_n_0 ),
        .CLR(\FSM_onehot_state[1]_i_2_n_0 ),
        .D(s_axis_tready),
        .Q(data_out));
  (* FSM_ENCODED_STATES = "idle:0001,receive_data:0010,multiply:0100,send_data:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(\FSM_onehot_state[1]_i_1_n_0 ),
        .CLR(\FSM_onehot_state[1]_i_2_n_0 ),
        .D(data_out),
        .Q(m_axis_tvalid));
  CARRY4 SHIFT_RIGHT3_carry
       (.CI(1'b0),
        .CO({SHIFT_RIGHT3_carry_n_0,SHIFT_RIGHT3_carry_n_1,SHIFT_RIGHT3_carry_n_2,SHIFT_RIGHT3_carry_n_3}),
        .CYINIT(SHIFT_RIGHT4[0]),
        .DI(SHIFT_RIGHT4[4:1]),
        .O({SHIFT_RIGHT3_carry_n_4,SHIFT_RIGHT3_carry_n_5,SHIFT_RIGHT3_carry_n_6,SHIFT_RIGHT3_carry_n_7}),
        .S({SHIFT_RIGHT3_carry_i_6_n_0,SHIFT_RIGHT3_carry_i_7_n_0,SHIFT_RIGHT3_carry_i_8_n_0,SHIFT_RIGHT3_carry_i_9_n_0}));
  CARRY4 SHIFT_RIGHT3_carry__0
       (.CI(SHIFT_RIGHT3_carry_n_0),
        .CO({SHIFT_RIGHT3_carry__0_n_0,SHIFT_RIGHT3_carry__0_n_1,SHIFT_RIGHT3_carry__0_n_2,SHIFT_RIGHT3_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({SHIFT_RIGHT3_carry__0_i_1_n_0,SHIFT_RIGHT4[7:5]}),
        .O({SHIFT_RIGHT3_carry__0_n_4,SHIFT_RIGHT3_carry__0_n_5,SHIFT_RIGHT3_carry__0_n_6,SHIFT_RIGHT3_carry__0_n_7}),
        .S({SHIFT_RIGHT3_carry__0_i_5_n_0,SHIFT_RIGHT3_carry__0_i_6_n_0,SHIFT_RIGHT3_carry__0_i_7_n_0,SHIFT_RIGHT3_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h0100)) 
    SHIFT_RIGHT3_carry__0_i_1
       (.I0(diff[0]),
        .I1(diff[1]),
        .I2(diff[2]),
        .I3(diff[3]),
        .O(SHIFT_RIGHT3_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h00402000)) 
    SHIFT_RIGHT3_carry__0_i_2
       (.I0(diff[2]),
        .I1(diff[4]),
        .I2(diff[0]),
        .I3(diff[1]),
        .I4(diff[3]),
        .O(SHIFT_RIGHT4[7]));
  LUT5 #(
    .INIT(32'h04000200)) 
    SHIFT_RIGHT3_carry__0_i_3
       (.I0(diff[2]),
        .I1(diff[4]),
        .I2(diff[0]),
        .I3(diff[1]),
        .I4(diff[3]),
        .O(SHIFT_RIGHT4[6]));
  LUT5 #(
    .INIT(32'h40000020)) 
    SHIFT_RIGHT3_carry__0_i_4
       (.I0(diff[2]),
        .I1(diff[4]),
        .I2(diff[0]),
        .I3(diff[1]),
        .I4(diff[3]),
        .O(SHIFT_RIGHT4[5]));
  LUT4 #(
    .INIT(16'hFFFD)) 
    SHIFT_RIGHT3_carry__0_i_5
       (.I0(diff[3]),
        .I1(diff[2]),
        .I2(diff[1]),
        .I3(diff[0]),
        .O(SHIFT_RIGHT3_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFBFDFFF)) 
    SHIFT_RIGHT3_carry__0_i_6
       (.I0(diff[3]),
        .I1(diff[1]),
        .I2(diff[0]),
        .I3(diff[4]),
        .I4(diff[2]),
        .O(SHIFT_RIGHT3_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'hFFFBF7FF)) 
    SHIFT_RIGHT3_carry__0_i_7
       (.I0(diff[3]),
        .I1(diff[1]),
        .I2(diff[0]),
        .I3(diff[4]),
        .I4(diff[2]),
        .O(SHIFT_RIGHT3_carry__0_i_7_n_0));
  LUT5 #(
    .INIT(32'hFFEF7FFF)) 
    SHIFT_RIGHT3_carry__0_i_8
       (.I0(diff[3]),
        .I1(diff[1]),
        .I2(diff[0]),
        .I3(diff[4]),
        .I4(diff[2]),
        .O(SHIFT_RIGHT3_carry__0_i_8_n_0));
  CARRY4 SHIFT_RIGHT3_carry__1
       (.CI(SHIFT_RIGHT3_carry__0_n_0),
        .CO({SHIFT_RIGHT3_carry__1_n_0,SHIFT_RIGHT3_carry__1_n_1,SHIFT_RIGHT3_carry__1_n_2,SHIFT_RIGHT3_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(SHIFT_RIGHT4[12:9]),
        .O({SHIFT_RIGHT3_carry__1_n_4,SHIFT_RIGHT3_carry__1_n_5,SHIFT_RIGHT3_carry__1_n_6,SHIFT_RIGHT3_carry__1_n_7}),
        .S({SHIFT_RIGHT3_carry__1_i_5_n_0,SHIFT_RIGHT3_carry__1_i_6_n_0,SHIFT_RIGHT3_carry__1_i_7_n_0,SHIFT_RIGHT3_carry__1_i_8_n_0}));
  LUT5 #(
    .INIT(32'h00020008)) 
    SHIFT_RIGHT3_carry__1_i_1
       (.I0(diff[2]),
        .I1(diff[4]),
        .I2(diff[0]),
        .I3(diff[1]),
        .I4(diff[3]),
        .O(SHIFT_RIGHT4[12]));
  LUT5 #(
    .INIT(32'h04002000)) 
    SHIFT_RIGHT3_carry__1_i_2
       (.I0(diff[3]),
        .I1(diff[2]),
        .I2(diff[1]),
        .I3(diff[0]),
        .I4(diff[4]),
        .O(SHIFT_RIGHT4[11]));
  LUT5 #(
    .INIT(32'h00400020)) 
    SHIFT_RIGHT3_carry__1_i_3
       (.I0(diff[3]),
        .I1(diff[2]),
        .I2(diff[1]),
        .I3(diff[0]),
        .I4(diff[4]),
        .O(SHIFT_RIGHT4[10]));
  LUT5 #(
    .INIT(32'h40000200)) 
    SHIFT_RIGHT3_carry__1_i_4
       (.I0(diff[3]),
        .I1(diff[2]),
        .I2(diff[1]),
        .I3(diff[0]),
        .I4(diff[4]),
        .O(SHIFT_RIGHT4[9]));
  LUT5 #(
    .INIT(32'hFEFDFFFF)) 
    SHIFT_RIGHT3_carry__1_i_5
       (.I0(diff[3]),
        .I1(diff[1]),
        .I2(diff[0]),
        .I3(diff[4]),
        .I4(diff[2]),
        .O(SHIFT_RIGHT3_carry__1_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFBFF7FF)) 
    SHIFT_RIGHT3_carry__1_i_6
       (.I0(diff[4]),
        .I1(diff[0]),
        .I2(diff[1]),
        .I3(diff[2]),
        .I4(diff[3]),
        .O(SHIFT_RIGHT3_carry__1_i_6_n_0));
  LUT5 #(
    .INIT(32'hFFEFDFFF)) 
    SHIFT_RIGHT3_carry__1_i_7
       (.I0(diff[4]),
        .I1(diff[0]),
        .I2(diff[1]),
        .I3(diff[2]),
        .I4(diff[3]),
        .O(SHIFT_RIGHT3_carry__1_i_7_n_0));
  LUT5 #(
    .INIT(32'hFFFB7FFF)) 
    SHIFT_RIGHT3_carry__1_i_8
       (.I0(diff[4]),
        .I1(diff[0]),
        .I2(diff[1]),
        .I3(diff[2]),
        .I4(diff[3]),
        .O(SHIFT_RIGHT3_carry__1_i_8_n_0));
  CARRY4 SHIFT_RIGHT3_carry__2
       (.CI(SHIFT_RIGHT3_carry__1_n_0),
        .CO({NLW_SHIFT_RIGHT3_carry__2_CO_UNCONNECTED[3:2],SHIFT_RIGHT3_carry__2_n_2,SHIFT_RIGHT3_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,SHIFT_RIGHT4[14:13]}),
        .O({NLW_SHIFT_RIGHT3_carry__2_O_UNCONNECTED[3],SHIFT_RIGHT3_carry__2_n_5,SHIFT_RIGHT3_carry__2_n_6,SHIFT_RIGHT3_carry__2_n_7}),
        .S({1'b0,SHIFT_RIGHT3_carry__2_i_3_n_0,SHIFT_RIGHT3_carry__2_i_4_n_0,SHIFT_RIGHT3_carry__2_i_5_n_0}));
  LUT5 #(
    .INIT(32'h02000400)) 
    SHIFT_RIGHT3_carry__2_i_1
       (.I0(diff[2]),
        .I1(diff[4]),
        .I2(diff[0]),
        .I3(diff[1]),
        .I4(diff[3]),
        .O(SHIFT_RIGHT4[14]));
  LUT5 #(
    .INIT(32'h10000080)) 
    SHIFT_RIGHT3_carry__2_i_2
       (.I0(diff[2]),
        .I1(diff[3]),
        .I2(diff[0]),
        .I3(diff[4]),
        .I4(diff[1]),
        .O(SHIFT_RIGHT4[13]));
  LUT5 #(
    .INIT(32'hDFFFFFBF)) 
    SHIFT_RIGHT3_carry__2_i_3
       (.I0(diff[2]),
        .I1(diff[4]),
        .I2(diff[0]),
        .I3(diff[1]),
        .I4(diff[3]),
        .O(SHIFT_RIGHT3_carry__2_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFF7FBFF)) 
    SHIFT_RIGHT3_carry__2_i_4
       (.I0(diff[3]),
        .I1(diff[1]),
        .I2(diff[0]),
        .I3(diff[4]),
        .I4(diff[2]),
        .O(SHIFT_RIGHT3_carry__2_i_4_n_0));
  LUT5 #(
    .INIT(32'hEFFFFF7F)) 
    SHIFT_RIGHT3_carry__2_i_5
       (.I0(diff[1]),
        .I1(diff[4]),
        .I2(diff[0]),
        .I3(diff[3]),
        .I4(diff[2]),
        .O(SHIFT_RIGHT3_carry__2_i_5_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    SHIFT_RIGHT3_carry_i_1
       (.I0(diff[3]),
        .I1(diff[2]),
        .I2(diff[1]),
        .I3(diff[0]),
        .I4(diff[4]),
        .O(SHIFT_RIGHT4[0]));
  LUT5 #(
    .INIT(32'h00080002)) 
    SHIFT_RIGHT3_carry_i_2
       (.I0(diff[2]),
        .I1(diff[4]),
        .I2(diff[0]),
        .I3(diff[1]),
        .I4(diff[3]),
        .O(SHIFT_RIGHT4[4]));
  LUT5 #(
    .INIT(32'h08000040)) 
    SHIFT_RIGHT3_carry_i_3
       (.I0(diff[4]),
        .I1(diff[0]),
        .I2(diff[1]),
        .I3(diff[2]),
        .I4(diff[3]),
        .O(SHIFT_RIGHT4[3]));
  LUT5 #(
    .INIT(32'h20000010)) 
    SHIFT_RIGHT3_carry_i_4
       (.I0(diff[4]),
        .I1(diff[0]),
        .I2(diff[1]),
        .I3(diff[2]),
        .I4(diff[3]),
        .O(SHIFT_RIGHT4[2]));
  LUT5 #(
    .INIT(32'h80000004)) 
    SHIFT_RIGHT3_carry_i_5
       (.I0(diff[4]),
        .I1(diff[0]),
        .I2(diff[1]),
        .I3(diff[2]),
        .I4(diff[3]),
        .O(SHIFT_RIGHT4[1]));
  LUT5 #(
    .INIT(32'hFDFEFFFF)) 
    SHIFT_RIGHT3_carry_i_6
       (.I0(diff[3]),
        .I1(diff[1]),
        .I2(diff[0]),
        .I3(diff[4]),
        .I4(diff[2]),
        .O(SHIFT_RIGHT3_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'hF7FFEFFF)) 
    SHIFT_RIGHT3_carry_i_7
       (.I0(diff[3]),
        .I1(diff[2]),
        .I2(diff[1]),
        .I3(diff[0]),
        .I4(diff[4]),
        .O(SHIFT_RIGHT3_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'hFF7FFFEF)) 
    SHIFT_RIGHT3_carry_i_8
       (.I0(diff[3]),
        .I1(diff[2]),
        .I2(diff[1]),
        .I3(diff[0]),
        .I4(diff[4]),
        .O(SHIFT_RIGHT3_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'h7FFFFEFF)) 
    SHIFT_RIGHT3_carry_i_9
       (.I0(diff[3]),
        .I1(diff[2]),
        .I2(diff[1]),
        .I3(diff[0]),
        .I4(diff[4]),
        .O(SHIFT_RIGHT3_carry_i_9_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    \data_in[15]_i_1 
       (.I0(s_axis_tvalid),
        .I1(aresetn),
        .I2(s_axis_tready),
        .O(data_in0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[0] 
       (.C(aclk),
        .CE(data_in0),
        .D(s_axis_tdata[0]),
        .Q(\data_in_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[10] 
       (.C(aclk),
        .CE(data_in0),
        .D(s_axis_tdata[10]),
        .Q(\data_in_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[11] 
       (.C(aclk),
        .CE(data_in0),
        .D(s_axis_tdata[11]),
        .Q(\data_in_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[12] 
       (.C(aclk),
        .CE(data_in0),
        .D(s_axis_tdata[12]),
        .Q(\data_in_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[13] 
       (.C(aclk),
        .CE(data_in0),
        .D(s_axis_tdata[13]),
        .Q(\data_in_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[14] 
       (.C(aclk),
        .CE(data_in0),
        .D(s_axis_tdata[14]),
        .Q(\data_in_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[15] 
       (.C(aclk),
        .CE(data_in0),
        .D(s_axis_tdata[15]),
        .Q(\data_in_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[1] 
       (.C(aclk),
        .CE(data_in0),
        .D(s_axis_tdata[1]),
        .Q(\data_in_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[2] 
       (.C(aclk),
        .CE(data_in0),
        .D(s_axis_tdata[2]),
        .Q(\data_in_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[3] 
       (.C(aclk),
        .CE(data_in0),
        .D(s_axis_tdata[3]),
        .Q(\data_in_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[4] 
       (.C(aclk),
        .CE(data_in0),
        .D(s_axis_tdata[4]),
        .Q(\data_in_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[5] 
       (.C(aclk),
        .CE(data_in0),
        .D(s_axis_tdata[5]),
        .Q(\data_in_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[6] 
       (.C(aclk),
        .CE(data_in0),
        .D(s_axis_tdata[6]),
        .Q(\data_in_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[7] 
       (.C(aclk),
        .CE(data_in0),
        .D(s_axis_tdata[7]),
        .Q(\data_in_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[8] 
       (.C(aclk),
        .CE(data_in0),
        .D(s_axis_tdata[8]),
        .Q(\data_in_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[9] 
       (.C(aclk),
        .CE(data_in0),
        .D(s_axis_tdata[9]),
        .Q(\data_in_reg_n_0_[9] ),
        .R(1'b0));
  CARRY4 data_out1_carry
       (.CI(1'b0),
        .CO({NLW_data_out1_carry_CO_UNCONNECTED[3],data_out12_in,data_out1_carry_n_2,data_out1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,data_out1_carry_i_1_n_0,data_out1_carry_i_2_n_0}),
        .O(NLW_data_out1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,data_out1_carry_i_3_n_0,data_out1_carry_i_4_n_0,data_out1_carry_i_5_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    data_out1_carry_i_1
       (.I0(ARG__53_carry__3_n_6),
        .I1(ARG__53_carry__3_n_7),
        .O(data_out1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_out1_carry_i_2
       (.I0(ARG__53_carry__2_n_4),
        .I1(ARG__53_carry__2_n_5),
        .O(data_out1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_out1_carry_i_3
       (.I0(p_0_out0),
        .O(data_out1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out1_carry_i_4
       (.I0(ARG__53_carry__3_n_7),
        .I1(ARG__53_carry__3_n_6),
        .O(data_out1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_out1_carry_i_5
       (.I0(ARG__53_carry__2_n_5),
        .I1(ARG__53_carry__2_n_4),
        .O(data_out1_carry_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hEFE0)) 
    \data_out[0]_i_1 
       (.I0(ARG__0_carry_n_7),
        .I1(data_out12_in),
        .I2(\data_out[7]_i_3_n_0 ),
        .I3(\data_in_reg_n_0_[0] ),
        .O(\data_out[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEAAAEAA)) 
    \data_out[10]_i_1 
       (.I0(\data_out[10]_i_2_n_0 ),
        .I1(\data_out[11]_i_2_n_0 ),
        .I2(diff[0]),
        .I3(\data_out[14]_i_3_n_0 ),
        .I4(\data_out[10]_i_3_n_0 ),
        .O(\data_out[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFE0EFE0EFE0)) 
    \data_out[10]_i_2 
       (.I0(data_out12_in),
        .I1(ARG__53_carry__1_n_7),
        .I2(\data_out[7]_i_3_n_0 ),
        .I3(\data_out[10]_i_4_n_0 ),
        .I4(\data_out[14]_i_8_n_0 ),
        .I5(SHIFT_RIGHT3_carry__1_n_6),
        .O(\data_out[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \data_out[10]_i_3 
       (.I0(\data_in_reg_n_0_[3] ),
        .I1(\data_out[10]_i_5_n_0 ),
        .I2(\data_in_reg_n_0_[7] ),
        .I3(\data_out[10]_i_6_n_0 ),
        .I4(\data_out[15]_i_10_n_0 ),
        .I5(\data_out[12]_i_4_n_0 ),
        .O(\data_out[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_out[10]_i_4 
       (.I0(\data_in_reg_n_0_[10] ),
        .I1(diff[4]),
        .O(\data_out[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h666A)) 
    \data_out[10]_i_5 
       (.I0(diff[2]),
        .I1(diff[4]),
        .I2(diff[0]),
        .I3(diff[1]),
        .O(\data_out[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h5556AAAA)) 
    \data_out[10]_i_6 
       (.I0(diff[3]),
        .I1(diff[2]),
        .I2(diff[1]),
        .I3(diff[0]),
        .I4(diff[4]),
        .O(\data_out[10]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFE020)) 
    \data_out[11]_i_1 
       (.I0(\data_out[12]_i_2_n_0 ),
        .I1(diff[0]),
        .I2(\data_out[14]_i_3_n_0 ),
        .I3(\data_out[11]_i_2_n_0 ),
        .I4(\data_out[11]_i_3_n_0 ),
        .O(\data_out[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEABF2A80)) 
    \data_out[11]_i_2 
       (.I0(\data_out[11]_i_4_n_0 ),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(diff[1]),
        .I4(\data_out[13]_i_4_n_0 ),
        .O(\data_out[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFE0EFE0EFE0)) 
    \data_out[11]_i_3 
       (.I0(data_out12_in),
        .I1(ARG__53_carry__1_n_6),
        .I2(\data_out[7]_i_3_n_0 ),
        .I3(\data_out[11]_i_5_n_0 ),
        .I4(\data_out[14]_i_8_n_0 ),
        .I5(SHIFT_RIGHT3_carry__1_n_5),
        .O(\data_out[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0A0ACFC0)) 
    \data_out[11]_i_4 
       (.I0(\data_in_reg_n_0_[4] ),
        .I1(\data_in_reg_n_0_[0] ),
        .I2(\data_out[10]_i_6_n_0 ),
        .I3(\data_in_reg_n_0_[8] ),
        .I4(\data_out[10]_i_5_n_0 ),
        .O(\data_out[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_out[11]_i_5 
       (.I0(\data_in_reg_n_0_[11] ),
        .I1(diff[4]),
        .O(\data_out[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFE020)) 
    \data_out[12]_i_1 
       (.I0(\data_out[13]_i_2_n_0 ),
        .I1(diff[0]),
        .I2(\data_out[14]_i_3_n_0 ),
        .I3(\data_out[12]_i_2_n_0 ),
        .I4(\data_out[12]_i_3_n_0 ),
        .O(\data_out[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hEABF2A80)) 
    \data_out[12]_i_2 
       (.I0(\data_out[12]_i_4_n_0 ),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(diff[1]),
        .I4(\data_out[14]_i_6_n_0 ),
        .O(\data_out[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFE0EFE0EFE0)) 
    \data_out[12]_i_3 
       (.I0(data_out12_in),
        .I1(ARG__53_carry__1_n_5),
        .I2(\data_out[7]_i_3_n_0 ),
        .I3(\data_out[12]_i_5_n_0 ),
        .I4(\data_out[14]_i_8_n_0 ),
        .I5(SHIFT_RIGHT3_carry__1_n_4),
        .O(\data_out[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0A0ACFC0)) 
    \data_out[12]_i_4 
       (.I0(\data_in_reg_n_0_[5] ),
        .I1(\data_in_reg_n_0_[1] ),
        .I2(\data_out[10]_i_6_n_0 ),
        .I3(\data_in_reg_n_0_[9] ),
        .I4(\data_out[10]_i_5_n_0 ),
        .O(\data_out[12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_out[12]_i_5 
       (.I0(\data_in_reg_n_0_[12] ),
        .I1(diff[4]),
        .O(\data_out[12]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFE020)) 
    \data_out[13]_i_1 
       (.I0(\data_out[14]_i_4_n_0 ),
        .I1(diff[0]),
        .I2(\data_out[14]_i_3_n_0 ),
        .I3(\data_out[13]_i_2_n_0 ),
        .I4(\data_out[13]_i_3_n_0 ),
        .O(\data_out[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3AAAA333)) 
    \data_out[13]_i_2 
       (.I0(\data_out[13]_i_4_n_0 ),
        .I1(\data_out[15]_i_7_n_0 ),
        .I2(diff[0]),
        .I3(diff[4]),
        .I4(diff[1]),
        .O(\data_out[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFE0EFE0EFE0)) 
    \data_out[13]_i_3 
       (.I0(data_out12_in),
        .I1(ARG__53_carry__1_n_4),
        .I2(\data_out[7]_i_3_n_0 ),
        .I3(\data_out[13]_i_5_n_0 ),
        .I4(\data_out[14]_i_8_n_0 ),
        .I5(SHIFT_RIGHT3_carry__2_n_7),
        .O(\data_out[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0A0ACFC0)) 
    \data_out[13]_i_4 
       (.I0(\data_in_reg_n_0_[6] ),
        .I1(\data_in_reg_n_0_[2] ),
        .I2(\data_out[10]_i_6_n_0 ),
        .I3(\data_in_reg_n_0_[10] ),
        .I4(\data_out[10]_i_5_n_0 ),
        .O(\data_out[13]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_out[13]_i_5 
       (.I0(\data_in_reg_n_0_[13] ),
        .I1(diff[4]),
        .O(\data_out[13]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB010)) 
    \data_out[14]_i_1 
       (.I0(diff[0]),
        .I1(\data_out[14]_i_2_n_0 ),
        .I2(\data_out[14]_i_3_n_0 ),
        .I3(\data_out[14]_i_4_n_0 ),
        .I4(\data_out[14]_i_5_n_0 ),
        .O(\data_out[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEABF2A80)) 
    \data_out[14]_i_2 
       (.I0(\data_out[15]_i_7_n_0 ),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(diff[1]),
        .I4(\data_out[15]_i_8_n_0 ),
        .O(\data_out[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \data_out[14]_i_3 
       (.I0(diff[4]),
        .I1(diff[3]),
        .I2(diff[2]),
        .I3(diff[1]),
        .I4(diff[0]),
        .O(\data_out[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h3AAAA333)) 
    \data_out[14]_i_4 
       (.I0(\data_out[14]_i_6_n_0 ),
        .I1(\data_out[15]_i_9_n_0 ),
        .I2(diff[0]),
        .I3(diff[4]),
        .I4(diff[1]),
        .O(\data_out[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFE0EFE0EFE0)) 
    \data_out[14]_i_5 
       (.I0(data_out12_in),
        .I1(ARG__53_carry__2_n_7),
        .I2(\data_out[7]_i_3_n_0 ),
        .I3(\data_out[14]_i_7_n_0 ),
        .I4(\data_out[14]_i_8_n_0 ),
        .I5(SHIFT_RIGHT3_carry__2_n_6),
        .O(\data_out[14]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0A0ACFC0)) 
    \data_out[14]_i_6 
       (.I0(\data_in_reg_n_0_[7] ),
        .I1(\data_in_reg_n_0_[3] ),
        .I2(\data_out[10]_i_6_n_0 ),
        .I3(\data_in_reg_n_0_[11] ),
        .I4(\data_out[10]_i_5_n_0 ),
        .O(\data_out[14]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_out[14]_i_7 
       (.I0(\data_in_reg_n_0_[14] ),
        .I1(diff[4]),
        .O(\data_out[14]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[14]_i_8 
       (.I0(\data_in_reg_n_0_[0] ),
        .I1(diff[4]),
        .O(\data_out[14]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[15]_i_1 
       (.I0(aresetn),
        .I1(data_out),
        .O(data_out0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \data_out[15]_i_10 
       (.I0(diff[0]),
        .I1(diff[4]),
        .I2(diff[1]),
        .O(\data_out[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out[15]_i_11 
       (.I0(\data_in_reg_n_0_[3] ),
        .I1(\data_in_reg_n_0_[11] ),
        .I2(\data_out[10]_i_5_n_0 ),
        .I3(\data_in_reg_n_0_[7] ),
        .I4(\data_out[10]_i_6_n_0 ),
        .I5(\data_in_reg_n_0_[15] ),
        .O(\data_out[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0A0A0F3F300FF)) 
    \data_out[15]_i_2 
       (.I0(\data_in_reg_n_0_[15] ),
        .I1(\data_out[15]_i_3_n_0 ),
        .I2(\data_out[15]_i_4_n_0 ),
        .I3(\data_out[15]_i_5_n_0 ),
        .I4(diff[4]),
        .I5(\data_out[15]_i_6_n_0 ),
        .O(\data_out[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[15]_i_3 
       (.I0(\data_out[15]_i_7_n_0 ),
        .I1(\data_out[15]_i_8_n_0 ),
        .I2(diff[0]),
        .I3(\data_out[15]_i_9_n_0 ),
        .I4(\data_out[15]_i_10_n_0 ),
        .I5(\data_out[15]_i_11_n_0 ),
        .O(\data_out[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \data_out[15]_i_4 
       (.I0(SHIFT_RIGHT3_carry__2_n_5),
        .I1(\data_in_reg_n_0_[0] ),
        .I2(diff[4]),
        .O(\data_out[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[15]_i_5 
       (.I0(p_0_out0),
        .I1(data_out12_in),
        .O(\data_out[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \data_out[15]_i_6 
       (.I0(diff[0]),
        .I1(diff[1]),
        .I2(diff[2]),
        .I3(diff[3]),
        .O(\data_out[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out[15]_i_7 
       (.I0(\data_in_reg_n_0_[0] ),
        .I1(\data_in_reg_n_0_[8] ),
        .I2(\data_out[10]_i_5_n_0 ),
        .I3(\data_in_reg_n_0_[4] ),
        .I4(\data_out[10]_i_6_n_0 ),
        .I5(\data_in_reg_n_0_[12] ),
        .O(\data_out[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out[15]_i_8 
       (.I0(\data_in_reg_n_0_[2] ),
        .I1(\data_in_reg_n_0_[10] ),
        .I2(\data_out[10]_i_5_n_0 ),
        .I3(\data_in_reg_n_0_[6] ),
        .I4(\data_out[10]_i_6_n_0 ),
        .I5(\data_in_reg_n_0_[14] ),
        .O(\data_out[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out[15]_i_9 
       (.I0(\data_in_reg_n_0_[1] ),
        .I1(\data_in_reg_n_0_[9] ),
        .I2(\data_out[10]_i_5_n_0 ),
        .I3(\data_in_reg_n_0_[5] ),
        .I4(\data_out[10]_i_6_n_0 ),
        .I5(\data_in_reg_n_0_[13] ),
        .O(\data_out[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hE0E0E0E0EFEFEFE0)) 
    \data_out[1]_i_1 
       (.I0(data_out12_in),
        .I1(ARG__0_carry_n_6),
        .I2(\data_out[7]_i_3_n_0 ),
        .I3(diff[4]),
        .I4(\data_in_reg_n_0_[1] ),
        .I5(\data_out[1]_i_2_n_0 ),
        .O(\data_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF00FE00FF00)) 
    \data_out[1]_i_2 
       (.I0(\data_out[10]_i_5_n_0 ),
        .I1(\data_out[10]_i_6_n_0 ),
        .I2(\data_out[1]_i_3_n_0 ),
        .I3(diff[4]),
        .I4(\data_in_reg_n_0_[0] ),
        .I5(SHIFT_RIGHT3_carry_n_7),
        .O(\data_out[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \data_out[1]_i_3 
       (.I0(diff[1]),
        .I1(diff[4]),
        .I2(diff[0]),
        .O(\data_out[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFF444F4)) 
    \data_out[2]_i_1 
       (.I0(\data_out[2]_i_2_n_0 ),
        .I1(\data_out[14]_i_3_n_0 ),
        .I2(\data_out[2]_i_3_n_0 ),
        .I3(\data_out[7]_i_3_n_0 ),
        .I4(ARG__53_carry_n_7),
        .I5(data_out12_in),
        .O(\data_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFFFFEF0000)) 
    \data_out[2]_i_2 
       (.I0(\data_out[15]_i_10_n_0 ),
        .I1(\data_out[10]_i_5_n_0 ),
        .I2(\data_in_reg_n_0_[1] ),
        .I3(\data_out[10]_i_6_n_0 ),
        .I4(diff[0]),
        .I5(\data_out[3]_i_4_n_0 ),
        .O(\data_out[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \data_out[2]_i_3 
       (.I0(\data_in_reg_n_0_[2] ),
        .I1(\data_in_reg_n_0_[0] ),
        .I2(diff[4]),
        .I3(SHIFT_RIGHT3_carry_n_6),
        .O(\data_out[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEEE2)) 
    \data_out[3]_i_1 
       (.I0(\data_out[3]_i_2_n_0 ),
        .I1(\data_out[7]_i_3_n_0 ),
        .I2(ARG__53_carry_n_6),
        .I3(data_out12_in),
        .I4(\data_out[3]_i_3_n_0 ),
        .O(\data_out[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \data_out[3]_i_2 
       (.I0(\data_in_reg_n_0_[3] ),
        .I1(\data_in_reg_n_0_[0] ),
        .I2(diff[4]),
        .I3(SHIFT_RIGHT3_carry_n_5),
        .O(\data_out[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4C40)) 
    \data_out[3]_i_3 
       (.I0(\data_out[3]_i_4_n_0 ),
        .I1(\data_out[14]_i_3_n_0 ),
        .I2(diff[0]),
        .I3(\data_out[4]_i_4_n_0 ),
        .O(\data_out[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF4F7)) 
    \data_out[3]_i_4 
       (.I0(\data_in_reg_n_0_[0] ),
        .I1(\data_out[15]_i_10_n_0 ),
        .I2(\data_out[10]_i_6_n_0 ),
        .I3(\data_in_reg_n_0_[2] ),
        .I4(\data_out[10]_i_5_n_0 ),
        .O(\data_out[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEEE2)) 
    \data_out[4]_i_1 
       (.I0(\data_out[4]_i_2_n_0 ),
        .I1(\data_out[7]_i_3_n_0 ),
        .I2(ARG__53_carry_n_5),
        .I3(data_out12_in),
        .I4(\data_out[4]_i_3_n_0 ),
        .O(\data_out[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \data_out[4]_i_2 
       (.I0(\data_in_reg_n_0_[4] ),
        .I1(\data_in_reg_n_0_[0] ),
        .I2(diff[4]),
        .I3(SHIFT_RIGHT3_carry_n_4),
        .O(\data_out[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    \data_out[4]_i_3 
       (.I0(\data_out[5]_i_4_n_0 ),
        .I1(\data_out[14]_i_3_n_0 ),
        .I2(diff[0]),
        .I3(\data_out[4]_i_4_n_0 ),
        .O(\data_out[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \data_out[4]_i_4 
       (.I0(\data_in_reg_n_0_[1] ),
        .I1(\data_out[15]_i_10_n_0 ),
        .I2(\data_out[10]_i_6_n_0 ),
        .I3(\data_in_reg_n_0_[3] ),
        .I4(\data_out[10]_i_5_n_0 ),
        .O(\data_out[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEEE2)) 
    \data_out[5]_i_1 
       (.I0(\data_out[5]_i_2_n_0 ),
        .I1(\data_out[7]_i_3_n_0 ),
        .I2(ARG__53_carry_n_4),
        .I3(data_out12_in),
        .I4(\data_out[5]_i_3_n_0 ),
        .O(\data_out[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \data_out[5]_i_2 
       (.I0(\data_in_reg_n_0_[5] ),
        .I1(\data_in_reg_n_0_[0] ),
        .I2(diff[4]),
        .I3(SHIFT_RIGHT3_carry__0_n_7),
        .O(\data_out[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8C80)) 
    \data_out[5]_i_3 
       (.I0(\data_out[5]_i_4_n_0 ),
        .I1(\data_out[14]_i_3_n_0 ),
        .I2(diff[0]),
        .I3(\data_out[6]_i_4_n_0 ),
        .O(\data_out[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \data_out[5]_i_4 
       (.I0(\data_in_reg_n_0_[2] ),
        .I1(\data_out[15]_i_10_n_0 ),
        .I2(\data_in_reg_n_0_[0] ),
        .I3(\data_out[10]_i_5_n_0 ),
        .I4(\data_in_reg_n_0_[4] ),
        .I5(\data_out[10]_i_6_n_0 ),
        .O(\data_out[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEEE2)) 
    \data_out[6]_i_1 
       (.I0(\data_out[6]_i_2_n_0 ),
        .I1(\data_out[7]_i_3_n_0 ),
        .I2(ARG__53_carry__0_n_7),
        .I3(data_out12_in),
        .I4(\data_out[6]_i_3_n_0 ),
        .O(\data_out[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \data_out[6]_i_2 
       (.I0(\data_in_reg_n_0_[6] ),
        .I1(\data_in_reg_n_0_[0] ),
        .I2(diff[4]),
        .I3(SHIFT_RIGHT3_carry__0_n_6),
        .O(\data_out[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8C8C8C8080808C80)) 
    \data_out[6]_i_3 
       (.I0(\data_out[6]_i_4_n_0 ),
        .I1(\data_out[14]_i_3_n_0 ),
        .I2(diff[0]),
        .I3(\data_out[7]_i_6_n_0 ),
        .I4(\data_out[15]_i_10_n_0 ),
        .I5(\data_out[7]_i_5_n_0 ),
        .O(\data_out[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \data_out[6]_i_4 
       (.I0(\data_in_reg_n_0_[3] ),
        .I1(\data_out[15]_i_10_n_0 ),
        .I2(\data_in_reg_n_0_[1] ),
        .I3(\data_out[10]_i_5_n_0 ),
        .I4(\data_in_reg_n_0_[5] ),
        .I5(\data_out[10]_i_6_n_0 ),
        .O(\data_out[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEEE2)) 
    \data_out[7]_i_1 
       (.I0(\data_out[7]_i_2_n_0 ),
        .I1(\data_out[7]_i_3_n_0 ),
        .I2(ARG__53_carry__0_n_6),
        .I3(data_out12_in),
        .I4(\data_out[7]_i_4_n_0 ),
        .O(\data_out[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \data_out[7]_i_2 
       (.I0(\data_in_reg_n_0_[7] ),
        .I1(\data_in_reg_n_0_[0] ),
        .I2(diff[4]),
        .I3(SHIFT_RIGHT3_carry__0_n_5),
        .O(\data_out[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h55555554)) 
    \data_out[7]_i_3 
       (.I0(diff[4]),
        .I1(diff[3]),
        .I2(diff[2]),
        .I3(diff[1]),
        .I4(diff[0]),
        .O(\data_out[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB800FF00B8000000)) 
    \data_out[7]_i_4 
       (.I0(\data_out[7]_i_5_n_0 ),
        .I1(\data_out[15]_i_10_n_0 ),
        .I2(\data_out[7]_i_6_n_0 ),
        .I3(\data_out[14]_i_3_n_0 ),
        .I4(diff[0]),
        .I5(\data_out[8]_i_3_n_0 ),
        .O(\data_out[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \data_out[7]_i_5 
       (.I0(\data_in_reg_n_0_[0] ),
        .I1(\data_out[10]_i_5_n_0 ),
        .I2(\data_in_reg_n_0_[4] ),
        .I3(\data_out[10]_i_6_n_0 ),
        .O(\data_out[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \data_out[7]_i_6 
       (.I0(\data_in_reg_n_0_[2] ),
        .I1(\data_out[10]_i_5_n_0 ),
        .I2(\data_in_reg_n_0_[6] ),
        .I3(\data_out[10]_i_6_n_0 ),
        .O(\data_out[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hEFAAEAAA)) 
    \data_out[8]_i_1 
       (.I0(\data_out[8]_i_2_n_0 ),
        .I1(\data_out[8]_i_3_n_0 ),
        .I2(diff[0]),
        .I3(\data_out[14]_i_3_n_0 ),
        .I4(\data_out[9]_i_3_n_0 ),
        .O(\data_out[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFE0EFE0EFE0)) 
    \data_out[8]_i_2 
       (.I0(data_out12_in),
        .I1(ARG__53_carry__0_n_5),
        .I2(\data_out[7]_i_3_n_0 ),
        .I3(\data_out[8]_i_4_n_0 ),
        .I4(\data_out[14]_i_8_n_0 ),
        .I5(SHIFT_RIGHT3_carry__0_n_4),
        .O(\data_out[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[8]_i_3 
       (.I0(\data_out[8]_i_5_n_0 ),
        .I1(\data_out[8]_i_6_n_0 ),
        .I2(\data_out[15]_i_10_n_0 ),
        .I3(\data_out[8]_i_7_n_0 ),
        .I4(\data_out[10]_i_5_n_0 ),
        .I5(\data_out[8]_i_8_n_0 ),
        .O(\data_out[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_out[8]_i_4 
       (.I0(\data_in_reg_n_0_[8] ),
        .I1(diff[4]),
        .O(\data_out[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h888888802222222A)) 
    \data_out[8]_i_5 
       (.I0(\data_in_reg_n_0_[1] ),
        .I1(diff[4]),
        .I2(diff[0]),
        .I3(diff[1]),
        .I4(diff[2]),
        .I5(diff[3]),
        .O(\data_out[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h888888802222222A)) 
    \data_out[8]_i_6 
       (.I0(\data_in_reg_n_0_[5] ),
        .I1(diff[4]),
        .I2(diff[0]),
        .I3(diff[1]),
        .I4(diff[2]),
        .I5(diff[3]),
        .O(\data_out[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h888888802222222A)) 
    \data_out[8]_i_7 
       (.I0(\data_in_reg_n_0_[3] ),
        .I1(diff[4]),
        .I2(diff[0]),
        .I3(diff[1]),
        .I4(diff[2]),
        .I5(diff[3]),
        .O(\data_out[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h888888802222222A)) 
    \data_out[8]_i_8 
       (.I0(\data_in_reg_n_0_[7] ),
        .I1(diff[4]),
        .I2(diff[0]),
        .I3(diff[1]),
        .I4(diff[2]),
        .I5(diff[3]),
        .O(\data_out[8]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFEAAAEAA)) 
    \data_out[9]_i_1 
       (.I0(\data_out[9]_i_2_n_0 ),
        .I1(\data_out[10]_i_3_n_0 ),
        .I2(diff[0]),
        .I3(\data_out[14]_i_3_n_0 ),
        .I4(\data_out[9]_i_3_n_0 ),
        .O(\data_out[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFE0EFE0EFE0)) 
    \data_out[9]_i_2 
       (.I0(data_out12_in),
        .I1(ARG__53_carry__0_n_4),
        .I2(\data_out[7]_i_3_n_0 ),
        .I3(\data_out[9]_i_4_n_0 ),
        .I4(\data_out[14]_i_8_n_0 ),
        .I5(SHIFT_RIGHT3_carry__1_n_7),
        .O(\data_out[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \data_out[9]_i_3 
       (.I0(\data_in_reg_n_0_[2] ),
        .I1(\data_out[10]_i_5_n_0 ),
        .I2(\data_in_reg_n_0_[6] ),
        .I3(\data_out[10]_i_6_n_0 ),
        .I4(\data_out[15]_i_10_n_0 ),
        .I5(\data_out[11]_i_4_n_0 ),
        .O(\data_out[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_out[9]_i_4 
       (.I0(\data_in_reg_n_0_[9] ),
        .I1(diff[4]),
        .O(\data_out[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(aclk),
        .CE(data_out0),
        .D(\data_out[0]_i_1_n_0 ),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[10] 
       (.C(aclk),
        .CE(data_out0),
        .D(\data_out[10]_i_1_n_0 ),
        .Q(m_axis_tdata[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[11] 
       (.C(aclk),
        .CE(data_out0),
        .D(\data_out[11]_i_1_n_0 ),
        .Q(m_axis_tdata[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[12] 
       (.C(aclk),
        .CE(data_out0),
        .D(\data_out[12]_i_1_n_0 ),
        .Q(m_axis_tdata[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[13] 
       (.C(aclk),
        .CE(data_out0),
        .D(\data_out[13]_i_1_n_0 ),
        .Q(m_axis_tdata[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[14] 
       (.C(aclk),
        .CE(data_out0),
        .D(\data_out[14]_i_1_n_0 ),
        .Q(m_axis_tdata[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[15] 
       (.C(aclk),
        .CE(data_out0),
        .D(\data_out[15]_i_2_n_0 ),
        .Q(m_axis_tdata[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(aclk),
        .CE(data_out0),
        .D(\data_out[1]_i_1_n_0 ),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(aclk),
        .CE(data_out0),
        .D(\data_out[2]_i_1_n_0 ),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(aclk),
        .CE(data_out0),
        .D(\data_out[3]_i_1_n_0 ),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(aclk),
        .CE(data_out0),
        .D(\data_out[4]_i_1_n_0 ),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(aclk),
        .CE(data_out0),
        .D(\data_out[5]_i_1_n_0 ),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(aclk),
        .CE(data_out0),
        .D(\data_out[6]_i_1_n_0 ),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(aclk),
        .CE(data_out0),
        .D(\data_out[7]_i_1_n_0 ),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[8] 
       (.C(aclk),
        .CE(data_out0),
        .D(\data_out[8]_i_1_n_0 ),
        .Q(m_axis_tdata[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[9] 
       (.C(aclk),
        .CE(data_out0),
        .D(\data_out[9]_i_1_n_0 ),
        .Q(m_axis_tdata[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \diff[0]_i_1 
       (.I0(volume_reg[0]),
        .O(B[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \diff[1]_i_1 
       (.I0(volume_reg[1]),
        .I1(volume_reg[0]),
        .O(B[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \diff[2]_i_1 
       (.I0(volume_reg[2]),
        .I1(volume_reg[0]),
        .I2(volume_reg[1]),
        .O(B[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h9555)) 
    \diff[3]_i_1 
       (.I0(volume_reg[3]),
        .I1(volume_reg[1]),
        .I2(volume_reg[0]),
        .I3(volume_reg[2]),
        .O(B[3]));
  LUT5 #(
    .INIT(32'h82000000)) 
    \diff[4]_i_1 
       (.I0(s_axis_tvalid),
        .I1(tlast_expected),
        .I2(s_axis_tlast),
        .I3(aresetn),
        .I4(s_axis_tready),
        .O(tlast_sampled0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h007F)) 
    \diff[4]_i_2 
       (.I0(volume_reg[2]),
        .I1(volume_reg[0]),
        .I2(volume_reg[1]),
        .I3(volume_reg[3]),
        .O(B[4]));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[0] 
       (.C(aclk),
        .CE(tlast_sampled0),
        .D(B[0]),
        .Q(diff[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[1] 
       (.C(aclk),
        .CE(tlast_sampled0),
        .D(B[1]),
        .Q(diff[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[2] 
       (.C(aclk),
        .CE(tlast_sampled0),
        .D(B[2]),
        .Q(diff[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[3] 
       (.C(aclk),
        .CE(tlast_sampled0),
        .D(B[3]),
        .Q(diff[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[4] 
       (.C(aclk),
        .CE(tlast_sampled0),
        .D(B[4]),
        .Q(diff[4]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    m_axis_tlast_INST_0
       (.I0(tlast_sampled),
        .I1(m_axis_tvalid),
        .O(m_axis_tlast));
  LUT4 #(
    .INIT(16'h7F20)) 
    tlast_expected_i_1
       (.I0(s_axis_tready),
        .I1(s_axis_tlast),
        .I2(s_axis_tvalid),
        .I3(tlast_expected),
        .O(tlast_expected_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tlast_expected_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(\FSM_onehot_state[1]_i_2_n_0 ),
        .D(tlast_expected_i_1_n_0),
        .Q(tlast_expected));
  FDRE #(
    .INIT(1'b0)) 
    tlast_sampled_reg
       (.C(aclk),
        .CE(tlast_sampled0),
        .D(s_axis_tlast),
        .Q(tlast_sampled),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF0000FE80FFFF00)) 
    \volume[0]_i_1 
       (.I0(volume_reg[3]),
        .I1(volume_reg[2]),
        .I2(volume_reg[1]),
        .I3(volume_reg[0]),
        .I4(volume_up),
        .I5(volume_down),
        .O(\volume[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF08FF0F0F0F00EF0)) 
    \volume[1]_i_1 
       (.I0(volume_reg[3]),
        .I1(volume_reg[2]),
        .I2(volume_reg[1]),
        .I3(volume_down),
        .I4(volume_up),
        .I5(volume_reg[0]),
        .O(\volume[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCBCCCCCC2CCCC)) 
    \volume[2]_i_1 
       (.I0(volume_reg[3]),
        .I1(volume_reg[2]),
        .I2(volume_reg[0]),
        .I3(volume_up),
        .I4(volume_down),
        .I5(volume_reg[1]),
        .O(\volume[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEAAAAAAAAAAAA8A)) 
    \volume[3]_i_1 
       (.I0(volume_reg[3]),
        .I1(volume_reg[1]),
        .I2(volume_down),
        .I3(volume_up),
        .I4(volume_reg[0]),
        .I5(volume_reg[2]),
        .O(\volume[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF7F00FF0100FF)) 
    \volume_level[0]_i_1 
       (.I0(volume_reg[3]),
        .I1(volume_reg[2]),
        .I2(volume_reg[1]),
        .I3(volume_reg[0]),
        .I4(volume_down),
        .I5(volume_up),
        .O(plusOp0[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6A56)) 
    \volume_level[1]_i_1 
       (.I0(volume_reg[1]),
        .I1(volume_reg[0]),
        .I2(volume_up),
        .I3(volume_down),
        .O(plusOp0[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h599AAAAA)) 
    \volume_level[2]_i_1 
       (.I0(volume_reg[2]),
        .I1(volume_down),
        .I2(volume_up),
        .I3(volume_reg[0]),
        .I4(volume_reg[1]),
        .O(plusOp0[2]));
  LUT6 #(
    .INIT(64'h6AAA666AAAAAAAAA)) 
    \volume_level[3]_i_1 
       (.I0(volume_reg[3]),
        .I1(volume_reg[1]),
        .I2(volume_reg[0]),
        .I3(volume_up),
        .I4(volume_down),
        .I5(volume_reg[2]),
        .O(plusOp0[3]));
  LUT6 #(
    .INIT(64'hA220000000000000)) 
    \volume_level[4]_i_1 
       (.I0(volume_reg[2]),
        .I1(volume_down),
        .I2(volume_up),
        .I3(volume_reg[0]),
        .I4(volume_reg[1]),
        .I5(volume_reg[3]),
        .O(plusOp0[4]));
  FDRE \volume_level_reg[0] 
       (.C(aclk),
        .CE(aresetn),
        .D(plusOp0[0]),
        .Q(volume_level[0]),
        .R(1'b0));
  FDRE \volume_level_reg[1] 
       (.C(aclk),
        .CE(aresetn),
        .D(plusOp0[1]),
        .Q(volume_level[1]),
        .R(1'b0));
  FDRE \volume_level_reg[2] 
       (.C(aclk),
        .CE(aresetn),
        .D(plusOp0[2]),
        .Q(volume_level[2]),
        .R(1'b0));
  FDRE \volume_level_reg[3] 
       (.C(aclk),
        .CE(aresetn),
        .D(plusOp0[3]),
        .Q(volume_level[3]),
        .R(1'b0));
  FDRE \volume_level_reg[4] 
       (.C(aclk),
        .CE(aresetn),
        .D(plusOp0[4]),
        .Q(volume_level[4]),
        .R(1'b0));
  FDPE \volume_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\volume[0]_i_1_n_0 ),
        .PRE(\FSM_onehot_state[1]_i_2_n_0 ),
        .Q(volume_reg[0]));
  FDPE \volume_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\volume[1]_i_1_n_0 ),
        .PRE(\FSM_onehot_state[1]_i_2_n_0 ),
        .Q(volume_reg[1]));
  FDPE \volume_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\volume[2]_i_1_n_0 ),
        .PRE(\FSM_onehot_state[1]_i_2_n_0 ),
        .Q(volume_reg[2]));
  FDCE \volume_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\FSM_onehot_state[1]_i_2_n_0 ),
        .D(\volume[3]_i_1_n_0 ),
        .Q(volume_reg[3]));
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

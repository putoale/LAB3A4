// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri May 29 19:23:56 2020
// Host        : DESKTOP-O39JAIK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Vivado_DESD_Project/Project/Personal/Lab3_A4/LAB3A4/Sources/BD/bd_mov_av_v2/ip/bd_mov_av_v2_volume_controller_0_0/bd_mov_av_v2_volume_controller_0_0_sim_netlist.v
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

  wire \<const1> ;
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
  wire [15:1]\^volume_level ;
  wire volume_up;

  assign volume_level[15:1] = \^volume_level [15:1];
  assign volume_level[0] = \<const1> ;
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
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "volume_controller" *) 
module bd_mov_av_v2_volume_controller_0_0_volume_controller
   (s_axis_tready,
    volume_level,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tlast,
    volume_up,
    volume_down,
    s_axis_tvalid,
    aresetn,
    aclk,
    s_axis_tdata,
    m_axis_tready,
    s_axis_tlast);
  output s_axis_tready;
  output [14:0]volume_level;
  output m_axis_tvalid;
  output [15:0]m_axis_tdata;
  output m_axis_tlast;
  input volume_up;
  input volume_down;
  input s_axis_tvalid;
  input aresetn;
  input aclk;
  input [15:0]s_axis_tdata;
  input m_axis_tready;
  input s_axis_tlast;

  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire aclk;
  wire aresetn;
  wire [15:0]data_in;
  wire \data_in[15]_i_1_n_0 ;
  wire [15:0]data_out;
  wire data_out0;
  wire \data_out[0]_i_2_n_0 ;
  wire \data_out[0]_i_3_n_0 ;
  wire \data_out[0]_i_4_n_0 ;
  wire \data_out[0]_i_5_n_0 ;
  wire \data_out[10]_i_2_n_0 ;
  wire \data_out[10]_i_3_n_0 ;
  wire \data_out[10]_i_4_n_0 ;
  wire \data_out[10]_i_5_n_0 ;
  wire \data_out[10]_i_6_n_0 ;
  wire \data_out[10]_i_7_n_0 ;
  wire \data_out[10]_i_8_n_0 ;
  wire \data_out[11]_i_2_n_0 ;
  wire \data_out[11]_i_3_n_0 ;
  wire \data_out[11]_i_4_n_0 ;
  wire \data_out[11]_i_5_n_0 ;
  wire \data_out[11]_i_6_n_0 ;
  wire \data_out[11]_i_7_n_0 ;
  wire \data_out[11]_i_8_n_0 ;
  wire \data_out[12]_i_2_n_0 ;
  wire \data_out[12]_i_3_n_0 ;
  wire \data_out[12]_i_4_n_0 ;
  wire \data_out[12]_i_5_n_0 ;
  wire \data_out[12]_i_6_n_0 ;
  wire \data_out[12]_i_7_n_0 ;
  wire \data_out[13]_i_10_n_0 ;
  wire \data_out[13]_i_11_n_0 ;
  wire \data_out[13]_i_2_n_0 ;
  wire \data_out[13]_i_3_n_0 ;
  wire \data_out[13]_i_4_n_0 ;
  wire \data_out[13]_i_5_n_0 ;
  wire \data_out[13]_i_6_n_0 ;
  wire \data_out[13]_i_7_n_0 ;
  wire \data_out[13]_i_8_n_0 ;
  wire \data_out[13]_i_9_n_0 ;
  wire \data_out[14]_i_10_n_0 ;
  wire \data_out[14]_i_11_n_0 ;
  wire \data_out[14]_i_12_n_0 ;
  wire \data_out[14]_i_13_n_0 ;
  wire \data_out[14]_i_14_n_0 ;
  wire \data_out[14]_i_15_n_0 ;
  wire \data_out[14]_i_16_n_0 ;
  wire \data_out[14]_i_17_n_0 ;
  wire \data_out[14]_i_18_n_0 ;
  wire \data_out[14]_i_2_n_0 ;
  wire \data_out[14]_i_3_n_0 ;
  wire \data_out[14]_i_4_n_0 ;
  wire \data_out[14]_i_5_n_0 ;
  wire \data_out[14]_i_6_n_0 ;
  wire \data_out[14]_i_7_n_0 ;
  wire \data_out[14]_i_8_n_0 ;
  wire \data_out[14]_i_9_n_0 ;
  wire \data_out[15]_i_4_n_0 ;
  wire \data_out[1]_i_2_n_0 ;
  wire \data_out[1]_i_3_n_0 ;
  wire \data_out[1]_i_4_n_0 ;
  wire \data_out[1]_i_5_n_0 ;
  wire \data_out[1]_i_6_n_0 ;
  wire \data_out[1]_i_7_n_0 ;
  wire \data_out[2]_i_2_n_0 ;
  wire \data_out[2]_i_3_n_0 ;
  wire \data_out[2]_i_4_n_0 ;
  wire \data_out[2]_i_5_n_0 ;
  wire \data_out[2]_i_6_n_0 ;
  wire \data_out[2]_i_7_n_0 ;
  wire \data_out[2]_i_8_n_0 ;
  wire \data_out[3]_i_10_n_0 ;
  wire \data_out[3]_i_11_n_0 ;
  wire \data_out[3]_i_12_n_0 ;
  wire \data_out[3]_i_13_n_0 ;
  wire \data_out[3]_i_2_n_0 ;
  wire \data_out[3]_i_3_n_0 ;
  wire \data_out[3]_i_4_n_0 ;
  wire \data_out[3]_i_5_n_0 ;
  wire \data_out[3]_i_6_n_0 ;
  wire \data_out[3]_i_7_n_0 ;
  wire \data_out[3]_i_8_n_0 ;
  wire \data_out[3]_i_9_n_0 ;
  wire \data_out[4]_i_2_n_0 ;
  wire \data_out[4]_i_3_n_0 ;
  wire \data_out[4]_i_4_n_0 ;
  wire \data_out[4]_i_5_n_0 ;
  wire \data_out[4]_i_6_n_0 ;
  wire \data_out[4]_i_7_n_0 ;
  wire \data_out[4]_i_8_n_0 ;
  wire \data_out[5]_i_10_n_0 ;
  wire \data_out[5]_i_11_n_0 ;
  wire \data_out[5]_i_2_n_0 ;
  wire \data_out[5]_i_3_n_0 ;
  wire \data_out[5]_i_4_n_0 ;
  wire \data_out[5]_i_5_n_0 ;
  wire \data_out[5]_i_6_n_0 ;
  wire \data_out[5]_i_7_n_0 ;
  wire \data_out[5]_i_8_n_0 ;
  wire \data_out[5]_i_9_n_0 ;
  wire \data_out[6]_i_10_n_0 ;
  wire \data_out[6]_i_11_n_0 ;
  wire \data_out[6]_i_12_n_0 ;
  wire \data_out[6]_i_13_n_0 ;
  wire \data_out[6]_i_14_n_0 ;
  wire \data_out[6]_i_2_n_0 ;
  wire \data_out[6]_i_3_n_0 ;
  wire \data_out[6]_i_4_n_0 ;
  wire \data_out[6]_i_5_n_0 ;
  wire \data_out[6]_i_6_n_0 ;
  wire \data_out[6]_i_7_n_0 ;
  wire \data_out[6]_i_8_n_0 ;
  wire \data_out[6]_i_9_n_0 ;
  wire \data_out[7]_i_2_n_0 ;
  wire \data_out[7]_i_3_n_0 ;
  wire \data_out[7]_i_4_n_0 ;
  wire \data_out[7]_i_5_n_0 ;
  wire \data_out[7]_i_6_n_0 ;
  wire \data_out[8]_i_10_n_0 ;
  wire \data_out[8]_i_2_n_0 ;
  wire \data_out[8]_i_3_n_0 ;
  wire \data_out[8]_i_4_n_0 ;
  wire \data_out[8]_i_5_n_0 ;
  wire \data_out[8]_i_6_n_0 ;
  wire \data_out[8]_i_7_n_0 ;
  wire \data_out[8]_i_8_n_0 ;
  wire \data_out[8]_i_9_n_0 ;
  wire \data_out[9]_i_10_n_0 ;
  wire \data_out[9]_i_11_n_0 ;
  wire \data_out[9]_i_12_n_0 ;
  wire \data_out[9]_i_2_n_0 ;
  wire \data_out[9]_i_3_n_0 ;
  wire \data_out[9]_i_4_n_0 ;
  wire \data_out[9]_i_5_n_0 ;
  wire \data_out[9]_i_6_n_0 ;
  wire \data_out[9]_i_7_n_0 ;
  wire \data_out[9]_i_8_n_0 ;
  wire \data_out[9]_i_9_n_0 ;
  wire [4:0]diff;
  wire [15:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [15:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [2:0]state1;
  wire tlast_expected;
  wire tlast_expected_0;
  wire tlast_expected_i_1_n_0;
  wire tlast_sampled;
  wire tlast_sampled0;
  wire vol_led_ctrl_n_0;
  wire vol_led_ctrl_n_1;
  wire vol_led_ctrl_n_20;
  wire vol_led_ctrl_n_21;
  wire vol_led_ctrl_n_23;
  wire volume_down;
  wire [14:0]volume_level;
  wire volume_up;

  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(tlast_expected_0),
        .I1(m_axis_tvalid),
        .I2(m_axis_tready),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axis_tready),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(m_axis_tvalid),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \FSM_onehot_state[1]_i_4 
       (.I0(s_axis_tready),
        .I1(s_axis_tvalid),
        .I2(tlast_expected),
        .I3(s_axis_tlast),
        .O(tlast_expected_0));
  (* FSM_ENCODED_STATES = "idle:0001,receive_data:0010,multiply:0100,send_data:1000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(\FSM_onehot_state[1]_i_1_n_0 ),
        .D(1'b0),
        .PRE(vol_led_ctrl_n_23),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "idle:0001,receive_data:0010,multiply:0100,send_data:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(\FSM_onehot_state[1]_i_1_n_0 ),
        .CLR(vol_led_ctrl_n_23),
        .D(\FSM_onehot_state[1]_i_2_n_0 ),
        .Q(s_axis_tready));
  (* FSM_ENCODED_STATES = "idle:0001,receive_data:0010,multiply:0100,send_data:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(aclk),
        .CE(\FSM_onehot_state[1]_i_1_n_0 ),
        .CLR(vol_led_ctrl_n_23),
        .D(vol_led_ctrl_n_21),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "idle:0001,receive_data:0010,multiply:0100,send_data:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(\FSM_onehot_state[1]_i_1_n_0 ),
        .CLR(vol_led_ctrl_n_23),
        .D(vol_led_ctrl_n_20),
        .Q(m_axis_tvalid));
  LUT3 #(
    .INIT(8'h80)) 
    \data_in[15]_i_1 
       (.I0(s_axis_tready),
        .I1(s_axis_tvalid),
        .I2(aresetn),
        .O(\data_in[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[0] 
       (.C(aclk),
        .CE(\data_in[15]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(data_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[10] 
       (.C(aclk),
        .CE(\data_in[15]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(data_in[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[11] 
       (.C(aclk),
        .CE(\data_in[15]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(data_in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[12] 
       (.C(aclk),
        .CE(\data_in[15]_i_1_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(data_in[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[13] 
       (.C(aclk),
        .CE(\data_in[15]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(data_in[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[14] 
       (.C(aclk),
        .CE(\data_in[15]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(data_in[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[15] 
       (.C(aclk),
        .CE(\data_in[15]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(data_in[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[1] 
       (.C(aclk),
        .CE(\data_in[15]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(data_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[2] 
       (.C(aclk),
        .CE(\data_in[15]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(data_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[3] 
       (.C(aclk),
        .CE(\data_in[15]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(data_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[4] 
       (.C(aclk),
        .CE(\data_in[15]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(data_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[5] 
       (.C(aclk),
        .CE(\data_in[15]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(data_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[6] 
       (.C(aclk),
        .CE(\data_in[15]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(data_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[7] 
       (.C(aclk),
        .CE(\data_in[15]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(data_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[8] 
       (.C(aclk),
        .CE(\data_in[15]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(data_in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[9] 
       (.C(aclk),
        .CE(\data_in[15]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(data_in[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFF444)) 
    \data_out[0]_i_1 
       (.I0(\data_out[0]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(s_axis_tready),
        .I3(s_axis_tdata[0]),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(data_out[0]));
  LUT6 #(
    .INIT(64'h5555555500001101)) 
    \data_out[0]_i_2 
       (.I0(\data_out[14]_i_3_n_0 ),
        .I1(\data_out[0]_i_3_n_0 ),
        .I2(diff[0]),
        .I3(\data_out[1]_i_5_n_0 ),
        .I4(\data_out[10]_i_4_n_0 ),
        .I5(\data_out[5]_i_3_n_0 ),
        .O(\data_out[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000002A2AAAA02A2)) 
    \data_out[0]_i_3 
       (.I0(\data_out[14]_i_9_n_0 ),
        .I1(\data_out[0]_i_4_n_0 ),
        .I2(\data_out[11]_i_7_n_0 ),
        .I3(\data_out[0]_i_5_n_0 ),
        .I4(\data_out[14]_i_8_n_0 ),
        .I5(\data_out[2]_i_7_n_0 ),
        .O(\data_out[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \data_out[0]_i_4 
       (.I0(data_in[4]),
        .I1(\data_out[10]_i_8_n_0 ),
        .I2(data_in[12]),
        .O(\data_out[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hD0DD)) 
    \data_out[0]_i_5 
       (.I0(data_in[8]),
        .I1(\data_out[10]_i_8_n_0 ),
        .I2(\data_out[11]_i_8_n_0 ),
        .I3(data_in[0]),
        .O(\data_out[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFD0D0D0)) 
    \data_out[10]_i_1 
       (.I0(\data_out[10]_i_2_n_0 ),
        .I1(\data_out[10]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(s_axis_tready),
        .I4(s_axis_tdata[10]),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(data_out[10]));
  LUT6 #(
    .INIT(64'hBABBAAAABABBBABB)) 
    \data_out[10]_i_2 
       (.I0(\data_out[5]_i_3_n_0 ),
        .I1(\data_out[10]_i_4_n_0 ),
        .I2(\data_out[10]_i_5_n_0 ),
        .I3(diff[0]),
        .I4(\data_out[10]_i_6_n_0 ),
        .I5(\data_out[14]_i_9_n_0 ),
        .O(\data_out[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA2000)) 
    \data_out[10]_i_3 
       (.I0(\data_out[14]_i_5_n_0 ),
        .I1(\data_out[11]_i_5_n_0 ),
        .I2(diff[4]),
        .I3(diff[0]),
        .I4(\data_out[10]_i_7_n_0 ),
        .I5(\data_out[14]_i_3_n_0 ),
        .O(\data_out[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \data_out[10]_i_4 
       (.I0(diff[3]),
        .I1(diff[1]),
        .I2(diff[0]),
        .I3(diff[2]),
        .I4(diff[4]),
        .I5(data_in[15]),
        .O(\data_out[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F440F0F0F770F0F)) 
    \data_out[10]_i_5 
       (.I0(data_in[13]),
        .I1(\data_out[14]_i_8_n_0 ),
        .I2(data_in[15]),
        .I3(\data_out[11]_i_8_n_0 ),
        .I4(\data_out[11]_i_7_n_0 ),
        .I5(data_in[11]),
        .O(\data_out[10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8AAA00AA)) 
    \data_out[10]_i_6 
       (.I0(\data_out[9]_i_7_n_0 ),
        .I1(\data_out[11]_i_7_n_0 ),
        .I2(\data_out[14]_i_8_n_0 ),
        .I3(data_in[15]),
        .I4(\data_out[10]_i_8_n_0 ),
        .O(\data_out[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \data_out[10]_i_7 
       (.I0(diff[4]),
        .I1(\data_out[9]_i_8_n_0 ),
        .I2(diff[0]),
        .I3(\data_out[11]_i_6_n_0 ),
        .I4(\data_out[9]_i_7_n_0 ),
        .I5(\data_out[13]_i_3_n_0 ),
        .O(\data_out[10]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hAAA95555)) 
    \data_out[10]_i_8 
       (.I0(diff[3]),
        .I1(diff[1]),
        .I2(diff[0]),
        .I3(diff[2]),
        .I4(diff[4]),
        .O(\data_out[10]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF444)) 
    \data_out[11]_i_1 
       (.I0(\data_out[11]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(s_axis_tready),
        .I3(s_axis_tdata[11]),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(data_out[11]));
  LUT6 #(
    .INIT(64'h000000002A222A2A)) 
    \data_out[11]_i_2 
       (.I0(\data_out[11]_i_3_n_0 ),
        .I1(\data_out[14]_i_5_n_0 ),
        .I2(\data_out[11]_i_4_n_0 ),
        .I3(\data_out[11]_i_5_n_0 ),
        .I4(\data_out[13]_i_3_n_0 ),
        .I5(\data_out[14]_i_3_n_0 ),
        .O(\data_out[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABBAAAABABBBABB)) 
    \data_out[11]_i_3 
       (.I0(\data_out[5]_i_3_n_0 ),
        .I1(\data_out[10]_i_4_n_0 ),
        .I2(\data_out[10]_i_5_n_0 ),
        .I3(\data_out[14]_i_9_n_0 ),
        .I4(\data_out[12]_i_7_n_0 ),
        .I5(diff[0]),
        .O(\data_out[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0FAA00CC)) 
    \data_out[11]_i_4 
       (.I0(\data_out[11]_i_6_n_0 ),
        .I1(\data_out[12]_i_6_n_0 ),
        .I2(\data_out[12]_i_3_n_0 ),
        .I3(diff[4]),
        .I4(diff[0]),
        .O(\data_out[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF47CCFFFF47FF)) 
    \data_out[11]_i_5 
       (.I0(data_in[13]),
        .I1(\data_out[14]_i_8_n_0 ),
        .I2(data_in[11]),
        .I3(\data_out[11]_i_7_n_0 ),
        .I4(\data_out[11]_i_8_n_0 ),
        .I5(data_in[15]),
        .O(\data_out[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[11]_i_6 
       (.I0(\data_out[9]_i_12_n_0 ),
        .I1(diff[1]),
        .I2(\data_out[13]_i_11_n_0 ),
        .O(\data_out[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h9995)) 
    \data_out[11]_i_7 
       (.I0(diff[2]),
        .I1(diff[4]),
        .I2(diff[1]),
        .I3(diff[0]),
        .O(\data_out[11]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h6666666A)) 
    \data_out[11]_i_8 
       (.I0(diff[3]),
        .I1(diff[4]),
        .I2(diff[2]),
        .I3(diff[0]),
        .I4(diff[1]),
        .O(\data_out[11]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF444)) 
    \data_out[12]_i_1 
       (.I0(\data_out[12]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(s_axis_tready),
        .I3(s_axis_tdata[12]),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(data_out[12]));
  LUT6 #(
    .INIT(64'h00000000000055F7)) 
    \data_out[12]_i_2 
       (.I0(\data_out[14]_i_5_n_0 ),
        .I1(\data_out[13]_i_3_n_0 ),
        .I2(\data_out[12]_i_3_n_0 ),
        .I3(\data_out[12]_i_4_n_0 ),
        .I4(\data_out[12]_i_5_n_0 ),
        .I5(\data_out[14]_i_3_n_0 ),
        .O(\data_out[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1540FFFFD57F)) 
    \data_out[12]_i_3 
       (.I0(data_in[14]),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(diff[1]),
        .I4(\data_out[14]_i_7_n_0 ),
        .I5(data_in[12]),
        .O(\data_out[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0FAA00CC)) 
    \data_out[12]_i_4 
       (.I0(\data_out[12]_i_6_n_0 ),
        .I1(\data_out[13]_i_7_n_0 ),
        .I2(\data_out[13]_i_4_n_0 ),
        .I3(diff[4]),
        .I4(diff[0]),
        .O(\data_out[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4544555545444544)) 
    \data_out[12]_i_5 
       (.I0(\data_out[5]_i_3_n_0 ),
        .I1(\data_out[10]_i_4_n_0 ),
        .I2(\data_out[13]_i_9_n_0 ),
        .I3(diff[0]),
        .I4(\data_out[12]_i_7_n_0 ),
        .I5(\data_out[14]_i_9_n_0 ),
        .O(\data_out[12]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[12]_i_6 
       (.I0(\data_out[9]_i_11_n_0 ),
        .I1(diff[1]),
        .I2(\data_out[14]_i_18_n_0 ),
        .O(\data_out[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505553555F555355)) 
    \data_out[12]_i_7 
       (.I0(data_in[15]),
        .I1(data_in[12]),
        .I2(\data_out[11]_i_8_n_0 ),
        .I3(\data_out[11]_i_7_n_0 ),
        .I4(\data_out[14]_i_8_n_0 ),
        .I5(data_in[14]),
        .O(\data_out[12]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF444)) 
    \data_out[13]_i_1 
       (.I0(\data_out[13]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(s_axis_tready),
        .I3(s_axis_tdata[13]),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(data_out[13]));
  LUT6 #(
    .INIT(64'h4755555555474747)) 
    \data_out[13]_i_10 
       (.I0(data_in[15]),
        .I1(\data_out[14]_i_7_n_0 ),
        .I2(data_in[14]),
        .I3(diff[0]),
        .I4(diff[4]),
        .I5(diff[1]),
        .O(\data_out[13]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_out[13]_i_11 
       (.I0(data_in[6]),
        .I1(diff[2]),
        .I2(data_in[2]),
        .I3(diff[3]),
        .I4(data_in[10]),
        .O(\data_out[13]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000055F7)) 
    \data_out[13]_i_2 
       (.I0(\data_out[14]_i_5_n_0 ),
        .I1(\data_out[13]_i_3_n_0 ),
        .I2(\data_out[13]_i_4_n_0 ),
        .I3(\data_out[13]_i_5_n_0 ),
        .I4(\data_out[13]_i_6_n_0 ),
        .I5(\data_out[14]_i_3_n_0 ),
        .O(\data_out[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h0F0E0000)) 
    \data_out[13]_i_3 
       (.I0(diff[3]),
        .I1(diff[1]),
        .I2(diff[0]),
        .I3(diff[2]),
        .I4(diff[4]),
        .O(\data_out[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF1540D57F)) 
    \data_out[13]_i_4 
       (.I0(data_in[15]),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(diff[1]),
        .I4(data_in[13]),
        .I5(\data_out[14]_i_7_n_0 ),
        .O(\data_out[13]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFA0C0A0C)) 
    \data_out[13]_i_5 
       (.I0(\data_out[13]_i_7_n_0 ),
        .I1(\data_out[14]_i_13_n_0 ),
        .I2(diff[4]),
        .I3(diff[0]),
        .I4(\data_out[13]_i_8_n_0 ),
        .O(\data_out[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4544555545444544)) 
    \data_out[13]_i_6 
       (.I0(\data_out[5]_i_3_n_0 ),
        .I1(\data_out[10]_i_4_n_0 ),
        .I2(\data_out[13]_i_9_n_0 ),
        .I3(\data_out[14]_i_9_n_0 ),
        .I4(\data_out[13]_i_10_n_0 ),
        .I5(diff[0]),
        .O(\data_out[13]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[13]_i_7 
       (.I0(\data_out[13]_i_11_n_0 ),
        .I1(diff[1]),
        .I2(\data_out[14]_i_14_n_0 ),
        .O(\data_out[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000020022)) 
    \data_out[13]_i_8 
       (.I0(data_in[14]),
        .I1(diff[3]),
        .I2(diff[0]),
        .I3(diff[1]),
        .I4(diff[4]),
        .I5(diff[2]),
        .O(\data_out[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h555555551540D57F)) 
    \data_out[13]_i_9 
       (.I0(data_in[15]),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(diff[1]),
        .I4(data_in[13]),
        .I5(\data_out[14]_i_7_n_0 ),
        .O(\data_out[13]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFD550000)) 
    \data_out[14]_i_1 
       (.I0(\data_out[14]_i_2_n_0 ),
        .I1(\data_out[14]_i_3_n_0 ),
        .I2(\data_out[14]_i_4_n_0 ),
        .I3(\data_out[14]_i_5_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\data_out[14]_i_6_n_0 ),
        .O(data_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[14]_i_10 
       (.I0(\data_out[14]_i_14_n_0 ),
        .I1(diff[1]),
        .I2(\data_out[14]_i_15_n_0 ),
        .O(\data_out[14]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[14]_i_11 
       (.I0(\data_out[14]_i_16_n_0 ),
        .I1(diff[1]),
        .I2(\data_out[14]_i_17_n_0 ),
        .O(\data_out[14]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h777FEEEAFFFFFFFF)) 
    \data_out[14]_i_12 
       (.I0(diff[2]),
        .I1(diff[4]),
        .I2(diff[1]),
        .I3(diff[0]),
        .I4(diff[3]),
        .I5(data_in[15]),
        .O(\data_out[14]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[14]_i_13 
       (.I0(\data_out[14]_i_18_n_0 ),
        .I1(diff[1]),
        .I2(\data_out[14]_i_16_n_0 ),
        .O(\data_out[14]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[14]_i_14 
       (.I0(data_in[0]),
        .I1(data_in[8]),
        .I2(diff[2]),
        .I3(data_in[4]),
        .I4(diff[3]),
        .I5(data_in[12]),
        .O(\data_out[14]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[14]_i_15 
       (.I0(data_in[2]),
        .I1(data_in[10]),
        .I2(diff[2]),
        .I3(data_in[6]),
        .I4(diff[3]),
        .I5(data_in[14]),
        .O(\data_out[14]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[14]_i_16 
       (.I0(data_in[1]),
        .I1(data_in[9]),
        .I2(diff[2]),
        .I3(data_in[5]),
        .I4(diff[3]),
        .I5(data_in[13]),
        .O(\data_out[14]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[14]_i_17 
       (.I0(data_in[3]),
        .I1(data_in[11]),
        .I2(diff[2]),
        .I3(data_in[7]),
        .I4(diff[3]),
        .I5(data_in[15]),
        .O(\data_out[14]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_out[14]_i_18 
       (.I0(data_in[7]),
        .I1(diff[2]),
        .I2(data_in[3]),
        .I3(diff[3]),
        .I4(data_in[11]),
        .O(\data_out[14]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF01FB00FF)) 
    \data_out[14]_i_2 
       (.I0(\data_out[14]_i_7_n_0 ),
        .I1(data_in[14]),
        .I2(\data_out[14]_i_8_n_0 ),
        .I3(data_in[15]),
        .I4(\data_out[14]_i_9_n_0 ),
        .I5(\data_out[5]_i_3_n_0 ),
        .O(\data_out[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \data_out[14]_i_3 
       (.I0(data_in[15]),
        .I1(\data_out[14]_i_10_n_0 ),
        .I2(diff[0]),
        .I3(\data_out[14]_i_11_n_0 ),
        .I4(diff[4]),
        .O(\data_out[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2F200F0F2F200000)) 
    \data_out[14]_i_4 
       (.I0(diff[1]),
        .I1(\data_out[14]_i_12_n_0 ),
        .I2(diff[4]),
        .I3(\data_out[14]_i_13_n_0 ),
        .I4(diff[0]),
        .I5(\data_out[14]_i_10_n_0 ),
        .O(\data_out[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2A2A2A2222222A22)) 
    \data_out[14]_i_5 
       (.I0(\data_out[5]_i_3_n_0 ),
        .I1(data_in[15]),
        .I2(diff[4]),
        .I3(\data_out[14]_i_11_n_0 ),
        .I4(diff[0]),
        .I5(\data_out[14]_i_10_n_0 ),
        .O(\data_out[14]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \data_out[14]_i_6 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axis_tdata[14]),
        .I2(s_axis_tready),
        .O(\data_out[14]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h57FFFEAA)) 
    \data_out[14]_i_7 
       (.I0(diff[3]),
        .I1(diff[0]),
        .I2(diff[1]),
        .I3(diff[4]),
        .I4(diff[2]),
        .O(\data_out[14]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \data_out[14]_i_8 
       (.I0(diff[0]),
        .I1(diff[4]),
        .I2(diff[1]),
        .O(\data_out[14]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h0F0E0F0F)) 
    \data_out[14]_i_9 
       (.I0(diff[3]),
        .I1(diff[1]),
        .I2(diff[0]),
        .I3(diff[2]),
        .I4(diff[4]),
        .O(\data_out[14]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \data_out[15]_i_2 
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tready),
        .I2(data_in[15]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(data_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_out[15]_i_4 
       (.I0(diff[3]),
        .I1(diff[1]),
        .I2(diff[0]),
        .I3(diff[2]),
        .O(\data_out[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF5D0000)) 
    \data_out[1]_i_1 
       (.I0(\data_out[1]_i_2_n_0 ),
        .I1(\data_out[14]_i_5_n_0 ),
        .I2(\data_out[1]_i_3_n_0 ),
        .I3(\data_out[14]_i_3_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\data_out[1]_i_4_n_0 ),
        .O(data_out[1]));
  LUT6 #(
    .INIT(64'hBABBAAAABABBBABB)) 
    \data_out[1]_i_2 
       (.I0(\data_out[5]_i_3_n_0 ),
        .I1(\data_out[10]_i_4_n_0 ),
        .I2(\data_out[1]_i_5_n_0 ),
        .I3(\data_out[14]_i_9_n_0 ),
        .I4(\data_out[2]_i_4_n_0 ),
        .I5(diff[0]),
        .O(\data_out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDDDD0DDDDD000D00)) 
    \data_out[1]_i_3 
       (.I0(\data_out[13]_i_3_n_0 ),
        .I1(\data_out[1]_i_5_n_0 ),
        .I2(diff[0]),
        .I3(diff[4]),
        .I4(\data_out[2]_i_5_n_0 ),
        .I5(\data_out[1]_i_6_n_0 ),
        .O(\data_out[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \data_out[1]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axis_tdata[1]),
        .I2(s_axis_tready),
        .O(\data_out[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEABF2A80)) 
    \data_out[1]_i_5 
       (.I0(\data_out[3]_i_11_n_0 ),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(diff[1]),
        .I4(\data_out[1]_i_7_n_0 ),
        .O(\data_out[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFDCFFDF)) 
    \data_out[1]_i_6 
       (.I0(data_in[0]),
        .I1(diff[1]),
        .I2(diff[0]),
        .I3(diff[3]),
        .I4(data_in[1]),
        .I5(diff[2]),
        .O(\data_out[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out[1]_i_7 
       (.I0(data_in[1]),
        .I1(data_in[9]),
        .I2(\data_out[11]_i_7_n_0 ),
        .I3(data_in[5]),
        .I4(\data_out[10]_i_8_n_0 ),
        .I5(data_in[13]),
        .O(\data_out[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFD0D0D0)) 
    \data_out[2]_i_1 
       (.I0(\data_out[2]_i_2_n_0 ),
        .I1(\data_out[2]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(s_axis_tready),
        .I4(s_axis_tdata[2]),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(data_out[2]));
  LUT6 #(
    .INIT(64'hBABBAAAABABBBABB)) 
    \data_out[2]_i_2 
       (.I0(\data_out[5]_i_3_n_0 ),
        .I1(\data_out[10]_i_4_n_0 ),
        .I2(\data_out[3]_i_5_n_0 ),
        .I3(diff[0]),
        .I4(\data_out[2]_i_4_n_0 ),
        .I5(\data_out[14]_i_9_n_0 ),
        .O(\data_out[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8A88AAAA)) 
    \data_out[2]_i_3 
       (.I0(\data_out[14]_i_5_n_0 ),
        .I1(\data_out[14]_i_3_n_0 ),
        .I2(\data_out[2]_i_5_n_0 ),
        .I3(\data_out[13]_i_3_n_0 ),
        .I4(\data_out[2]_i_6_n_0 ),
        .O(\data_out[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC0AACCAACCAACCAA)) 
    \data_out[2]_i_4 
       (.I0(\data_out[2]_i_7_n_0 ),
        .I1(\data_out[4]_i_7_n_0 ),
        .I2(\data_out[11]_i_7_n_0 ),
        .I3(\data_out[14]_i_8_n_0 ),
        .I4(data_in[15]),
        .I5(\data_out[11]_i_8_n_0 ),
        .O(\data_out[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEABF2A80)) 
    \data_out[2]_i_5 
       (.I0(\data_out[4]_i_7_n_0 ),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(diff[1]),
        .I4(\data_out[2]_i_7_n_0 ),
        .O(\data_out[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF55CF550F55CF55)) 
    \data_out[2]_i_6 
       (.I0(\data_out[2]_i_8_n_0 ),
        .I1(\data_out[5]_i_10_n_0 ),
        .I2(diff[0]),
        .I3(diff[4]),
        .I4(diff[1]),
        .I5(\data_out[3]_i_11_n_0 ),
        .O(\data_out[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data_out[2]_i_7 
       (.I0(data_in[2]),
        .I1(data_in[10]),
        .I2(\data_out[11]_i_7_n_0 ),
        .I3(data_in[6]),
        .I4(\data_out[10]_i_8_n_0 ),
        .I5(data_in[14]),
        .O(\data_out[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \data_out[2]_i_8 
       (.I0(diff[2]),
        .I1(data_in[1]),
        .I2(diff[3]),
        .I3(diff[1]),
        .I4(diff[0]),
        .I5(\data_out[3]_i_12_n_0 ),
        .O(\data_out[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF1F110000)) 
    \data_out[3]_i_1 
       (.I0(\data_out[3]_i_2_n_0 ),
        .I1(\data_out[5]_i_3_n_0 ),
        .I2(\data_out[3]_i_3_n_0 ),
        .I3(\data_out[14]_i_5_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\data_out[3]_i_4_n_0 ),
        .O(data_out[3]));
  LUT6 #(
    .INIT(64'hAAA800000002AAAA)) 
    \data_out[3]_i_10 
       (.I0(data_in[9]),
        .I1(diff[1]),
        .I2(diff[0]),
        .I3(diff[2]),
        .I4(diff[4]),
        .I5(diff[3]),
        .O(\data_out[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h505F505F3030303F)) 
    \data_out[3]_i_11 
       (.I0(data_in[3]),
        .I1(data_in[11]),
        .I2(\data_out[11]_i_7_n_0 ),
        .I3(\data_out[3]_i_13_n_0 ),
        .I4(data_in[15]),
        .I5(\data_out[10]_i_8_n_0 ),
        .O(\data_out[3]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \data_out[3]_i_12 
       (.I0(data_in[0]),
        .I1(diff[1]),
        .I2(diff[2]),
        .I3(data_in[2]),
        .I4(diff[3]),
        .O(\data_out[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAA800000002AAAA)) 
    \data_out[3]_i_13 
       (.I0(data_in[7]),
        .I1(diff[1]),
        .I2(diff[0]),
        .I3(diff[2]),
        .I4(diff[4]),
        .I5(diff[3]),
        .O(\data_out[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D5D500D5)) 
    \data_out[3]_i_2 
       (.I0(diff[0]),
        .I1(\data_out[5]_i_6_n_0 ),
        .I2(\data_out[4]_i_5_n_0 ),
        .I3(\data_out[14]_i_9_n_0 ),
        .I4(\data_out[3]_i_5_n_0 ),
        .I5(\data_out[10]_i_4_n_0 ),
        .O(\data_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D0D000D0)) 
    \data_out[3]_i_3 
       (.I0(\data_out[13]_i_3_n_0 ),
        .I1(\data_out[3]_i_6_n_0 ),
        .I2(\data_out[3]_i_7_n_0 ),
        .I3(\data_out[5]_i_9_n_0 ),
        .I4(\data_out[4]_i_5_n_0 ),
        .I5(\data_out[14]_i_3_n_0 ),
        .O(\data_out[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \data_out[3]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axis_tdata[3]),
        .I2(s_axis_tready),
        .O(\data_out[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \data_out[3]_i_5 
       (.I0(\data_out[3]_i_8_n_0 ),
        .I1(\data_out[11]_i_7_n_0 ),
        .I2(\data_out[3]_i_9_n_0 ),
        .I3(\data_out[3]_i_10_n_0 ),
        .I4(\data_out[14]_i_8_n_0 ),
        .I5(\data_out[3]_i_11_n_0 ),
        .O(\data_out[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEABF2A80)) 
    \data_out[3]_i_6 
       (.I0(\data_out[5]_i_10_n_0 ),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(diff[1]),
        .I4(\data_out[3]_i_11_n_0 ),
        .O(\data_out[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hAEBF)) 
    \data_out[3]_i_7 
       (.I0(diff[4]),
        .I1(diff[0]),
        .I2(\data_out[3]_i_12_n_0 ),
        .I3(\data_out[4]_i_8_n_0 ),
        .O(\data_out[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hD0DD)) 
    \data_out[3]_i_8 
       (.I0(data_in[13]),
        .I1(\data_out[10]_i_8_n_0 ),
        .I2(\data_out[11]_i_8_n_0 ),
        .I3(data_in[5]),
        .O(\data_out[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAA85557FFFFFFFF)) 
    \data_out[3]_i_9 
       (.I0(diff[4]),
        .I1(diff[2]),
        .I2(diff[0]),
        .I3(diff[1]),
        .I4(diff[3]),
        .I5(data_in[15]),
        .O(\data_out[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF1F110000)) 
    \data_out[4]_i_1 
       (.I0(\data_out[4]_i_2_n_0 ),
        .I1(\data_out[5]_i_3_n_0 ),
        .I2(\data_out[4]_i_3_n_0 ),
        .I3(\data_out[14]_i_5_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\data_out[4]_i_4_n_0 ),
        .O(data_out[4]));
  LUT6 #(
    .INIT(64'h00000000DD0D0505)) 
    \data_out[4]_i_2 
       (.I0(diff[0]),
        .I1(\data_out[5]_i_7_n_0 ),
        .I2(\data_out[14]_i_9_n_0 ),
        .I3(\data_out[4]_i_5_n_0 ),
        .I4(\data_out[5]_i_6_n_0 ),
        .I5(\data_out[10]_i_4_n_0 ),
        .O(\data_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D0D000D0)) 
    \data_out[4]_i_3 
       (.I0(\data_out[5]_i_9_n_0 ),
        .I1(\data_out[5]_i_7_n_0 ),
        .I2(\data_out[4]_i_6_n_0 ),
        .I3(\data_out[13]_i_3_n_0 ),
        .I4(\data_out[4]_i_5_n_0 ),
        .I5(\data_out[14]_i_3_n_0 ),
        .O(\data_out[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \data_out[4]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axis_tdata[4]),
        .I2(s_axis_tready),
        .O(\data_out[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEABF2A80)) 
    \data_out[4]_i_5 
       (.I0(\data_out[6]_i_13_n_0 ),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(diff[1]),
        .I4(\data_out[4]_i_7_n_0 ),
        .O(\data_out[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFF2E)) 
    \data_out[4]_i_6 
       (.I0(\data_out[5]_i_11_n_0 ),
        .I1(diff[0]),
        .I2(\data_out[4]_i_8_n_0 ),
        .I3(diff[4]),
        .O(\data_out[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h47FF470047FF47FF)) 
    \data_out[4]_i_7 
       (.I0(data_in[4]),
        .I1(\data_out[10]_i_8_n_0 ),
        .I2(data_in[12]),
        .I3(\data_out[11]_i_7_n_0 ),
        .I4(\data_out[11]_i_8_n_0 ),
        .I5(data_in[8]),
        .O(\data_out[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \data_out[4]_i_8 
       (.I0(data_in[1]),
        .I1(diff[1]),
        .I2(diff[3]),
        .I3(data_in[3]),
        .I4(diff[2]),
        .O(\data_out[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF1F110000)) 
    \data_out[5]_i_1 
       (.I0(\data_out[5]_i_2_n_0 ),
        .I1(\data_out[5]_i_3_n_0 ),
        .I2(\data_out[5]_i_4_n_0 ),
        .I3(\data_out[14]_i_5_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\data_out[5]_i_5_n_0 ),
        .O(data_out[5]));
  LUT6 #(
    .INIT(64'h0F000FFFDDDDDDDD)) 
    \data_out[5]_i_10 
       (.I0(data_in[9]),
        .I1(\data_out[11]_i_8_n_0 ),
        .I2(data_in[5]),
        .I3(\data_out[10]_i_8_n_0 ),
        .I4(data_in[13]),
        .I5(\data_out[11]_i_7_n_0 ),
        .O(\data_out[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF5F5FFFF303F)) 
    \data_out[5]_i_11 
       (.I0(data_in[2]),
        .I1(data_in[0]),
        .I2(diff[2]),
        .I3(data_in[4]),
        .I4(diff[3]),
        .I5(diff[1]),
        .O(\data_out[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D5D500D5)) 
    \data_out[5]_i_2 
       (.I0(\data_out[14]_i_9_n_0 ),
        .I1(\data_out[5]_i_6_n_0 ),
        .I2(\data_out[5]_i_7_n_0 ),
        .I3(diff[0]),
        .I4(\data_out[6]_i_6_n_0 ),
        .I5(\data_out[10]_i_4_n_0 ),
        .O(\data_out[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \data_out[5]_i_3 
       (.I0(diff[2]),
        .I1(diff[0]),
        .I2(diff[1]),
        .I3(diff[3]),
        .I4(diff[4]),
        .O(\data_out[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D0D000D0)) 
    \data_out[5]_i_4 
       (.I0(\data_out[13]_i_3_n_0 ),
        .I1(\data_out[5]_i_7_n_0 ),
        .I2(\data_out[5]_i_8_n_0 ),
        .I3(\data_out[5]_i_9_n_0 ),
        .I4(\data_out[6]_i_9_n_0 ),
        .I5(\data_out[14]_i_3_n_0 ),
        .O(\data_out[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \data_out[5]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axis_tdata[5]),
        .I2(s_axis_tready),
        .O(\data_out[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDDDDF7777FFFF)) 
    \data_out[5]_i_6 
       (.I0(data_in[15]),
        .I1(diff[3]),
        .I2(diff[1]),
        .I3(diff[0]),
        .I4(diff[2]),
        .I5(diff[4]),
        .O(\data_out[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hEABF2A80)) 
    \data_out[5]_i_7 
       (.I0(\data_out[6]_i_11_n_0 ),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(diff[1]),
        .I4(\data_out[5]_i_10_n_0 ),
        .O(\data_out[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFF8B)) 
    \data_out[5]_i_8 
       (.I0(\data_out[5]_i_11_n_0 ),
        .I1(diff[0]),
        .I2(\data_out[6]_i_8_n_0 ),
        .I3(diff[4]),
        .O(\data_out[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[5]_i_9 
       (.I0(diff[4]),
        .I1(diff[0]),
        .O(\data_out[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7550000)) 
    \data_out[6]_i_1 
       (.I0(\data_out[6]_i_2_n_0 ),
        .I1(\data_out[6]_i_3_n_0 ),
        .I2(\data_out[6]_i_4_n_0 ),
        .I3(\data_out[14]_i_5_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\data_out[6]_i_5_n_0 ),
        .O(data_out[6]));
  LUT4 #(
    .INIT(16'hDDCF)) 
    \data_out[6]_i_10 
       (.I0(data_in[9]),
        .I1(\data_out[11]_i_8_n_0 ),
        .I2(data_in[13]),
        .I3(\data_out[11]_i_7_n_0 ),
        .O(\data_out[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF351F351FF00FFFF)) 
    \data_out[6]_i_11 
       (.I0(data_in[7]),
        .I1(data_in[15]),
        .I2(\data_out[10]_i_8_n_0 ),
        .I3(\data_out[11]_i_8_n_0 ),
        .I4(data_in[11]),
        .I5(\data_out[11]_i_7_n_0 ),
        .O(\data_out[6]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \data_out[6]_i_12 
       (.I0(data_in[8]),
        .I1(\data_out[11]_i_7_n_0 ),
        .I2(data_in[12]),
        .I3(\data_out[11]_i_8_n_0 ),
        .O(\data_out[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h47FF470047FF47FF)) 
    \data_out[6]_i_13 
       (.I0(data_in[6]),
        .I1(\data_out[10]_i_8_n_0 ),
        .I2(data_in[14]),
        .I3(\data_out[11]_i_7_n_0 ),
        .I4(\data_out[11]_i_8_n_0 ),
        .I5(data_in[10]),
        .O(\data_out[6]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFF47)) 
    \data_out[6]_i_14 
       (.I0(data_in[2]),
        .I1(diff[2]),
        .I2(data_in[6]),
        .I3(diff[3]),
        .O(\data_out[6]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hBABBAAAABABBBABB)) 
    \data_out[6]_i_2 
       (.I0(\data_out[5]_i_3_n_0 ),
        .I1(\data_out[10]_i_4_n_0 ),
        .I2(\data_out[6]_i_6_n_0 ),
        .I3(\data_out[14]_i_9_n_0 ),
        .I4(\data_out[7]_i_4_n_0 ),
        .I5(diff[0]),
        .O(\data_out[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF2E0000FF2EFF2E)) 
    \data_out[6]_i_3 
       (.I0(\data_out[6]_i_7_n_0 ),
        .I1(diff[0]),
        .I2(\data_out[6]_i_8_n_0 ),
        .I3(diff[4]),
        .I4(\data_out[6]_i_9_n_0 ),
        .I5(\data_out[13]_i_3_n_0 ),
        .O(\data_out[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABAAAFAAABAAA)) 
    \data_out[6]_i_4 
       (.I0(\data_out[14]_i_3_n_0 ),
        .I1(\data_out[6]_i_10_n_0 ),
        .I2(diff[0]),
        .I3(diff[4]),
        .I4(diff[1]),
        .I5(\data_out[6]_i_11_n_0 ),
        .O(\data_out[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \data_out[6]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axis_tdata[6]),
        .I2(s_axis_tready),
        .O(\data_out[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h50555055CCCCC0CC)) 
    \data_out[6]_i_6 
       (.I0(\data_out[6]_i_12_n_0 ),
        .I1(\data_out[6]_i_13_n_0 ),
        .I2(\data_out[10]_i_8_n_0 ),
        .I3(data_in[15]),
        .I4(\data_out[11]_i_7_n_0 ),
        .I5(\data_out[14]_i_8_n_0 ),
        .O(\data_out[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF47FFFFFF470000)) 
    \data_out[6]_i_7 
       (.I0(data_in[0]),
        .I1(diff[2]),
        .I2(data_in[4]),
        .I3(diff[3]),
        .I4(diff[1]),
        .I5(\data_out[6]_i_14_n_0 ),
        .O(\data_out[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \data_out[6]_i_8 
       (.I0(data_in[3]),
        .I1(diff[1]),
        .I2(data_in[1]),
        .I3(diff[2]),
        .I4(data_in[5]),
        .I5(diff[3]),
        .O(\data_out[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF47FFFFFF470000)) 
    \data_out[6]_i_9 
       (.I0(data_in[8]),
        .I1(\data_out[11]_i_7_n_0 ),
        .I2(data_in[12]),
        .I3(\data_out[11]_i_8_n_0 ),
        .I4(\data_out[14]_i_8_n_0 ),
        .I5(\data_out[6]_i_13_n_0 ),
        .O(\data_out[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFD0D0D0)) 
    \data_out[7]_i_1 
       (.I0(\data_out[7]_i_2_n_0 ),
        .I1(\data_out[7]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(s_axis_tready),
        .I4(s_axis_tdata[7]),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(data_out[7]));
  LUT6 #(
    .INIT(64'hBABBAAAABABBBABB)) 
    \data_out[7]_i_2 
       (.I0(\data_out[5]_i_3_n_0 ),
        .I1(\data_out[10]_i_4_n_0 ),
        .I2(\data_out[8]_i_4_n_0 ),
        .I3(diff[0]),
        .I4(\data_out[7]_i_4_n_0 ),
        .I5(\data_out[14]_i_9_n_0 ),
        .O(\data_out[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA8AAA8A8)) 
    \data_out[7]_i_3 
       (.I0(\data_out[14]_i_5_n_0 ),
        .I1(\data_out[14]_i_3_n_0 ),
        .I2(\data_out[7]_i_5_n_0 ),
        .I3(\data_out[7]_i_6_n_0 ),
        .I4(\data_out[13]_i_3_n_0 ),
        .O(\data_out[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB830B8B8B800B8B8)) 
    \data_out[7]_i_4 
       (.I0(\data_out[6]_i_10_n_0 ),
        .I1(\data_out[14]_i_8_n_0 ),
        .I2(\data_out[6]_i_11_n_0 ),
        .I3(\data_out[10]_i_8_n_0 ),
        .I4(data_in[15]),
        .I5(\data_out[11]_i_7_n_0 ),
        .O(\data_out[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF5030503)) 
    \data_out[7]_i_5 
       (.I0(\data_out[6]_i_7_n_0 ),
        .I1(\data_out[8]_i_9_n_0 ),
        .I2(diff[4]),
        .I3(diff[0]),
        .I4(\data_out[8]_i_5_n_0 ),
        .O(\data_out[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDDCFFFFFDDCF0000)) 
    \data_out[7]_i_6 
       (.I0(data_in[9]),
        .I1(\data_out[11]_i_8_n_0 ),
        .I2(data_in[13]),
        .I3(\data_out[11]_i_7_n_0 ),
        .I4(\data_out[14]_i_8_n_0 ),
        .I5(\data_out[6]_i_11_n_0 ),
        .O(\data_out[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFD0D0D0)) 
    \data_out[8]_i_1 
       (.I0(\data_out[8]_i_2_n_0 ),
        .I1(\data_out[8]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(s_axis_tready),
        .I4(s_axis_tdata[8]),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(data_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \data_out[8]_i_10 
       (.I0(data_in[1]),
        .I1(diff[2]),
        .I2(data_in[5]),
        .I3(diff[3]),
        .O(\data_out[8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBABBAAAABABBBABB)) 
    \data_out[8]_i_2 
       (.I0(\data_out[5]_i_3_n_0 ),
        .I1(\data_out[10]_i_4_n_0 ),
        .I2(\data_out[8]_i_4_n_0 ),
        .I3(\data_out[14]_i_9_n_0 ),
        .I4(\data_out[9]_i_5_n_0 ),
        .I5(diff[0]),
        .O(\data_out[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA80)) 
    \data_out[8]_i_3 
       (.I0(\data_out[14]_i_5_n_0 ),
        .I1(\data_out[13]_i_3_n_0 ),
        .I2(\data_out[8]_i_5_n_0 ),
        .I3(\data_out[8]_i_6_n_0 ),
        .I4(\data_out[8]_i_7_n_0 ),
        .I5(\data_out[14]_i_3_n_0 ),
        .O(\data_out[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \data_out[8]_i_4 
       (.I0(data_in[15]),
        .I1(\data_out[10]_i_8_n_0 ),
        .I2(\data_out[8]_i_5_n_0 ),
        .O(\data_out[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000074777444)) 
    \data_out[8]_i_5 
       (.I0(\data_out[8]_i_8_n_0 ),
        .I1(\data_out[14]_i_8_n_0 ),
        .I2(data_in[8]),
        .I3(\data_out[11]_i_7_n_0 ),
        .I4(data_in[12]),
        .I5(\data_out[11]_i_8_n_0 ),
        .O(\data_out[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h40007000)) 
    \data_out[8]_i_6 
       (.I0(\data_out[6]_i_10_n_0 ),
        .I1(diff[1]),
        .I2(diff[4]),
        .I3(diff[0]),
        .I4(\data_out[9]_i_10_n_0 ),
        .O(\data_out[8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h003A)) 
    \data_out[8]_i_7 
       (.I0(\data_out[9]_i_9_n_0 ),
        .I1(\data_out[8]_i_9_n_0 ),
        .I2(diff[0]),
        .I3(diff[4]),
        .O(\data_out[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h414141117D7D7DDD)) 
    \data_out[8]_i_8 
       (.I0(data_in[10]),
        .I1(diff[2]),
        .I2(diff[4]),
        .I3(diff[1]),
        .I4(diff[0]),
        .I5(data_in[14]),
        .O(\data_out[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFFF47FF47)) 
    \data_out[8]_i_9 
       (.I0(data_in[3]),
        .I1(diff[2]),
        .I2(data_in[7]),
        .I3(diff[3]),
        .I4(\data_out[8]_i_10_n_0 ),
        .I5(diff[1]),
        .O(\data_out[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFD550000)) 
    \data_out[9]_i_1 
       (.I0(\data_out[9]_i_2_n_0 ),
        .I1(\data_out[14]_i_3_n_0 ),
        .I2(\data_out[9]_i_3_n_0 ),
        .I3(\data_out[14]_i_5_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\data_out[9]_i_4_n_0 ),
        .O(data_out[9]));
  LUT4 #(
    .INIT(16'hF4F7)) 
    \data_out[9]_i_10 
       (.I0(data_in[11]),
        .I1(\data_out[11]_i_7_n_0 ),
        .I2(\data_out[11]_i_8_n_0 ),
        .I3(data_in[15]),
        .O(\data_out[9]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_out[9]_i_11 
       (.I0(data_in[5]),
        .I1(diff[2]),
        .I2(data_in[1]),
        .I3(diff[3]),
        .I4(data_in[9]),
        .O(\data_out[9]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_out[9]_i_12 
       (.I0(data_in[4]),
        .I1(diff[2]),
        .I2(data_in[0]),
        .I3(diff[3]),
        .I4(data_in[8]),
        .O(\data_out[9]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hBABBAAAABABBBABB)) 
    \data_out[9]_i_2 
       (.I0(\data_out[5]_i_3_n_0 ),
        .I1(\data_out[10]_i_4_n_0 ),
        .I2(\data_out[10]_i_6_n_0 ),
        .I3(diff[0]),
        .I4(\data_out[9]_i_5_n_0 ),
        .I5(\data_out[14]_i_9_n_0 ),
        .O(\data_out[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFEFAEEEABEBAAEA)) 
    \data_out[9]_i_3 
       (.I0(\data_out[9]_i_6_n_0 ),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(\data_out[9]_i_7_n_0 ),
        .I4(\data_out[9]_i_8_n_0 ),
        .I5(\data_out[9]_i_9_n_0 ),
        .O(\data_out[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \data_out[9]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axis_tdata[9]),
        .I2(s_axis_tready),
        .O(\data_out[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1FBF10BF10B010B0)) 
    \data_out[9]_i_5 
       (.I0(\data_out[14]_i_7_n_0 ),
        .I1(data_in[11]),
        .I2(\data_out[14]_i_8_n_0 ),
        .I3(data_in[15]),
        .I4(\data_out[10]_i_8_n_0 ),
        .I5(\data_out[6]_i_10_n_0 ),
        .O(\data_out[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h200202022AA2A2A2)) 
    \data_out[9]_i_6 
       (.I0(\data_out[13]_i_3_n_0 ),
        .I1(\data_out[6]_i_10_n_0 ),
        .I2(diff[1]),
        .I3(diff[4]),
        .I4(diff[0]),
        .I5(\data_out[9]_i_10_n_0 ),
        .O(\data_out[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4FCFFF7F7FCFF)) 
    \data_out[9]_i_7 
       (.I0(data_in[12]),
        .I1(\data_out[14]_i_8_n_0 ),
        .I2(\data_out[11]_i_8_n_0 ),
        .I3(data_in[14]),
        .I4(\data_out[11]_i_7_n_0 ),
        .I5(data_in[10]),
        .O(\data_out[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \data_out[9]_i_8 
       (.I0(data_in[3]),
        .I1(diff[2]),
        .I2(data_in[7]),
        .I3(diff[3]),
        .I4(diff[1]),
        .I5(\data_out[9]_i_11_n_0 ),
        .O(\data_out[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \data_out[9]_i_9 
       (.I0(data_in[2]),
        .I1(diff[2]),
        .I2(data_in[6]),
        .I3(diff[3]),
        .I4(diff[1]),
        .I5(\data_out[9]_i_12_n_0 ),
        .O(\data_out[9]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(aclk),
        .CE(data_out0),
        .D(data_out[0]),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[10] 
       (.C(aclk),
        .CE(data_out0),
        .D(data_out[10]),
        .Q(m_axis_tdata[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[11] 
       (.C(aclk),
        .CE(data_out0),
        .D(data_out[11]),
        .Q(m_axis_tdata[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[12] 
       (.C(aclk),
        .CE(data_out0),
        .D(data_out[12]),
        .Q(m_axis_tdata[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[13] 
       (.C(aclk),
        .CE(data_out0),
        .D(data_out[13]),
        .Q(m_axis_tdata[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[14] 
       (.C(aclk),
        .CE(data_out0),
        .D(data_out[14]),
        .Q(m_axis_tdata[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[15] 
       (.C(aclk),
        .CE(data_out0),
        .D(data_out[15]),
        .Q(m_axis_tdata[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(aclk),
        .CE(data_out0),
        .D(data_out[1]),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(aclk),
        .CE(data_out0),
        .D(data_out[2]),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(aclk),
        .CE(data_out0),
        .D(data_out[3]),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(aclk),
        .CE(data_out0),
        .D(data_out[4]),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(aclk),
        .CE(data_out0),
        .D(data_out[5]),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(aclk),
        .CE(data_out0),
        .D(data_out[6]),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(aclk),
        .CE(data_out0),
        .D(data_out[7]),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[8] 
       (.C(aclk),
        .CE(data_out0),
        .D(data_out[8]),
        .Q(m_axis_tdata[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[9] 
       (.C(aclk),
        .CE(data_out0),
        .D(data_out[9]),
        .Q(m_axis_tdata[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h80000080)) 
    \diff[4]_i_1 
       (.I0(aresetn),
        .I1(s_axis_tvalid),
        .I2(s_axis_tready),
        .I3(tlast_expected),
        .I4(s_axis_tlast),
        .O(tlast_sampled0));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[0] 
       (.C(aclk),
        .CE(tlast_sampled0),
        .D(state1[0]),
        .Q(diff[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[1] 
       (.C(aclk),
        .CE(tlast_sampled0),
        .D(state1[1]),
        .Q(diff[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[2] 
       (.C(aclk),
        .CE(tlast_sampled0),
        .D(state1[2]),
        .Q(diff[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[3] 
       (.C(aclk),
        .CE(tlast_sampled0),
        .D(vol_led_ctrl_n_1),
        .Q(diff[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[4] 
       (.C(aclk),
        .CE(tlast_sampled0),
        .D(vol_led_ctrl_n_0),
        .Q(diff[4]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    m_axis_tlast_INST_0
       (.I0(tlast_sampled),
        .I1(m_axis_tvalid),
        .O(m_axis_tlast));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h7F40)) 
    tlast_expected_i_1
       (.I0(s_axis_tlast),
        .I1(s_axis_tvalid),
        .I2(s_axis_tready),
        .I3(tlast_expected),
        .O(tlast_expected_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tlast_expected_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(vol_led_ctrl_n_23),
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
  bd_mov_av_v2_volume_controller_0_0_volume_led_ctrl vol_led_ctrl
       (.AR(vol_led_ctrl_n_23),
        .D({vol_led_ctrl_n_0,vol_led_ctrl_n_1,state1}),
        .E(data_out0),
        .Q({\FSM_onehot_state_reg_n_0_[2] ,s_axis_tready,\FSM_onehot_state_reg_n_0_[0] }),
        .aclk(aclk),
        .aresetn(aresetn),
        .\data_out_reg[0] (tlast_sampled0),
        .\data_out_reg[0]_0 (diff[4]),
        .\data_out_reg[0]_1 (\data_out[15]_i_4_n_0 ),
        .volume_down(volume_down),
        .volume_level(volume_level),
        .\volume_uns_reg[2]_0 ({vol_led_ctrl_n_20,vol_led_ctrl_n_21}),
        .volume_up(volume_up));
endmodule

(* ORIG_REF_NAME = "volume_led_ctrl" *) 
module bd_mov_av_v2_volume_controller_0_0_volume_led_ctrl
   (D,
    volume_level,
    \volume_uns_reg[2]_0 ,
    E,
    AR,
    volume_up,
    volume_down,
    Q,
    \data_out_reg[0] ,
    aresetn,
    \data_out_reg[0]_0 ,
    \data_out_reg[0]_1 ,
    aclk);
  output [4:0]D;
  output [14:0]volume_level;
  output [1:0]\volume_uns_reg[2]_0 ;
  output [0:0]E;
  output [0:0]AR;
  input volume_up;
  input volume_down;
  input [2:0]Q;
  input [0:0]\data_out_reg[0] ;
  input aresetn;
  input [0:0]\data_out_reg[0]_0 ;
  input \data_out_reg[0]_1 ;
  input aclk;

  wire [0:0]AR;
  wire [4:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire [2:0]Q;
  wire aclk;
  wire aresetn;
  wire \data_out[15]_i_3_n_0 ;
  wire [0:0]\data_out_reg[0] ;
  wire [0:0]\data_out_reg[0]_0 ;
  wire \data_out_reg[0]_1 ;
  wire [3:0]diff2;
  wire \led_out[11]_i_2_n_0 ;
  wire \led_out[13]_i_4_n_0 ;
  wire \led_out[13]_i_5_n_0 ;
  wire \led_out[15]_i_10_n_0 ;
  wire \led_out[15]_i_11_n_0 ;
  wire \led_out[15]_i_12_n_0 ;
  wire \led_out[15]_i_3_n_0 ;
  wire \led_out[15]_i_5_n_0 ;
  wire \led_out[15]_i_6_n_0 ;
  wire \led_out[15]_i_7_n_0 ;
  wire \led_out[15]_i_8_n_0 ;
  wire \led_out[15]_i_9_n_0 ;
  wire \led_out[3]_i_2_n_0 ;
  wire \led_out[7]_i_2_n_0 ;
  wire [8:0]mult2;
  wire [8:1]mult20;
  wire mult20_carry__0_i_1_n_0;
  wire mult20_carry__0_i_2_n_0;
  wire mult20_carry__0_i_3_n_0;
  wire mult20_carry__0_n_1;
  wire mult20_carry__0_n_2;
  wire mult20_carry__0_n_3;
  wire mult20_carry_i_1_n_0;
  wire mult20_carry_i_2_n_0;
  wire mult20_carry_i_3_n_0;
  wire mult20_carry_i_4_n_0;
  wire mult20_carry_i_5_n_0;
  wire mult20_carry_n_0;
  wire mult20_carry_n_1;
  wire mult20_carry_n_2;
  wire mult20_carry_n_3;
  wire [4:0]p_0_out;
  wire [15:1]p_1_in;
  wire [3:0]volume;
  wire volume_down;
  wire [14:0]volume_level;
  wire \volume_uns[1]_i_1_n_0 ;
  wire \volume_uns[2]_i_1_n_0 ;
  wire \volume_uns[3]_i_1_n_0 ;
  wire \volume_uns[3]_i_2_n_0 ;
  wire [1:0]\volume_uns_reg[2]_0 ;
  wire volume_up;
  wire [3:3]NLW_mult20_carry__0_CO_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[1]_i_3 
       (.I0(aresetn),
        .O(AR));
  LUT6 #(
    .INIT(64'h4444444404444444)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(volume[2]),
        .I3(volume[1]),
        .I4(volume[0]),
        .I5(volume[3]),
        .O(\volume_uns_reg[2]_0 [0]));
  LUT6 #(
    .INIT(64'h0000000008FF0800)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(volume[2]),
        .I1(\FSM_onehot_state[3]_i_2_n_0 ),
        .I2(volume[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\volume_uns_reg[2]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(volume[1]),
        .I1(volume[0]),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888F888F8888888)) 
    \data_out[15]_i_1 
       (.I0(\data_out[15]_i_3_n_0 ),
        .I1(\data_out_reg[0] ),
        .I2(aresetn),
        .I3(Q[2]),
        .I4(\data_out_reg[0]_0 ),
        .I5(\data_out_reg[0]_1 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \data_out[15]_i_3 
       (.I0(volume[2]),
        .I1(volume[1]),
        .I2(volume[0]),
        .I3(volume[3]),
        .O(\data_out[15]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \diff2_reg[0] 
       (.C(aclk),
        .CE(aresetn),
        .D(volume[0]),
        .Q(diff2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diff2_reg[1] 
       (.C(aclk),
        .CE(aresetn),
        .D(volume[1]),
        .Q(diff2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diff2_reg[2] 
       (.C(aclk),
        .CE(aresetn),
        .D(volume[2]),
        .Q(diff2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diff2_reg[3] 
       (.C(aclk),
        .CE(aresetn),
        .D(volume[3]),
        .Q(diff2[3]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \diff[0]_i_1 
       (.I0(volume[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \diff[1]_i_1 
       (.I0(volume[1]),
        .I1(volume[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \diff[2]_i_1 
       (.I0(volume[2]),
        .I1(volume[0]),
        .I2(volume[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h9555)) 
    \diff[3]_i_1 
       (.I0(volume[3]),
        .I1(volume[2]),
        .I2(volume[1]),
        .I3(volume[0]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1555)) 
    \diff[4]_i_2 
       (.I0(volume[3]),
        .I1(volume[2]),
        .I2(volume[1]),
        .I3(volume[0]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \led_out[10]_i_1 
       (.I0(p_0_out[4]),
        .I1(volume_level[9]),
        .I2(\led_out[11]_i_2_n_0 ),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'hFFFFF000F888F888)) 
    \led_out[11]_i_1 
       (.I0(p_0_out[2]),
        .I1(p_0_out[3]),
        .I2(p_0_out[4]),
        .I3(volume_level[10]),
        .I4(\led_out[11]_i_2_n_0 ),
        .I5(p_0_out[0]),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'hFFFFFF6000000000)) 
    \led_out[11]_i_2 
       (.I0(mult2[7]),
        .I1(mult2[3]),
        .I2(\led_out[15]_i_5_n_0 ),
        .I3(\led_out[15]_i_6_n_0 ),
        .I4(p_0_out[2]),
        .I5(p_0_out[3]),
        .O(\led_out[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \led_out[12]_i_1 
       (.I0(p_0_out[2]),
        .I1(p_0_out[3]),
        .I2(p_0_out[4]),
        .I3(volume_level[11]),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'hF888FFFFF888F000)) 
    \led_out[13]_i_1 
       (.I0(p_0_out[2]),
        .I1(p_0_out[3]),
        .I2(p_0_out[4]),
        .I3(volume_level[12]),
        .I4(p_0_out[0]),
        .I5(\led_out[15]_i_3_n_0 ),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'hAAAA544AABB55555)) 
    \led_out[13]_i_2 
       (.I0(mult2[6]),
        .I1(mult2[2]),
        .I2(mult2[3]),
        .I3(mult2[7]),
        .I4(\led_out[13]_i_4_n_0 ),
        .I5(\led_out[13]_i_5_n_0 ),
        .O(p_0_out[2]));
  LUT6 #(
    .INIT(64'h777F8880777F8000)) 
    \led_out[13]_i_3 
       (.I0(mult2[6]),
        .I1(mult2[5]),
        .I2(mult2[4]),
        .I3(mult2[8]),
        .I4(mult2[7]),
        .I5(mult2[3]),
        .O(p_0_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \led_out[13]_i_4 
       (.I0(mult2[8]),
        .I1(mult2[4]),
        .I2(mult2[5]),
        .O(\led_out[13]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \led_out[13]_i_5 
       (.I0(mult2[8]),
        .I1(mult2[4]),
        .I2(mult2[5]),
        .O(\led_out[13]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \led_out[14]_i_1 
       (.I0(p_0_out[4]),
        .I1(volume_level[13]),
        .I2(\led_out[15]_i_3_n_0 ),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \led_out[15]_i_1 
       (.I0(p_0_out[4]),
        .I1(volume_level[14]),
        .I2(\led_out[15]_i_3_n_0 ),
        .I3(p_0_out[0]),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \led_out[15]_i_10 
       (.I0(mult2[1]),
        .I1(mult2[2]),
        .I2(mult2[6]),
        .O(\led_out[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \led_out[15]_i_11 
       (.I0(mult2[5]),
        .I1(mult2[4]),
        .I2(mult2[8]),
        .I3(mult2[6]),
        .I4(mult2[2]),
        .I5(mult2[1]),
        .O(\led_out[15]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \led_out[15]_i_12 
       (.I0(mult2[6]),
        .I1(mult2[2]),
        .I2(mult2[1]),
        .I3(mult2[0]),
        .I4(mult2[5]),
        .O(\led_out[15]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h2CCCCCCC)) 
    \led_out[15]_i_2 
       (.I0(mult2[4]),
        .I1(mult2[8]),
        .I2(mult2[5]),
        .I3(mult2[7]),
        .I4(mult2[6]),
        .O(p_0_out[4]));
  LUT6 #(
    .INIT(64'hFF60000000000000)) 
    \led_out[15]_i_3 
       (.I0(mult2[7]),
        .I1(mult2[3]),
        .I2(\led_out[15]_i_5_n_0 ),
        .I3(\led_out[15]_i_6_n_0 ),
        .I4(p_0_out[2]),
        .I5(p_0_out[3]),
        .O(\led_out[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00474700)) 
    \led_out[15]_i_4 
       (.I0(\led_out[15]_i_7_n_0 ),
        .I1(mult2[2]),
        .I2(\led_out[15]_i_8_n_0 ),
        .I3(mult2[7]),
        .I4(mult2[3]),
        .I5(\led_out[15]_i_9_n_0 ),
        .O(p_0_out[0]));
  LUT6 #(
    .INIT(64'h000505FFFFE8E800)) 
    \led_out[15]_i_5 
       (.I0(mult2[2]),
        .I1(mult2[1]),
        .I2(mult2[6]),
        .I3(mult2[4]),
        .I4(mult2[8]),
        .I5(mult2[5]),
        .O(\led_out[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h800303C3C3C0C000)) 
    \led_out[15]_i_6 
       (.I0(\led_out[15]_i_10_n_0 ),
        .I1(mult2[7]),
        .I2(mult2[3]),
        .I3(mult2[4]),
        .I4(mult2[8]),
        .I5(mult2[5]),
        .O(\led_out[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00FF01EEFF01EE15)) 
    \led_out[15]_i_7 
       (.I0(mult2[6]),
        .I1(mult2[1]),
        .I2(mult2[0]),
        .I3(mult2[8]),
        .I4(mult2[5]),
        .I5(mult2[4]),
        .O(\led_out[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h26996493669B6CB3)) 
    \led_out[15]_i_8 
       (.I0(mult2[6]),
        .I1(mult2[4]),
        .I2(mult2[5]),
        .I3(mult2[8]),
        .I4(mult2[1]),
        .I5(mult2[0]),
        .O(\led_out[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAA0000FC8200003C)) 
    \led_out[15]_i_9 
       (.I0(\led_out[15]_i_11_n_0 ),
        .I1(mult2[4]),
        .I2(mult2[8]),
        .I3(mult2[3]),
        .I4(mult2[7]),
        .I5(\led_out[15]_i_12_n_0 ),
        .O(\led_out[15]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \led_out[1]_i_1 
       (.I0(p_0_out[4]),
        .I1(volume_level[0]),
        .I2(\led_out[3]_i_2_n_0 ),
        .I3(p_0_out[0]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \led_out[2]_i_1 
       (.I0(p_0_out[4]),
        .I1(volume_level[1]),
        .I2(\led_out[3]_i_2_n_0 ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hFFFFF000FEEEFEEE)) 
    \led_out[3]_i_1 
       (.I0(p_0_out[2]),
        .I1(p_0_out[3]),
        .I2(p_0_out[4]),
        .I3(volume_level[2]),
        .I4(\led_out[3]_i_2_n_0 ),
        .I5(p_0_out[0]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF60)) 
    \led_out[3]_i_2 
       (.I0(mult2[7]),
        .I1(mult2[3]),
        .I2(\led_out[15]_i_5_n_0 ),
        .I3(\led_out[15]_i_6_n_0 ),
        .I4(p_0_out[2]),
        .I5(p_0_out[3]),
        .O(\led_out[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    \led_out[4]_i_1 
       (.I0(p_0_out[2]),
        .I1(p_0_out[3]),
        .I2(p_0_out[4]),
        .I3(volume_level[3]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hFEEEFFFFFEEEF000)) 
    \led_out[5]_i_1 
       (.I0(p_0_out[2]),
        .I1(p_0_out[3]),
        .I2(p_0_out[4]),
        .I3(volume_level[4]),
        .I4(p_0_out[0]),
        .I5(\led_out[7]_i_2_n_0 ),
        .O(p_1_in[5]));
  LUT3 #(
    .INIT(8'hF8)) 
    \led_out[6]_i_1 
       (.I0(p_0_out[4]),
        .I1(volume_level[5]),
        .I2(\led_out[7]_i_2_n_0 ),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hF8FFF888)) 
    \led_out[7]_i_1 
       (.I0(p_0_out[4]),
        .I1(volume_level[6]),
        .I2(\led_out[7]_i_2_n_0 ),
        .I3(p_0_out[0]),
        .I4(p_0_out[3]),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF600000)) 
    \led_out[7]_i_2 
       (.I0(mult2[7]),
        .I1(mult2[3]),
        .I2(\led_out[15]_i_5_n_0 ),
        .I3(\led_out[15]_i_6_n_0 ),
        .I4(p_0_out[2]),
        .I5(p_0_out[3]),
        .O(\led_out[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \led_out[8]_i_1 
       (.I0(p_0_out[4]),
        .I1(volume_level[7]),
        .I2(p_0_out[3]),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'hF8FFF888)) 
    \led_out[9]_i_1 
       (.I0(p_0_out[4]),
        .I1(volume_level[8]),
        .I2(p_0_out[3]),
        .I3(p_0_out[0]),
        .I4(\led_out[11]_i_2_n_0 ),
        .O(p_1_in[9]));
  FDRE \led_out_reg[10] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[10]),
        .Q(volume_level[9]),
        .R(1'b0));
  FDRE \led_out_reg[11] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[11]),
        .Q(volume_level[10]),
        .R(1'b0));
  FDRE \led_out_reg[12] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[12]),
        .Q(volume_level[11]),
        .R(1'b0));
  FDRE \led_out_reg[13] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[13]),
        .Q(volume_level[12]),
        .R(1'b0));
  FDRE \led_out_reg[14] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[14]),
        .Q(volume_level[13]),
        .R(1'b0));
  FDRE \led_out_reg[15] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[15]),
        .Q(volume_level[14]),
        .R(1'b0));
  FDRE \led_out_reg[1] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[1]),
        .Q(volume_level[0]),
        .R(1'b0));
  FDRE \led_out_reg[2] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[2]),
        .Q(volume_level[1]),
        .R(1'b0));
  FDRE \led_out_reg[3] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[3]),
        .Q(volume_level[2]),
        .R(1'b0));
  FDRE \led_out_reg[4] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[4]),
        .Q(volume_level[3]),
        .R(1'b0));
  FDRE \led_out_reg[5] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[5]),
        .Q(volume_level[4]),
        .R(1'b0));
  FDRE \led_out_reg[6] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[6]),
        .Q(volume_level[5]),
        .R(1'b0));
  FDRE \led_out_reg[7] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[7]),
        .Q(volume_level[6]),
        .R(1'b0));
  FDRE \led_out_reg[8] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[8]),
        .Q(volume_level[7]),
        .R(1'b0));
  FDRE \led_out_reg[9] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[9]),
        .Q(volume_level[8]),
        .R(1'b0));
  CARRY4 mult20_carry
       (.CI(1'b0),
        .CO({mult20_carry_n_0,mult20_carry_n_1,mult20_carry_n_2,mult20_carry_n_3}),
        .CYINIT(mult20_carry_i_1_n_0),
        .DI({diff2[0],1'b0,1'b0,1'b0}),
        .O(mult20[4:1]),
        .S({mult20_carry_i_2_n_0,mult20_carry_i_3_n_0,mult20_carry_i_4_n_0,mult20_carry_i_5_n_0}));
  CARRY4 mult20_carry__0
       (.CI(mult20_carry_n_0),
        .CO({NLW_mult20_carry__0_CO_UNCONNECTED[3],mult20_carry__0_n_1,mult20_carry__0_n_2,mult20_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,diff2[3:1]}),
        .O(mult20[8:5]),
        .S({1'b1,mult20_carry__0_i_1_n_0,mult20_carry__0_i_2_n_0,mult20_carry__0_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    mult20_carry__0_i_1
       (.I0(diff2[3]),
        .O(mult20_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult20_carry__0_i_2
       (.I0(diff2[2]),
        .O(mult20_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult20_carry__0_i_3
       (.I0(diff2[1]),
        .O(mult20_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult20_carry_i_1
       (.I0(diff2[0]),
        .O(mult20_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult20_carry_i_2
       (.I0(diff2[0]),
        .O(mult20_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult20_carry_i_3
       (.I0(diff2[3]),
        .O(mult20_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult20_carry_i_4
       (.I0(diff2[2]),
        .O(mult20_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult20_carry_i_5
       (.I0(diff2[1]),
        .O(mult20_carry_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mult2_reg[0] 
       (.C(aclk),
        .CE(aresetn),
        .D(diff2[0]),
        .Q(mult2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mult2_reg[1] 
       (.C(aclk),
        .CE(aresetn),
        .D(mult20[1]),
        .Q(mult2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mult2_reg[2] 
       (.C(aclk),
        .CE(aresetn),
        .D(mult20[2]),
        .Q(mult2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mult2_reg[3] 
       (.C(aclk),
        .CE(aresetn),
        .D(mult20[3]),
        .Q(mult2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mult2_reg[4] 
       (.C(aclk),
        .CE(aresetn),
        .D(mult20[4]),
        .Q(mult2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mult2_reg[5] 
       (.C(aclk),
        .CE(aresetn),
        .D(mult20[5]),
        .Q(mult2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mult2_reg[6] 
       (.C(aclk),
        .CE(aresetn),
        .D(mult20[6]),
        .Q(mult2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mult2_reg[7] 
       (.C(aclk),
        .CE(aresetn),
        .D(mult20[7]),
        .Q(mult2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mult2_reg[8] 
       (.C(aclk),
        .CE(aresetn),
        .D(mult20[8]),
        .Q(mult2[8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF00FF00F8FF0F00F)) 
    \volume_uns[1]_i_1 
       (.I0(volume[2]),
        .I1(volume[3]),
        .I2(volume[1]),
        .I3(volume[0]),
        .I4(volume_up),
        .I5(volume_down),
        .O(\volume_uns[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF2DFF2200D200D)) 
    \volume_uns[2]_i_1 
       (.I0(volume_up),
        .I1(volume_down),
        .I2(volume[0]),
        .I3(volume[1]),
        .I4(volume[3]),
        .I5(volume[2]),
        .O(\volume_uns[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4666666666666662)) 
    \volume_uns[3]_i_1 
       (.I0(volume_up),
        .I1(volume_down),
        .I2(volume[0]),
        .I3(volume[1]),
        .I4(volume[3]),
        .I5(volume[2]),
        .O(\volume_uns[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFEFE01800101)) 
    \volume_uns[3]_i_2 
       (.I0(volume[2]),
        .I1(volume[1]),
        .I2(volume[0]),
        .I3(volume_down),
        .I4(volume_up),
        .I5(volume[3]),
        .O(\volume_uns[3]_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \volume_uns_reg[0] 
       (.C(aclk),
        .CE(\volume_uns[3]_i_1_n_0 ),
        .D(D[0]),
        .PRE(AR),
        .Q(volume[0]));
  FDPE #(
    .INIT(1'b1)) 
    \volume_uns_reg[1] 
       (.C(aclk),
        .CE(\volume_uns[3]_i_1_n_0 ),
        .D(\volume_uns[1]_i_1_n_0 ),
        .PRE(AR),
        .Q(volume[1]));
  FDPE #(
    .INIT(1'b1)) 
    \volume_uns_reg[2] 
       (.C(aclk),
        .CE(\volume_uns[3]_i_1_n_0 ),
        .D(\volume_uns[2]_i_1_n_0 ),
        .PRE(AR),
        .Q(volume[2]));
  FDCE #(
    .INIT(1'b0)) 
    \volume_uns_reg[3] 
       (.C(aclk),
        .CE(\volume_uns[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\volume_uns[3]_i_2_n_0 ),
        .Q(volume[3]));
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

// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat May 30 00:30:02 2020
// Host        : DESKTOP-O39JAIK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Vivado_DESD_Project/Project/Personal/Lab3_A4/LAB3A4/Sources/BD/bd_top_00/ip/bd_top_00_volume_controller_0_0/bd_top_00_volume_controller_0_0_sim_netlist.v
// Design      : bd_top_00_volume_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_top_00_volume_controller_0_0,volume_controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "volume_controller,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module bd_top_00_volume_controller_0_0
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
  bd_top_00_volume_controller_0_0_volume_controller U0
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
module bd_top_00_volume_controller_0_0_volume_controller
   (volume_level,
    m_axis_tvalid,
    s_axis_tready,
    m_axis_tdata,
    m_axis_tlast,
    aclk,
    aresetn,
    s_axis_tdata,
    volume_up,
    volume_down,
    s_axis_tlast,
    s_axis_tvalid,
    m_axis_tready);
  output [14:0]volume_level;
  output m_axis_tvalid;
  output s_axis_tready;
  output [15:0]m_axis_tdata;
  output m_axis_tlast;
  input aclk;
  input aresetn;
  input [15:0]s_axis_tdata;
  input volume_up;
  input volume_down;
  input s_axis_tlast;
  input s_axis_tvalid;
  input m_axis_tready;

  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire aclk;
  wire aresetn;
  wire data_in0;
  wire \data_in_reg_n_0_[0] ;
  wire \data_in_reg_n_0_[10] ;
  wire \data_in_reg_n_0_[11] ;
  wire \data_in_reg_n_0_[12] ;
  wire \data_in_reg_n_0_[13] ;
  wire \data_in_reg_n_0_[14] ;
  wire \data_in_reg_n_0_[1] ;
  wire \data_in_reg_n_0_[2] ;
  wire \data_in_reg_n_0_[3] ;
  wire \data_in_reg_n_0_[4] ;
  wire \data_in_reg_n_0_[5] ;
  wire \data_in_reg_n_0_[6] ;
  wire \data_in_reg_n_0_[7] ;
  wire \data_in_reg_n_0_[8] ;
  wire \data_in_reg_n_0_[9] ;
  wire [15:0]data_out;
  wire data_out0;
  wire \data_out[0]_i_10_n_0 ;
  wire \data_out[0]_i_11_n_0 ;
  wire \data_out[0]_i_12_n_0 ;
  wire \data_out[0]_i_13_n_0 ;
  wire \data_out[0]_i_14_n_0 ;
  wire \data_out[0]_i_15_n_0 ;
  wire \data_out[0]_i_2_n_0 ;
  wire \data_out[0]_i_3_n_0 ;
  wire \data_out[0]_i_4_n_0 ;
  wire \data_out[0]_i_5_n_0 ;
  wire \data_out[0]_i_6_n_0 ;
  wire \data_out[0]_i_7_n_0 ;
  wire \data_out[0]_i_8_n_0 ;
  wire \data_out[0]_i_9_n_0 ;
  wire \data_out[10]_i_10_n_0 ;
  wire \data_out[10]_i_11_n_0 ;
  wire \data_out[10]_i_12_n_0 ;
  wire \data_out[10]_i_13_n_0 ;
  wire \data_out[10]_i_14_n_0 ;
  wire \data_out[10]_i_15_n_0 ;
  wire \data_out[10]_i_16_n_0 ;
  wire \data_out[10]_i_17_n_0 ;
  wire \data_out[10]_i_18_n_0 ;
  wire \data_out[10]_i_2_n_0 ;
  wire \data_out[10]_i_3_n_0 ;
  wire \data_out[10]_i_4_n_0 ;
  wire \data_out[10]_i_5_n_0 ;
  wire \data_out[10]_i_6_n_0 ;
  wire \data_out[10]_i_7_n_0 ;
  wire \data_out[10]_i_8_n_0 ;
  wire \data_out[10]_i_9_n_0 ;
  wire \data_out[11]_i_10_n_0 ;
  wire \data_out[11]_i_2_n_0 ;
  wire \data_out[11]_i_3_n_0 ;
  wire \data_out[11]_i_4_n_0 ;
  wire \data_out[11]_i_5_n_0 ;
  wire \data_out[11]_i_6_n_0 ;
  wire \data_out[11]_i_7_n_0 ;
  wire \data_out[11]_i_8_n_0 ;
  wire \data_out[11]_i_9_n_0 ;
  wire \data_out[12]_i_10_n_0 ;
  wire \data_out[12]_i_11_n_0 ;
  wire \data_out[12]_i_12_n_0 ;
  wire \data_out[12]_i_2_n_0 ;
  wire \data_out[12]_i_3_n_0 ;
  wire \data_out[12]_i_4_n_0 ;
  wire \data_out[12]_i_5_n_0 ;
  wire \data_out[12]_i_6_n_0 ;
  wire \data_out[12]_i_7_n_0 ;
  wire \data_out[12]_i_8_n_0 ;
  wire \data_out[12]_i_9_n_0 ;
  wire \data_out[13]_i_10_n_0 ;
  wire \data_out[13]_i_11_n_0 ;
  wire \data_out[13]_i_12_n_0 ;
  wire \data_out[13]_i_13_n_0 ;
  wire \data_out[13]_i_14_n_0 ;
  wire \data_out[13]_i_15_n_0 ;
  wire \data_out[13]_i_16_n_0 ;
  wire \data_out[13]_i_17_n_0 ;
  wire \data_out[13]_i_18_n_0 ;
  wire \data_out[13]_i_19_n_0 ;
  wire \data_out[13]_i_20_n_0 ;
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
  wire \data_out[14]_i_19_n_0 ;
  wire \data_out[14]_i_20_n_0 ;
  wire \data_out[14]_i_21_n_0 ;
  wire \data_out[14]_i_2_n_0 ;
  wire \data_out[14]_i_3_n_0 ;
  wire \data_out[14]_i_4_n_0 ;
  wire \data_out[14]_i_5_n_0 ;
  wire \data_out[14]_i_6_n_0 ;
  wire \data_out[14]_i_7_n_0 ;
  wire \data_out[14]_i_8_n_0 ;
  wire \data_out[14]_i_9_n_0 ;
  wire \data_out[15]_i_3_n_0 ;
  wire \data_out[1]_i_10_n_0 ;
  wire \data_out[1]_i_11_n_0 ;
  wire \data_out[1]_i_2_n_0 ;
  wire \data_out[1]_i_3_n_0 ;
  wire \data_out[1]_i_4_n_0 ;
  wire \data_out[1]_i_5_n_0 ;
  wire \data_out[1]_i_6_n_0 ;
  wire \data_out[1]_i_7_n_0 ;
  wire \data_out[1]_i_8_n_0 ;
  wire \data_out[1]_i_9_n_0 ;
  wire \data_out[2]_i_10_n_0 ;
  wire \data_out[2]_i_11_n_0 ;
  wire \data_out[2]_i_12_n_0 ;
  wire \data_out[2]_i_13_n_0 ;
  wire \data_out[2]_i_2_n_0 ;
  wire \data_out[2]_i_3_n_0 ;
  wire \data_out[2]_i_4_n_0 ;
  wire \data_out[2]_i_5_n_0 ;
  wire \data_out[2]_i_6_n_0 ;
  wire \data_out[2]_i_7_n_0 ;
  wire \data_out[2]_i_8_n_0 ;
  wire \data_out[2]_i_9_n_0 ;
  wire \data_out[3]_i_2_n_0 ;
  wire \data_out[3]_i_3_n_0 ;
  wire \data_out[3]_i_4_n_0 ;
  wire \data_out[3]_i_5_n_0 ;
  wire \data_out[3]_i_6_n_0 ;
  wire \data_out[3]_i_7_n_0 ;
  wire \data_out[4]_i_2_n_0 ;
  wire \data_out[4]_i_3_n_0 ;
  wire \data_out[4]_i_4_n_0 ;
  wire \data_out[4]_i_5_n_0 ;
  wire \data_out[4]_i_6_n_0 ;
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
  wire \data_out[6]_i_15_n_0 ;
  wire \data_out[6]_i_2_n_0 ;
  wire \data_out[6]_i_3_n_0 ;
  wire \data_out[6]_i_4_n_0 ;
  wire \data_out[6]_i_5_n_0 ;
  wire \data_out[6]_i_6_n_0 ;
  wire \data_out[6]_i_7_n_0 ;
  wire \data_out[6]_i_8_n_0 ;
  wire \data_out[6]_i_9_n_0 ;
  wire \data_out[7]_i_10_n_0 ;
  wire \data_out[7]_i_11_n_0 ;
  wire \data_out[7]_i_12_n_0 ;
  wire \data_out[7]_i_13_n_0 ;
  wire \data_out[7]_i_14_n_0 ;
  wire \data_out[7]_i_15_n_0 ;
  wire \data_out[7]_i_16_n_0 ;
  wire \data_out[7]_i_2_n_0 ;
  wire \data_out[7]_i_3_n_0 ;
  wire \data_out[7]_i_4_n_0 ;
  wire \data_out[7]_i_5_n_0 ;
  wire \data_out[7]_i_6_n_0 ;
  wire \data_out[7]_i_7_n_0 ;
  wire \data_out[7]_i_8_n_0 ;
  wire \data_out[7]_i_9_n_0 ;
  wire \data_out[8]_i_10_n_0 ;
  wire \data_out[8]_i_11_n_0 ;
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
  wire p_0_in1_in;
  wire [15:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [4:0]state1;
  wire tlast_expected;
  wire tlast_expected_0;
  wire tlast_expected_i_1_n_0;
  wire tlast_sampled;
  wire tlast_sampled0;
  wire vol_led_ctrl_n_20;
  wire vol_led_ctrl_n_21;
  wire vol_led_ctrl_n_23;
  wire volume_down;
  wire [14:0]volume_level;
  wire volume_up;

  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(m_axis_tready),
        .I2(m_axis_tvalid),
        .I3(tlast_expected_0),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFF04)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(s_axis_tready),
        .I1(m_axis_tvalid),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \FSM_onehot_state[1]_i_4 
       (.I0(s_axis_tvalid),
        .I1(s_axis_tready),
        .I2(s_axis_tlast),
        .I3(tlast_expected),
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
       (.I0(s_axis_tvalid),
        .I1(s_axis_tready),
        .I2(aresetn),
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
        .Q(p_0_in1_in),
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
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \data_out[0]_i_1 
       (.I0(\data_out[0]_i_2_n_0 ),
        .I1(\data_out[0]_i_3_n_0 ),
        .I2(\data_out[6]_i_5_n_0 ),
        .I3(\data_out[0]_i_4_n_0 ),
        .I4(\data_out[0]_i_5_n_0 ),
        .I5(\data_out[0]_i_6_n_0 ),
        .O(data_out[0]));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \data_out[0]_i_10 
       (.I0(\data_out[1]_i_11_n_0 ),
        .I1(\data_out[8]_i_9_n_0 ),
        .I2(diff[3]),
        .I3(\data_out[2]_i_10_n_0 ),
        .I4(\data_in_reg_n_0_[1] ),
        .I5(\data_out[10]_i_10_n_0 ),
        .O(\data_out[0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \data_out[0]_i_11 
       (.I0(diff[4]),
        .I1(p_0_in1_in),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\data_out[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_out[0]_i_12 
       (.I0(diff[1]),
        .I1(diff[2]),
        .O(\data_out[0]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00A000C0)) 
    \data_out[0]_i_13 
       (.I0(\data_in_reg_n_0_[3] ),
        .I1(\data_in_reg_n_0_[4] ),
        .I2(diff[2]),
        .I3(diff[1]),
        .I4(diff[0]),
        .O(\data_out[0]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_out[0]_i_14 
       (.I0(diff[4]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(diff[3]),
        .O(\data_out[0]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[0]_i_15 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(diff[4]),
        .O(\data_out[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \data_out[0]_i_2 
       (.I0(\data_out[12]_i_11_n_0 ),
        .I1(\data_out[8]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\data_out[13]_i_13_n_0 ),
        .I4(\data_out[0]_i_7_n_0 ),
        .I5(\data_out[0]_i_8_n_0 ),
        .O(\data_out[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \data_out[0]_i_3 
       (.I0(s_axis_tdata[0]),
        .I1(s_axis_tready),
        .I2(\data_out[0]_i_9_n_0 ),
        .I3(\data_out[0]_i_10_n_0 ),
        .O(\data_out[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8000000)) 
    \data_out[0]_i_4 
       (.I0(\data_in_reg_n_0_[6] ),
        .I1(diff[3]),
        .I2(\data_in_reg_n_0_[14] ),
        .I3(\data_out[6]_i_10_n_0 ),
        .I4(\data_out[0]_i_11_n_0 ),
        .O(\data_out[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8000000)) 
    \data_out[0]_i_5 
       (.I0(\data_in_reg_n_0_[2] ),
        .I1(diff[3]),
        .I2(\data_in_reg_n_0_[10] ),
        .I3(\data_out[10]_i_12_n_0 ),
        .I4(\data_out[0]_i_11_n_0 ),
        .O(\data_out[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \data_out[0]_i_6 
       (.I0(\data_out[5]_i_9_n_0 ),
        .I1(\data_in_reg_n_0_[0] ),
        .I2(\data_out[12]_i_3_n_0 ),
        .I3(\data_out[0]_i_12_n_0 ),
        .I4(\data_out[2]_i_10_n_0 ),
        .I5(\data_out[0]_i_13_n_0 ),
        .O(\data_out[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \data_out[0]_i_7 
       (.I0(\data_out[0]_i_14_n_0 ),
        .I1(\data_out[10]_i_8_n_0 ),
        .I2(\data_in_reg_n_0_[13] ),
        .I3(\data_out[14]_i_8_n_0 ),
        .I4(\data_in_reg_n_0_[14] ),
        .I5(diff[0]),
        .O(\data_out[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8000800080F08000)) 
    \data_out[0]_i_8 
       (.I0(\data_out[10]_i_8_n_0 ),
        .I1(\data_in_reg_n_0_[5] ),
        .I2(\data_out[0]_i_15_n_0 ),
        .I3(diff[3]),
        .I4(\data_in_reg_n_0_[9] ),
        .I5(\data_out[10]_i_10_n_0 ),
        .O(\data_out[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000A000C0)) 
    \data_out[0]_i_9 
       (.I0(\data_in_reg_n_0_[7] ),
        .I1(\data_in_reg_n_0_[8] ),
        .I2(\data_out[7]_i_14_n_0 ),
        .I3(diff[2]),
        .I4(diff[0]),
        .I5(diff[1]),
        .O(\data_out[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \data_out[10]_i_1 
       (.I0(\data_out[10]_i_2_n_0 ),
        .I1(\data_out[10]_i_3_n_0 ),
        .I2(\data_out[10]_i_4_n_0 ),
        .I3(\data_out[10]_i_5_n_0 ),
        .I4(\data_out[10]_i_6_n_0 ),
        .I5(\data_out[10]_i_7_n_0 ),
        .O(data_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \data_out[10]_i_10 
       (.I0(diff[2]),
        .I1(diff[1]),
        .I2(diff[0]),
        .O(\data_out[10]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00F2000000220000)) 
    \data_out[10]_i_11 
       (.I0(\data_in_reg_n_0_[3] ),
        .I1(diff[4]),
        .I2(\data_in_reg_n_0_[11] ),
        .I3(p_0_in1_in),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(diff[3]),
        .O(\data_out[10]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_out[10]_i_12 
       (.I0(diff[2]),
        .I1(diff[1]),
        .I2(diff[0]),
        .O(\data_out[10]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \data_out[10]_i_13 
       (.I0(\data_in_reg_n_0_[6] ),
        .I1(diff[2]),
        .I2(diff[1]),
        .I3(diff[0]),
        .I4(\data_out[14]_i_8_n_0 ),
        .O(\data_out[10]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \data_out[10]_i_14 
       (.I0(\data_in_reg_n_0_[5] ),
        .I1(diff[1]),
        .I2(diff[0]),
        .I3(diff[2]),
        .I4(\data_out[14]_i_8_n_0 ),
        .O(\data_out[10]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h000000CC0000F0AA)) 
    \data_out[10]_i_15 
       (.I0(\data_out[13]_i_8_n_0 ),
        .I1(\data_out[12]_i_8_n_0 ),
        .I2(\data_out[14]_i_16_n_0 ),
        .I3(diff[1]),
        .I4(diff[2]),
        .I5(diff[0]),
        .O(\data_out[10]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAEAEAAA)) 
    \data_out[10]_i_16 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\data_in_reg_n_0_[6] ),
        .I2(\data_out[14]_i_19_n_0 ),
        .I3(diff[1]),
        .I4(diff[0]),
        .I5(\data_out[12]_i_3_n_0 ),
        .O(\data_out[10]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0B08)) 
    \data_out[10]_i_17 
       (.I0(\data_in_reg_n_0_[13] ),
        .I1(diff[0]),
        .I2(diff[1]),
        .I3(\data_in_reg_n_0_[14] ),
        .O(\data_out[10]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hF8000800)) 
    \data_out[10]_i_18 
       (.I0(diff[2]),
        .I1(diff[3]),
        .I2(p_0_in1_in),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(diff[4]),
        .O(\data_out[10]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \data_out[10]_i_2 
       (.I0(\data_out[14]_i_13_n_0 ),
        .I1(\data_out[10]_i_8_n_0 ),
        .I2(\data_out[10]_i_9_n_0 ),
        .I3(\data_out[13]_i_10_n_0 ),
        .I4(\data_out[10]_i_10_n_0 ),
        .I5(\data_out[10]_i_11_n_0 ),
        .O(\data_out[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \data_out[10]_i_3 
       (.I0(\data_in_reg_n_0_[12] ),
        .I1(p_0_in1_in),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(diff[3]),
        .I4(\data_out[10]_i_12_n_0 ),
        .O(\data_out[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \data_out[10]_i_4 
       (.I0(\data_in_reg_n_0_[4] ),
        .I1(\data_out[14]_i_8_n_0 ),
        .I2(diff[0]),
        .I3(diff[1]),
        .I4(diff[2]),
        .O(\data_out[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \data_out[10]_i_5 
       (.I0(\data_out[13]_i_16_n_0 ),
        .I1(\data_out[13]_i_15_n_0 ),
        .I2(\data_out[13]_i_14_n_0 ),
        .I3(\data_out[14]_i_11_n_0 ),
        .I4(\data_out[14]_i_14_n_0 ),
        .I5(\data_in_reg_n_0_[14] ),
        .O(\data_out[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \data_out[10]_i_6 
       (.I0(\data_out[13]_i_7_n_0 ),
        .I1(\data_out[12]_i_10_n_0 ),
        .I2(\data_out[10]_i_13_n_0 ),
        .I3(\data_out[10]_i_14_n_0 ),
        .I4(\data_out[10]_i_15_n_0 ),
        .I5(\data_out[10]_i_16_n_0 ),
        .O(\data_out[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_out[10]_i_7 
       (.I0(\data_out[14]_i_10_n_0 ),
        .I1(\data_in_reg_n_0_[10] ),
        .I2(\data_out[10]_i_17_n_0 ),
        .I3(\data_out[10]_i_18_n_0 ),
        .I4(s_axis_tready),
        .I5(s_axis_tdata[10]),
        .O(\data_out[10]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_out[10]_i_8 
       (.I0(diff[1]),
        .I1(diff[0]),
        .I2(diff[2]),
        .O(\data_out[10]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hC840FFFF)) 
    \data_out[10]_i_9 
       (.I0(diff[0]),
        .I1(diff[1]),
        .I2(\data_in_reg_n_0_[12] ),
        .I3(\data_in_reg_n_0_[11] ),
        .I4(diff[2]),
        .O(\data_out[10]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \data_out[11]_i_1 
       (.I0(\data_out[13]_i_5_n_0 ),
        .I1(\data_out[11]_i_2_n_0 ),
        .I2(\data_out[11]_i_3_n_0 ),
        .I3(\data_out[11]_i_4_n_0 ),
        .I4(\data_out[11]_i_5_n_0 ),
        .I5(\data_out[11]_i_6_n_0 ),
        .O(data_out[11]));
  LUT6 #(
    .INIT(64'hF0FFAAFFCCFFFFFF)) 
    \data_out[11]_i_10 
       (.I0(\data_in_reg_n_0_[13] ),
        .I1(\data_in_reg_n_0_[14] ),
        .I2(\data_in_reg_n_0_[12] ),
        .I3(diff[2]),
        .I4(diff[0]),
        .I5(diff[1]),
        .O(\data_out[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \data_out[11]_i_2 
       (.I0(p_0_in1_in),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(diff[3]),
        .I3(\data_out[14]_i_18_n_0 ),
        .I4(diff[2]),
        .I5(\data_in_reg_n_0_[11] ),
        .O(\data_out[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8F8F8F8F8)) 
    \data_out[11]_i_3 
       (.I0(s_axis_tready),
        .I1(s_axis_tdata[11]),
        .I2(\data_out[12]_i_3_n_0 ),
        .I3(\data_in_reg_n_0_[12] ),
        .I4(\data_out[11]_i_7_n_0 ),
        .I5(\data_out[14]_i_8_n_0 ),
        .O(\data_out[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAAAAAAA)) 
    \data_out[11]_i_4 
       (.I0(\data_out[11]_i_8_n_0 ),
        .I1(\data_in_reg_n_0_[4] ),
        .I2(diff[0]),
        .I3(diff[1]),
        .I4(\data_out[14]_i_14_n_0 ),
        .I5(\data_out[11]_i_9_n_0 ),
        .O(\data_out[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0F0F0FEF2FEF2)) 
    \data_out[11]_i_5 
       (.I0(\data_out[14]_i_7_n_0 ),
        .I1(diff[0]),
        .I2(\data_out[14]_i_17_n_0 ),
        .I3(\data_out[13]_i_8_n_0 ),
        .I4(diff[2]),
        .I5(diff[1]),
        .O(\data_out[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFC840C840C840)) 
    \data_out[11]_i_6 
       (.I0(diff[0]),
        .I1(diff[1]),
        .I2(\data_out[12]_i_8_n_0 ),
        .I3(\data_out[14]_i_16_n_0 ),
        .I4(\data_out[13]_i_10_n_0 ),
        .I5(\data_out[11]_i_10_n_0 ),
        .O(\data_out[11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[11]_i_7 
       (.I0(diff[0]),
        .I1(diff[1]),
        .O(\data_out[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00C0F0A000C000A0)) 
    \data_out[11]_i_8 
       (.I0(\data_out[14]_i_13_n_0 ),
        .I1(\data_out[13]_i_12_n_0 ),
        .I2(diff[2]),
        .I3(diff[1]),
        .I4(diff[0]),
        .I5(\data_out[12]_i_7_n_0 ),
        .O(\data_out[11]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \data_out[11]_i_9 
       (.I0(\data_out[10]_i_10_n_0 ),
        .I1(\data_in_reg_n_0_[12] ),
        .I2(diff[3]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(p_0_in1_in),
        .O(\data_out[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \data_out[12]_i_1 
       (.I0(\data_out[12]_i_2_n_0 ),
        .I1(\data_out[12]_i_3_n_0 ),
        .I2(\data_out[12]_i_4_n_0 ),
        .I3(\data_out[13]_i_5_n_0 ),
        .I4(\data_out[12]_i_5_n_0 ),
        .I5(\data_out[12]_i_6_n_0 ),
        .O(data_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hE000A000)) 
    \data_out[12]_i_10 
       (.I0(\data_out[13]_i_9_n_0 ),
        .I1(diff[2]),
        .I2(diff[1]),
        .I3(diff[0]),
        .I4(\data_out[14]_i_16_n_0 ),
        .O(\data_out[12]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_out[12]_i_11 
       (.I0(\data_out[13]_i_8_n_0 ),
        .I1(\data_out[12]_i_12_n_0 ),
        .I2(\data_out[14]_i_14_n_0 ),
        .I3(\data_in_reg_n_0_[13] ),
        .I4(\data_out[14]_i_19_n_0 ),
        .I5(\data_in_reg_n_0_[8] ),
        .O(\data_out[12]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[12]_i_12 
       (.I0(diff[0]),
        .I1(diff[2]),
        .O(\data_out[12]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00C0F0A000C000A0)) 
    \data_out[12]_i_2 
       (.I0(\data_out[14]_i_16_n_0 ),
        .I1(\data_out[14]_i_13_n_0 ),
        .I2(diff[2]),
        .I3(diff[1]),
        .I4(diff[0]),
        .I5(\data_out[13]_i_12_n_0 ),
        .O(\data_out[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \data_out[12]_i_3 
       (.I0(p_0_in1_in),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(diff[4]),
        .I3(diff[3]),
        .O(\data_out[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8800FFF0880000F0)) 
    \data_out[12]_i_4 
       (.I0(\data_out[12]_i_7_n_0 ),
        .I1(diff[2]),
        .I2(\data_out[13]_i_9_n_0 ),
        .I3(diff[0]),
        .I4(diff[1]),
        .I5(\data_out[14]_i_7_n_0 ),
        .O(\data_out[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFC840C840C840)) 
    \data_out[12]_i_5 
       (.I0(diff[0]),
        .I1(diff[1]),
        .I2(\data_out[13]_i_8_n_0 ),
        .I3(\data_out[12]_i_8_n_0 ),
        .I4(\data_out[13]_i_10_n_0 ),
        .I5(\data_out[12]_i_9_n_0 ),
        .O(\data_out[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \data_out[12]_i_6 
       (.I0(\data_out[14]_i_10_n_0 ),
        .I1(\data_in_reg_n_0_[12] ),
        .I2(s_axis_tdata[12]),
        .I3(s_axis_tready),
        .I4(\data_out[12]_i_10_n_0 ),
        .I5(\data_out[12]_i_11_n_0 ),
        .O(\data_out[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00F2000000220000)) 
    \data_out[12]_i_7 
       (.I0(\data_in_reg_n_0_[5] ),
        .I1(diff[4]),
        .I2(\data_in_reg_n_0_[13] ),
        .I3(p_0_in1_in),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(diff[3]),
        .O(\data_out[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F80000)) 
    \data_out[12]_i_8 
       (.I0(\data_in_reg_n_0_[1] ),
        .I1(diff[3]),
        .I2(\data_in_reg_n_0_[9] ),
        .I3(p_0_in1_in),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(diff[4]),
        .O(\data_out[12]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hE2FFFFFF)) 
    \data_out[12]_i_9 
       (.I0(\data_in_reg_n_0_[14] ),
        .I1(diff[0]),
        .I2(\data_in_reg_n_0_[13] ),
        .I3(diff[2]),
        .I4(diff[1]),
        .O(\data_out[12]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_out[13]_i_1 
       (.I0(\data_out[13]_i_2_n_0 ),
        .I1(\data_out[13]_i_3_n_0 ),
        .I2(\data_out[13]_i_4_n_0 ),
        .I3(\data_out[13]_i_5_n_0 ),
        .I4(\data_out[13]_i_6_n_0 ),
        .O(data_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \data_out[13]_i_10 
       (.I0(diff[4]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(p_0_in1_in),
        .O(\data_out[13]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \data_out[13]_i_11 
       (.I0(diff[0]),
        .I1(diff[1]),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[14] ),
        .O(\data_out[13]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00F2000000220000)) 
    \data_out[13]_i_12 
       (.I0(\data_in_reg_n_0_[6] ),
        .I1(diff[4]),
        .I2(\data_in_reg_n_0_[14] ),
        .I3(p_0_in1_in),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(diff[3]),
        .O(\data_out[13]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCCC0C8C0CCC08880)) 
    \data_out[13]_i_13 
       (.I0(\data_in_reg_n_0_[14] ),
        .I1(\data_out[14]_i_8_n_0 ),
        .I2(diff[3]),
        .I3(diff[2]),
        .I4(\data_in_reg_n_0_[12] ),
        .I5(\data_in_reg_n_0_[7] ),
        .O(\data_out[13]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFAEFF0CFF0C)) 
    \data_out[13]_i_14 
       (.I0(\data_in_reg_n_0_[10] ),
        .I1(\data_out[12]_i_8_n_0 ),
        .I2(\data_out[14]_i_15_n_0 ),
        .I3(\data_out[13]_i_19_n_0 ),
        .I4(\data_out[13]_i_20_n_0 ),
        .I5(\data_out[14]_i_19_n_0 ),
        .O(\data_out[13]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFC880000)) 
    \data_out[13]_i_15 
       (.I0(\data_in_reg_n_0_[13] ),
        .I1(diff[1]),
        .I2(diff[0]),
        .I3(\data_in_reg_n_0_[14] ),
        .I4(\data_out[14]_i_8_n_0 ),
        .O(\data_out[13]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFC88000000000000)) 
    \data_out[13]_i_16 
       (.I0(\data_in_reg_n_0_[4] ),
        .I1(diff[2]),
        .I2(diff[1]),
        .I3(\data_in_reg_n_0_[5] ),
        .I4(diff[3]),
        .I5(\data_out[14]_i_8_n_0 ),
        .O(\data_out[13]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA80000)) 
    \data_out[13]_i_17 
       (.I0(\data_out[14]_i_19_n_0 ),
        .I1(diff[2]),
        .I2(diff[0]),
        .I3(diff[1]),
        .I4(\data_in_reg_n_0_[6] ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\data_out[13]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \data_out[13]_i_18 
       (.I0(diff[1]),
        .I1(diff[0]),
        .I2(diff[2]),
        .O(\data_out[13]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0404040000000000)) 
    \data_out[13]_i_19 
       (.I0(diff[4]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(p_0_in1_in),
        .I3(diff[3]),
        .I4(diff[2]),
        .I5(\data_in_reg_n_0_[11] ),
        .O(\data_out[13]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \data_out[13]_i_2 
       (.I0(\data_out[14]_i_10_n_0 ),
        .I1(\data_in_reg_n_0_[13] ),
        .I2(s_axis_tdata[13]),
        .I3(s_axis_tready),
        .I4(\data_out[13]_i_7_n_0 ),
        .I5(\data_out[12]_i_3_n_0 ),
        .O(\data_out[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \data_out[13]_i_20 
       (.I0(diff[2]),
        .I1(\data_in_reg_n_0_[3] ),
        .I2(\data_in_reg_n_0_[9] ),
        .O(\data_out[13]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCC80CC80CC80)) 
    \data_out[13]_i_3 
       (.I0(diff[1]),
        .I1(diff[0]),
        .I2(\data_out[13]_i_8_n_0 ),
        .I3(\data_out[13]_i_9_n_0 ),
        .I4(\data_out[13]_i_10_n_0 ),
        .I5(\data_out[13]_i_11_n_0 ),
        .O(\data_out[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC0C00000FF880000)) 
    \data_out[13]_i_4 
       (.I0(\data_out[14]_i_13_n_0 ),
        .I1(diff[2]),
        .I2(\data_out[13]_i_12_n_0 ),
        .I3(\data_out[14]_i_7_n_0 ),
        .I4(diff[1]),
        .I5(diff[0]),
        .O(\data_out[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_out[13]_i_5 
       (.I0(\data_out[13]_i_13_n_0 ),
        .I1(\data_out[13]_i_14_n_0 ),
        .I2(\data_out[13]_i_15_n_0 ),
        .I3(\data_out[13]_i_16_n_0 ),
        .I4(\data_out[13]_i_17_n_0 ),
        .O(\data_out[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF000FFFFF0008888)) 
    \data_out[13]_i_6 
       (.I0(\data_in_reg_n_0_[5] ),
        .I1(\data_out[14]_i_19_n_0 ),
        .I2(diff[2]),
        .I3(\data_out[14]_i_16_n_0 ),
        .I4(diff[0]),
        .I5(\data_out[14]_i_9_n_0 ),
        .O(\data_out[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_out[13]_i_7 
       (.I0(\data_out[13]_i_8_n_0 ),
        .I1(\data_out[13]_i_18_n_0 ),
        .I2(\data_out[14]_i_14_n_0 ),
        .I3(\data_in_reg_n_0_[13] ),
        .I4(\data_out[14]_i_19_n_0 ),
        .I5(\data_in_reg_n_0_[8] ),
        .O(\data_out[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F80000)) 
    \data_out[13]_i_8 
       (.I0(\data_in_reg_n_0_[2] ),
        .I1(diff[3]),
        .I2(\data_in_reg_n_0_[10] ),
        .I3(p_0_in1_in),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(diff[4]),
        .O(\data_out[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F80000)) 
    \data_out[13]_i_9 
       (.I0(\data_in_reg_n_0_[4] ),
        .I1(diff[3]),
        .I2(\data_in_reg_n_0_[12] ),
        .I3(p_0_in1_in),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(diff[4]),
        .O(\data_out[13]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_out[14]_i_1 
       (.I0(\data_out[14]_i_2_n_0 ),
        .I1(\data_out[14]_i_3_n_0 ),
        .I2(\data_out[14]_i_4_n_0 ),
        .I3(\data_out[14]_i_5_n_0 ),
        .I4(\data_out[14]_i_6_n_0 ),
        .O(data_out[14]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \data_out[14]_i_10 
       (.I0(diff[2]),
        .I1(diff[0]),
        .I2(diff[1]),
        .I3(diff[3]),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(p_0_in1_in),
        .O(\data_out[14]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hEEC00000)) 
    \data_out[14]_i_11 
       (.I0(\data_in_reg_n_0_[7] ),
        .I1(\data_in_reg_n_0_[12] ),
        .I2(diff[2]),
        .I3(diff[3]),
        .I4(\data_out[14]_i_8_n_0 ),
        .O(\data_out[14]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \data_out[14]_i_12 
       (.I0(diff[3]),
        .I1(p_0_in1_in),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(diff[4]),
        .I4(\data_in_reg_n_0_[6] ),
        .O(\data_out[14]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \data_out[14]_i_13 
       (.I0(diff[4]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(p_0_in1_in),
        .I3(\data_in_reg_n_0_[7] ),
        .O(\data_out[14]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000E00)) 
    \data_out[14]_i_14 
       (.I0(diff[2]),
        .I1(diff[3]),
        .I2(p_0_in1_in),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(diff[4]),
        .O(\data_out[14]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \data_out[14]_i_15 
       (.I0(diff[1]),
        .I1(diff[2]),
        .O(\data_out[14]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F80000)) 
    \data_out[14]_i_16 
       (.I0(\data_in_reg_n_0_[0] ),
        .I1(diff[3]),
        .I2(\data_in_reg_n_0_[8] ),
        .I3(p_0_in1_in),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(diff[4]),
        .O(\data_out[14]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hEEC00000)) 
    \data_out[14]_i_17 
       (.I0(\data_in_reg_n_0_[8] ),
        .I1(\data_in_reg_n_0_[13] ),
        .I2(diff[2]),
        .I3(diff[3]),
        .I4(\data_out[14]_i_8_n_0 ),
        .O(\data_out[14]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_out[14]_i_18 
       (.I0(diff[0]),
        .I1(diff[1]),
        .O(\data_out[14]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \data_out[14]_i_19 
       (.I0(diff[4]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(p_0_in1_in),
        .I3(diff[3]),
        .O(\data_out[14]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFC0EAC0C0C0)) 
    \data_out[14]_i_2 
       (.I0(\data_out[14]_i_7_n_0 ),
        .I1(\data_out[14]_i_8_n_0 ),
        .I2(\data_in_reg_n_0_[14] ),
        .I3(diff[0]),
        .I4(diff[1]),
        .I5(\data_out[14]_i_9_n_0 ),
        .O(\data_out[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC8C8C00088880000)) 
    \data_out[14]_i_20 
       (.I0(\data_in_reg_n_0_[12] ),
        .I1(\data_out[14]_i_8_n_0 ),
        .I2(diff[3]),
        .I3(diff[2]),
        .I4(diff[1]),
        .I5(\data_in_reg_n_0_[4] ),
        .O(\data_out[14]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFEFCF00000000000)) 
    \data_out[14]_i_21 
       (.I0(\data_in_reg_n_0_[3] ),
        .I1(\data_in_reg_n_0_[9] ),
        .I2(\data_in_reg_n_0_[11] ),
        .I3(diff[2]),
        .I4(diff[3]),
        .I5(\data_out[14]_i_8_n_0 ),
        .O(\data_out[14]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \data_out[14]_i_3 
       (.I0(\data_out[14]_i_10_n_0 ),
        .I1(\data_in_reg_n_0_[14] ),
        .I2(s_axis_tdata[14]),
        .I3(s_axis_tready),
        .I4(\data_out[14]_i_11_n_0 ),
        .I5(\data_out[14]_i_12_n_0 ),
        .O(\data_out[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF000FFFFF000F888)) 
    \data_out[14]_i_4 
       (.I0(\data_out[14]_i_13_n_0 ),
        .I1(diff[0]),
        .I2(\data_out[14]_i_14_n_0 ),
        .I3(\data_in_reg_n_0_[10] ),
        .I4(\data_out[14]_i_15_n_0 ),
        .I5(\data_out[14]_i_16_n_0 ),
        .O(\data_out[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAEEAAEAAAEAAA)) 
    \data_out[14]_i_5 
       (.I0(\data_out[14]_i_17_n_0 ),
        .I1(\data_in_reg_n_0_[5] ),
        .I2(\data_out[14]_i_18_n_0 ),
        .I3(\data_out[14]_i_19_n_0 ),
        .I4(\data_in_reg_n_0_[2] ),
        .I5(diff[2]),
        .O(\data_out[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    \data_out[14]_i_6 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\data_out[14]_i_20_n_0 ),
        .I2(\data_out[14]_i_21_n_0 ),
        .I3(diff[4]),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(p_0_in1_in),
        .O(\data_out[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F80000)) 
    \data_out[14]_i_7 
       (.I0(\data_in_reg_n_0_[3] ),
        .I1(diff[3]),
        .I2(\data_in_reg_n_0_[11] ),
        .I3(p_0_in1_in),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(diff[4]),
        .O(\data_out[14]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_out[14]_i_8 
       (.I0(p_0_in1_in),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(diff[4]),
        .O(\data_out[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEAAA00000000)) 
    \data_out[14]_i_9 
       (.I0(\data_in_reg_n_0_[13] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[1] ),
        .I3(diff[3]),
        .I4(\data_in_reg_n_0_[9] ),
        .I5(\data_out[14]_i_8_n_0 ),
        .O(\data_out[14]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_out[15]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in1_in),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(s_axis_tready),
        .I4(s_axis_tdata[15]),
        .O(data_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_out[15]_i_3 
       (.I0(diff[2]),
        .I1(diff[0]),
        .I2(diff[1]),
        .I3(diff[3]),
        .O(\data_out[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \data_out[1]_i_1 
       (.I0(\data_out[1]_i_2_n_0 ),
        .I1(\data_out[1]_i_3_n_0 ),
        .I2(\data_out[1]_i_4_n_0 ),
        .I3(\data_out[1]_i_5_n_0 ),
        .I4(\data_out[1]_i_6_n_0 ),
        .I5(\data_out[9]_i_2_n_0 ),
        .O(data_out[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_out[1]_i_10 
       (.I0(\data_out[6]_i_12_n_0 ),
        .I1(\data_out[5]_i_8_n_0 ),
        .I2(\data_out[5]_i_11_n_0 ),
        .I3(\data_out[6]_i_10_n_0 ),
        .I4(s_axis_tready),
        .I5(s_axis_tdata[1]),
        .O(\data_out[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hE020)) 
    \data_out[1]_i_11 
       (.I0(diff[2]),
        .I1(p_0_in1_in),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(diff[4]),
        .O(\data_out[1]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \data_out[1]_i_2 
       (.I0(\data_out[1]_i_7_n_0 ),
        .I1(\data_out[1]_i_8_n_0 ),
        .I2(\data_out[10]_i_12_n_0 ),
        .I3(\data_out[1]_i_9_n_0 ),
        .I4(\data_out[1]_i_10_n_0 ),
        .O(\data_out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \data_out[1]_i_3 
       (.I0(diff[4]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(diff[3]),
        .I3(\data_out[14]_i_18_n_0 ),
        .I4(diff[2]),
        .I5(\data_in_reg_n_0_[1] ),
        .O(\data_out[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0045004000000000)) 
    \data_out[1]_i_4 
       (.I0(diff[3]),
        .I1(\data_in_reg_n_0_[12] ),
        .I2(diff[0]),
        .I3(diff[1]),
        .I4(\data_in_reg_n_0_[13] ),
        .I5(\data_out[1]_i_11_n_0 ),
        .O(\data_out[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \data_out[1]_i_5 
       (.I0(\data_out[10]_i_10_n_0 ),
        .I1(\data_in_reg_n_0_[10] ),
        .I2(diff[3]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(diff[4]),
        .O(\data_out[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \data_out[1]_i_6 
       (.I0(\data_in_reg_n_0_[14] ),
        .I1(\data_out[10]_i_8_n_0 ),
        .I2(diff[3]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(diff[4]),
        .O(\data_out[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00008F880000)) 
    \data_out[1]_i_7 
       (.I0(\data_in_reg_n_0_[6] ),
        .I1(\data_out[10]_i_8_n_0 ),
        .I2(\data_out[10]_i_10_n_0 ),
        .I3(\data_in_reg_n_0_[2] ),
        .I4(\data_out[2]_i_10_n_0 ),
        .I5(\data_out[9]_i_8_n_0 ),
        .O(\data_out[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0808FF0808080808)) 
    \data_out[1]_i_8 
       (.I0(\data_in_reg_n_0_[9] ),
        .I1(\data_out[7]_i_14_n_0 ),
        .I2(\data_out[7]_i_15_n_0 ),
        .I3(\data_out[13]_i_10_n_0 ),
        .I4(diff[3]),
        .I5(\data_out[9]_i_9_n_0 ),
        .O(\data_out[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8888000000F00000)) 
    \data_out[1]_i_9 
       (.I0(\data_in_reg_n_0_[3] ),
        .I1(diff[4]),
        .I2(\data_in_reg_n_0_[11] ),
        .I3(p_0_in1_in),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(diff[3]),
        .O(\data_out[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \data_out[2]_i_1 
       (.I0(\data_out[2]_i_2_n_0 ),
        .I1(\data_out[2]_i_3_n_0 ),
        .I2(\data_out[2]_i_4_n_0 ),
        .I3(\data_out[2]_i_5_n_0 ),
        .I4(\data_out[2]_i_6_n_0 ),
        .I5(\data_out[2]_i_7_n_0 ),
        .O(data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \data_out[2]_i_10 
       (.I0(diff[4]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(diff[3]),
        .O(\data_out[2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[2]_i_11 
       (.I0(\data_in_reg_n_0_[13] ),
        .I1(diff[1]),
        .O(\data_out[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF000888800008888)) 
    \data_out[2]_i_12 
       (.I0(\data_out[1]_i_11_n_0 ),
        .I1(\data_out[10]_i_17_n_0 ),
        .I2(\data_out[0]_i_11_n_0 ),
        .I3(\data_in_reg_n_0_[6] ),
        .I4(diff[3]),
        .I5(\data_out[7]_i_13_n_0 ),
        .O(\data_out[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0000000)) 
    \data_out[2]_i_13 
       (.I0(diff[0]),
        .I1(diff[1]),
        .I2(diff[3]),
        .I3(\data_out[14]_i_8_n_0 ),
        .I4(\data_in_reg_n_0_[6] ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\data_out[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \data_out[2]_i_2 
       (.I0(s_axis_tdata[2]),
        .I1(s_axis_tready),
        .I2(\data_out[2]_i_8_n_0 ),
        .I3(\data_out[6]_i_12_n_0 ),
        .I4(\data_out[5]_i_7_n_0 ),
        .I5(\data_out[2]_i_9_n_0 ),
        .O(\data_out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_out[2]_i_3 
       (.I0(\data_out[14]_i_19_n_0 ),
        .I1(\data_in_reg_n_0_[14] ),
        .I2(\data_out[10]_i_9_n_0 ),
        .I3(\data_out[12]_i_3_n_0 ),
        .I4(\data_out[10]_i_12_n_0 ),
        .I5(\data_out[3]_i_6_n_0 ),
        .O(\data_out[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \data_out[2]_i_4 
       (.I0(diff[4]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(diff[3]),
        .I3(\data_out[14]_i_18_n_0 ),
        .I4(diff[2]),
        .I5(\data_in_reg_n_0_[2] ),
        .O(\data_out[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \data_out[2]_i_5 
       (.I0(\data_in_reg_n_0_[5] ),
        .I1(diff[1]),
        .I2(diff[0]),
        .I3(diff[2]),
        .I4(\data_out[2]_i_10_n_0 ),
        .O(\data_out[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEAAAA)) 
    \data_out[2]_i_6 
       (.I0(\data_out[13]_i_14_n_0 ),
        .I1(\data_out[2]_i_11_n_0 ),
        .I2(\data_out[14]_i_18_n_0 ),
        .I3(\data_in_reg_n_0_[14] ),
        .I4(\data_out[14]_i_8_n_0 ),
        .I5(\data_out[13]_i_16_n_0 ),
        .O(\data_out[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_out[2]_i_7 
       (.I0(\data_out[13]_i_7_n_0 ),
        .I1(\data_out[12]_i_10_n_0 ),
        .I2(\data_out[2]_i_12_n_0 ),
        .I3(\data_out[14]_i_11_n_0 ),
        .I4(\data_out[2]_i_13_n_0 ),
        .O(\data_out[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h008000F000800000)) 
    \data_out[2]_i_8 
       (.I0(\data_out[7]_i_14_n_0 ),
        .I1(\data_in_reg_n_0_[7] ),
        .I2(diff[1]),
        .I3(diff[2]),
        .I4(diff[0]),
        .I5(\data_out[5]_i_8_n_0 ),
        .O(\data_out[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF000000800000008)) 
    \data_out[2]_i_9 
       (.I0(\data_in_reg_n_0_[10] ),
        .I1(\data_out[7]_i_14_n_0 ),
        .I2(diff[2]),
        .I3(diff[1]),
        .I4(diff[0]),
        .I5(\data_out[1]_i_9_n_0 ),
        .O(\data_out[2]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_out[3]_i_1 
       (.I0(\data_out[3]_i_2_n_0 ),
        .I1(\data_out[3]_i_3_n_0 ),
        .I2(\data_out[3]_i_4_n_0 ),
        .I3(\data_out[9]_i_2_n_0 ),
        .I4(\data_out[3]_i_5_n_0 ),
        .O(data_out[3]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \data_out[3]_i_2 
       (.I0(\data_out[4]_i_6_n_0 ),
        .I1(\data_out[10]_i_12_n_0 ),
        .I2(\data_out[3]_i_6_n_0 ),
        .I3(\data_out[10]_i_10_n_0 ),
        .I4(\data_in_reg_n_0_[11] ),
        .I5(\data_out[6]_i_8_n_0 ),
        .O(\data_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FAC000000AC0)) 
    \data_out[3]_i_3 
       (.I0(\data_out[5]_i_6_n_0 ),
        .I1(\data_out[5]_i_7_n_0 ),
        .I2(diff[1]),
        .I3(diff[0]),
        .I4(diff[2]),
        .I5(\data_out[5]_i_8_n_0 ),
        .O(\data_out[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_out[3]_i_4 
       (.I0(\data_out[5]_i_9_n_0 ),
        .I1(\data_in_reg_n_0_[3] ),
        .I2(\data_out[11]_i_10_n_0 ),
        .I3(\data_out[12]_i_3_n_0 ),
        .I4(\data_out[3]_i_7_n_0 ),
        .I5(\data_out[5]_i_10_n_0 ),
        .O(\data_out[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h888888F888888888)) 
    \data_out[3]_i_5 
       (.I0(s_axis_tready),
        .I1(s_axis_tdata[3]),
        .I2(diff[2]),
        .I3(diff[1]),
        .I4(diff[0]),
        .I5(\data_out[5]_i_11_n_0 ),
        .O(\data_out[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8888000000F00000)) 
    \data_out[3]_i_6 
       (.I0(\data_in_reg_n_0_[4] ),
        .I1(diff[4]),
        .I2(\data_in_reg_n_0_[12] ),
        .I3(p_0_in1_in),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(diff[3]),
        .O(\data_out[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \data_out[3]_i_7 
       (.I0(diff[1]),
        .I1(diff[0]),
        .I2(diff[2]),
        .O(\data_out[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_out[4]_i_1 
       (.I0(\data_out[4]_i_2_n_0 ),
        .I1(\data_out[4]_i_3_n_0 ),
        .I2(\data_out[4]_i_4_n_0 ),
        .I3(\data_out[9]_i_2_n_0 ),
        .I4(\data_out[4]_i_5_n_0 ),
        .O(data_out[4]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \data_out[4]_i_2 
       (.I0(\data_out[4]_i_6_n_0 ),
        .I1(\data_out[10]_i_10_n_0 ),
        .I2(\data_out[6]_i_8_n_0 ),
        .I3(\data_in_reg_n_0_[12] ),
        .I4(\data_out[6]_i_12_n_0 ),
        .I5(\data_out[6]_i_11_n_0 ),
        .O(\data_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00CC000000AAF000)) 
    \data_out[4]_i_3 
       (.I0(\data_out[5]_i_6_n_0 ),
        .I1(\data_out[5]_i_7_n_0 ),
        .I2(\data_out[5]_i_8_n_0 ),
        .I3(diff[2]),
        .I4(diff[1]),
        .I5(diff[0]),
        .O(\data_out[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_out[4]_i_4 
       (.I0(\data_out[5]_i_9_n_0 ),
        .I1(\data_in_reg_n_0_[4] ),
        .I2(\data_out[12]_i_9_n_0 ),
        .I3(\data_out[12]_i_3_n_0 ),
        .I4(\data_out[10]_i_12_n_0 ),
        .I5(\data_out[5]_i_10_n_0 ),
        .O(\data_out[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8F88888888888888)) 
    \data_out[4]_i_5 
       (.I0(s_axis_tready),
        .I1(s_axis_tdata[4]),
        .I2(diff[1]),
        .I3(diff[0]),
        .I4(diff[2]),
        .I5(\data_out[5]_i_11_n_0 ),
        .O(\data_out[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8888000000F00000)) 
    \data_out[4]_i_6 
       (.I0(\data_in_reg_n_0_[5] ),
        .I1(diff[4]),
        .I2(\data_in_reg_n_0_[13] ),
        .I3(p_0_in1_in),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(diff[3]),
        .O(\data_out[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_out[5]_i_1 
       (.I0(\data_out[5]_i_2_n_0 ),
        .I1(\data_out[5]_i_3_n_0 ),
        .I2(\data_out[5]_i_4_n_0 ),
        .I3(\data_out[9]_i_2_n_0 ),
        .I4(\data_out[5]_i_5_n_0 ),
        .O(data_out[5]));
  LUT6 #(
    .INIT(64'h8888000000F00000)) 
    \data_out[5]_i_10 
       (.I0(\data_in_reg_n_0_[6] ),
        .I1(diff[4]),
        .I2(\data_in_reg_n_0_[14] ),
        .I3(p_0_in1_in),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(diff[3]),
        .O(\data_out[5]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hC8400000)) 
    \data_out[5]_i_11 
       (.I0(p_0_in1_in),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(diff[3]),
        .I3(diff[4]),
        .I4(\data_in_reg_n_0_[7] ),
        .O(\data_out[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_out[5]_i_2 
       (.I0(\data_out[6]_i_8_n_0 ),
        .I1(\data_in_reg_n_0_[13] ),
        .I2(\data_out[6]_i_9_n_0 ),
        .I3(\data_out[6]_i_12_n_0 ),
        .I4(\data_out[6]_i_10_n_0 ),
        .I5(\data_out[6]_i_11_n_0 ),
        .O(\data_out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \data_out[5]_i_3 
       (.I0(\data_out[5]_i_6_n_0 ),
        .I1(\data_out[5]_i_7_n_0 ),
        .I2(\data_out[5]_i_8_n_0 ),
        .I3(diff[1]),
        .I4(diff[0]),
        .I5(diff[2]),
        .O(\data_out[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF88FFFFFF88F888)) 
    \data_out[5]_i_4 
       (.I0(\data_out[5]_i_9_n_0 ),
        .I1(\data_in_reg_n_0_[5] ),
        .I2(\data_in_reg_n_0_[14] ),
        .I3(\data_out[12]_i_3_n_0 ),
        .I4(\data_out[10]_i_10_n_0 ),
        .I5(\data_out[5]_i_10_n_0 ),
        .O(\data_out[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8888F88888888888)) 
    \data_out[5]_i_5 
       (.I0(s_axis_tready),
        .I1(s_axis_tdata[5]),
        .I2(diff[2]),
        .I3(diff[1]),
        .I4(diff[0]),
        .I5(\data_out[5]_i_11_n_0 ),
        .O(\data_out[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC0C00000CC0A0000)) 
    \data_out[5]_i_6 
       (.I0(\data_in_reg_n_0_[2] ),
        .I1(\data_in_reg_n_0_[10] ),
        .I2(diff[4]),
        .I3(diff[3]),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(p_0_in1_in),
        .O(\data_out[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hC0C00000CC0A0000)) 
    \data_out[5]_i_7 
       (.I0(\data_in_reg_n_0_[1] ),
        .I1(\data_in_reg_n_0_[9] ),
        .I2(diff[4]),
        .I3(diff[3]),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(p_0_in1_in),
        .O(\data_out[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hC0C00000CC0A0000)) 
    \data_out[5]_i_8 
       (.I0(\data_in_reg_n_0_[0] ),
        .I1(\data_in_reg_n_0_[8] ),
        .I2(diff[4]),
        .I3(diff[3]),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(p_0_in1_in),
        .O(\data_out[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \data_out[5]_i_9 
       (.I0(diff[2]),
        .I1(diff[0]),
        .I2(diff[1]),
        .I3(diff[3]),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(diff[4]),
        .O(\data_out[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \data_out[6]_i_1 
       (.I0(\data_out[6]_i_2_n_0 ),
        .I1(\data_out[6]_i_3_n_0 ),
        .I2(\data_out[6]_i_4_n_0 ),
        .I3(\data_out[6]_i_5_n_0 ),
        .I4(\data_out[6]_i_6_n_0 ),
        .I5(\data_out[6]_i_7_n_0 ),
        .O(data_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \data_out[6]_i_10 
       (.I0(diff[1]),
        .I1(diff[2]),
        .I2(diff[0]),
        .O(\data_out[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hC0C00000CC0A0000)) 
    \data_out[6]_i_11 
       (.I0(\data_in_reg_n_0_[3] ),
        .I1(\data_in_reg_n_0_[11] ),
        .I2(diff[4]),
        .I3(diff[3]),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(p_0_in1_in),
        .O(\data_out[6]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \data_out[6]_i_12 
       (.I0(diff[0]),
        .I1(diff[2]),
        .I2(diff[1]),
        .O(\data_out[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h80F0808080808080)) 
    \data_out[6]_i_13 
       (.I0(\data_out[7]_i_15_n_0 ),
        .I1(\data_in_reg_n_0_[14] ),
        .I2(\data_out[14]_i_8_n_0 ),
        .I3(diff[3]),
        .I4(\data_out[6]_i_12_n_0 ),
        .I5(\data_in_reg_n_0_[5] ),
        .O(\data_out[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00C0F0A000C000A0)) 
    \data_out[6]_i_14 
       (.I0(\data_out[5]_i_6_n_0 ),
        .I1(\data_out[5]_i_7_n_0 ),
        .I2(diff[2]),
        .I3(diff[1]),
        .I4(diff[0]),
        .I5(\data_out[5]_i_8_n_0 ),
        .O(\data_out[6]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h000000008800A000)) 
    \data_out[6]_i_15 
       (.I0(\data_in_reg_n_0_[7] ),
        .I1(diff[4]),
        .I2(diff[3]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(p_0_in1_in),
        .I5(\data_out[10]_i_10_n_0 ),
        .O(\data_out[6]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_out[6]_i_2 
       (.I0(\data_out[6]_i_8_n_0 ),
        .I1(\data_in_reg_n_0_[14] ),
        .I2(\data_out[6]_i_9_n_0 ),
        .I3(\data_out[6]_i_10_n_0 ),
        .I4(\data_out[10]_i_8_n_0 ),
        .I5(\data_out[6]_i_11_n_0 ),
        .O(\data_out[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \data_out[6]_i_3 
       (.I0(diff[4]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(diff[3]),
        .I3(\data_out[14]_i_18_n_0 ),
        .I4(diff[2]),
        .I5(\data_in_reg_n_0_[6] ),
        .O(\data_out[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8800800008000000)) 
    \data_out[6]_i_4 
       (.I0(\data_in_reg_n_0_[13] ),
        .I1(\data_out[6]_i_12_n_0 ),
        .I2(p_0_in1_in),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(diff[3]),
        .I5(diff[4]),
        .O(\data_out[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFEEEEEEE)) 
    \data_out[6]_i_5 
       (.I0(\data_out[13]_i_16_n_0 ),
        .I1(\data_out[13]_i_14_n_0 ),
        .I2(diff[1]),
        .I3(\data_in_reg_n_0_[13] ),
        .I4(\data_out[14]_i_8_n_0 ),
        .O(\data_out[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFEE)) 
    \data_out[6]_i_6 
       (.I0(\data_out[6]_i_13_n_0 ),
        .I1(\data_out[13]_i_17_n_0 ),
        .I2(diff[3]),
        .I3(\data_out[13]_i_10_n_0 ),
        .I4(\data_out[6]_i_14_n_0 ),
        .O(\data_out[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \data_out[6]_i_7 
       (.I0(\data_out[13]_i_7_n_0 ),
        .I1(\data_out[12]_i_10_n_0 ),
        .I2(s_axis_tdata[6]),
        .I3(s_axis_tready),
        .I4(\data_out[14]_i_11_n_0 ),
        .I5(\data_out[6]_i_15_n_0 ),
        .O(\data_out[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000C840)) 
    \data_out[6]_i_8 
       (.I0(p_0_in1_in),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(diff[3]),
        .I3(diff[4]),
        .I4(diff[2]),
        .I5(\data_out[14]_i_18_n_0 ),
        .O(\data_out[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hC0C00000CC0A0000)) 
    \data_out[6]_i_9 
       (.I0(\data_in_reg_n_0_[4] ),
        .I1(\data_in_reg_n_0_[12] ),
        .I2(diff[4]),
        .I3(diff[3]),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(p_0_in1_in),
        .O(\data_out[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \data_out[7]_i_1 
       (.I0(\data_out[7]_i_2_n_0 ),
        .I1(\data_out[7]_i_3_n_0 ),
        .I2(\data_out[7]_i_4_n_0 ),
        .I3(\data_out[7]_i_5_n_0 ),
        .I4(\data_out[10]_i_5_n_0 ),
        .I5(\data_out[7]_i_6_n_0 ),
        .O(data_out[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_out[7]_i_10 
       (.I0(\data_out[9]_i_11_n_0 ),
        .I1(\data_out[3]_i_7_n_0 ),
        .I2(\data_out[8]_i_11_n_0 ),
        .I3(\data_out[10]_i_12_n_0 ),
        .I4(s_axis_tready),
        .I5(s_axis_tdata[7]),
        .O(\data_out[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C880C008C88)) 
    \data_out[7]_i_11 
       (.I0(\data_in_reg_n_0_[14] ),
        .I1(\data_out[13]_i_10_n_0 ),
        .I2(\data_out[7]_i_16_n_0 ),
        .I3(\data_in_reg_n_0_[13] ),
        .I4(\data_out[0]_i_12_n_0 ),
        .I5(\data_out[14]_i_12_n_0 ),
        .O(\data_out[7]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hE0000000)) 
    \data_out[7]_i_12 
       (.I0(\data_in_reg_n_0_[8] ),
        .I1(\data_in_reg_n_0_[0] ),
        .I2(diff[0]),
        .I3(diff[1]),
        .I4(diff[2]),
        .O(\data_out[7]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \data_out[7]_i_13 
       (.I0(diff[2]),
        .I1(diff[1]),
        .I2(diff[0]),
        .O(\data_out[7]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    \data_out[7]_i_14 
       (.I0(diff[4]),
        .I1(diff[3]),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(p_0_in1_in),
        .O(\data_out[7]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \data_out[7]_i_15 
       (.I0(diff[1]),
        .I1(diff[0]),
        .I2(diff[2]),
        .O(\data_out[7]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_out[7]_i_16 
       (.I0(diff[0]),
        .I1(diff[2]),
        .O(\data_out[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \data_out[7]_i_2 
       (.I0(\data_out[7]_i_7_n_0 ),
        .I1(\data_in_reg_n_0_[7] ),
        .I2(\data_out[14]_i_10_n_0 ),
        .I3(\data_out[7]_i_8_n_0 ),
        .I4(\data_out[7]_i_9_n_0 ),
        .I5(\data_out[7]_i_10_n_0 ),
        .O(\data_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFAEAEAEA)) 
    \data_out[7]_i_3 
       (.I0(\data_out[7]_i_11_n_0 ),
        .I1(\data_out[7]_i_12_n_0 ),
        .I2(\data_out[14]_i_8_n_0 ),
        .I3(\data_out[7]_i_13_n_0 ),
        .I4(\data_in_reg_n_0_[3] ),
        .I5(\data_out[14]_i_17_n_0 ),
        .O(\data_out[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0000000)) 
    \data_out[7]_i_4 
       (.I0(diff[1]),
        .I1(diff[0]),
        .I2(diff[2]),
        .I3(\data_out[14]_i_8_n_0 ),
        .I4(\data_in_reg_n_0_[10] ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\data_out[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h80808080F0808080)) 
    \data_out[7]_i_5 
       (.I0(\data_out[10]_i_8_n_0 ),
        .I1(\data_in_reg_n_0_[4] ),
        .I2(\data_out[14]_i_8_n_0 ),
        .I3(diff[3]),
        .I4(\data_in_reg_n_0_[2] ),
        .I5(\data_out[14]_i_15_n_0 ),
        .O(\data_out[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000FFFF80008000)) 
    \data_out[7]_i_6 
       (.I0(\data_out[14]_i_8_n_0 ),
        .I1(diff[1]),
        .I2(diff[0]),
        .I3(\data_in_reg_n_0_[12] ),
        .I4(diff[3]),
        .I5(\data_out[13]_i_10_n_0 ),
        .O(\data_out[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h020C0200)) 
    \data_out[7]_i_7 
       (.I0(\data_out[12]_i_7_n_0 ),
        .I1(diff[0]),
        .I2(diff[2]),
        .I3(diff[1]),
        .I4(\data_out[13]_i_12_n_0 ),
        .O(\data_out[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4040FFFF4040FF40)) 
    \data_out[7]_i_8 
       (.I0(\data_out[10]_i_10_n_0 ),
        .I1(\data_in_reg_n_0_[8] ),
        .I2(\data_out[7]_i_14_n_0 ),
        .I3(\data_out[14]_i_13_n_0 ),
        .I4(\data_out[7]_i_15_n_0 ),
        .I5(\data_out[13]_i_10_n_0 ),
        .O(\data_out[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF08080808080808)) 
    \data_out[7]_i_9 
       (.I0(\data_out[10]_i_18_n_0 ),
        .I1(\data_in_reg_n_0_[11] ),
        .I2(\data_out[14]_i_18_n_0 ),
        .I3(\data_out[7]_i_14_n_0 ),
        .I4(\data_out[10]_i_8_n_0 ),
        .I5(\data_in_reg_n_0_[12] ),
        .O(\data_out[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \data_out[8]_i_1 
       (.I0(\data_out[8]_i_2_n_0 ),
        .I1(\data_out[8]_i_3_n_0 ),
        .I2(\data_out[10]_i_5_n_0 ),
        .I3(\data_out[8]_i_4_n_0 ),
        .I4(\data_out[8]_i_5_n_0 ),
        .I5(\data_out[8]_i_6_n_0 ),
        .O(data_out[8]));
  LUT6 #(
    .INIT(64'h3020100000000000)) 
    \data_out[8]_i_10 
       (.I0(diff[0]),
        .I1(diff[1]),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[4] ),
        .I4(\data_in_reg_n_0_[3] ),
        .I5(\data_out[14]_i_8_n_0 ),
        .O(\data_out[8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hC0C00000CE0A0000)) 
    \data_out[8]_i_11 
       (.I0(\data_in_reg_n_0_[1] ),
        .I1(\data_in_reg_n_0_[9] ),
        .I2(diff[4]),
        .I3(diff[3]),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(p_0_in1_in),
        .O(\data_out[8]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFFFE)) 
    \data_out[8]_i_2 
       (.I0(\data_out[7]_i_4_n_0 ),
        .I1(\data_out[8]_i_7_n_0 ),
        .I2(\data_out[14]_i_17_n_0 ),
        .I3(\data_out[13]_i_10_n_0 ),
        .I4(diff[3]),
        .O(\data_out[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAF0A0EAAAA0A0)) 
    \data_out[8]_i_3 
       (.I0(\data_out[14]_i_12_n_0 ),
        .I1(\data_out[14]_i_16_n_0 ),
        .I2(diff[0]),
        .I3(diff[1]),
        .I4(diff[2]),
        .I5(\data_out[13]_i_9_n_0 ),
        .O(\data_out[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FAC000000AC0)) 
    \data_out[8]_i_4 
       (.I0(\data_out[14]_i_13_n_0 ),
        .I1(\data_out[13]_i_12_n_0 ),
        .I2(diff[1]),
        .I3(diff[0]),
        .I4(diff[2]),
        .I5(\data_out[12]_i_7_n_0 ),
        .O(\data_out[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000C8F00000C8C)) 
    \data_out[8]_i_5 
       (.I0(\data_in_reg_n_0_[14] ),
        .I1(\data_out[13]_i_10_n_0 ),
        .I2(diff[1]),
        .I3(diff[0]),
        .I4(diff[2]),
        .I5(\data_out[14]_i_16_n_0 ),
        .O(\data_out[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \data_out[8]_i_6 
       (.I0(\data_out[8]_i_8_n_0 ),
        .I1(\data_out[14]_i_10_n_0 ),
        .I2(\data_in_reg_n_0_[8] ),
        .I3(\data_out[10]_i_18_n_0 ),
        .I4(\data_out[8]_i_9_n_0 ),
        .I5(\data_out[8]_i_10_n_0 ),
        .O(\data_out[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF000888800000000)) 
    \data_out[8]_i_7 
       (.I0(\data_out[13]_i_10_n_0 ),
        .I1(\data_in_reg_n_0_[13] ),
        .I2(\data_out[14]_i_19_n_0 ),
        .I3(\data_in_reg_n_0_[2] ),
        .I4(diff[2]),
        .I5(diff[0]),
        .O(\data_out[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \data_out[8]_i_8 
       (.I0(\data_out[9]_i_11_n_0 ),
        .I1(\data_out[10]_i_12_n_0 ),
        .I2(\data_out[8]_i_11_n_0 ),
        .I3(\data_out[10]_i_10_n_0 ),
        .I4(s_axis_tready),
        .I5(s_axis_tdata[8]),
        .O(\data_out[8]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0B08)) 
    \data_out[8]_i_9 
       (.I0(\data_in_reg_n_0_[11] ),
        .I1(diff[0]),
        .I2(diff[1]),
        .I3(\data_in_reg_n_0_[12] ),
        .O(\data_out[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \data_out[9]_i_1 
       (.I0(\data_out[12]_i_3_n_0 ),
        .I1(\data_out[9]_i_2_n_0 ),
        .I2(\data_out[9]_i_3_n_0 ),
        .I3(\data_out[9]_i_4_n_0 ),
        .I4(\data_out[9]_i_5_n_0 ),
        .I5(\data_out[9]_i_6_n_0 ),
        .O(data_out[9]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0B08)) 
    \data_out[9]_i_10 
       (.I0(\data_in_reg_n_0_[12] ),
        .I1(diff[0]),
        .I2(diff[1]),
        .I3(\data_in_reg_n_0_[13] ),
        .O(\data_out[9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hC0C00000CE0A0000)) 
    \data_out[9]_i_11 
       (.I0(\data_in_reg_n_0_[2] ),
        .I1(\data_in_reg_n_0_[10] ),
        .I2(diff[4]),
        .I3(diff[3]),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(p_0_in1_in),
        .O(\data_out[9]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hF8A8)) 
    \data_out[9]_i_12 
       (.I0(\data_in_reg_n_0_[5] ),
        .I1(diff[1]),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[4] ),
        .O(\data_out[9]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \data_out[9]_i_2 
       (.I0(\data_out[13]_i_17_n_0 ),
        .I1(\data_out[9]_i_7_n_0 ),
        .I2(\data_out[13]_i_14_n_0 ),
        .I3(\data_out[13]_i_13_n_0 ),
        .I4(\data_out[12]_i_10_n_0 ),
        .I5(\data_out[13]_i_7_n_0 ),
        .O(\data_out[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_out[9]_i_3 
       (.I0(\data_out[9]_i_8_n_0 ),
        .I1(\data_out[14]_i_8_n_0 ),
        .I2(\data_out[10]_i_11_n_0 ),
        .I3(\data_out[10]_i_12_n_0 ),
        .I4(\data_in_reg_n_0_[9] ),
        .I5(\data_out[14]_i_10_n_0 ),
        .O(\data_out[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0C8FFC0C0C8C8)) 
    \data_out[9]_i_4 
       (.I0(\data_in_reg_n_0_[14] ),
        .I1(\data_out[13]_i_10_n_0 ),
        .I2(\data_out[9]_i_9_n_0 ),
        .I3(\data_out[14]_i_18_n_0 ),
        .I4(diff[2]),
        .I5(\data_out[12]_i_8_n_0 ),
        .O(\data_out[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FAC000000AC0)) 
    \data_out[9]_i_5 
       (.I0(\data_out[14]_i_16_n_0 ),
        .I1(\data_out[14]_i_13_n_0 ),
        .I2(diff[1]),
        .I3(diff[0]),
        .I4(diff[2]),
        .I5(\data_out[13]_i_12_n_0 ),
        .O(\data_out[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \data_out[9]_i_6 
       (.I0(\data_out[9]_i_10_n_0 ),
        .I1(\data_out[10]_i_18_n_0 ),
        .I2(s_axis_tdata[9]),
        .I3(s_axis_tready),
        .I4(\data_out[10]_i_10_n_0 ),
        .I5(\data_out[9]_i_11_n_0 ),
        .O(\data_out[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0808080)) 
    \data_out[9]_i_7 
       (.I0(diff[3]),
        .I1(\data_out[9]_i_12_n_0 ),
        .I2(\data_out[14]_i_8_n_0 ),
        .I3(\data_in_reg_n_0_[14] ),
        .I4(\data_out[14]_i_18_n_0 ),
        .I5(\data_out[2]_i_11_n_0 ),
        .O(\data_out[9]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00A000C0)) 
    \data_out[9]_i_8 
       (.I0(\data_in_reg_n_0_[4] ),
        .I1(\data_in_reg_n_0_[5] ),
        .I2(diff[2]),
        .I3(diff[1]),
        .I4(diff[0]),
        .O(\data_out[9]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h058F)) 
    \data_out[9]_i_9 
       (.I0(diff[1]),
        .I1(\data_in_reg_n_0_[11] ),
        .I2(diff[2]),
        .I3(diff[0]),
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
    .INIT(32'h90000000)) 
    \diff[4]_i_1 
       (.I0(tlast_expected),
        .I1(s_axis_tlast),
        .I2(s_axis_tready),
        .I3(s_axis_tvalid),
        .I4(aresetn),
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
        .D(state1[3]),
        .Q(diff[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[4] 
       (.C(aclk),
        .CE(tlast_sampled0),
        .D(state1[4]),
        .Q(diff[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m_axis_tlast_INST_0
       (.I0(m_axis_tvalid),
        .I1(tlast_sampled),
        .O(m_axis_tlast));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h7F40)) 
    tlast_expected_i_1
       (.I0(s_axis_tlast),
        .I1(s_axis_tready),
        .I2(s_axis_tvalid),
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
  bd_top_00_volume_controller_0_0_volume_led_ctrl vol_led_ctrl
       (.AR(vol_led_ctrl_n_23),
        .D(state1),
        .E(data_out0),
        .\FSM_onehot_state_reg[0] ({vol_led_ctrl_n_20,vol_led_ctrl_n_21}),
        .Q({\FSM_onehot_state_reg_n_0_[2] ,s_axis_tready,\FSM_onehot_state_reg_n_0_[0] }),
        .aclk(aclk),
        .aresetn(aresetn),
        .\data_out_reg[0] (tlast_sampled0),
        .\data_out_reg[0]_0 (diff[4]),
        .\data_out_reg[0]_1 (\data_out[15]_i_3_n_0 ),
        .volume_down(volume_down),
        .volume_level(volume_level),
        .volume_up(volume_up));
endmodule

(* ORIG_REF_NAME = "volume_led_ctrl" *) 
module bd_top_00_volume_controller_0_0_volume_led_ctrl
   (volume_level,
    D,
    \FSM_onehot_state_reg[0] ,
    E,
    AR,
    volume_up,
    volume_down,
    Q,
    \data_out_reg[0] ,
    \data_out_reg[0]_0 ,
    \data_out_reg[0]_1 ,
    aresetn,
    aclk);
  output [14:0]volume_level;
  output [4:0]D;
  output [1:0]\FSM_onehot_state_reg[0] ;
  output [0:0]E;
  output [0:0]AR;
  input volume_up;
  input volume_down;
  input [2:0]Q;
  input [0:0]\data_out_reg[0] ;
  input [0:0]\data_out_reg[0]_0 ;
  input \data_out_reg[0]_1 ;
  input aresetn;
  input aclk;

  wire [0:0]AR;
  wire [4:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire [1:0]\FSM_onehot_state_reg[0] ;
  wire [2:0]Q;
  wire [7:4]SHIFT_LEFT;
  wire aclk;
  wire aresetn;
  wire [0:0]\data_out_reg[0] ;
  wire [0:0]\data_out_reg[0]_0 ;
  wire \data_out_reg[0]_1 ;
  wire \led_out[11]_i_2_n_0 ;
  wire \led_out[11]_i_3_n_0 ;
  wire \led_out[11]_i_4_n_0 ;
  wire \led_out[11]_i_5_n_0 ;
  wire \led_out[11]_i_6_n_0 ;
  wire \led_out[13]_i_2_n_0 ;
  wire \led_out[13]_i_3_n_0 ;
  wire \led_out[13]_i_4_n_0 ;
  wire \led_out[13]_i_5_n_0 ;
  wire \led_out[15]_i_2_n_0 ;
  wire \led_out[15]_i_3_n_0 ;
  wire \led_out[15]_i_4_n_0 ;
  wire \led_out[15]_i_5_n_0 ;
  wire \led_out[15]_i_6_n_0 ;
  wire \led_out[15]_i_7_n_0 ;
  wire \led_out[15]_i_8_n_0 ;
  wire \led_out[15]_i_9_n_0 ;
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
  wire [15:1]p_1_in;
  wire [3:0]volume;
  wire volume_down;
  wire [14:0]volume_level;
  wire \volume_uns[1]_i_1_n_0 ;
  wire \volume_uns[2]_i_1_n_0 ;
  wire \volume_uns[3]_i_1_n_0 ;
  wire \volume_uns[3]_i_2_n_0 ;
  wire volume_up;
  wire [3:3]NLW_mult20_carry__0_CO_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[1]_i_3 
       (.I0(aresetn),
        .O(AR));
  LUT6 #(
    .INIT(64'h4044444444444444)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(volume[3]),
        .I3(volume[1]),
        .I4(volume[0]),
        .I5(volume[2]),
        .O(\FSM_onehot_state_reg[0] [0]));
  LUT4 #(
    .INIT(16'h1130)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state[3]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(\FSM_onehot_state_reg[0] [1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(volume[2]),
        .I1(volume[0]),
        .I2(volume[1]),
        .I3(volume[3]),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF2222222222222)) 
    \data_out[15]_i_1 
       (.I0(\data_out_reg[0] ),
        .I1(\FSM_onehot_state[3]_i_2_n_0 ),
        .I2(\data_out_reg[0]_0 ),
        .I3(\data_out_reg[0]_1 ),
        .I4(aresetn),
        .I5(Q[2]),
        .O(E));
  FDRE #(
    .INIT(1'b0)) 
    \diff2_reg[0] 
       (.C(aclk),
        .CE(aresetn),
        .D(volume[0]),
        .Q(SHIFT_LEFT[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diff2_reg[1] 
       (.C(aclk),
        .CE(aresetn),
        .D(volume[1]),
        .Q(SHIFT_LEFT[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diff2_reg[2] 
       (.C(aclk),
        .CE(aresetn),
        .D(volume[2]),
        .Q(SHIFT_LEFT[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diff2_reg[3] 
       (.C(aclk),
        .CE(aresetn),
        .D(volume[3]),
        .Q(SHIFT_LEFT[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \diff[0]_i_1 
       (.I0(volume[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \diff[1]_i_1 
       (.I0(volume[0]),
        .I1(volume[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \diff[2]_i_1 
       (.I0(volume[1]),
        .I1(volume[0]),
        .I2(volume[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h807F)) 
    \diff[3]_i_1 
       (.I0(volume[1]),
        .I1(volume[0]),
        .I2(volume[2]),
        .I3(volume[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h007F)) 
    \diff[4]_i_2 
       (.I0(volume[1]),
        .I1(volume[0]),
        .I2(volume[2]),
        .I3(volume[3]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFE0E0E0)) 
    \led_out[10]_i_1 
       (.I0(\led_out[13]_i_2_n_0 ),
        .I1(\led_out[11]_i_2_n_0 ),
        .I2(\led_out[13]_i_3_n_0 ),
        .I3(\led_out[15]_i_2_n_0 ),
        .I4(volume_level[9]),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'hFFE0E0E0FFA0A0A0)) 
    \led_out[11]_i_1 
       (.I0(\led_out[13]_i_2_n_0 ),
        .I1(\led_out[11]_i_2_n_0 ),
        .I2(\led_out[13]_i_3_n_0 ),
        .I3(\led_out[15]_i_2_n_0 ),
        .I4(volume_level[10]),
        .I5(\led_out[15]_i_4_n_0 ),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'h0AAC0AACFAAC0AAC)) 
    \led_out[11]_i_2 
       (.I0(\led_out[11]_i_3_n_0 ),
        .I1(\led_out[11]_i_4_n_0 ),
        .I2(mult2[3]),
        .I3(mult2[7]),
        .I4(\led_out[11]_i_5_n_0 ),
        .I5(\led_out[11]_i_6_n_0 ),
        .O(\led_out[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000505FFFFE8E800)) 
    \led_out[11]_i_3 
       (.I0(mult2[2]),
        .I1(mult2[1]),
        .I2(mult2[6]),
        .I3(mult2[4]),
        .I4(mult2[8]),
        .I5(mult2[5]),
        .O(\led_out[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \led_out[11]_i_4 
       (.I0(mult2[4]),
        .I1(mult2[8]),
        .I2(mult2[5]),
        .O(\led_out[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF1E1E1E1E1E1E1E)) 
    \led_out[11]_i_5 
       (.I0(mult2[8]),
        .I1(mult2[4]),
        .I2(mult2[5]),
        .I3(mult2[6]),
        .I4(mult2[2]),
        .I5(mult2[1]),
        .O(\led_out[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6100000000000000)) 
    \led_out[11]_i_6 
       (.I0(mult2[4]),
        .I1(mult2[8]),
        .I2(mult2[5]),
        .I3(mult2[6]),
        .I4(mult2[2]),
        .I5(mult2[1]),
        .O(\led_out[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \led_out[12]_i_1 
       (.I0(\led_out[13]_i_2_n_0 ),
        .I1(\led_out[13]_i_3_n_0 ),
        .I2(\led_out[15]_i_2_n_0 ),
        .I3(volume_level[11]),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'hF888FFFFF888F000)) 
    \led_out[13]_i_1 
       (.I0(\led_out[13]_i_2_n_0 ),
        .I1(\led_out[13]_i_3_n_0 ),
        .I2(\led_out[15]_i_2_n_0 ),
        .I3(volume_level[12]),
        .I4(\led_out[15]_i_4_n_0 ),
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
        .O(\led_out[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h777F8880777F8000)) 
    \led_out[13]_i_3 
       (.I0(mult2[6]),
        .I1(mult2[5]),
        .I2(mult2[4]),
        .I3(mult2[8]),
        .I4(mult2[7]),
        .I5(mult2[3]),
        .O(\led_out[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \led_out[13]_i_4 
       (.I0(mult2[8]),
        .I1(mult2[4]),
        .I2(mult2[5]),
        .O(\led_out[13]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \led_out[13]_i_5 
       (.I0(mult2[8]),
        .I1(mult2[4]),
        .I2(mult2[5]),
        .O(\led_out[13]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \led_out[14]_i_1 
       (.I0(\led_out[15]_i_2_n_0 ),
        .I1(volume_level[13]),
        .I2(\led_out[15]_i_3_n_0 ),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \led_out[15]_i_1 
       (.I0(\led_out[15]_i_2_n_0 ),
        .I1(volume_level[14]),
        .I2(\led_out[15]_i_3_n_0 ),
        .I3(\led_out[15]_i_4_n_0 ),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h2CCCCCCC)) 
    \led_out[15]_i_2 
       (.I0(mult2[4]),
        .I1(mult2[8]),
        .I2(mult2[5]),
        .I3(mult2[7]),
        .I4(mult2[6]),
        .O(\led_out[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \led_out[15]_i_3 
       (.I0(\led_out[13]_i_2_n_0 ),
        .I1(\led_out[11]_i_2_n_0 ),
        .I2(\led_out[13]_i_3_n_0 ),
        .O(\led_out[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00474700)) 
    \led_out[15]_i_4 
       (.I0(\led_out[15]_i_5_n_0 ),
        .I1(mult2[2]),
        .I2(\led_out[15]_i_6_n_0 ),
        .I3(mult2[7]),
        .I4(mult2[3]),
        .I5(\led_out[15]_i_7_n_0 ),
        .O(\led_out[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00FF01EEFF01EE15)) 
    \led_out[15]_i_5 
       (.I0(mult2[6]),
        .I1(mult2[1]),
        .I2(mult2[0]),
        .I3(mult2[8]),
        .I4(mult2[5]),
        .I5(mult2[4]),
        .O(\led_out[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h26996493669B6CB3)) 
    \led_out[15]_i_6 
       (.I0(mult2[6]),
        .I1(mult2[4]),
        .I2(mult2[5]),
        .I3(mult2[8]),
        .I4(mult2[1]),
        .I5(mult2[0]),
        .O(\led_out[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAA0000FC8200003C)) 
    \led_out[15]_i_7 
       (.I0(\led_out[15]_i_8_n_0 ),
        .I1(mult2[4]),
        .I2(mult2[8]),
        .I3(mult2[3]),
        .I4(mult2[7]),
        .I5(\led_out[15]_i_9_n_0 ),
        .O(\led_out[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \led_out[15]_i_8 
       (.I0(mult2[5]),
        .I1(mult2[4]),
        .I2(mult2[8]),
        .I3(mult2[6]),
        .I4(mult2[2]),
        .I5(mult2[1]),
        .O(\led_out[15]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \led_out[15]_i_9 
       (.I0(mult2[6]),
        .I1(mult2[2]),
        .I2(mult2[1]),
        .I3(mult2[0]),
        .I4(mult2[5]),
        .O(\led_out[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \led_out[1]_i_1 
       (.I0(\led_out[13]_i_2_n_0 ),
        .I1(\led_out[11]_i_2_n_0 ),
        .I2(\led_out[13]_i_3_n_0 ),
        .I3(\led_out[15]_i_2_n_0 ),
        .I4(volume_level[0]),
        .I5(\led_out[15]_i_4_n_0 ),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFEFEFE)) 
    \led_out[2]_i_1 
       (.I0(\led_out[13]_i_2_n_0 ),
        .I1(\led_out[11]_i_2_n_0 ),
        .I2(\led_out[13]_i_3_n_0 ),
        .I3(\led_out[15]_i_2_n_0 ),
        .I4(volume_level[1]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hFFFEFEFEFFFAFAFA)) 
    \led_out[3]_i_1 
       (.I0(\led_out[13]_i_2_n_0 ),
        .I1(\led_out[11]_i_2_n_0 ),
        .I2(\led_out[13]_i_3_n_0 ),
        .I3(\led_out[15]_i_2_n_0 ),
        .I4(volume_level[2]),
        .I5(\led_out[15]_i_4_n_0 ),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    \led_out[4]_i_1 
       (.I0(\led_out[13]_i_2_n_0 ),
        .I1(\led_out[13]_i_3_n_0 ),
        .I2(\led_out[15]_i_2_n_0 ),
        .I3(volume_level[3]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hFEEEFFFFFEEEF000)) 
    \led_out[5]_i_1 
       (.I0(\led_out[13]_i_2_n_0 ),
        .I1(\led_out[13]_i_3_n_0 ),
        .I2(\led_out[15]_i_2_n_0 ),
        .I3(volume_level[4]),
        .I4(\led_out[15]_i_4_n_0 ),
        .I5(\led_out[7]_i_2_n_0 ),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \led_out[6]_i_1 
       (.I0(\led_out[15]_i_2_n_0 ),
        .I1(volume_level[5]),
        .I2(\led_out[7]_i_2_n_0 ),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hF8FFF888)) 
    \led_out[7]_i_1 
       (.I0(\led_out[15]_i_2_n_0 ),
        .I1(volume_level[6]),
        .I2(\led_out[7]_i_2_n_0 ),
        .I3(\led_out[15]_i_4_n_0 ),
        .I4(\led_out[13]_i_3_n_0 ),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \led_out[7]_i_2 
       (.I0(\led_out[13]_i_2_n_0 ),
        .I1(\led_out[11]_i_2_n_0 ),
        .I2(\led_out[13]_i_3_n_0 ),
        .O(\led_out[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \led_out[8]_i_1 
       (.I0(\led_out[15]_i_2_n_0 ),
        .I1(volume_level[7]),
        .I2(\led_out[13]_i_3_n_0 ),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'hFFF0F0F0FFE0E0E0)) 
    \led_out[9]_i_1 
       (.I0(\led_out[13]_i_2_n_0 ),
        .I1(\led_out[11]_i_2_n_0 ),
        .I2(\led_out[13]_i_3_n_0 ),
        .I3(\led_out[15]_i_2_n_0 ),
        .I4(volume_level[8]),
        .I5(\led_out[15]_i_4_n_0 ),
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
        .DI({SHIFT_LEFT[4],1'b0,1'b0,1'b0}),
        .O(mult20[4:1]),
        .S({mult20_carry_i_2_n_0,mult20_carry_i_3_n_0,mult20_carry_i_4_n_0,mult20_carry_i_5_n_0}));
  CARRY4 mult20_carry__0
       (.CI(mult20_carry_n_0),
        .CO({NLW_mult20_carry__0_CO_UNCONNECTED[3],mult20_carry__0_n_1,mult20_carry__0_n_2,mult20_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,SHIFT_LEFT[7:5]}),
        .O(mult20[8:5]),
        .S({1'b1,mult20_carry__0_i_1_n_0,mult20_carry__0_i_2_n_0,mult20_carry__0_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    mult20_carry__0_i_1
       (.I0(SHIFT_LEFT[7]),
        .O(mult20_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult20_carry__0_i_2
       (.I0(SHIFT_LEFT[6]),
        .O(mult20_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult20_carry__0_i_3
       (.I0(SHIFT_LEFT[5]),
        .O(mult20_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult20_carry_i_1
       (.I0(SHIFT_LEFT[4]),
        .O(mult20_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult20_carry_i_2
       (.I0(SHIFT_LEFT[4]),
        .O(mult20_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult20_carry_i_3
       (.I0(SHIFT_LEFT[7]),
        .O(mult20_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult20_carry_i_4
       (.I0(SHIFT_LEFT[6]),
        .O(mult20_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult20_carry_i_5
       (.I0(SHIFT_LEFT[5]),
        .O(mult20_carry_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mult2_reg[0] 
       (.C(aclk),
        .CE(aresetn),
        .D(SHIFT_LEFT[4]),
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
    .INIT(64'h99E9996999699969)) 
    \volume_uns[1]_i_1 
       (.I0(volume[1]),
        .I1(volume[0]),
        .I2(volume_up),
        .I3(volume_down),
        .I4(volume[2]),
        .I5(volume[3]),
        .O(\volume_uns[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF2F0F02DD2F0F02D)) 
    \volume_uns[2]_i_1 
       (.I0(volume_up),
        .I1(volume_down),
        .I2(volume[2]),
        .I3(volume[0]),
        .I4(volume[1]),
        .I5(volume[3]),
        .O(\volume_uns[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2666666666666664)) 
    \volume_uns[3]_i_1 
       (.I0(volume_down),
        .I1(volume_up),
        .I2(volume[2]),
        .I3(volume[0]),
        .I4(volume[1]),
        .I5(volume[3]),
        .O(\volume_uns[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF4F0F0F0F0F0F04B)) 
    \volume_uns[3]_i_2 
       (.I0(volume_down),
        .I1(volume_up),
        .I2(volume[3]),
        .I3(volume[2]),
        .I4(volume[0]),
        .I5(volume[1]),
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

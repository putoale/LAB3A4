// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun May 31 19:35:06 2020
// Host        : DESKTOP-O39JAIK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Vivado_DESD_Project/Project/Personal/Lab3_A4/LAB3A4/Sources/BD/bd_try/ip/bd_try_mute_v1_0_0/bd_try_mute_v1_0_0_sim_netlist.v
// Design      : bd_try_mute_v1_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_try_mute_v1_0_0,mute_v1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mute_v1,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module bd_try_mute_v1_0_0
   (clk,
    aresetn,
    mute_left,
    mute_right,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tlast);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input mute_left;
  input mute_right;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [15:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [15:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;

  wire aresetn;
  wire clk;
  wire [15:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire mute_left;
  wire mute_right;
  wire [15:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;

  bd_try_mute_v1_0_0_mute_v1 U0
       (.\FSM_onehot_state_reg[1]_0 (s_axis_tready),
        .\FSM_onehot_state_reg[2]_0 (m_axis_tvalid),
        .aresetn(aresetn),
        .clk(clk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .mute_left(mute_left),
        .mute_right(mute_right),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "mute_v1" *) 
module bd_try_mute_v1_0_0_mute_v1
   (\FSM_onehot_state_reg[1]_0 ,
    \FSM_onehot_state_reg[2]_0 ,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tready,
    clk,
    mute_left,
    s_axis_tlast,
    s_axis_tvalid,
    aresetn,
    s_axis_tdata,
    mute_right);
  output \FSM_onehot_state_reg[1]_0 ;
  output \FSM_onehot_state_reg[2]_0 ;
  output [15:0]m_axis_tdata;
  output m_axis_tlast;
  input m_axis_tready;
  input clk;
  input mute_left;
  input s_axis_tlast;
  input s_axis_tvalid;
  input aresetn;
  input [15:0]s_axis_tdata;
  input mute_right;

  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg[2]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire aresetn;
  wire clk;
  wire data_out0;
  wire \data_out[0]_i_1_n_0 ;
  wire \data_out[10]_i_1_n_0 ;
  wire \data_out[11]_i_1_n_0 ;
  wire \data_out[12]_i_1_n_0 ;
  wire \data_out[13]_i_1_n_0 ;
  wire \data_out[14]_i_1_n_0 ;
  wire \data_out[15]_i_1_n_0 ;
  wire \data_out[15]_i_3_n_0 ;
  wire \data_out[1]_i_1_n_0 ;
  wire \data_out[2]_i_1_n_0 ;
  wire \data_out[3]_i_1_n_0 ;
  wire \data_out[4]_i_1_n_0 ;
  wire \data_out[5]_i_1_n_0 ;
  wire \data_out[6]_i_1_n_0 ;
  wire \data_out[7]_i_1_n_0 ;
  wire \data_out[8]_i_1_n_0 ;
  wire \data_out[9]_i_1_n_0 ;
  wire [15:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire mute_left;
  wire mute_right;
  wire [15:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tvalid;
  wire tlast_expected;
  wire tlast_expected_0;
  wire tlast_expected_i_1_n_0;
  wire tlast_sampled;
  wire tlast_sampled_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEEFFEEEA)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(m_axis_tready),
        .I3(tlast_expected_0),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(aresetn),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8200)) 
    \FSM_onehot_state[1]_i_3 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(tlast_expected),
        .I2(s_axis_tlast),
        .I3(s_axis_tvalid),
        .O(tlast_expected_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAAA8B8)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg[2]_0 ),
        .I3(m_axis_tready),
        .I4(tlast_expected_0),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,receive_data:010,send_data:100," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\FSM_onehot_state[1]_i_2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "idle:001,receive_data:010,send_data:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_onehot_state[1]_i_2_n_0 ),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg[1]_0 ));
  (* FSM_ENCODED_STATES = "idle:001,receive_data:010,send_data:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_onehot_state[1]_i_2_n_0 ),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_out[0]_i_1 
       (.I0(s_axis_tdata[0]),
        .I1(mute_right),
        .I2(s_axis_tlast),
        .O(\data_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_out[10]_i_1 
       (.I0(s_axis_tdata[10]),
        .I1(mute_right),
        .I2(s_axis_tlast),
        .O(\data_out[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_out[11]_i_1 
       (.I0(s_axis_tdata[11]),
        .I1(mute_right),
        .I2(s_axis_tlast),
        .O(\data_out[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_out[12]_i_1 
       (.I0(s_axis_tdata[12]),
        .I1(mute_right),
        .I2(s_axis_tlast),
        .O(\data_out[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_out[13]_i_1 
       (.I0(s_axis_tdata[13]),
        .I1(mute_right),
        .I2(s_axis_tlast),
        .O(\data_out[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_out[14]_i_1 
       (.I0(s_axis_tdata[14]),
        .I1(mute_right),
        .I2(s_axis_tlast),
        .O(\data_out[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \data_out[15]_i_1 
       (.I0(mute_left),
        .I1(\FSM_onehot_state_reg[1]_0 ),
        .I2(tlast_expected),
        .I3(s_axis_tlast),
        .I4(s_axis_tvalid),
        .I5(aresetn),
        .O(\data_out[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80080000)) 
    \data_out[15]_i_2 
       (.I0(aresetn),
        .I1(s_axis_tvalid),
        .I2(s_axis_tlast),
        .I3(tlast_expected),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(data_out0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_out[15]_i_3 
       (.I0(s_axis_tdata[15]),
        .I1(mute_right),
        .I2(s_axis_tlast),
        .O(\data_out[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_out[1]_i_1 
       (.I0(s_axis_tdata[1]),
        .I1(mute_right),
        .I2(s_axis_tlast),
        .O(\data_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_out[2]_i_1 
       (.I0(s_axis_tdata[2]),
        .I1(mute_right),
        .I2(s_axis_tlast),
        .O(\data_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_out[3]_i_1 
       (.I0(s_axis_tdata[3]),
        .I1(mute_right),
        .I2(s_axis_tlast),
        .O(\data_out[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_out[4]_i_1 
       (.I0(s_axis_tdata[4]),
        .I1(mute_right),
        .I2(s_axis_tlast),
        .O(\data_out[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_out[5]_i_1 
       (.I0(s_axis_tdata[5]),
        .I1(mute_right),
        .I2(s_axis_tlast),
        .O(\data_out[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_out[6]_i_1 
       (.I0(s_axis_tdata[6]),
        .I1(mute_right),
        .I2(s_axis_tlast),
        .O(\data_out[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_out[7]_i_1 
       (.I0(s_axis_tdata[7]),
        .I1(mute_right),
        .I2(s_axis_tlast),
        .O(\data_out[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_out[8]_i_1 
       (.I0(s_axis_tdata[8]),
        .I1(mute_right),
        .I2(s_axis_tlast),
        .O(\data_out[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_out[9]_i_1 
       (.I0(s_axis_tdata[9]),
        .I1(mute_right),
        .I2(s_axis_tlast),
        .O(\data_out[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[0]_i_1_n_0 ),
        .Q(m_axis_tdata[0]),
        .R(\data_out[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[10] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[10]_i_1_n_0 ),
        .Q(m_axis_tdata[10]),
        .R(\data_out[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[11] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[11]_i_1_n_0 ),
        .Q(m_axis_tdata[11]),
        .R(\data_out[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[12] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[12]_i_1_n_0 ),
        .Q(m_axis_tdata[12]),
        .R(\data_out[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[13] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[13]_i_1_n_0 ),
        .Q(m_axis_tdata[13]),
        .R(\data_out[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[14] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[14]_i_1_n_0 ),
        .Q(m_axis_tdata[14]),
        .R(\data_out[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[15] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[15]_i_3_n_0 ),
        .Q(m_axis_tdata[15]),
        .R(\data_out[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[1]_i_1_n_0 ),
        .Q(m_axis_tdata[1]),
        .R(\data_out[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[2]_i_1_n_0 ),
        .Q(m_axis_tdata[2]),
        .R(\data_out[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[3]_i_1_n_0 ),
        .Q(m_axis_tdata[3]),
        .R(\data_out[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[4]_i_1_n_0 ),
        .Q(m_axis_tdata[4]),
        .R(\data_out[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[5]_i_1_n_0 ),
        .Q(m_axis_tdata[5]),
        .R(\data_out[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[6]_i_1_n_0 ),
        .Q(m_axis_tdata[6]),
        .R(\data_out[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[7]_i_1_n_0 ),
        .Q(m_axis_tdata[7]),
        .R(\data_out[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[8] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[8]_i_1_n_0 ),
        .Q(m_axis_tdata[8]),
        .R(\data_out[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[9] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[9]_i_1_n_0 ),
        .Q(m_axis_tdata[9]),
        .R(\data_out[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    m_axis_tlast_INST_0
       (.I0(\FSM_onehot_state_reg[2]_0 ),
        .I1(tlast_sampled),
        .O(m_axis_tlast));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F20)) 
    tlast_expected_i_1
       (.I0(s_axis_tvalid),
        .I1(s_axis_tlast),
        .I2(\FSM_onehot_state_reg[1]_0 ),
        .I3(tlast_expected),
        .O(tlast_expected_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tlast_expected_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_onehot_state[1]_i_2_n_0 ),
        .D(tlast_expected_i_1_n_0),
        .Q(tlast_expected));
  LUT6 #(
    .INIT(64'hFFF7FFFF80000000)) 
    tlast_sampled_i_1
       (.I0(aresetn),
        .I1(s_axis_tvalid),
        .I2(s_axis_tlast),
        .I3(tlast_expected),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .I5(tlast_sampled),
        .O(tlast_sampled_i_1_n_0));
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

// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue May 19 12:00:49 2020
// Host        : DESKTOP-O39JAIK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Vivado_DESD_Project/Project/Personal/Lab3_A4/LAB3A4/Sources/BD/bd_mov_av_v2/ip/bd_mov_av_v2_mute_v1_0_0/bd_mov_av_v2_mute_v1_0_0_sim_netlist.v
// Design      : bd_mov_av_v2_mute_v1_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_mov_av_v2_mute_v1_0_0,mute_v1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mute_v1,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module bd_mov_av_v2_mute_v1_0_0
   (clk,
    aresetn,
    mute_left,
    mute_right,
    s_mute_tvalid,
    s_mute_tready,
    s_mute_tdata,
    s_mute_tlast,
    m_mute_tvalid,
    m_mute_tready,
    m_mute_tdata,
    m_mute_tlast);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_mute:s_mute, ASSOCIATED_RESET aresetn, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input mute_left;
  input mute_right;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_mute TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_mute, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_mute_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_mute TREADY" *) output s_mute_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_mute TDATA" *) input [15:0]s_mute_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_mute TLAST" *) input s_mute_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_mute TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_mute, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_mute_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_mute TREADY" *) input m_mute_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_mute TDATA" *) output [15:0]m_mute_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_mute TLAST" *) output m_mute_tlast;

  wire aresetn;
  wire clk;
  wire [15:0]m_mute_tdata;
  wire m_mute_tlast;
  wire m_mute_tready;
  wire m_mute_tvalid;
  wire mute_left;
  wire mute_right;
  wire [15:0]s_mute_tdata;
  wire s_mute_tlast;
  wire s_mute_tready;
  wire s_mute_tvalid;

  bd_mov_av_v2_mute_v1_0_0_mute_v1 U0
       (.\FSM_onehot_state_reg[1]_0 (s_mute_tready),
        .\FSM_onehot_state_reg[2]_0 (m_mute_tvalid),
        .aresetn(aresetn),
        .clk(clk),
        .m_mute_tdata(m_mute_tdata),
        .m_mute_tlast(m_mute_tlast),
        .m_mute_tready(m_mute_tready),
        .mute_left(mute_left),
        .mute_right(mute_right),
        .s_mute_tdata(s_mute_tdata),
        .s_mute_tlast(s_mute_tlast),
        .s_mute_tvalid(s_mute_tvalid));
endmodule

(* ORIG_REF_NAME = "mute_v1" *) 
module bd_mov_av_v2_mute_v1_0_0_mute_v1
   (\FSM_onehot_state_reg[1]_0 ,
    \FSM_onehot_state_reg[2]_0 ,
    m_mute_tdata,
    m_mute_tlast,
    mute_left,
    mute_right,
    m_mute_tready,
    clk,
    s_mute_tdata,
    aresetn,
    s_mute_tvalid,
    s_mute_tlast);
  output \FSM_onehot_state_reg[1]_0 ;
  output \FSM_onehot_state_reg[2]_0 ;
  output [15:0]m_mute_tdata;
  output m_mute_tlast;
  input mute_left;
  input mute_right;
  input m_mute_tready;
  input clk;
  input [15:0]s_mute_tdata;
  input aresetn;
  input s_mute_tvalid;
  input s_mute_tlast;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg[2]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire aresetn;
  wire clk;
  wire [15:0]data_in;
  wire data_in0;
  wire data_out0;
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
  wire [15:0]m_mute_tdata;
  wire m_mute_tlast;
  wire m_mute_tready;
  wire mute_left;
  wire mute_right;
  wire [15:0]s_mute_tdata;
  wire s_mute_tlast;
  wire s_mute_tvalid;
  wire tlast_expected;
  wire tlast_expected_0;
  wire tlast_expected_i_1_n_0;
  wire tlast_sampled;
  wire tlast_sampled_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hCCC8)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(m_mute_tready),
        .I3(tlast_expected_0),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAABFAAAA)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(m_mute_tready),
        .I3(tlast_expected_0),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(aresetn),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8200)) 
    \FSM_onehot_state[1]_i_3 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(tlast_expected),
        .I2(s_mute_tlast),
        .I3(s_mute_tvalid),
        .O(tlast_expected_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAAA8B8)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg[2]_0 ),
        .I3(m_mute_tready),
        .I4(tlast_expected_0),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,receive_data:010,send_data:100," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
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
  LUT3 #(
    .INIT(8'h80)) 
    \data_in[15]_i_1 
       (.I0(aresetn),
        .I1(s_mute_tvalid),
        .I2(\FSM_onehot_state_reg[1]_0 ),
        .O(data_in0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[0] 
       (.C(clk),
        .CE(data_in0),
        .D(s_mute_tdata[0]),
        .Q(data_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[10] 
       (.C(clk),
        .CE(data_in0),
        .D(s_mute_tdata[10]),
        .Q(data_in[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[11] 
       (.C(clk),
        .CE(data_in0),
        .D(s_mute_tdata[11]),
        .Q(data_in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[12] 
       (.C(clk),
        .CE(data_in0),
        .D(s_mute_tdata[12]),
        .Q(data_in[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[13] 
       (.C(clk),
        .CE(data_in0),
        .D(s_mute_tdata[13]),
        .Q(data_in[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[14] 
       (.C(clk),
        .CE(data_in0),
        .D(s_mute_tdata[14]),
        .Q(data_in[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[15] 
       (.C(clk),
        .CE(data_in0),
        .D(s_mute_tdata[15]),
        .Q(data_in[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[1] 
       (.C(clk),
        .CE(data_in0),
        .D(s_mute_tdata[1]),
        .Q(data_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[2] 
       (.C(clk),
        .CE(data_in0),
        .D(s_mute_tdata[2]),
        .Q(data_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[3] 
       (.C(clk),
        .CE(data_in0),
        .D(s_mute_tdata[3]),
        .Q(data_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[4] 
       (.C(clk),
        .CE(data_in0),
        .D(s_mute_tdata[4]),
        .Q(data_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[5] 
       (.C(clk),
        .CE(data_in0),
        .D(s_mute_tdata[5]),
        .Q(data_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[6] 
       (.C(clk),
        .CE(data_in0),
        .D(s_mute_tdata[6]),
        .Q(data_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[7] 
       (.C(clk),
        .CE(data_in0),
        .D(s_mute_tdata[7]),
        .Q(data_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[8] 
       (.C(clk),
        .CE(data_in0),
        .D(s_mute_tdata[8]),
        .Q(data_in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_reg[9] 
       (.C(clk),
        .CE(data_in0),
        .D(s_mute_tdata[9]),
        .Q(data_in[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h10B0)) 
    \data_out[0]_i_1 
       (.I0(tlast_sampled),
        .I1(mute_left),
        .I2(data_in[0]),
        .I3(mute_right),
        .O(\data_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h10B0)) 
    \data_out[10]_i_1 
       (.I0(tlast_sampled),
        .I1(mute_left),
        .I2(data_in[10]),
        .I3(mute_right),
        .O(\data_out[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h10B0)) 
    \data_out[11]_i_1 
       (.I0(tlast_sampled),
        .I1(mute_left),
        .I2(data_in[11]),
        .I3(mute_right),
        .O(\data_out[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h10B0)) 
    \data_out[12]_i_1 
       (.I0(tlast_sampled),
        .I1(mute_left),
        .I2(data_in[12]),
        .I3(mute_right),
        .O(\data_out[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h10B0)) 
    \data_out[13]_i_1 
       (.I0(tlast_sampled),
        .I1(mute_left),
        .I2(data_in[13]),
        .I3(mute_right),
        .O(\data_out[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h10B0)) 
    \data_out[14]_i_1 
       (.I0(tlast_sampled),
        .I1(mute_left),
        .I2(data_in[14]),
        .I3(mute_right),
        .O(\data_out[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80080000)) 
    \data_out[15]_i_1 
       (.I0(aresetn),
        .I1(s_mute_tvalid),
        .I2(s_mute_tlast),
        .I3(tlast_expected),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(data_out0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h10B0)) 
    \data_out[15]_i_2 
       (.I0(tlast_sampled),
        .I1(mute_left),
        .I2(data_in[15]),
        .I3(mute_right),
        .O(\data_out[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h10B0)) 
    \data_out[1]_i_1 
       (.I0(tlast_sampled),
        .I1(mute_left),
        .I2(data_in[1]),
        .I3(mute_right),
        .O(\data_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h10B0)) 
    \data_out[2]_i_1 
       (.I0(tlast_sampled),
        .I1(mute_left),
        .I2(data_in[2]),
        .I3(mute_right),
        .O(\data_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h10B0)) 
    \data_out[3]_i_1 
       (.I0(tlast_sampled),
        .I1(mute_left),
        .I2(data_in[3]),
        .I3(mute_right),
        .O(\data_out[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h10B0)) 
    \data_out[4]_i_1 
       (.I0(tlast_sampled),
        .I1(mute_left),
        .I2(data_in[4]),
        .I3(mute_right),
        .O(\data_out[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h10B0)) 
    \data_out[5]_i_1 
       (.I0(tlast_sampled),
        .I1(mute_left),
        .I2(data_in[5]),
        .I3(mute_right),
        .O(\data_out[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h10B0)) 
    \data_out[6]_i_1 
       (.I0(tlast_sampled),
        .I1(mute_left),
        .I2(data_in[6]),
        .I3(mute_right),
        .O(\data_out[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h10B0)) 
    \data_out[7]_i_1 
       (.I0(tlast_sampled),
        .I1(mute_left),
        .I2(data_in[7]),
        .I3(mute_right),
        .O(\data_out[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h10B0)) 
    \data_out[8]_i_1 
       (.I0(tlast_sampled),
        .I1(mute_left),
        .I2(data_in[8]),
        .I3(mute_right),
        .O(\data_out[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h10B0)) 
    \data_out[9]_i_1 
       (.I0(tlast_sampled),
        .I1(mute_left),
        .I2(data_in[9]),
        .I3(mute_right),
        .O(\data_out[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[0]_i_1_n_0 ),
        .Q(m_mute_tdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[10] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[10]_i_1_n_0 ),
        .Q(m_mute_tdata[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[11] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[11]_i_1_n_0 ),
        .Q(m_mute_tdata[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[12] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[12]_i_1_n_0 ),
        .Q(m_mute_tdata[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[13] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[13]_i_1_n_0 ),
        .Q(m_mute_tdata[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[14] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[14]_i_1_n_0 ),
        .Q(m_mute_tdata[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[15] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[15]_i_2_n_0 ),
        .Q(m_mute_tdata[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[1]_i_1_n_0 ),
        .Q(m_mute_tdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[2]_i_1_n_0 ),
        .Q(m_mute_tdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[3]_i_1_n_0 ),
        .Q(m_mute_tdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[4]_i_1_n_0 ),
        .Q(m_mute_tdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[5]_i_1_n_0 ),
        .Q(m_mute_tdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[6]_i_1_n_0 ),
        .Q(m_mute_tdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[7]_i_1_n_0 ),
        .Q(m_mute_tdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[8] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[8]_i_1_n_0 ),
        .Q(m_mute_tdata[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[9] 
       (.C(clk),
        .CE(data_out0),
        .D(\data_out[9]_i_1_n_0 ),
        .Q(m_mute_tdata[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m_mute_tlast_INST_0
       (.I0(\FSM_onehot_state_reg[2]_0 ),
        .I1(tlast_sampled),
        .O(m_mute_tlast));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F20)) 
    tlast_expected_i_1
       (.I0(s_mute_tvalid),
        .I1(s_mute_tlast),
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
        .I1(s_mute_tvalid),
        .I2(s_mute_tlast),
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

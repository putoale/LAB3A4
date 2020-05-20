// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed May 20 20:37:30 2020
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
   (m_axis_tdata,
    volume_level,
    s_axis_tready,
    m_axis_tlast,
    m_axis_tvalid,
    aresetn,
    s_axis_tlast,
    s_axis_tvalid,
    m_axis_tready,
    aclk,
    s_axis_tdata,
    volume_up,
    volume_down);
  output [15:0]m_axis_tdata;
  output [14:0]volume_level;
  output s_axis_tready;
  output m_axis_tlast;
  output m_axis_tvalid;
  input aresetn;
  input s_axis_tlast;
  input s_axis_tvalid;
  input m_axis_tready;
  input aclk;
  input [15:0]s_axis_tdata;
  input volume_up;
  input volume_down;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire [15:0]SHIFT_LEFT;
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
  wire data_out0;
  wire \data_out[0]_i_1_n_0 ;
  wire \data_out[0]_i_2_n_0 ;
  wire \data_out[0]_i_3_n_0 ;
  wire \data_out[10]_i_1_n_0 ;
  wire \data_out[10]_i_2_n_0 ;
  wire \data_out[10]_i_3_n_0 ;
  wire \data_out[11]_i_1_n_0 ;
  wire \data_out[11]_i_2_n_0 ;
  wire \data_out[11]_i_3_n_0 ;
  wire \data_out[12]_i_1_n_0 ;
  wire \data_out[12]_i_2_n_0 ;
  wire \data_out[12]_i_3_n_0 ;
  wire \data_out[12]_i_4_n_0 ;
  wire \data_out[13]_i_1_n_0 ;
  wire \data_out[13]_i_2_n_0 ;
  wire \data_out[13]_i_3_n_0 ;
  wire \data_out[14]_i_1_n_0 ;
  wire \data_out[15]_i_2_n_0 ;
  wire \data_out[15]_i_3_n_0 ;
  wire \data_out[15]_i_4_n_0 ;
  wire \data_out[1]_i_1_n_0 ;
  wire \data_out[1]_i_2_n_0 ;
  wire \data_out[2]_i_1_n_0 ;
  wire \data_out[2]_i_2_n_0 ;
  wire \data_out[2]_i_3_n_0 ;
  wire \data_out[3]_i_1_n_0 ;
  wire \data_out[3]_i_2_n_0 ;
  wire \data_out[3]_i_3_n_0 ;
  wire \data_out[4]_i_1_n_0 ;
  wire \data_out[4]_i_2_n_0 ;
  wire \data_out[4]_i_3_n_0 ;
  wire \data_out[5]_i_1_n_0 ;
  wire \data_out[5]_i_2_n_0 ;
  wire \data_out[5]_i_3_n_0 ;
  wire \data_out[6]_i_1_n_0 ;
  wire \data_out[6]_i_2_n_0 ;
  wire \data_out[6]_i_3_n_0 ;
  wire \data_out[7]_i_1_n_0 ;
  wire \data_out[7]_i_2_n_0 ;
  wire \data_out[7]_i_3_n_0 ;
  wire \data_out[8]_i_1_n_0 ;
  wire \data_out[8]_i_2_n_0 ;
  wire \data_out[8]_i_3_n_0 ;
  wire \data_out[8]_i_4_n_0 ;
  wire \data_out[9]_i_1_n_0 ;
  wire \data_out[9]_i_2_n_0 ;
  wire \data_out[9]_i_3_n_0 ;
  wire \data_out[9]_i_4_n_0 ;
  wire data_out_temp0;
  wire \data_out_temp[0]_i_2_n_0 ;
  wire \data_out_temp[10]_i_2_n_0 ;
  wire \data_out_temp[10]_i_3_n_0 ;
  wire \data_out_temp[11]_i_2_n_0 ;
  wire \data_out_temp[11]_i_3_n_0 ;
  wire \data_out_temp[11]_i_4_n_0 ;
  wire \data_out_temp[12]_i_2_n_0 ;
  wire \data_out_temp[12]_i_3_n_0 ;
  wire \data_out_temp[12]_i_4_n_0 ;
  wire \data_out_temp[12]_i_5_n_0 ;
  wire \data_out_temp[13]_i_2_n_0 ;
  wire \data_out_temp[13]_i_3_n_0 ;
  wire \data_out_temp[13]_i_4_n_0 ;
  wire \data_out_temp[14]_i_2_n_0 ;
  wire \data_out_temp[14]_i_3_n_0 ;
  wire \data_out_temp[14]_i_4_n_0 ;
  wire \data_out_temp[14]_i_5_n_0 ;
  wire \data_out_temp[15]_i_3_n_0 ;
  wire \data_out_temp[15]_i_4_n_0 ;
  wire \data_out_temp[15]_i_5_n_0 ;
  wire \data_out_temp[1]_i_2_n_0 ;
  wire \data_out_temp[1]_i_3_n_0 ;
  wire \data_out_temp[2]_i_2_n_0 ;
  wire \data_out_temp[2]_i_3_n_0 ;
  wire \data_out_temp[3]_i_2_n_0 ;
  wire \data_out_temp[3]_i_3_n_0 ;
  wire \data_out_temp[3]_i_4_n_0 ;
  wire \data_out_temp[4]_i_2_n_0 ;
  wire \data_out_temp[4]_i_3_n_0 ;
  wire \data_out_temp[4]_i_4_n_0 ;
  wire \data_out_temp[5]_i_2_n_0 ;
  wire \data_out_temp[5]_i_3_n_0 ;
  wire \data_out_temp[5]_i_4_n_0 ;
  wire \data_out_temp[6]_i_2_n_0 ;
  wire \data_out_temp[6]_i_3_n_0 ;
  wire \data_out_temp[6]_i_4_n_0 ;
  wire \data_out_temp[7]_i_2_n_0 ;
  wire \data_out_temp[7]_i_3_n_0 ;
  wire \data_out_temp[7]_i_4_n_0 ;
  wire \data_out_temp[7]_i_5_n_0 ;
  wire \data_out_temp[8]_i_2_n_0 ;
  wire \data_out_temp[8]_i_3_n_0 ;
  wire \data_out_temp[8]_i_4_n_0 ;
  wire \data_out_temp[8]_i_5_n_0 ;
  wire \data_out_temp[9]_i_2_n_0 ;
  wire \data_out_temp[9]_i_3_n_0 ;
  wire \data_out_temp_reg_n_0_[0] ;
  wire \data_out_temp_reg_n_0_[10] ;
  wire \data_out_temp_reg_n_0_[11] ;
  wire \data_out_temp_reg_n_0_[12] ;
  wire \data_out_temp_reg_n_0_[13] ;
  wire \data_out_temp_reg_n_0_[14] ;
  wire \data_out_temp_reg_n_0_[1] ;
  wire \data_out_temp_reg_n_0_[2] ;
  wire \data_out_temp_reg_n_0_[3] ;
  wire \data_out_temp_reg_n_0_[4] ;
  wire \data_out_temp_reg_n_0_[5] ;
  wire \data_out_temp_reg_n_0_[6] ;
  wire \data_out_temp_reg_n_0_[7] ;
  wire \data_out_temp_reg_n_0_[8] ;
  wire \data_out_temp_reg_n_0_[9] ;
  wire [4:0]diff;
  wire [4:1]diff00_in;
  wire \diff[0]_i_1_n_0 ;
  wire [15:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire p_0_in;
  wire [8:8]p_0_in1_in;
  wire p_1_in;
  wire [15:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [2:0]state__0;
  wire tlast_expected;
  wire tlast_expected_0;
  wire tlast_expected_i_1_n_0;
  wire tlast_sampled;
  wire tlast_sampled0;
  wire \volume[0]_i_1_n_0 ;
  wire \volume[1]_i_1_n_0 ;
  wire \volume[2]_i_1_n_0 ;
  wire volume_down;
  wire [14:0]volume_level;
  wire \volume_level[10]_i_1_n_0 ;
  wire \volume_level[11]_i_1_n_0 ;
  wire \volume_level[12]_i_1_n_0 ;
  wire \volume_level[13]_i_1_n_0 ;
  wire \volume_level[14]_i_1_n_0 ;
  wire \volume_level[15]_i_1_n_0 ;
  wire \volume_level[15]_i_2_n_0 ;
  wire \volume_level[7]_i_1_n_0 ;
  wire \volume_level[8]_i_1_n_0 ;
  wire \volume_level[9]_i_1_n_0 ;
  wire [3:0]volume_reg;
  wire volume_up;

  LUT6 #(
    .INIT(64'hFF00FF6F00FF00FF)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(tlast_expected),
        .I1(s_axis_tlast),
        .I2(s_axis_tvalid),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF000090FFFF0000)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(tlast_expected),
        .I1(s_axis_tlast),
        .I2(s_axis_tvalid),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFCC4)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(m_axis_tready),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(aresetn),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,receive_data:001,multiply:010,compute_out:011,send_data:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[2]_i_2_n_0 ),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]));
  (* FSM_ENCODED_STATES = "idle:000,receive_data:001,multiply:010,compute_out:011,send_data:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[2]_i_2_n_0 ),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]));
  (* FSM_ENCODED_STATES = "idle:000,receive_data:001,multiply:010,compute_out:011,send_data:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[2]_i_2_n_0 ),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state__0[2]));
  LUT5 #(
    .INIT(32'h10000000)) 
    \data_in[15]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(s_axis_tvalid),
        .I3(state__0[0]),
        .I4(aresetn),
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
        .Q(p_0_in),
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
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \data_out[0]_i_1 
       (.I0(\data_out[13]_i_2_n_0 ),
        .I1(\data_out_temp_reg_n_0_[0] ),
        .I2(state__0[0]),
        .I3(\data_out[0]_i_2_n_0 ),
        .I4(diff[4]),
        .I5(\data_in_reg_n_0_[0] ),
        .O(\data_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_2 
       (.I0(\data_out[0]_i_3_n_0 ),
        .I1(\data_out[2]_i_3_n_0 ),
        .I2(diff[0]),
        .I3(\data_out_temp[15]_i_4_n_0 ),
        .I4(diff[1]),
        .I5(\data_out[3]_i_3_n_0 ),
        .O(\data_out[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_3 
       (.I0(\data_in_reg_n_0_[1] ),
        .I1(\data_in_reg_n_0_[9] ),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[5] ),
        .I4(diff[3]),
        .I5(\data_in_reg_n_0_[13] ),
        .O(\data_out[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hF6FFF600)) 
    \data_out[10]_i_1 
       (.I0(p_1_in),
        .I1(p_0_in),
        .I2(\data_out_temp_reg_n_0_[10] ),
        .I3(state__0[0]),
        .I4(\data_out[10]_i_2_n_0 ),
        .O(\data_out[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[10]_i_2 
       (.I0(\data_out[10]_i_3_n_0 ),
        .I1(diff[0]),
        .I2(\data_out[11]_i_3_n_0 ),
        .I3(diff[4]),
        .I4(\data_in_reg_n_0_[10] ),
        .O(\data_out[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \data_out[10]_i_3 
       (.I0(\data_in_reg_n_0_[11] ),
        .I1(diff[1]),
        .I2(\data_in_reg_n_0_[13] ),
        .I3(diff[3]),
        .I4(diff[2]),
        .I5(p_0_in),
        .O(\data_out[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hF6FFF600)) 
    \data_out[11]_i_1 
       (.I0(p_1_in),
        .I1(p_0_in),
        .I2(\data_out_temp_reg_n_0_[11] ),
        .I3(state__0[0]),
        .I4(\data_out[11]_i_2_n_0 ),
        .O(\data_out[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[11]_i_2 
       (.I0(\data_out[11]_i_3_n_0 ),
        .I1(diff[0]),
        .I2(\data_out[12]_i_3_n_0 ),
        .I3(diff[4]),
        .I4(\data_in_reg_n_0_[11] ),
        .O(\data_out[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \data_out[11]_i_3 
       (.I0(\data_in_reg_n_0_[12] ),
        .I1(diff[1]),
        .I2(\data_in_reg_n_0_[14] ),
        .I3(diff[3]),
        .I4(diff[2]),
        .I5(p_0_in),
        .O(\data_out[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF6FFF600)) 
    \data_out[12]_i_1 
       (.I0(p_1_in),
        .I1(p_0_in),
        .I2(\data_out_temp_reg_n_0_[12] ),
        .I3(state__0[0]),
        .I4(\data_out[12]_i_2_n_0 ),
        .O(\data_out[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[12]_i_2 
       (.I0(\data_out[12]_i_3_n_0 ),
        .I1(diff[0]),
        .I2(\data_out[12]_i_4_n_0 ),
        .I3(diff[4]),
        .I4(\data_in_reg_n_0_[12] ),
        .O(\data_out[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \data_out[12]_i_3 
       (.I0(\data_in_reg_n_0_[13] ),
        .I1(diff[3]),
        .I2(diff[2]),
        .I3(diff[1]),
        .I4(p_0_in),
        .O(\data_out[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \data_out[12]_i_4 
       (.I0(\data_in_reg_n_0_[14] ),
        .I1(diff[3]),
        .I2(diff[2]),
        .I3(diff[1]),
        .I4(p_0_in),
        .O(\data_out[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \data_out[13]_i_1 
       (.I0(\data_out[13]_i_2_n_0 ),
        .I1(\data_out_temp_reg_n_0_[13] ),
        .I2(state__0[0]),
        .I3(\data_out[13]_i_3_n_0 ),
        .I4(diff[4]),
        .I5(\data_in_reg_n_0_[13] ),
        .O(\data_out[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_out[13]_i_2 
       (.I0(p_0_in),
        .I1(p_1_in),
        .O(\data_out[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \data_out[13]_i_3 
       (.I0(\data_in_reg_n_0_[14] ),
        .I1(diff[3]),
        .I2(diff[2]),
        .I3(diff[1]),
        .I4(diff[0]),
        .I5(p_0_in),
        .O(\data_out[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDFE0DFEFDFE0D0E0)) 
    \data_out[14]_i_1 
       (.I0(p_1_in),
        .I1(\data_out_temp_reg_n_0_[14] ),
        .I2(state__0[0]),
        .I3(p_0_in),
        .I4(diff[4]),
        .I5(\data_in_reg_n_0_[14] ),
        .O(\data_out[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h45400000)) 
    \data_out[15]_i_1 
       (.I0(state__0[2]),
        .I1(\data_out[15]_i_3_n_0 ),
        .I2(state__0[0]),
        .I3(\data_out[15]_i_4_n_0 ),
        .I4(aresetn),
        .O(data_out0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \data_out[15]_i_2 
       (.I0(p_1_in),
        .I1(state__0[0]),
        .I2(p_0_in),
        .O(\data_out[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \data_out[15]_i_3 
       (.I0(diff[4]),
        .I1(diff[1]),
        .I2(diff[2]),
        .I3(diff[3]),
        .I4(diff[0]),
        .I5(state__0[1]),
        .O(\data_out[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAB00000000)) 
    \data_out[15]_i_4 
       (.I0(diff[4]),
        .I1(diff[1]),
        .I2(diff[3]),
        .I3(diff[2]),
        .I4(diff[0]),
        .I5(state__0[1]),
        .O(\data_out[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \data_out[1]_i_1 
       (.I0(\data_out[13]_i_2_n_0 ),
        .I1(\data_out_temp_reg_n_0_[1] ),
        .I2(state__0[0]),
        .I3(\data_out[1]_i_2_n_0 ),
        .I4(diff[4]),
        .I5(\data_in_reg_n_0_[1] ),
        .O(\data_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_2 
       (.I0(\data_out_temp[15]_i_4_n_0 ),
        .I1(\data_out[3]_i_3_n_0 ),
        .I2(diff[0]),
        .I3(\data_out[2]_i_3_n_0 ),
        .I4(diff[1]),
        .I5(\data_out[4]_i_3_n_0 ),
        .O(\data_out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \data_out[2]_i_1 
       (.I0(\data_out[13]_i_2_n_0 ),
        .I1(\data_out_temp_reg_n_0_[2] ),
        .I2(state__0[0]),
        .I3(\data_out[2]_i_2_n_0 ),
        .I4(diff[4]),
        .I5(\data_in_reg_n_0_[2] ),
        .O(\data_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_2 
       (.I0(\data_out[2]_i_3_n_0 ),
        .I1(\data_out[4]_i_3_n_0 ),
        .I2(diff[0]),
        .I3(\data_out[3]_i_3_n_0 ),
        .I4(diff[1]),
        .I5(\data_out[5]_i_3_n_0 ),
        .O(\data_out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_3 
       (.I0(\data_in_reg_n_0_[3] ),
        .I1(\data_in_reg_n_0_[11] ),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[7] ),
        .I4(diff[3]),
        .I5(p_0_in),
        .O(\data_out[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \data_out[3]_i_1 
       (.I0(\data_out[13]_i_2_n_0 ),
        .I1(\data_out_temp_reg_n_0_[3] ),
        .I2(state__0[0]),
        .I3(\data_out[3]_i_2_n_0 ),
        .I4(diff[4]),
        .I5(\data_in_reg_n_0_[3] ),
        .O(\data_out[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_2 
       (.I0(\data_out[3]_i_3_n_0 ),
        .I1(\data_out[5]_i_3_n_0 ),
        .I2(diff[0]),
        .I3(\data_out[4]_i_3_n_0 ),
        .I4(diff[1]),
        .I5(\data_out[6]_i_3_n_0 ),
        .O(\data_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_3 
       (.I0(\data_in_reg_n_0_[4] ),
        .I1(\data_in_reg_n_0_[12] ),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[8] ),
        .I4(diff[3]),
        .I5(p_0_in),
        .O(\data_out[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \data_out[4]_i_1 
       (.I0(\data_out[13]_i_2_n_0 ),
        .I1(\data_out_temp_reg_n_0_[4] ),
        .I2(state__0[0]),
        .I3(\data_out[4]_i_2_n_0 ),
        .I4(diff[4]),
        .I5(\data_in_reg_n_0_[4] ),
        .O(\data_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_2 
       (.I0(\data_out[4]_i_3_n_0 ),
        .I1(\data_out[6]_i_3_n_0 ),
        .I2(diff[0]),
        .I3(\data_out[5]_i_3_n_0 ),
        .I4(diff[1]),
        .I5(\data_out[7]_i_3_n_0 ),
        .O(\data_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_3 
       (.I0(\data_in_reg_n_0_[5] ),
        .I1(\data_in_reg_n_0_[13] ),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[9] ),
        .I4(diff[3]),
        .I5(p_0_in),
        .O(\data_out[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \data_out[5]_i_1 
       (.I0(\data_out[13]_i_2_n_0 ),
        .I1(\data_out_temp_reg_n_0_[5] ),
        .I2(state__0[0]),
        .I3(\data_out[5]_i_2_n_0 ),
        .I4(diff[4]),
        .I5(\data_in_reg_n_0_[5] ),
        .O(\data_out[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_2 
       (.I0(\data_out[5]_i_3_n_0 ),
        .I1(\data_out[7]_i_3_n_0 ),
        .I2(diff[0]),
        .I3(\data_out[6]_i_3_n_0 ),
        .I4(diff[1]),
        .I5(\data_out[8]_i_3_n_0 ),
        .O(\data_out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_3 
       (.I0(\data_in_reg_n_0_[6] ),
        .I1(\data_in_reg_n_0_[14] ),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[10] ),
        .I4(diff[3]),
        .I5(p_0_in),
        .O(\data_out[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \data_out[6]_i_1 
       (.I0(\data_out[13]_i_2_n_0 ),
        .I1(\data_out_temp_reg_n_0_[6] ),
        .I2(state__0[0]),
        .I3(\data_out[6]_i_2_n_0 ),
        .I4(diff[4]),
        .I5(\data_in_reg_n_0_[6] ),
        .O(\data_out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_2 
       (.I0(\data_out[6]_i_3_n_0 ),
        .I1(\data_out[8]_i_3_n_0 ),
        .I2(diff[0]),
        .I3(\data_out[7]_i_3_n_0 ),
        .I4(diff[1]),
        .I5(\data_out[9]_i_3_n_0 ),
        .O(\data_out[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[6]_i_3 
       (.I0(\data_in_reg_n_0_[7] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[11] ),
        .I3(diff[3]),
        .I4(p_0_in),
        .O(\data_out[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \data_out[7]_i_1 
       (.I0(\data_out[13]_i_2_n_0 ),
        .I1(\data_out_temp_reg_n_0_[7] ),
        .I2(state__0[0]),
        .I3(\data_out[7]_i_2_n_0 ),
        .I4(diff[4]),
        .I5(\data_in_reg_n_0_[7] ),
        .O(\data_out[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_2 
       (.I0(\data_out[7]_i_3_n_0 ),
        .I1(\data_out[9]_i_3_n_0 ),
        .I2(diff[0]),
        .I3(\data_out[8]_i_3_n_0 ),
        .I4(diff[1]),
        .I5(\data_out[8]_i_4_n_0 ),
        .O(\data_out[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[7]_i_3 
       (.I0(\data_in_reg_n_0_[8] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[12] ),
        .I3(diff[3]),
        .I4(p_0_in),
        .O(\data_out[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \data_out[8]_i_1 
       (.I0(\data_out[13]_i_2_n_0 ),
        .I1(\data_out_temp_reg_n_0_[8] ),
        .I2(state__0[0]),
        .I3(\data_out[8]_i_2_n_0 ),
        .I4(diff[4]),
        .I5(\data_in_reg_n_0_[8] ),
        .O(\data_out[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[8]_i_2 
       (.I0(\data_out[8]_i_3_n_0 ),
        .I1(\data_out[8]_i_4_n_0 ),
        .I2(diff[0]),
        .I3(\data_out[9]_i_3_n_0 ),
        .I4(diff[1]),
        .I5(\data_out[9]_i_4_n_0 ),
        .O(\data_out[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[8]_i_3 
       (.I0(\data_in_reg_n_0_[9] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[13] ),
        .I3(diff[3]),
        .I4(p_0_in),
        .O(\data_out[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_out[8]_i_4 
       (.I0(\data_in_reg_n_0_[11] ),
        .I1(diff[3]),
        .I2(diff[2]),
        .I3(p_0_in),
        .O(\data_out[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFEFEFE0E0E0)) 
    \data_out[9]_i_1 
       (.I0(\data_out[13]_i_2_n_0 ),
        .I1(\data_out_temp_reg_n_0_[9] ),
        .I2(state__0[0]),
        .I3(\data_out[9]_i_2_n_0 ),
        .I4(diff[4]),
        .I5(\data_in_reg_n_0_[9] ),
        .O(\data_out[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[9]_i_2 
       (.I0(\data_out[9]_i_3_n_0 ),
        .I1(diff[1]),
        .I2(\data_out[9]_i_4_n_0 ),
        .I3(diff[0]),
        .I4(\data_out[10]_i_3_n_0 ),
        .O(\data_out[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[9]_i_3 
       (.I0(\data_in_reg_n_0_[10] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[14] ),
        .I3(diff[3]),
        .I4(p_0_in),
        .O(\data_out[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_out[9]_i_4 
       (.I0(\data_in_reg_n_0_[12] ),
        .I1(diff[3]),
        .I2(diff[2]),
        .I3(p_0_in),
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
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \data_out_temp[0]_i_1 
       (.I0(\data_out_temp[15]_i_3_n_0 ),
        .I1(\data_out_temp[1]_i_2_n_0 ),
        .I2(diff[4]),
        .I3(\data_out_temp[0]_i_2_n_0 ),
        .I4(diff[0]),
        .O(SHIFT_LEFT[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \data_out_temp[0]_i_2 
       (.I0(diff[2]),
        .I1(\data_in_reg_n_0_[0] ),
        .I2(diff[3]),
        .I3(diff[1]),
        .O(\data_out_temp[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_temp[10]_i_1 
       (.I0(\data_out_temp[10]_i_2_n_0 ),
        .I1(\data_out_temp[11]_i_2_n_0 ),
        .I2(diff[4]),
        .I3(\data_out_temp[10]_i_3_n_0 ),
        .I4(diff[0]),
        .I5(\data_out_temp[11]_i_3_n_0 ),
        .O(SHIFT_LEFT[10]));
  LUT6 #(
    .INIT(64'hAF00A000C000C000)) 
    \data_out_temp[10]_i_2 
       (.I0(\data_in_reg_n_0_[11] ),
        .I1(p_0_in),
        .I2(diff[1]),
        .I3(diff[3]),
        .I4(\data_in_reg_n_0_[13] ),
        .I5(diff[2]),
        .O(\data_out_temp[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \data_out_temp[10]_i_3 
       (.I0(\data_in_reg_n_0_[3] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[7] ),
        .I3(diff[3]),
        .I4(diff[1]),
        .I5(\data_out_temp[12]_i_5_n_0 ),
        .O(\data_out_temp[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_temp[11]_i_1 
       (.I0(\data_out_temp[11]_i_2_n_0 ),
        .I1(\data_out_temp[12]_i_2_n_0 ),
        .I2(diff[4]),
        .I3(\data_out_temp[11]_i_3_n_0 ),
        .I4(diff[0]),
        .I5(\data_out_temp[12]_i_4_n_0 ),
        .O(SHIFT_LEFT[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hB0800000)) 
    \data_out_temp[11]_i_2 
       (.I0(\data_in_reg_n_0_[12] ),
        .I1(diff[1]),
        .I2(diff[3]),
        .I3(\data_in_reg_n_0_[14] ),
        .I4(diff[2]),
        .O(\data_out_temp[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_temp[11]_i_3 
       (.I0(\data_out_temp[11]_i_4_n_0 ),
        .I1(diff[1]),
        .I2(\data_out_temp[13]_i_4_n_0 ),
        .O(\data_out_temp[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_out_temp[11]_i_4 
       (.I0(\data_in_reg_n_0_[4] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[0] ),
        .I3(diff[3]),
        .I4(\data_in_reg_n_0_[8] ),
        .O(\data_out_temp[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_temp[12]_i_1 
       (.I0(\data_out_temp[12]_i_2_n_0 ),
        .I1(\data_out_temp[12]_i_3_n_0 ),
        .I2(diff[4]),
        .I3(\data_out_temp[12]_i_4_n_0 ),
        .I4(diff[0]),
        .I5(\data_out_temp[13]_i_3_n_0 ),
        .O(SHIFT_LEFT[12]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hB0800000)) 
    \data_out_temp[12]_i_2 
       (.I0(\data_in_reg_n_0_[13] ),
        .I1(diff[1]),
        .I2(diff[3]),
        .I3(p_0_in),
        .I4(diff[2]),
        .O(\data_out_temp[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \data_out_temp[12]_i_3 
       (.I0(diff[2]),
        .I1(\data_in_reg_n_0_[14] ),
        .I2(diff[3]),
        .I3(diff[1]),
        .O(\data_out_temp[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_temp[12]_i_4 
       (.I0(\data_out_temp[12]_i_5_n_0 ),
        .I1(diff[1]),
        .I2(\data_out_temp[14]_i_5_n_0 ),
        .O(\data_out_temp[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_out_temp[12]_i_5 
       (.I0(\data_in_reg_n_0_[5] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[1] ),
        .I3(diff[3]),
        .I4(\data_in_reg_n_0_[9] ),
        .O(\data_out_temp[12]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \data_out_temp[13]_i_1 
       (.I0(\data_out_temp[13]_i_2_n_0 ),
        .I1(diff[4]),
        .I2(\data_out_temp[13]_i_3_n_0 ),
        .I3(diff[0]),
        .I4(\data_out_temp[14]_i_3_n_0 ),
        .O(SHIFT_LEFT[13]));
  LUT6 #(
    .INIT(64'hB080000000000000)) 
    \data_out_temp[13]_i_2 
       (.I0(\data_in_reg_n_0_[14] ),
        .I1(diff[0]),
        .I2(diff[2]),
        .I3(p_0_in),
        .I4(diff[3]),
        .I5(diff[1]),
        .O(\data_out_temp[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_temp[13]_i_3 
       (.I0(\data_out_temp[13]_i_4_n_0 ),
        .I1(diff[1]),
        .I2(\data_out_temp[15]_i_5_n_0 ),
        .O(\data_out_temp[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_out_temp[13]_i_4 
       (.I0(\data_in_reg_n_0_[6] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[2] ),
        .I3(diff[3]),
        .I4(\data_in_reg_n_0_[10] ),
        .O(\data_out_temp[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \data_out_temp[14]_i_1 
       (.I0(\data_out_temp[14]_i_2_n_0 ),
        .I1(diff[4]),
        .I2(\data_out_temp[14]_i_3_n_0 ),
        .I3(diff[0]),
        .I4(\data_out_temp[14]_i_4_n_0 ),
        .O(SHIFT_LEFT[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \data_out_temp[14]_i_2 
       (.I0(diff[2]),
        .I1(p_0_in),
        .I2(diff[3]),
        .I3(diff[1]),
        .O(\data_out_temp[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_temp[14]_i_3 
       (.I0(\data_out_temp[14]_i_5_n_0 ),
        .I1(diff[1]),
        .I2(\data_out[0]_i_3_n_0 ),
        .O(\data_out_temp[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_temp[14]_i_4 
       (.I0(\data_out_temp[15]_i_5_n_0 ),
        .I1(diff[1]),
        .I2(\data_out_temp[15]_i_4_n_0 ),
        .O(\data_out_temp[14]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_out_temp[14]_i_5 
       (.I0(\data_in_reg_n_0_[7] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[3] ),
        .I3(diff[3]),
        .I4(\data_in_reg_n_0_[11] ),
        .O(\data_out_temp[14]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \data_out_temp[15]_i_1 
       (.I0(state__0[2]),
        .I1(\data_out[15]_i_3_n_0 ),
        .I2(state__0[0]),
        .I3(aresetn),
        .O(data_out_temp0));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \data_out_temp[15]_i_2 
       (.I0(\data_out_temp[15]_i_3_n_0 ),
        .I1(diff[0]),
        .I2(\data_out_temp[15]_i_4_n_0 ),
        .I3(diff[1]),
        .I4(\data_out_temp[15]_i_5_n_0 ),
        .I5(diff[4]),
        .O(SHIFT_LEFT[15]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_temp[15]_i_3 
       (.I0(\data_out[0]_i_3_n_0 ),
        .I1(diff[1]),
        .I2(\data_out[2]_i_3_n_0 ),
        .O(\data_out_temp[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_temp[15]_i_4 
       (.I0(\data_in_reg_n_0_[2] ),
        .I1(\data_in_reg_n_0_[10] ),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[6] ),
        .I4(diff[3]),
        .I5(\data_in_reg_n_0_[14] ),
        .O(\data_out_temp[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_temp[15]_i_5 
       (.I0(\data_in_reg_n_0_[0] ),
        .I1(\data_in_reg_n_0_[8] ),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[4] ),
        .I4(diff[3]),
        .I5(\data_in_reg_n_0_[12] ),
        .O(\data_out_temp[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out_temp[1]_i_1 
       (.I0(\data_out_temp[1]_i_2_n_0 ),
        .I1(diff[0]),
        .I2(\data_out_temp[2]_i_2_n_0 ),
        .I3(diff[4]),
        .I4(\data_out_temp[1]_i_3_n_0 ),
        .O(SHIFT_LEFT[1]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \data_out_temp[1]_i_2 
       (.I0(\data_out_temp[15]_i_4_n_0 ),
        .I1(diff[1]),
        .I2(\data_out_temp[3]_i_4_n_0 ),
        .I3(diff[2]),
        .I4(\data_in_reg_n_0_[8] ),
        .I5(diff[3]),
        .O(\data_out_temp[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \data_out_temp[1]_i_3 
       (.I0(\data_in_reg_n_0_[0] ),
        .I1(diff[0]),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[1] ),
        .I4(diff[3]),
        .I5(diff[1]),
        .O(\data_out_temp[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_temp[2]_i_1 
       (.I0(\data_out_temp[2]_i_2_n_0 ),
        .I1(\data_out_temp[3]_i_2_n_0 ),
        .I2(diff[4]),
        .I3(\data_out_temp[2]_i_3_n_0 ),
        .I4(diff[0]),
        .I5(\data_out_temp[3]_i_3_n_0 ),
        .O(SHIFT_LEFT[2]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \data_out_temp[2]_i_2 
       (.I0(\data_out[2]_i_3_n_0 ),
        .I1(diff[1]),
        .I2(\data_out_temp[4]_i_4_n_0 ),
        .I3(diff[2]),
        .I4(\data_in_reg_n_0_[9] ),
        .I5(diff[3]),
        .O(\data_out_temp[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \data_out_temp[2]_i_3 
       (.I0(diff[2]),
        .I1(\data_in_reg_n_0_[1] ),
        .I2(diff[3]),
        .I3(diff[1]),
        .O(\data_out_temp[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_temp[3]_i_1 
       (.I0(\data_out_temp[3]_i_2_n_0 ),
        .I1(\data_out_temp[4]_i_2_n_0 ),
        .I2(diff[4]),
        .I3(\data_out_temp[3]_i_3_n_0 ),
        .I4(diff[0]),
        .I5(\data_out_temp[4]_i_3_n_0 ),
        .O(SHIFT_LEFT[3]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \data_out_temp[3]_i_2 
       (.I0(\data_out_temp[3]_i_4_n_0 ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[8] ),
        .I3(diff[3]),
        .I4(diff[1]),
        .I5(\data_out_temp[5]_i_4_n_0 ),
        .O(\data_out_temp[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \data_out_temp[3]_i_3 
       (.I0(\data_in_reg_n_0_[0] ),
        .I1(diff[1]),
        .I2(diff[3]),
        .I3(\data_in_reg_n_0_[2] ),
        .I4(diff[2]),
        .O(\data_out_temp[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_temp[3]_i_4 
       (.I0(\data_in_reg_n_0_[4] ),
        .I1(diff[3]),
        .I2(\data_in_reg_n_0_[12] ),
        .O(\data_out_temp[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_temp[4]_i_1 
       (.I0(\data_out_temp[4]_i_2_n_0 ),
        .I1(\data_out_temp[5]_i_2_n_0 ),
        .I2(diff[4]),
        .I3(\data_out_temp[4]_i_3_n_0 ),
        .I4(diff[0]),
        .I5(\data_out_temp[5]_i_3_n_0 ),
        .O(SHIFT_LEFT[4]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \data_out_temp[4]_i_2 
       (.I0(\data_out_temp[4]_i_4_n_0 ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[9] ),
        .I3(diff[3]),
        .I4(diff[1]),
        .I5(\data_out_temp[6]_i_4_n_0 ),
        .O(\data_out_temp[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \data_out_temp[4]_i_3 
       (.I0(\data_in_reg_n_0_[1] ),
        .I1(diff[1]),
        .I2(diff[3]),
        .I3(\data_in_reg_n_0_[3] ),
        .I4(diff[2]),
        .O(\data_out_temp[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_temp[4]_i_4 
       (.I0(\data_in_reg_n_0_[5] ),
        .I1(diff[3]),
        .I2(\data_in_reg_n_0_[13] ),
        .O(\data_out_temp[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_temp[5]_i_1 
       (.I0(\data_out_temp[5]_i_2_n_0 ),
        .I1(\data_out_temp[6]_i_2_n_0 ),
        .I2(diff[4]),
        .I3(\data_out_temp[5]_i_3_n_0 ),
        .I4(diff[0]),
        .I5(\data_out_temp[6]_i_3_n_0 ),
        .O(SHIFT_LEFT[5]));
  LUT6 #(
    .INIT(64'hB8BBB88888888888)) 
    \data_out_temp[5]_i_2 
       (.I0(\data_out_temp[5]_i_4_n_0 ),
        .I1(diff[1]),
        .I2(\data_in_reg_n_0_[8] ),
        .I3(diff[2]),
        .I4(\data_in_reg_n_0_[12] ),
        .I5(diff[3]),
        .O(\data_out_temp[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \data_out_temp[5]_i_3 
       (.I0(\data_in_reg_n_0_[2] ),
        .I1(diff[1]),
        .I2(\data_in_reg_n_0_[0] ),
        .I3(diff[2]),
        .I4(\data_in_reg_n_0_[4] ),
        .I5(diff[3]),
        .O(\data_out_temp[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \data_out_temp[5]_i_4 
       (.I0(\data_in_reg_n_0_[6] ),
        .I1(\data_in_reg_n_0_[14] ),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[10] ),
        .I4(diff[3]),
        .O(\data_out_temp[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_temp[6]_i_1 
       (.I0(\data_out_temp[6]_i_2_n_0 ),
        .I1(\data_out_temp[7]_i_2_n_0 ),
        .I2(diff[4]),
        .I3(\data_out_temp[6]_i_3_n_0 ),
        .I4(diff[0]),
        .I5(\data_out_temp[7]_i_3_n_0 ),
        .O(SHIFT_LEFT[6]));
  LUT6 #(
    .INIT(64'hB8BBB88888888888)) 
    \data_out_temp[6]_i_2 
       (.I0(\data_out_temp[6]_i_4_n_0 ),
        .I1(diff[1]),
        .I2(\data_in_reg_n_0_[9] ),
        .I3(diff[2]),
        .I4(\data_in_reg_n_0_[13] ),
        .I5(diff[3]),
        .O(\data_out_temp[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \data_out_temp[6]_i_3 
       (.I0(\data_in_reg_n_0_[3] ),
        .I1(diff[1]),
        .I2(\data_in_reg_n_0_[1] ),
        .I3(diff[2]),
        .I4(\data_in_reg_n_0_[5] ),
        .I5(diff[3]),
        .O(\data_out_temp[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \data_out_temp[6]_i_4 
       (.I0(\data_in_reg_n_0_[7] ),
        .I1(p_0_in),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[11] ),
        .I4(diff[3]),
        .O(\data_out_temp[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_temp[7]_i_1 
       (.I0(\data_out_temp[7]_i_2_n_0 ),
        .I1(\data_out_temp[8]_i_2_n_0 ),
        .I2(diff[4]),
        .I3(\data_out_temp[7]_i_3_n_0 ),
        .I4(diff[0]),
        .I5(\data_out_temp[8]_i_3_n_0 ),
        .O(SHIFT_LEFT[7]));
  LUT6 #(
    .INIT(64'hB800FFFFB8000000)) 
    \data_out_temp[7]_i_2 
       (.I0(\data_in_reg_n_0_[8] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[12] ),
        .I3(diff[3]),
        .I4(diff[1]),
        .I5(\data_out_temp[7]_i_4_n_0 ),
        .O(\data_out_temp[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \data_out_temp[7]_i_3 
       (.I0(\data_in_reg_n_0_[0] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[4] ),
        .I3(diff[3]),
        .I4(diff[1]),
        .I5(\data_out_temp[7]_i_5_n_0 ),
        .O(\data_out_temp[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hB800)) 
    \data_out_temp[7]_i_4 
       (.I0(\data_in_reg_n_0_[10] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[14] ),
        .I3(diff[3]),
        .O(\data_out_temp[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \data_out_temp[7]_i_5 
       (.I0(\data_in_reg_n_0_[2] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[6] ),
        .I3(diff[3]),
        .O(\data_out_temp[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_temp[8]_i_1 
       (.I0(\data_out_temp[8]_i_2_n_0 ),
        .I1(\data_out_temp[9]_i_2_n_0 ),
        .I2(diff[4]),
        .I3(\data_out_temp[8]_i_3_n_0 ),
        .I4(diff[0]),
        .I5(\data_out_temp[9]_i_3_n_0 ),
        .O(SHIFT_LEFT[8]));
  LUT6 #(
    .INIT(64'hB800FFFFB8000000)) 
    \data_out_temp[8]_i_2 
       (.I0(\data_in_reg_n_0_[9] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[13] ),
        .I3(diff[3]),
        .I4(diff[1]),
        .I5(\data_out_temp[8]_i_4_n_0 ),
        .O(\data_out_temp[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \data_out_temp[8]_i_3 
       (.I0(\data_in_reg_n_0_[1] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[5] ),
        .I3(diff[3]),
        .I4(diff[1]),
        .I5(\data_out_temp[8]_i_5_n_0 ),
        .O(\data_out_temp[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hB800)) 
    \data_out_temp[8]_i_4 
       (.I0(\data_in_reg_n_0_[11] ),
        .I1(diff[2]),
        .I2(p_0_in),
        .I3(diff[3]),
        .O(\data_out_temp[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \data_out_temp[8]_i_5 
       (.I0(\data_in_reg_n_0_[3] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[7] ),
        .I3(diff[3]),
        .O(\data_out_temp[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out_temp[9]_i_1 
       (.I0(\data_out_temp[9]_i_2_n_0 ),
        .I1(\data_out_temp[10]_i_2_n_0 ),
        .I2(diff[4]),
        .I3(\data_out_temp[9]_i_3_n_0 ),
        .I4(diff[0]),
        .I5(\data_out_temp[10]_i_3_n_0 ),
        .O(SHIFT_LEFT[9]));
  LUT6 #(
    .INIT(64'hAF00A000C000C000)) 
    \data_out_temp[9]_i_2 
       (.I0(\data_in_reg_n_0_[10] ),
        .I1(\data_in_reg_n_0_[14] ),
        .I2(diff[1]),
        .I3(diff[3]),
        .I4(\data_in_reg_n_0_[12] ),
        .I5(diff[2]),
        .O(\data_out_temp[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \data_out_temp[9]_i_3 
       (.I0(\data_in_reg_n_0_[2] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[6] ),
        .I3(diff[3]),
        .I4(diff[1]),
        .I5(\data_out_temp[11]_i_4_n_0 ),
        .O(\data_out_temp[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[0] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[0]),
        .Q(\data_out_temp_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[10] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[10]),
        .Q(\data_out_temp_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[11] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[11]),
        .Q(\data_out_temp_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[12] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[12]),
        .Q(\data_out_temp_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[13] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[13]),
        .Q(\data_out_temp_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[14] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[14]),
        .Q(\data_out_temp_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[15] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[15]),
        .Q(p_1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[1] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[1]),
        .Q(\data_out_temp_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[2] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[2]),
        .Q(\data_out_temp_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[3] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[3]),
        .Q(\data_out_temp_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[4] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[4]),
        .Q(\data_out_temp_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[5] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[5]),
        .Q(\data_out_temp_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[6] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[6]),
        .Q(\data_out_temp_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[7] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[7]),
        .Q(\data_out_temp_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[8] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[8]),
        .Q(\data_out_temp_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[9] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[9]),
        .Q(\data_out_temp_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \diff[0]_i_1 
       (.I0(volume_reg[0]),
        .O(\diff[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \diff[1]_i_1 
       (.I0(volume_reg[1]),
        .I1(volume_reg[0]),
        .O(diff00_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \diff[2]_i_1 
       (.I0(volume_reg[2]),
        .I1(volume_reg[0]),
        .I2(volume_reg[1]),
        .O(diff00_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h9555)) 
    \diff[3]_i_1 
       (.I0(volume_reg[3]),
        .I1(volume_reg[1]),
        .I2(volume_reg[0]),
        .I3(volume_reg[2]),
        .O(diff00_in[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \diff[4]_i_1 
       (.I0(tlast_expected_0),
        .I1(aresetn),
        .O(tlast_sampled0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h007F)) 
    \diff[4]_i_2 
       (.I0(volume_reg[2]),
        .I1(volume_reg[0]),
        .I2(volume_reg[1]),
        .I3(volume_reg[3]),
        .O(diff00_in[4]));
  LUT6 #(
    .INIT(64'h0000000000008008)) 
    \diff[4]_i_3 
       (.I0(state__0[0]),
        .I1(s_axis_tvalid),
        .I2(s_axis_tlast),
        .I3(tlast_expected),
        .I4(state__0[1]),
        .I5(state__0[2]),
        .O(tlast_expected_0));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[0] 
       (.C(aclk),
        .CE(tlast_sampled0),
        .D(\diff[0]_i_1_n_0 ),
        .Q(diff[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[1] 
       (.C(aclk),
        .CE(tlast_sampled0),
        .D(diff00_in[1]),
        .Q(diff[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[2] 
       (.C(aclk),
        .CE(tlast_sampled0),
        .D(diff00_in[2]),
        .Q(diff[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[3] 
       (.C(aclk),
        .CE(tlast_sampled0),
        .D(diff00_in[3]),
        .Q(diff[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \diff_reg[4] 
       (.C(aclk),
        .CE(tlast_sampled0),
        .D(diff00_in[4]),
        .Q(diff[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    m_axis_tlast_INST_0
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(tlast_sampled),
        .O(m_axis_tlast));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h10)) 
    m_axis_tvalid_INST_0
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .O(m_axis_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h04)) 
    s_axis_tready_INST_0
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .O(s_axis_tready));
  LUT6 #(
    .INIT(64'hEFFFFFFF01000000)) 
    tlast_expected_i_1
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(s_axis_tlast),
        .I3(s_axis_tvalid),
        .I4(state__0[0]),
        .I5(tlast_expected),
        .O(tlast_expected_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tlast_expected_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[2]_i_2_n_0 ),
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
        .O(p_0_in1_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFEF08)) 
    \volume_level[10]_i_1 
       (.I0(volume_reg[0]),
        .I1(volume_up),
        .I2(volume_down),
        .I3(volume_reg[1]),
        .I4(volume_reg[2]),
        .O(\volume_level[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFF80A8)) 
    \volume_level[11]_i_1 
       (.I0(volume_reg[1]),
        .I1(volume_reg[0]),
        .I2(volume_up),
        .I3(volume_down),
        .I4(volume_reg[2]),
        .O(\volume_level[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAAEAA8AA)) 
    \volume_level[12]_i_1 
       (.I0(volume_reg[2]),
        .I1(volume_reg[0]),
        .I2(volume_up),
        .I3(volume_down),
        .I4(volume_reg[1]),
        .O(\volume_level[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hEAFE0000)) 
    \volume_level[13]_i_1 
       (.I0(volume_reg[1]),
        .I1(volume_reg[0]),
        .I2(volume_up),
        .I3(volume_down),
        .I4(volume_reg[2]),
        .O(\volume_level[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEF080000)) 
    \volume_level[14]_i_1 
       (.I0(volume_reg[0]),
        .I1(volume_up),
        .I2(volume_down),
        .I3(volume_reg[1]),
        .I4(volume_reg[2]),
        .O(\volume_level[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \volume_level[15]_i_1 
       (.I0(aresetn),
        .I1(volume_reg[3]),
        .O(\volume_level[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h80A80000)) 
    \volume_level[15]_i_2 
       (.I0(volume_reg[1]),
        .I1(volume_reg[0]),
        .I2(volume_up),
        .I3(volume_down),
        .I4(volume_reg[2]),
        .O(\volume_level[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \volume_level[7]_i_1 
       (.I0(volume_reg[3]),
        .I1(aresetn),
        .O(\volume_level[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \volume_level[8]_i_1 
       (.I0(p_0_in1_in),
        .I1(aresetn),
        .I2(volume_level[7]),
        .O(\volume_level[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFEAFE)) 
    \volume_level[9]_i_1 
       (.I0(volume_reg[1]),
        .I1(volume_reg[0]),
        .I2(volume_up),
        .I3(volume_down),
        .I4(volume_reg[2]),
        .O(\volume_level[9]_i_1_n_0 ));
  FDRE \volume_level_reg[10] 
       (.C(aclk),
        .CE(aresetn),
        .D(\volume_level[10]_i_1_n_0 ),
        .Q(volume_level[9]),
        .R(\volume_level[15]_i_1_n_0 ));
  FDRE \volume_level_reg[11] 
       (.C(aclk),
        .CE(aresetn),
        .D(\volume_level[11]_i_1_n_0 ),
        .Q(volume_level[10]),
        .R(\volume_level[15]_i_1_n_0 ));
  FDRE \volume_level_reg[12] 
       (.C(aclk),
        .CE(aresetn),
        .D(\volume_level[12]_i_1_n_0 ),
        .Q(volume_level[11]),
        .R(\volume_level[15]_i_1_n_0 ));
  FDRE \volume_level_reg[13] 
       (.C(aclk),
        .CE(aresetn),
        .D(\volume_level[13]_i_1_n_0 ),
        .Q(volume_level[12]),
        .R(\volume_level[15]_i_1_n_0 ));
  FDRE \volume_level_reg[14] 
       (.C(aclk),
        .CE(aresetn),
        .D(\volume_level[14]_i_1_n_0 ),
        .Q(volume_level[13]),
        .R(\volume_level[15]_i_1_n_0 ));
  FDRE \volume_level_reg[15] 
       (.C(aclk),
        .CE(aresetn),
        .D(\volume_level[15]_i_2_n_0 ),
        .Q(volume_level[14]),
        .R(\volume_level[15]_i_1_n_0 ));
  FDSE \volume_level_reg[1] 
       (.C(aclk),
        .CE(aresetn),
        .D(\volume_level[9]_i_1_n_0 ),
        .Q(volume_level[0]),
        .S(\volume_level[7]_i_1_n_0 ));
  FDSE \volume_level_reg[2] 
       (.C(aclk),
        .CE(aresetn),
        .D(\volume_level[10]_i_1_n_0 ),
        .Q(volume_level[1]),
        .S(\volume_level[7]_i_1_n_0 ));
  FDSE \volume_level_reg[3] 
       (.C(aclk),
        .CE(aresetn),
        .D(\volume_level[11]_i_1_n_0 ),
        .Q(volume_level[2]),
        .S(\volume_level[7]_i_1_n_0 ));
  FDSE \volume_level_reg[4] 
       (.C(aclk),
        .CE(aresetn),
        .D(\volume_level[12]_i_1_n_0 ),
        .Q(volume_level[3]),
        .S(\volume_level[7]_i_1_n_0 ));
  FDSE \volume_level_reg[5] 
       (.C(aclk),
        .CE(aresetn),
        .D(\volume_level[13]_i_1_n_0 ),
        .Q(volume_level[4]),
        .S(\volume_level[7]_i_1_n_0 ));
  FDSE \volume_level_reg[6] 
       (.C(aclk),
        .CE(aresetn),
        .D(\volume_level[14]_i_1_n_0 ),
        .Q(volume_level[5]),
        .S(\volume_level[7]_i_1_n_0 ));
  FDSE \volume_level_reg[7] 
       (.C(aclk),
        .CE(aresetn),
        .D(\volume_level[15]_i_2_n_0 ),
        .Q(volume_level[6]),
        .S(\volume_level[7]_i_1_n_0 ));
  FDRE \volume_level_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\volume_level[8]_i_1_n_0 ),
        .Q(volume_level[7]),
        .R(1'b0));
  FDRE \volume_level_reg[9] 
       (.C(aclk),
        .CE(aresetn),
        .D(\volume_level[9]_i_1_n_0 ),
        .Q(volume_level[8]),
        .R(\volume_level[15]_i_1_n_0 ));
  FDPE \volume_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\volume[0]_i_1_n_0 ),
        .PRE(\FSM_sequential_state[2]_i_2_n_0 ),
        .Q(volume_reg[0]));
  FDPE \volume_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\volume[1]_i_1_n_0 ),
        .PRE(\FSM_sequential_state[2]_i_2_n_0 ),
        .Q(volume_reg[1]));
  FDPE \volume_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\volume[2]_i_1_n_0 ),
        .PRE(\FSM_sequential_state[2]_i_2_n_0 ),
        .Q(volume_reg[2]));
  FDCE \volume_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[2]_i_2_n_0 ),
        .D(p_0_in1_in),
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

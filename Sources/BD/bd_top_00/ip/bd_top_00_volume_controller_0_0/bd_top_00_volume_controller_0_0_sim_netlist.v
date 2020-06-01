// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Jun  1 13:33:47 2020
// Host        : DESKTOP-O39JAIK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Vivado_DESD_Project/Project/Personal/Lab3_A4/LAB3A4/Sources/BD/bd_top_00/ip/bd_top_00_volume_controller_0_0/bd_top_00_volume_controller_0_0_sim_netlist.v
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
    volume_level,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tlast);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 225000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input volume_up;
  input volume_down;
  output [15:0]volume_level;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 225000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [15:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 225000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [15:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;

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
    m_axis_tdata,
    s_axis_tready,
    m_axis_tvalid,
    m_axis_tlast,
    s_axis_tdata,
    aclk,
    aresetn,
    m_axis_tready,
    s_axis_tvalid,
    s_axis_tlast,
    volume_up,
    volume_down);
  output [14:0]volume_level;
  output [15:0]m_axis_tdata;
  output s_axis_tready;
  output m_axis_tvalid;
  output m_axis_tlast;
  input [15:0]s_axis_tdata;
  input aclk;
  input aresetn;
  input m_axis_tready;
  input s_axis_tvalid;
  input s_axis_tlast;
  input volume_up;
  input volume_down;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire [14:0]R;
  wire [15:0]SHIFT_LEFT;
  wire [3:1]SHIFT_LEFT1;
  wire aclk;
  wire [14:0]\and ;
  wire aresetn;
  wire [15:0]bitmask;
  wire bitmask0;
  wire \bitmask[11]_i_1_n_0 ;
  wire \bitmask[13]_i_1_n_0 ;
  wire \bitmask[13]_i_2_n_0 ;
  wire \bitmask[15]_i_2_n_0 ;
  wire \bitmask[1]_i_1_n_0 ;
  wire \bitmask[3]_i_1_n_0 ;
  wire \bitmask[5]_i_1_n_0 ;
  wire \bitmask[9]_i_1_n_0 ;
  wire [15:0]bitmask_overflow;
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
  wire data_out1;
  wire data_out1_carry__0_i_1_n_0;
  wire data_out1_carry__0_i_2_n_0;
  wire data_out1_carry__0_n_3;
  wire data_out1_carry_i_1_n_0;
  wire data_out1_carry_i_2_n_0;
  wire data_out1_carry_i_3_n_0;
  wire data_out1_carry_i_4_n_0;
  wire data_out1_carry_n_0;
  wire data_out1_carry_n_1;
  wire data_out1_carry_n_2;
  wire data_out1_carry_n_3;
  wire \data_out[0]_i_1_n_0 ;
  wire \data_out[0]_i_2_n_0 ;
  wire \data_out[0]_i_3_n_0 ;
  wire \data_out[10]_i_1_n_0 ;
  wire \data_out[10]_i_2_n_0 ;
  wire \data_out[10]_i_4_n_0 ;
  wire \data_out[10]_i_5_n_0 ;
  wire \data_out[11]_i_1_n_0 ;
  wire \data_out[11]_i_2_n_0 ;
  wire \data_out[11]_i_4_n_0 ;
  wire \data_out[11]_i_5_n_0 ;
  wire \data_out[12]_i_1_n_0 ;
  wire \data_out[12]_i_2_n_0 ;
  wire \data_out[12]_i_3_n_0 ;
  wire \data_out[12]_i_4_n_0 ;
  wire \data_out[13]_i_1_n_0 ;
  wire \data_out[13]_i_2_n_0 ;
  wire \data_out[13]_i_3_n_0 ;
  wire \data_out[13]_i_4_n_0 ;
  wire \data_out[13]_i_5_n_0 ;
  wire \data_out[13]_i_6_n_0 ;
  wire \data_out[14]_i_1_n_0 ;
  wire \data_out[14]_i_2_n_0 ;
  wire \data_out[14]_i_3_n_0 ;
  wire \data_out[14]_i_4_n_0 ;
  wire \data_out[14]_i_5_n_0 ;
  wire \data_out[14]_i_6_n_0 ;
  wire \data_out[15]_i_10_n_0 ;
  wire \data_out[15]_i_11_n_0 ;
  wire \data_out[15]_i_2_n_0 ;
  wire \data_out[15]_i_3_n_0 ;
  wire \data_out[15]_i_5_n_0 ;
  wire \data_out[15]_i_7_n_0 ;
  wire \data_out[15]_i_8_n_0 ;
  wire \data_out[15]_i_9_n_0 ;
  wire \data_out[1]_i_1_n_0 ;
  wire \data_out[1]_i_2_n_0 ;
  wire \data_out[2]_i_1_n_0 ;
  wire \data_out[2]_i_2_n_0 ;
  wire \data_out[2]_i_4_n_0 ;
  wire \data_out[3]_i_1_n_0 ;
  wire \data_out[3]_i_2_n_0 ;
  wire \data_out[3]_i_4_n_0 ;
  wire \data_out[4]_i_1_n_0 ;
  wire \data_out[4]_i_2_n_0 ;
  wire \data_out[4]_i_4_n_0 ;
  wire \data_out[4]_i_5_n_0 ;
  wire \data_out[5]_i_1_n_0 ;
  wire \data_out[5]_i_2_n_0 ;
  wire \data_out[5]_i_4_n_0 ;
  wire \data_out[5]_i_5_n_0 ;
  wire \data_out[6]_i_1_n_0 ;
  wire \data_out[6]_i_2_n_0 ;
  wire \data_out[6]_i_4_n_0 ;
  wire \data_out[6]_i_5_n_0 ;
  wire \data_out[7]_i_1_n_0 ;
  wire \data_out[7]_i_2_n_0 ;
  wire \data_out[7]_i_4_n_0 ;
  wire \data_out[7]_i_5_n_0 ;
  wire \data_out[8]_i_1_n_0 ;
  wire \data_out[8]_i_2_n_0 ;
  wire \data_out[8]_i_4_n_0 ;
  wire \data_out[8]_i_5_n_0 ;
  wire \data_out[9]_i_1_n_0 ;
  wire \data_out[9]_i_2_n_0 ;
  wire \data_out[9]_i_4_n_0 ;
  wire \data_out[9]_i_5_n_0 ;
  wire [15:0]data_out_temp;
  wire data_out_temp0;
  wire \data_out_temp[0]_i_2_n_0 ;
  wire \data_out_temp[0]_i_3_n_0 ;
  wire \data_out_temp[0]_i_4_n_0 ;
  wire \data_out_temp[10]_i_2_n_0 ;
  wire \data_out_temp[10]_i_3_n_0 ;
  wire \data_out_temp[10]_i_4_n_0 ;
  wire \data_out_temp[11]_i_2_n_0 ;
  wire \data_out_temp[11]_i_3_n_0 ;
  wire \data_out_temp[11]_i_4_n_0 ;
  wire \data_out_temp[11]_i_5_n_0 ;
  wire \data_out_temp[12]_i_2_n_0 ;
  wire \data_out_temp[12]_i_3_n_0 ;
  wire \data_out_temp[12]_i_4_n_0 ;
  wire \data_out_temp[12]_i_5_n_0 ;
  wire \data_out_temp[13]_i_2_n_0 ;
  wire \data_out_temp[13]_i_3_n_0 ;
  wire \data_out_temp[13]_i_4_n_0 ;
  wire \data_out_temp[13]_i_5_n_0 ;
  wire \data_out_temp[14]_i_2_n_0 ;
  wire \data_out_temp[14]_i_3_n_0 ;
  wire \data_out_temp[14]_i_4_n_0 ;
  wire \data_out_temp[14]_i_5_n_0 ;
  wire \data_out_temp[14]_i_6_n_0 ;
  wire \data_out_temp[14]_i_7_n_0 ;
  wire \data_out_temp[15]_i_3_n_0 ;
  wire \data_out_temp[15]_i_5_n_0 ;
  wire \data_out_temp[15]_i_6_n_0 ;
  wire \data_out_temp[15]_i_7_n_0 ;
  wire \data_out_temp[1]_i_2_n_0 ;
  wire \data_out_temp[1]_i_3_n_0 ;
  wire \data_out_temp[1]_i_4_n_0 ;
  wire \data_out_temp[1]_i_5_n_0 ;
  wire \data_out_temp[1]_i_6_n_0 ;
  wire \data_out_temp[1]_i_7_n_0 ;
  wire \data_out_temp[1]_i_8_n_0 ;
  wire \data_out_temp[1]_i_9_n_0 ;
  wire \data_out_temp[2]_i_2_n_0 ;
  wire \data_out_temp[2]_i_3_n_0 ;
  wire \data_out_temp[3]_i_2_n_0 ;
  wire \data_out_temp[3]_i_3_n_0 ;
  wire \data_out_temp[3]_i_4_n_0 ;
  wire \data_out_temp[3]_i_5_n_0 ;
  wire \data_out_temp[4]_i_2_n_0 ;
  wire \data_out_temp[4]_i_3_n_0 ;
  wire \data_out_temp[4]_i_4_n_0 ;
  wire \data_out_temp[4]_i_5_n_0 ;
  wire \data_out_temp[4]_i_6_n_0 ;
  wire \data_out_temp[5]_i_2_n_0 ;
  wire \data_out_temp[5]_i_3_n_0 ;
  wire \data_out_temp[5]_i_4_n_0 ;
  wire \data_out_temp[5]_i_5_n_0 ;
  wire \data_out_temp[5]_i_6_n_0 ;
  wire \data_out_temp[6]_i_2_n_0 ;
  wire \data_out_temp[6]_i_3_n_0 ;
  wire \data_out_temp[6]_i_4_n_0 ;
  wire \data_out_temp[6]_i_5_n_0 ;
  wire \data_out_temp[7]_i_2_n_0 ;
  wire \data_out_temp[7]_i_3_n_0 ;
  wire \data_out_temp[7]_i_4_n_0 ;
  wire \data_out_temp[7]_i_5_n_0 ;
  wire \data_out_temp[7]_i_6_n_0 ;
  wire \data_out_temp[8]_i_2_n_0 ;
  wire \data_out_temp[8]_i_3_n_0 ;
  wire \data_out_temp[8]_i_4_n_0 ;
  wire \data_out_temp[8]_i_5_n_0 ;
  wire \data_out_temp[8]_i_6_n_0 ;
  wire \data_out_temp[8]_i_7_n_0 ;
  wire \data_out_temp[8]_i_8_n_0 ;
  wire \data_out_temp[9]_i_2_n_0 ;
  wire \data_out_temp[9]_i_3_n_0 ;
  wire \data_out_temp[9]_i_4_n_0 ;
  wire [4:0]diff;
  wire [11:1]in10;
  wire [15:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire p_1_in_0;
  wire [15:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire state0__0;
  wire [2:0]state1;
  wire [2:0]state__0;
  wire tlast_expected;
  wire tlast_expected_i_1_n_0;
  wire tlast_sampled;
  wire tlast_sampled0;
  wire vol_led_ctrl_n_0;
  wire vol_led_ctrl_n_1;
  wire vol_led_ctrl_n_5;
  wire vol_led_ctrl_n_6;
  wire vol_led_ctrl_n_8;
  wire volume_down;
  wire [14:0]volume_level;
  wire volume_up;
  wire [3:0]NLW_data_out1_carry_O_UNCONNECTED;
  wire [3:2]NLW_data_out1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_data_out1_carry__0_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00FF4F00)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[2]),
        .I1(\data_out[15]_i_3_n_0 ),
        .I2(state__0[1]),
        .I3(\FSM_sequential_state[2]_i_4_n_0 ),
        .I4(state__0[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF4444F555)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(state__0[0]),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(state0__0),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,receive_data:001,compute_shift:010,send_data:100,check_overflow:011" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(vol_led_ctrl_n_8),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]));
  (* FSM_ENCODED_STATES = "idle:000,receive_data:001,compute_shift:010,send_data:100,check_overflow:011" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(vol_led_ctrl_n_8),
        .D(vol_led_ctrl_n_6),
        .Q(state__0[1]));
  (* FSM_ENCODED_STATES = "idle:000,receive_data:001,compute_shift:010,send_data:100,check_overflow:011" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(vol_led_ctrl_n_8),
        .D(vol_led_ctrl_n_5),
        .Q(state__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \bitmask[0]_i_1 
       (.I0(diff[4]),
        .I1(diff[0]),
        .I2(diff[3]),
        .I3(diff[2]),
        .I4(diff[1]),
        .O(R[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00FA00F8)) 
    \bitmask[10]_i_1 
       (.I0(diff[2]),
        .I1(diff[1]),
        .I2(diff[3]),
        .I3(diff[4]),
        .I4(diff[0]),
        .O(R[10]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bitmask[11]_i_1 
       (.I0(diff[3]),
        .I1(diff[2]),
        .O(\bitmask[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00FE00FC)) 
    \bitmask[12]_i_1 
       (.I0(diff[1]),
        .I1(diff[3]),
        .I2(diff[2]),
        .I3(diff[4]),
        .I4(diff[0]),
        .O(R[12]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \bitmask[13]_i_1 
       (.I0(diff[4]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(aresetn),
        .I4(state__0[2]),
        .O(\bitmask[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \bitmask[13]_i_2 
       (.I0(diff[1]),
        .I1(diff[2]),
        .I2(diff[3]),
        .O(\bitmask[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \bitmask[14]_i_1 
       (.I0(diff[1]),
        .I1(diff[2]),
        .I2(diff[3]),
        .I3(diff[4]),
        .I4(diff[0]),
        .O(R[14]));
  LUT4 #(
    .INIT(16'h0400)) 
    \bitmask[15]_i_1 
       (.I0(state__0[2]),
        .I1(aresetn),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(bitmask0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \bitmask[15]_i_2 
       (.I0(diff[4]),
        .O(\bitmask[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \bitmask[1]_i_1 
       (.I0(diff[1]),
        .I1(diff[2]),
        .I2(diff[3]),
        .O(\bitmask[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00C00080)) 
    \bitmask[2]_i_1 
       (.I0(diff[1]),
        .I1(diff[2]),
        .I2(diff[3]),
        .I3(diff[4]),
        .I4(diff[0]),
        .O(R[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bitmask[3]_i_1 
       (.I0(diff[3]),
        .I1(diff[2]),
        .O(\bitmask[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00C800C0)) 
    \bitmask[4]_i_1 
       (.I0(diff[1]),
        .I1(diff[3]),
        .I2(diff[2]),
        .I3(diff[4]),
        .I4(diff[0]),
        .O(R[4]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \bitmask[5]_i_1 
       (.I0(diff[1]),
        .I1(diff[3]),
        .I2(diff[2]),
        .O(\bitmask[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00CC00C8)) 
    \bitmask[6]_i_1 
       (.I0(diff[1]),
        .I1(diff[3]),
        .I2(diff[2]),
        .I3(diff[4]),
        .I4(diff[0]),
        .O(R[6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bitmask[7]_i_1 
       (.I0(diff[3]),
        .I1(diff[4]),
        .O(R[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00F800F0)) 
    \bitmask[8]_i_1 
       (.I0(diff[2]),
        .I1(diff[1]),
        .I2(diff[3]),
        .I3(diff[4]),
        .I4(diff[0]),
        .O(R[8]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bitmask[9]_i_1 
       (.I0(diff[2]),
        .I1(diff[1]),
        .I2(diff[3]),
        .O(\bitmask[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \bitmask_overflow[0]_i_1 
       (.I0(\data_in_reg_n_0_[0] ),
        .I1(diff[1]),
        .I2(diff[2]),
        .I3(diff[3]),
        .I4(diff[0]),
        .I5(diff[4]),
        .O(\and [0]));
  LUT6 #(
    .INIT(64'h0A0A0A080A000A00)) 
    \bitmask_overflow[10]_i_1 
       (.I0(\data_in_reg_n_0_[10] ),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(diff[3]),
        .I4(diff[1]),
        .I5(diff[2]),
        .O(\and [10]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    \bitmask_overflow[11]_i_1 
       (.I0(diff[4]),
        .I1(\data_in_reg_n_0_[11] ),
        .I2(diff[2]),
        .I3(diff[3]),
        .O(\and [11]));
  LUT6 #(
    .INIT(64'h0A0A0A080A0A0A00)) 
    \bitmask_overflow[12]_i_1 
       (.I0(\data_in_reg_n_0_[12] ),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(diff[2]),
        .I4(diff[3]),
        .I5(diff[1]),
        .O(\and [12]));
  LUT5 #(
    .INIT(32'h44444440)) 
    \bitmask_overflow[13]_i_1 
       (.I0(diff[4]),
        .I1(\data_in_reg_n_0_[13] ),
        .I2(diff[3]),
        .I3(diff[2]),
        .I4(diff[1]),
        .O(\and [13]));
  LUT6 #(
    .INIT(64'h0A0A0A0A0A0A0A08)) 
    \bitmask_overflow[14]_i_1 
       (.I0(\data_in_reg_n_0_[14] ),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(diff[3]),
        .I4(diff[2]),
        .I5(diff[1]),
        .O(\and [14]));
  LUT5 #(
    .INIT(32'h40000000)) 
    \bitmask_overflow[1]_i_1 
       (.I0(diff[4]),
        .I1(\data_in_reg_n_0_[1] ),
        .I2(diff[3]),
        .I3(diff[2]),
        .I4(diff[1]),
        .O(\and [1]));
  LUT6 #(
    .INIT(64'h0A00000008000000)) 
    \bitmask_overflow[2]_i_1 
       (.I0(\data_in_reg_n_0_[2] ),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(diff[3]),
        .I4(diff[2]),
        .I5(diff[1]),
        .O(\and [2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \bitmask_overflow[3]_i_1 
       (.I0(diff[4]),
        .I1(\data_in_reg_n_0_[3] ),
        .I2(diff[2]),
        .I3(diff[3]),
        .O(\and [3]));
  LUT6 #(
    .INIT(64'h0A0800000A000000)) 
    \bitmask_overflow[4]_i_1 
       (.I0(\data_in_reg_n_0_[4] ),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(diff[2]),
        .I4(diff[3]),
        .I5(diff[1]),
        .O(\and [4]));
  LUT5 #(
    .INIT(32'h44004000)) 
    \bitmask_overflow[5]_i_1 
       (.I0(diff[4]),
        .I1(\data_in_reg_n_0_[5] ),
        .I2(diff[2]),
        .I3(diff[3]),
        .I4(diff[1]),
        .O(\and [5]));
  LUT6 #(
    .INIT(64'h0A0A00000A080000)) 
    \bitmask_overflow[6]_i_1 
       (.I0(\data_in_reg_n_0_[6] ),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(diff[2]),
        .I4(diff[3]),
        .I5(diff[1]),
        .O(\and [6]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \bitmask_overflow[7]_i_1 
       (.I0(diff[4]),
        .I1(diff[3]),
        .I2(\data_in_reg_n_0_[7] ),
        .O(\and [7]));
  LUT6 #(
    .INIT(64'h0A080A000A000A00)) 
    \bitmask_overflow[8]_i_1 
       (.I0(\data_in_reg_n_0_[8] ),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(diff[3]),
        .I4(diff[1]),
        .I5(diff[2]),
        .O(\and [8]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h44404040)) 
    \bitmask_overflow[9]_i_1 
       (.I0(diff[4]),
        .I1(\data_in_reg_n_0_[9] ),
        .I2(diff[3]),
        .I3(diff[1]),
        .I4(diff[2]),
        .O(\and [9]));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_overflow_reg[0] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\and [0]),
        .Q(bitmask_overflow[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_overflow_reg[10] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\and [10]),
        .Q(bitmask_overflow[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_overflow_reg[11] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\and [11]),
        .Q(bitmask_overflow[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_overflow_reg[12] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\and [12]),
        .Q(bitmask_overflow[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_overflow_reg[13] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\and [13]),
        .Q(bitmask_overflow[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_overflow_reg[14] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\and [14]),
        .Q(bitmask_overflow[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_overflow_reg[15] 
       (.C(aclk),
        .CE(bitmask0),
        .D(p_1_in_0),
        .Q(bitmask_overflow[15]),
        .R(\bitmask[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_overflow_reg[1] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\and [1]),
        .Q(bitmask_overflow[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_overflow_reg[2] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\and [2]),
        .Q(bitmask_overflow[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_overflow_reg[3] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\and [3]),
        .Q(bitmask_overflow[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_overflow_reg[4] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\and [4]),
        .Q(bitmask_overflow[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_overflow_reg[5] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\and [5]),
        .Q(bitmask_overflow[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_overflow_reg[6] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\and [6]),
        .Q(bitmask_overflow[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_overflow_reg[7] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\and [7]),
        .Q(bitmask_overflow[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_overflow_reg[8] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\and [8]),
        .Q(bitmask_overflow[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_overflow_reg[9] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\and [9]),
        .Q(bitmask_overflow[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_reg[0] 
       (.C(aclk),
        .CE(bitmask0),
        .D(R[0]),
        .Q(bitmask[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_reg[10] 
       (.C(aclk),
        .CE(bitmask0),
        .D(R[10]),
        .Q(bitmask[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_reg[11] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\bitmask[11]_i_1_n_0 ),
        .Q(bitmask[11]),
        .R(\bitmask[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_reg[12] 
       (.C(aclk),
        .CE(bitmask0),
        .D(R[12]),
        .Q(bitmask[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_reg[13] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\bitmask[13]_i_2_n_0 ),
        .Q(bitmask[13]),
        .R(\bitmask[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_reg[14] 
       (.C(aclk),
        .CE(bitmask0),
        .D(R[14]),
        .Q(bitmask[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_reg[15] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\bitmask[15]_i_2_n_0 ),
        .Q(bitmask[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_reg[1] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\bitmask[1]_i_1_n_0 ),
        .Q(bitmask[1]),
        .R(\bitmask[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_reg[2] 
       (.C(aclk),
        .CE(bitmask0),
        .D(R[2]),
        .Q(bitmask[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_reg[3] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\bitmask[3]_i_1_n_0 ),
        .Q(bitmask[3]),
        .R(\bitmask[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_reg[4] 
       (.C(aclk),
        .CE(bitmask0),
        .D(R[4]),
        .Q(bitmask[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_reg[5] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\bitmask[5]_i_1_n_0 ),
        .Q(bitmask[5]),
        .R(\bitmask[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_reg[6] 
       (.C(aclk),
        .CE(bitmask0),
        .D(R[6]),
        .Q(bitmask[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_reg[7] 
       (.C(aclk),
        .CE(bitmask0),
        .D(R[7]),
        .Q(bitmask[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_reg[8] 
       (.C(aclk),
        .CE(bitmask0),
        .D(R[8]),
        .Q(bitmask[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_reg[9] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\bitmask[9]_i_1_n_0 ),
        .Q(bitmask[9]),
        .R(\bitmask[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \data_in[15]_i_1 
       (.I0(state__0[0]),
        .I1(s_axis_tvalid),
        .I2(state__0[1]),
        .I3(state__0[2]),
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
        .Q(p_1_in_0),
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
        .CO({data_out1_carry_n_0,data_out1_carry_n_1,data_out1_carry_n_2,data_out1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_data_out1_carry_O_UNCONNECTED[3:0]),
        .S({data_out1_carry_i_1_n_0,data_out1_carry_i_2_n_0,data_out1_carry_i_3_n_0,data_out1_carry_i_4_n_0}));
  CARRY4 data_out1_carry__0
       (.CI(data_out1_carry_n_0),
        .CO({NLW_data_out1_carry__0_CO_UNCONNECTED[3:2],data_out1,data_out1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O(NLW_data_out1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,data_out1_carry__0_i_1_n_0,data_out1_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    data_out1_carry__0_i_1
       (.I0(bitmask[15]),
        .I1(bitmask_overflow[15]),
        .O(data_out1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    data_out1_carry__0_i_2
       (.I0(bitmask_overflow[13]),
        .I1(bitmask[13]),
        .I2(bitmask_overflow[12]),
        .I3(bitmask[12]),
        .I4(bitmask[14]),
        .I5(bitmask_overflow[14]),
        .O(data_out1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    data_out1_carry_i_1
       (.I0(bitmask_overflow[10]),
        .I1(bitmask[10]),
        .I2(bitmask_overflow[9]),
        .I3(bitmask[9]),
        .I4(bitmask[11]),
        .I5(bitmask_overflow[11]),
        .O(data_out1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    data_out1_carry_i_2
       (.I0(bitmask_overflow[7]),
        .I1(bitmask[7]),
        .I2(bitmask_overflow[6]),
        .I3(bitmask[6]),
        .I4(bitmask[8]),
        .I5(bitmask_overflow[8]),
        .O(data_out1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    data_out1_carry_i_3
       (.I0(bitmask_overflow[4]),
        .I1(bitmask[4]),
        .I2(bitmask_overflow[3]),
        .I3(bitmask[3]),
        .I4(bitmask[5]),
        .I5(bitmask_overflow[5]),
        .O(data_out1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    data_out1_carry_i_4
       (.I0(bitmask_overflow[1]),
        .I1(bitmask[1]),
        .I2(bitmask_overflow[0]),
        .I3(bitmask[0]),
        .I4(bitmask[2]),
        .I5(bitmask_overflow[2]),
        .O(data_out1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \data_out[0]_i_1 
       (.I0(\data_out[0]_i_2_n_0 ),
        .I1(state__0[1]),
        .I2(s_axis_tdata[0]),
        .I3(state__0[2]),
        .I4(data_out0),
        .I5(m_axis_tdata[0]),
        .O(\data_out[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCFCEE)) 
    \data_out[0]_i_2 
       (.I0(p_1_in_0),
        .I1(\data_out[0]_i_3_n_0 ),
        .I2(\data_out_temp[0]_i_2_n_0 ),
        .I3(\data_out[11]_i_5_n_0 ),
        .I4(state__0[0]),
        .O(\data_out[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h7F550000)) 
    \data_out[0]_i_3 
       (.I0(\data_out[15]_i_7_n_0 ),
        .I1(p_1_in_0),
        .I2(data_out1),
        .I3(data_out_temp[0]),
        .I4(state__0[0]),
        .O(\data_out[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5050545455505454)) 
    \data_out[10]_i_1 
       (.I0(state__0[2]),
        .I1(s_axis_tdata[10]),
        .I2(\data_out[10]_i_2_n_0 ),
        .I3(in10[10]),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\data_out[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0888888808080808)) 
    \data_out[10]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\data_out[15]_i_7_n_0 ),
        .I3(p_1_in_0),
        .I4(data_out1),
        .I5(data_out_temp[10]),
        .O(\data_out[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \data_out[10]_i_3 
       (.I0(p_1_in_0),
        .I1(\data_out[10]_i_4_n_0 ),
        .I2(\data_out[11]_i_4_n_0 ),
        .I3(\data_out[11]_i_5_n_0 ),
        .I4(diff[0]),
        .O(in10[10]));
  LUT6 #(
    .INIT(64'hF0E2FFFFF0E20000)) 
    \data_out[10]_i_4 
       (.I0(\data_in_reg_n_0_[12] ),
        .I1(SHIFT_LEFT1[3]),
        .I2(p_1_in_0),
        .I3(SHIFT_LEFT1[2]),
        .I4(SHIFT_LEFT1[1]),
        .I5(\data_out[10]_i_5_n_0 ),
        .O(\data_out[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \data_out[10]_i_5 
       (.I0(\data_in_reg_n_0_[14] ),
        .I1(SHIFT_LEFT1[2]),
        .I2(\data_in_reg_n_0_[10] ),
        .I3(p_1_in_0),
        .I4(SHIFT_LEFT1[3]),
        .O(\data_out[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5050545455505454)) 
    \data_out[11]_i_1 
       (.I0(state__0[2]),
        .I1(s_axis_tdata[11]),
        .I2(\data_out[11]_i_2_n_0 ),
        .I3(in10[11]),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\data_out[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0888888808080808)) 
    \data_out[11]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\data_out[15]_i_7_n_0 ),
        .I3(p_1_in_0),
        .I4(data_out1),
        .I5(data_out_temp[11]),
        .O(\data_out[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \data_out[11]_i_3 
       (.I0(p_1_in_0),
        .I1(\data_out[11]_i_4_n_0 ),
        .I2(\data_out[12]_i_3_n_0 ),
        .I3(\data_out[11]_i_5_n_0 ),
        .I4(diff[0]),
        .O(in10[11]));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \data_out[11]_i_4 
       (.I0(\data_in_reg_n_0_[13] ),
        .I1(SHIFT_LEFT1[1]),
        .I2(\data_in_reg_n_0_[11] ),
        .I3(SHIFT_LEFT1[3]),
        .I4(p_1_in_0),
        .I5(SHIFT_LEFT1[2]),
        .O(\data_out[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \data_out[11]_i_5 
       (.I0(diff[4]),
        .I1(diff[3]),
        .I2(diff[1]),
        .I3(diff[0]),
        .I4(diff[2]),
        .O(\data_out[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEFEAAAAAAAA)) 
    \data_out[12]_i_1 
       (.I0(\data_out[12]_i_2_n_0 ),
        .I1(\data_out[13]_i_3_n_0 ),
        .I2(\data_out[12]_i_3_n_0 ),
        .I3(\data_out[14]_i_4_n_0 ),
        .I4(\data_out[12]_i_4_n_0 ),
        .I5(\data_out[13]_i_6_n_0 ),
        .O(\data_out[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F00FFFF8F000000)) 
    \data_out[12]_i_2 
       (.I0(data_out_temp[12]),
        .I1(\data_out[14]_i_6_n_0 ),
        .I2(\data_out[15]_i_7_n_0 ),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .I5(s_axis_tdata[12]),
        .O(\data_out[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \data_out[12]_i_3 
       (.I0(\data_in_reg_n_0_[14] ),
        .I1(SHIFT_LEFT1[1]),
        .I2(\data_in_reg_n_0_[12] ),
        .I3(SHIFT_LEFT1[3]),
        .I4(p_1_in_0),
        .I5(SHIFT_LEFT1[2]),
        .O(\data_out[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A2A080)) 
    \data_out[12]_i_4 
       (.I0(diff[0]),
        .I1(SHIFT_LEFT1[2]),
        .I2(p_1_in_0),
        .I3(SHIFT_LEFT1[3]),
        .I4(\data_in_reg_n_0_[13] ),
        .I5(SHIFT_LEFT1[1]),
        .O(\data_out[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEFEAAAAAAAA)) 
    \data_out[13]_i_1 
       (.I0(\data_out[13]_i_2_n_0 ),
        .I1(\data_out[13]_i_3_n_0 ),
        .I2(\data_out[13]_i_4_n_0 ),
        .I3(\data_out[14]_i_4_n_0 ),
        .I4(\data_out[13]_i_5_n_0 ),
        .I5(\data_out[13]_i_6_n_0 ),
        .O(\data_out[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F00FFFF8F000000)) 
    \data_out[13]_i_2 
       (.I0(data_out_temp[13]),
        .I1(\data_out[14]_i_6_n_0 ),
        .I2(\data_out[15]_i_7_n_0 ),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .I5(s_axis_tdata[13]),
        .O(\data_out[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \data_out[13]_i_3 
       (.I0(p_1_in_0),
        .I1(diff[2]),
        .I2(diff[0]),
        .I3(diff[1]),
        .I4(diff[3]),
        .I5(diff[4]),
        .O(\data_out[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FE04)) 
    \data_out[13]_i_4 
       (.I0(SHIFT_LEFT1[1]),
        .I1(\data_in_reg_n_0_[13] ),
        .I2(SHIFT_LEFT1[3]),
        .I3(p_1_in_0),
        .I4(SHIFT_LEFT1[2]),
        .O(\data_out[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A2A080)) 
    \data_out[13]_i_5 
       (.I0(diff[0]),
        .I1(SHIFT_LEFT1[2]),
        .I2(p_1_in_0),
        .I3(SHIFT_LEFT1[3]),
        .I4(\data_in_reg_n_0_[14] ),
        .I5(SHIFT_LEFT1[1]),
        .O(\data_out[13]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_out[13]_i_6 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .O(\data_out[13]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[14]_i_1 
       (.I0(state__0[2]),
        .I1(data_out0),
        .O(\data_out[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEFEAAAAA)) 
    \data_out[14]_i_2 
       (.I0(\data_out[14]_i_3_n_0 ),
        .I1(p_1_in_0),
        .I2(\data_out[14]_i_4_n_0 ),
        .I3(\data_out[14]_i_5_n_0 ),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\data_out[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F00FFFF8F000000)) 
    \data_out[14]_i_3 
       (.I0(data_out_temp[14]),
        .I1(\data_out[14]_i_6_n_0 ),
        .I2(\data_out[15]_i_7_n_0 ),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .I5(s_axis_tdata[14]),
        .O(\data_out[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hCCCDCCCC)) 
    \data_out[14]_i_4 
       (.I0(diff[2]),
        .I1(diff[0]),
        .I2(diff[1]),
        .I3(diff[3]),
        .I4(diff[4]),
        .O(\data_out[14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FE04)) 
    \data_out[14]_i_5 
       (.I0(SHIFT_LEFT1[1]),
        .I1(\data_in_reg_n_0_[14] ),
        .I2(SHIFT_LEFT1[3]),
        .I3(p_1_in_0),
        .I4(SHIFT_LEFT1[2]),
        .O(\data_out[14]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \data_out[14]_i_6 
       (.I0(data_out1),
        .I1(p_1_in_0),
        .O(\data_out[14]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h6666666C)) 
    \data_out[14]_i_7 
       (.I0(diff[4]),
        .I1(diff[3]),
        .I2(diff[2]),
        .I3(diff[0]),
        .I4(diff[1]),
        .O(SHIFT_LEFT1[3]));
  LUT4 #(
    .INIT(16'h57A8)) 
    \data_out[14]_i_8 
       (.I0(diff[4]),
        .I1(diff[0]),
        .I2(diff[1]),
        .I3(diff[2]),
        .O(SHIFT_LEFT1[2]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_out[15]_i_10 
       (.I0(bitmask_overflow[9]),
        .I1(bitmask_overflow[15]),
        .I2(bitmask_overflow[11]),
        .I3(bitmask_overflow[10]),
        .O(\data_out[15]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_out[15]_i_11 
       (.I0(bitmask_overflow[7]),
        .I1(bitmask_overflow[6]),
        .I2(bitmask_overflow[3]),
        .I3(bitmask_overflow[8]),
        .O(\data_out[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h5555555504540404)) 
    \data_out[15]_i_2 
       (.I0(state__0[2]),
        .I1(s_axis_tdata[15]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(p_1_in_0),
        .I5(\data_out[15]_i_5_n_0 ),
        .O(\data_out[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \data_out[15]_i_3 
       (.I0(diff[1]),
        .I1(diff[0]),
        .I2(diff[2]),
        .I3(diff[4]),
        .I4(diff[3]),
        .O(\data_out[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8888800080008000)) 
    \data_out[15]_i_5 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(data_out1),
        .I3(p_1_in_0),
        .I4(\data_out[15]_i_7_n_0 ),
        .I5(data_out_temp[15]),
        .O(\data_out[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \data_out[15]_i_7 
       (.I0(p_1_in_0),
        .I1(\data_out[15]_i_8_n_0 ),
        .I2(\data_out[15]_i_9_n_0 ),
        .I3(\data_out[15]_i_10_n_0 ),
        .I4(\data_out[15]_i_11_n_0 ),
        .O(\data_out[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_out[15]_i_8 
       (.I0(bitmask_overflow[5]),
        .I1(bitmask_overflow[4]),
        .I2(bitmask_overflow[1]),
        .I3(bitmask_overflow[0]),
        .O(\data_out[15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_out[15]_i_9 
       (.I0(bitmask_overflow[12]),
        .I1(bitmask_overflow[2]),
        .I2(bitmask_overflow[14]),
        .I3(bitmask_overflow[13]),
        .O(\data_out[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h5050545455505454)) 
    \data_out[1]_i_1 
       (.I0(state__0[2]),
        .I1(s_axis_tdata[1]),
        .I2(\data_out[1]_i_2_n_0 ),
        .I3(in10[1]),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\data_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0888888808080808)) 
    \data_out[1]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\data_out[15]_i_7_n_0 ),
        .I3(p_1_in_0),
        .I4(data_out1),
        .I5(data_out_temp[1]),
        .O(\data_out[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \data_out[1]_i_3 
       (.I0(p_1_in_0),
        .I1(\data_out_temp[1]_i_3_n_0 ),
        .I2(\data_out[2]_i_4_n_0 ),
        .I3(\data_out[11]_i_5_n_0 ),
        .I4(diff[0]),
        .O(in10[1]));
  LUT6 #(
    .INIT(64'h5050545455505454)) 
    \data_out[2]_i_1 
       (.I0(state__0[2]),
        .I1(s_axis_tdata[2]),
        .I2(\data_out[2]_i_2_n_0 ),
        .I3(in10[2]),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\data_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0888888808080808)) 
    \data_out[2]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\data_out[15]_i_7_n_0 ),
        .I3(p_1_in_0),
        .I4(data_out1),
        .I5(data_out_temp[2]),
        .O(\data_out[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \data_out[2]_i_3 
       (.I0(p_1_in_0),
        .I1(\data_out[2]_i_4_n_0 ),
        .I2(\data_out[3]_i_4_n_0 ),
        .I3(\data_out[11]_i_5_n_0 ),
        .I4(diff[0]),
        .O(in10[2]));
  LUT5 #(
    .INIT(32'hEABF2A80)) 
    \data_out[2]_i_4 
       (.I0(\data_out[4]_i_5_n_0 ),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(diff[1]),
        .I4(\data_out_temp[1]_i_9_n_0 ),
        .O(\data_out[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5050545455505454)) 
    \data_out[3]_i_1 
       (.I0(state__0[2]),
        .I1(s_axis_tdata[3]),
        .I2(\data_out[3]_i_2_n_0 ),
        .I3(in10[3]),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\data_out[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0888888808080808)) 
    \data_out[3]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\data_out[15]_i_7_n_0 ),
        .I3(p_1_in_0),
        .I4(data_out1),
        .I5(data_out_temp[3]),
        .O(\data_out[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \data_out[3]_i_3 
       (.I0(p_1_in_0),
        .I1(\data_out[3]_i_4_n_0 ),
        .I2(\data_out[4]_i_4_n_0 ),
        .I3(\data_out[11]_i_5_n_0 ),
        .I4(diff[0]),
        .O(in10[3]));
  LUT5 #(
    .INIT(32'hEABF2A80)) 
    \data_out[3]_i_4 
       (.I0(\data_out[5]_i_5_n_0 ),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(diff[1]),
        .I4(\data_out_temp[1]_i_6_n_0 ),
        .O(\data_out[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5050545455505454)) 
    \data_out[4]_i_1 
       (.I0(state__0[2]),
        .I1(s_axis_tdata[4]),
        .I2(\data_out[4]_i_2_n_0 ),
        .I3(in10[4]),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\data_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0888888808080808)) 
    \data_out[4]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\data_out[15]_i_7_n_0 ),
        .I3(p_1_in_0),
        .I4(data_out1),
        .I5(data_out_temp[4]),
        .O(\data_out[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \data_out[4]_i_3 
       (.I0(p_1_in_0),
        .I1(\data_out[4]_i_4_n_0 ),
        .I2(\data_out[5]_i_4_n_0 ),
        .I3(\data_out[11]_i_5_n_0 ),
        .I4(diff[0]),
        .O(in10[4]));
  LUT5 #(
    .INIT(32'hEABF2A80)) 
    \data_out[4]_i_4 
       (.I0(\data_out[6]_i_5_n_0 ),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(diff[1]),
        .I4(\data_out[4]_i_5_n_0 ),
        .O(\data_out[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \data_out[4]_i_5 
       (.I0(\data_in_reg_n_0_[8] ),
        .I1(p_1_in_0),
        .I2(SHIFT_LEFT1[2]),
        .I3(\data_in_reg_n_0_[12] ),
        .I4(SHIFT_LEFT1[3]),
        .I5(\data_in_reg_n_0_[4] ),
        .O(\data_out[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5050545455505454)) 
    \data_out[5]_i_1 
       (.I0(state__0[2]),
        .I1(s_axis_tdata[5]),
        .I2(\data_out[5]_i_2_n_0 ),
        .I3(in10[5]),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\data_out[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0888888808080808)) 
    \data_out[5]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\data_out[15]_i_7_n_0 ),
        .I3(p_1_in_0),
        .I4(data_out1),
        .I5(data_out_temp[5]),
        .O(\data_out[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \data_out[5]_i_3 
       (.I0(p_1_in_0),
        .I1(\data_out[5]_i_4_n_0 ),
        .I2(\data_out[6]_i_4_n_0 ),
        .I3(\data_out[11]_i_5_n_0 ),
        .I4(diff[0]),
        .O(in10[5]));
  LUT5 #(
    .INIT(32'hEABF2A80)) 
    \data_out[5]_i_4 
       (.I0(\data_out[7]_i_5_n_0 ),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(diff[1]),
        .I4(\data_out[5]_i_5_n_0 ),
        .O(\data_out[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \data_out[5]_i_5 
       (.I0(\data_in_reg_n_0_[9] ),
        .I1(p_1_in_0),
        .I2(SHIFT_LEFT1[2]),
        .I3(\data_in_reg_n_0_[13] ),
        .I4(SHIFT_LEFT1[3]),
        .I5(\data_in_reg_n_0_[5] ),
        .O(\data_out[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5050545455505454)) 
    \data_out[6]_i_1 
       (.I0(state__0[2]),
        .I1(s_axis_tdata[6]),
        .I2(\data_out[6]_i_2_n_0 ),
        .I3(in10[6]),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\data_out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0888888808080808)) 
    \data_out[6]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\data_out[15]_i_7_n_0 ),
        .I3(p_1_in_0),
        .I4(data_out1),
        .I5(data_out_temp[6]),
        .O(\data_out[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \data_out[6]_i_3 
       (.I0(p_1_in_0),
        .I1(\data_out[6]_i_4_n_0 ),
        .I2(\data_out[7]_i_4_n_0 ),
        .I3(\data_out[11]_i_5_n_0 ),
        .I4(diff[0]),
        .O(in10[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hEABF2A80)) 
    \data_out[6]_i_4 
       (.I0(\data_out[8]_i_5_n_0 ),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(diff[1]),
        .I4(\data_out[6]_i_5_n_0 ),
        .O(\data_out[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \data_out[6]_i_5 
       (.I0(\data_in_reg_n_0_[10] ),
        .I1(p_1_in_0),
        .I2(SHIFT_LEFT1[2]),
        .I3(\data_in_reg_n_0_[14] ),
        .I4(SHIFT_LEFT1[3]),
        .I5(\data_in_reg_n_0_[6] ),
        .O(\data_out[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5050545455505454)) 
    \data_out[7]_i_1 
       (.I0(state__0[2]),
        .I1(s_axis_tdata[7]),
        .I2(\data_out[7]_i_2_n_0 ),
        .I3(in10[7]),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\data_out[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0888888808080808)) 
    \data_out[7]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\data_out[15]_i_7_n_0 ),
        .I3(p_1_in_0),
        .I4(data_out1),
        .I5(data_out_temp[7]),
        .O(\data_out[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \data_out[7]_i_3 
       (.I0(p_1_in_0),
        .I1(\data_out[7]_i_4_n_0 ),
        .I2(\data_out[8]_i_4_n_0 ),
        .I3(\data_out[11]_i_5_n_0 ),
        .I4(diff[0]),
        .O(in10[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hEABF2A80)) 
    \data_out[7]_i_4 
       (.I0(\data_out[9]_i_5_n_0 ),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(diff[1]),
        .I4(\data_out[7]_i_5_n_0 ),
        .O(\data_out[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \data_out[7]_i_5 
       (.I0(\data_in_reg_n_0_[11] ),
        .I1(SHIFT_LEFT1[2]),
        .I2(\data_in_reg_n_0_[7] ),
        .I3(p_1_in_0),
        .I4(SHIFT_LEFT1[3]),
        .O(\data_out[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5050545455505454)) 
    \data_out[8]_i_1 
       (.I0(state__0[2]),
        .I1(s_axis_tdata[8]),
        .I2(\data_out[8]_i_2_n_0 ),
        .I3(in10[8]),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\data_out[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0888888808080808)) 
    \data_out[8]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\data_out[15]_i_7_n_0 ),
        .I3(p_1_in_0),
        .I4(data_out1),
        .I5(data_out_temp[8]),
        .O(\data_out[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \data_out[8]_i_3 
       (.I0(p_1_in_0),
        .I1(\data_out[8]_i_4_n_0 ),
        .I2(\data_out[9]_i_4_n_0 ),
        .I3(\data_out[11]_i_5_n_0 ),
        .I4(diff[0]),
        .O(in10[8]));
  LUT5 #(
    .INIT(32'hEABF2A80)) 
    \data_out[8]_i_4 
       (.I0(\data_out[10]_i_5_n_0 ),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(diff[1]),
        .I4(\data_out[8]_i_5_n_0 ),
        .O(\data_out[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \data_out[8]_i_5 
       (.I0(\data_in_reg_n_0_[12] ),
        .I1(SHIFT_LEFT1[2]),
        .I2(\data_in_reg_n_0_[8] ),
        .I3(p_1_in_0),
        .I4(SHIFT_LEFT1[3]),
        .O(\data_out[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5050545455505454)) 
    \data_out[9]_i_1 
       (.I0(state__0[2]),
        .I1(s_axis_tdata[9]),
        .I2(\data_out[9]_i_2_n_0 ),
        .I3(in10[9]),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\data_out[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0888888808080808)) 
    \data_out[9]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\data_out[15]_i_7_n_0 ),
        .I3(p_1_in_0),
        .I4(data_out1),
        .I5(data_out_temp[9]),
        .O(\data_out[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \data_out[9]_i_3 
       (.I0(p_1_in_0),
        .I1(\data_out[9]_i_4_n_0 ),
        .I2(\data_out[10]_i_4_n_0 ),
        .I3(\data_out[11]_i_5_n_0 ),
        .I4(diff[0]),
        .O(in10[9]));
  LUT6 #(
    .INIT(64'hF0E2FFFFF0E20000)) 
    \data_out[9]_i_4 
       (.I0(\data_in_reg_n_0_[11] ),
        .I1(SHIFT_LEFT1[3]),
        .I2(p_1_in_0),
        .I3(SHIFT_LEFT1[2]),
        .I4(SHIFT_LEFT1[1]),
        .I5(\data_out[9]_i_5_n_0 ),
        .O(\data_out[9]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \data_out[9]_i_5 
       (.I0(\data_in_reg_n_0_[13] ),
        .I1(SHIFT_LEFT1[2]),
        .I2(\data_in_reg_n_0_[9] ),
        .I3(p_1_in_0),
        .I4(SHIFT_LEFT1[3]),
        .O(\data_out[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(aclk),
        .CE(1'b1),
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
        .R(\data_out[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[13] 
       (.C(aclk),
        .CE(data_out0),
        .D(\data_out[13]_i_1_n_0 ),
        .Q(m_axis_tdata[13]),
        .R(\data_out[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[14] 
       (.C(aclk),
        .CE(data_out0),
        .D(\data_out[14]_i_2_n_0 ),
        .Q(m_axis_tdata[14]),
        .R(\data_out[14]_i_1_n_0 ));
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
  LUT6 #(
    .INIT(64'h4444444444F44444)) 
    \data_out_temp[0]_i_1 
       (.I0(\data_out_temp[1]_i_5_n_0 ),
        .I1(\data_out_temp[0]_i_2_n_0 ),
        .I2(\data_in_reg_n_0_[0] ),
        .I3(\bitmask[11]_i_1_n_0 ),
        .I4(\data_out_temp[0]_i_3_n_0 ),
        .I5(diff[1]),
        .O(SHIFT_LEFT[0]));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \data_out_temp[0]_i_2 
       (.I0(\data_out_temp[0]_i_4_n_0 ),
        .I1(\data_out_temp[1]_i_9_n_0 ),
        .I2(diff[0]),
        .I3(\data_out_temp[1]_i_6_n_0 ),
        .I4(SHIFT_LEFT1[1]),
        .I5(\data_out_temp[1]_i_7_n_0 ),
        .O(\data_out_temp[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \data_out_temp[0]_i_3 
       (.I0(diff[4]),
        .I1(diff[0]),
        .O(\data_out_temp[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \data_out_temp[0]_i_4 
       (.I0(\data_in_reg_n_0_[0] ),
        .I1(\data_in_reg_n_0_[8] ),
        .I2(SHIFT_LEFT1[2]),
        .I3(\data_in_reg_n_0_[12] ),
        .I4(SHIFT_LEFT1[3]),
        .I5(\data_in_reg_n_0_[4] ),
        .O(\data_out_temp[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44445555FF44F5F5)) 
    \data_out_temp[10]_i_1 
       (.I0(\data_out_temp[10]_i_2_n_0 ),
        .I1(\data_out_temp[10]_i_3_n_0 ),
        .I2(\data_out_temp[11]_i_4_n_0 ),
        .I3(\data_out_temp[10]_i_4_n_0 ),
        .I4(diff[0]),
        .I5(diff[4]),
        .O(SHIFT_LEFT[10]));
  LUT6 #(
    .INIT(64'h333377773333777F)) 
    \data_out_temp[10]_i_2 
       (.I0(\data_out_temp[9]_i_3_n_0 ),
        .I1(diff[4]),
        .I2(diff[3]),
        .I3(diff[1]),
        .I4(diff[0]),
        .I5(diff[2]),
        .O(\data_out_temp[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \data_out_temp[10]_i_3 
       (.I0(\data_in_reg_n_0_[13] ),
        .I1(SHIFT_LEFT1[1]),
        .I2(p_1_in_0),
        .I3(\data_in_reg_n_0_[11] ),
        .I4(SHIFT_LEFT1[2]),
        .I5(SHIFT_LEFT1[3]),
        .O(\data_out_temp[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2320FFFF23200000)) 
    \data_out_temp[10]_i_4 
       (.I0(\data_in_reg_n_0_[3] ),
        .I1(diff[3]),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[7] ),
        .I4(diff[1]),
        .I5(\data_out_temp[12]_i_5_n_0 ),
        .O(\data_out_temp[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44445555FF44F5F5)) 
    \data_out_temp[11]_i_1 
       (.I0(\data_out_temp[11]_i_2_n_0 ),
        .I1(\data_out_temp[11]_i_3_n_0 ),
        .I2(\data_out_temp[12]_i_4_n_0 ),
        .I3(\data_out_temp[11]_i_4_n_0 ),
        .I4(diff[0]),
        .I5(diff[4]),
        .O(SHIFT_LEFT[11]));
  LUT6 #(
    .INIT(64'h333377773333777F)) 
    \data_out_temp[11]_i_2 
       (.I0(\data_out_temp[10]_i_3_n_0 ),
        .I1(diff[4]),
        .I2(diff[3]),
        .I3(diff[1]),
        .I4(diff[0]),
        .I5(diff[2]),
        .O(\data_out_temp[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEABF00002A800000)) 
    \data_out_temp[11]_i_3 
       (.I0(\data_in_reg_n_0_[14] ),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(diff[1]),
        .I4(\data_out_temp[15]_i_3_n_0 ),
        .I5(\data_in_reg_n_0_[12] ),
        .O(\data_out_temp[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_temp[11]_i_4 
       (.I0(\data_out_temp[11]_i_5_n_0 ),
        .I1(diff[1]),
        .I2(\data_out_temp[13]_i_5_n_0 ),
        .O(\data_out_temp[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_out_temp[11]_i_5 
       (.I0(\data_in_reg_n_0_[4] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[0] ),
        .I3(diff[3]),
        .I4(\data_in_reg_n_0_[8] ),
        .O(\data_out_temp[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h44445555FF44F5F5)) 
    \data_out_temp[12]_i_1 
       (.I0(\data_out_temp[12]_i_2_n_0 ),
        .I1(\data_out_temp[12]_i_3_n_0 ),
        .I2(\data_out_temp[13]_i_3_n_0 ),
        .I3(\data_out_temp[12]_i_4_n_0 ),
        .I4(diff[0]),
        .I5(diff[4]),
        .O(SHIFT_LEFT[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFF10551555)) 
    \data_out_temp[12]_i_2 
       (.I0(diff[0]),
        .I1(\data_in_reg_n_0_[14] ),
        .I2(SHIFT_LEFT1[1]),
        .I3(\data_out_temp[15]_i_3_n_0 ),
        .I4(\data_in_reg_n_0_[12] ),
        .I5(\data_out_temp[1]_i_5_n_0 ),
        .O(\data_out_temp[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEABF00002A800000)) 
    \data_out_temp[12]_i_3 
       (.I0(p_1_in_0),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(diff[1]),
        .I4(\data_out_temp[15]_i_3_n_0 ),
        .I5(\data_in_reg_n_0_[13] ),
        .O(\data_out_temp[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_temp[12]_i_4 
       (.I0(\data_out_temp[12]_i_5_n_0 ),
        .I1(diff[1]),
        .I2(\data_out_temp[14]_i_7_n_0 ),
        .O(\data_out_temp[12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
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
    .INIT(32'hAFAEABAA)) 
    \data_out_temp[13]_i_1 
       (.I0(\data_out_temp[13]_i_2_n_0 ),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(\data_out_temp[14]_i_4_n_0 ),
        .I4(\data_out_temp[13]_i_3_n_0 ),
        .O(SHIFT_LEFT[13]));
  LUT6 #(
    .INIT(64'h88000000F0000000)) 
    \data_out_temp[13]_i_2 
       (.I0(\data_out_temp[13]_i_4_n_0 ),
        .I1(diff[1]),
        .I2(\data_out_temp[12]_i_3_n_0 ),
        .I3(diff[4]),
        .I4(\data_out[11]_i_5_n_0 ),
        .I5(diff[0]),
        .O(\data_out_temp[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_temp[13]_i_3 
       (.I0(\data_out_temp[13]_i_5_n_0 ),
        .I1(diff[1]),
        .I2(\data_out_temp[14]_i_5_n_0 ),
        .O(\data_out_temp[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8181810300000000)) 
    \data_out_temp[13]_i_4 
       (.I0(diff[4]),
        .I1(diff[3]),
        .I2(diff[2]),
        .I3(diff[0]),
        .I4(diff[1]),
        .I5(\data_in_reg_n_0_[14] ),
        .O(\data_out_temp[13]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_out_temp[13]_i_5 
       (.I0(\data_in_reg_n_0_[6] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[2] ),
        .I3(diff[3]),
        .I4(\data_in_reg_n_0_[10] ),
        .O(\data_out_temp[13]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h5555F5DD)) 
    \data_out_temp[14]_i_1 
       (.I0(\data_out_temp[14]_i_2_n_0 ),
        .I1(\data_out_temp[14]_i_3_n_0 ),
        .I2(\data_out_temp[14]_i_4_n_0 ),
        .I3(diff[0]),
        .I4(diff[4]),
        .O(SHIFT_LEFT[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF37F7)) 
    \data_out_temp[14]_i_2 
       (.I0(\data_in_reg_n_0_[14] ),
        .I1(\data_out_temp[15]_i_3_n_0 ),
        .I2(diff[0]),
        .I3(p_1_in_0),
        .I4(SHIFT_LEFT1[1]),
        .I5(\data_out_temp[1]_i_5_n_0 ),
        .O(\data_out_temp[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_temp[14]_i_3 
       (.I0(\data_out_temp[14]_i_5_n_0 ),
        .I1(diff[1]),
        .I2(\data_out_temp[14]_i_6_n_0 ),
        .O(\data_out_temp[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_temp[14]_i_4 
       (.I0(\data_out_temp[14]_i_7_n_0 ),
        .I1(diff[1]),
        .I2(\data_out_temp[15]_i_6_n_0 ),
        .O(\data_out_temp[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \data_out_temp[14]_i_5 
       (.I0(\data_in_reg_n_0_[12] ),
        .I1(\data_in_reg_n_0_[4] ),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[0] ),
        .I4(diff[3]),
        .I5(\data_in_reg_n_0_[8] ),
        .O(\data_out_temp[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \data_out_temp[14]_i_6 
       (.I0(\data_in_reg_n_0_[14] ),
        .I1(\data_in_reg_n_0_[6] ),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[2] ),
        .I4(diff[3]),
        .I5(\data_in_reg_n_0_[10] ),
        .O(\data_out_temp[14]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_out_temp[14]_i_7 
       (.I0(\data_in_reg_n_0_[7] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[3] ),
        .I3(diff[3]),
        .I4(\data_in_reg_n_0_[11] ),
        .O(\data_out_temp[14]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \data_out_temp[15]_i_1 
       (.I0(aresetn),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(\data_out[15]_i_3_n_0 ),
        .O(data_out_temp0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000800)) 
    \data_out_temp[15]_i_2 
       (.I0(\data_out_temp[15]_i_3_n_0 ),
        .I1(p_1_in_0),
        .I2(SHIFT_LEFT1[1]),
        .I3(diff[4]),
        .I4(\data_out[14]_i_4_n_0 ),
        .I5(\data_out_temp[15]_i_5_n_0 ),
        .O(SHIFT_LEFT[15]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hE001000F)) 
    \data_out_temp[15]_i_3 
       (.I0(diff[1]),
        .I1(diff[0]),
        .I2(diff[2]),
        .I3(diff[3]),
        .I4(diff[4]),
        .O(\data_out_temp[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \data_out_temp[15]_i_4 
       (.I0(diff[0]),
        .I1(diff[4]),
        .I2(diff[1]),
        .O(SHIFT_LEFT1[1]));
  LUT6 #(
    .INIT(64'h00000000B8BBB888)) 
    \data_out_temp[15]_i_5 
       (.I0(\data_out_temp[14]_i_3_n_0 ),
        .I1(diff[0]),
        .I2(\data_out_temp[15]_i_6_n_0 ),
        .I3(diff[1]),
        .I4(\data_out_temp[15]_i_7_n_0 ),
        .I5(diff[4]),
        .O(\data_out_temp[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \data_out_temp[15]_i_6 
       (.I0(\data_in_reg_n_0_[13] ),
        .I1(\data_in_reg_n_0_[5] ),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[1] ),
        .I4(diff[3]),
        .I5(\data_in_reg_n_0_[9] ),
        .O(\data_out_temp[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \data_out_temp[15]_i_7 
       (.I0(p_1_in_0),
        .I1(\data_in_reg_n_0_[7] ),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[3] ),
        .I4(diff[3]),
        .I5(\data_in_reg_n_0_[11] ),
        .O(\data_out_temp[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h5555FD5D)) 
    \data_out_temp[1]_i_1 
       (.I0(\data_out_temp[1]_i_2_n_0 ),
        .I1(\data_out_temp[1]_i_3_n_0 ),
        .I2(diff[0]),
        .I3(\data_out_temp[1]_i_4_n_0 ),
        .I4(\data_out_temp[1]_i_5_n_0 ),
        .O(SHIFT_LEFT[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFCDEF)) 
    \data_out_temp[1]_i_2 
       (.I0(diff[0]),
        .I1(\bitmask[11]_i_1_n_0 ),
        .I2(\data_in_reg_n_0_[1] ),
        .I3(\data_in_reg_n_0_[0] ),
        .I4(diff[1]),
        .I5(diff[4]),
        .O(\data_out_temp[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hEABF2A80)) 
    \data_out_temp[1]_i_3 
       (.I0(\data_out_temp[1]_i_6_n_0 ),
        .I1(diff[0]),
        .I2(diff[4]),
        .I3(diff[1]),
        .I4(\data_out_temp[1]_i_7_n_0 ),
        .O(\data_out_temp[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \data_out_temp[1]_i_4 
       (.I0(\data_in_reg_n_0_[8] ),
        .I1(SHIFT_LEFT1[3]),
        .I2(SHIFT_LEFT1[2]),
        .I3(\data_out_temp[1]_i_8_n_0 ),
        .I4(SHIFT_LEFT1[1]),
        .I5(\data_out_temp[1]_i_9_n_0 ),
        .O(\data_out_temp[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \data_out_temp[1]_i_5 
       (.I0(diff[2]),
        .I1(diff[0]),
        .I2(diff[1]),
        .I3(diff[3]),
        .I4(diff[4]),
        .O(\data_out_temp[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFCFC0C0CFA0AFA0A)) 
    \data_out_temp[1]_i_6 
       (.I0(\data_in_reg_n_0_[3] ),
        .I1(\data_in_reg_n_0_[11] ),
        .I2(SHIFT_LEFT1[2]),
        .I3(\data_in_reg_n_0_[7] ),
        .I4(p_1_in_0),
        .I5(SHIFT_LEFT1[3]),
        .O(\data_out_temp[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \data_out_temp[1]_i_7 
       (.I0(\data_in_reg_n_0_[1] ),
        .I1(\data_in_reg_n_0_[9] ),
        .I2(SHIFT_LEFT1[2]),
        .I3(\data_in_reg_n_0_[13] ),
        .I4(SHIFT_LEFT1[3]),
        .I5(\data_in_reg_n_0_[5] ),
        .O(\data_out_temp[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_temp[1]_i_8 
       (.I0(\data_in_reg_n_0_[12] ),
        .I1(SHIFT_LEFT1[3]),
        .I2(\data_in_reg_n_0_[4] ),
        .O(\data_out_temp[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \data_out_temp[1]_i_9 
       (.I0(\data_in_reg_n_0_[2] ),
        .I1(\data_in_reg_n_0_[10] ),
        .I2(SHIFT_LEFT1[2]),
        .I3(\data_in_reg_n_0_[14] ),
        .I4(SHIFT_LEFT1[3]),
        .I5(\data_in_reg_n_0_[6] ),
        .O(\data_out_temp[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    \data_out_temp[2]_i_1 
       (.I0(\data_out_temp[2]_i_2_n_0 ),
        .I1(\data_in_reg_n_0_[1] ),
        .I2(diff[2]),
        .I3(diff[3]),
        .I4(\data_out_temp[4]_i_3_n_0 ),
        .I5(diff[1]),
        .O(SHIFT_LEFT[2]));
  LUT6 #(
    .INIT(64'h02020202FF0FF202)) 
    \data_out_temp[2]_i_2 
       (.I0(\data_out_temp[2]_i_3_n_0 ),
        .I1(diff[4]),
        .I2(diff[0]),
        .I3(\data_out_temp[3]_i_4_n_0 ),
        .I4(\data_out_temp[1]_i_4_n_0 ),
        .I5(\data_out_temp[1]_i_5_n_0 ),
        .O(\data_out_temp[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h000000B8)) 
    \data_out_temp[2]_i_3 
       (.I0(\data_in_reg_n_0_[0] ),
        .I1(diff[1]),
        .I2(\data_in_reg_n_0_[2] ),
        .I3(diff[2]),
        .I4(diff[3]),
        .O(\data_out_temp[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFEAAAAAAAAA)) 
    \data_out_temp[3]_i_1 
       (.I0(\data_out_temp[3]_i_2_n_0 ),
        .I1(\data_in_reg_n_0_[0] ),
        .I2(diff[1]),
        .I3(\data_in_reg_n_0_[2] ),
        .I4(\bitmask[11]_i_1_n_0 ),
        .I5(\data_out_temp[4]_i_3_n_0 ),
        .O(SHIFT_LEFT[3]));
  LUT6 #(
    .INIT(64'h00220022FFF200F2)) 
    \data_out_temp[3]_i_2 
       (.I0(\data_out_temp[3]_i_3_n_0 ),
        .I1(diff[4]),
        .I2(\data_out_temp[3]_i_4_n_0 ),
        .I3(diff[0]),
        .I4(\data_out_temp[4]_i_4_n_0 ),
        .I5(\data_out_temp[1]_i_5_n_0 ),
        .O(\data_out_temp[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h000000B8)) 
    \data_out_temp[3]_i_3 
       (.I0(\data_in_reg_n_0_[1] ),
        .I1(diff[1]),
        .I2(\data_in_reg_n_0_[3] ),
        .I3(diff[2]),
        .I4(diff[3]),
        .O(\data_out_temp[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \data_out_temp[3]_i_4 
       (.I0(\data_in_reg_n_0_[9] ),
        .I1(SHIFT_LEFT1[3]),
        .I2(SHIFT_LEFT1[2]),
        .I3(\data_out_temp[3]_i_5_n_0 ),
        .I4(SHIFT_LEFT1[1]),
        .I5(\data_out_temp[1]_i_6_n_0 ),
        .O(\data_out_temp[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_temp[3]_i_5 
       (.I0(\data_in_reg_n_0_[13] ),
        .I1(SHIFT_LEFT1[3]),
        .I2(\data_in_reg_n_0_[5] ),
        .O(\data_out_temp[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEFEAAAAAAAAA)) 
    \data_out_temp[4]_i_1 
       (.I0(\data_out_temp[4]_i_2_n_0 ),
        .I1(\data_in_reg_n_0_[1] ),
        .I2(diff[1]),
        .I3(\data_in_reg_n_0_[3] ),
        .I4(\bitmask[11]_i_1_n_0 ),
        .I5(\data_out_temp[4]_i_3_n_0 ),
        .O(SHIFT_LEFT[4]));
  LUT6 #(
    .INIT(64'h02020202FF0FF202)) 
    \data_out_temp[4]_i_2 
       (.I0(\data_out_temp[5]_i_4_n_0 ),
        .I1(diff[4]),
        .I2(diff[0]),
        .I3(\data_out_temp[5]_i_3_n_0 ),
        .I4(\data_out_temp[4]_i_4_n_0 ),
        .I5(\data_out_temp[1]_i_5_n_0 ),
        .O(\data_out_temp[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_out_temp[4]_i_3 
       (.I0(diff[0]),
        .I1(diff[4]),
        .O(\data_out_temp[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \data_out_temp[4]_i_4 
       (.I0(\data_in_reg_n_0_[10] ),
        .I1(SHIFT_LEFT1[3]),
        .I2(SHIFT_LEFT1[2]),
        .I3(\data_out_temp[4]_i_5_n_0 ),
        .I4(SHIFT_LEFT1[1]),
        .I5(\data_out_temp[4]_i_6_n_0 ),
        .O(\data_out_temp[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out_temp[4]_i_5 
       (.I0(\data_in_reg_n_0_[14] ),
        .I1(SHIFT_LEFT1[3]),
        .I2(\data_in_reg_n_0_[6] ),
        .O(\data_out_temp[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_out_temp[4]_i_6 
       (.I0(\data_in_reg_n_0_[8] ),
        .I1(SHIFT_LEFT1[2]),
        .I2(\data_in_reg_n_0_[12] ),
        .I3(SHIFT_LEFT1[3]),
        .I4(\data_in_reg_n_0_[4] ),
        .O(\data_out_temp[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h55554444FF55F4F4)) 
    \data_out_temp[5]_i_1 
       (.I0(\data_out_temp[5]_i_2_n_0 ),
        .I1(\data_out_temp[5]_i_3_n_0 ),
        .I2(\data_out_temp[6]_i_3_n_0 ),
        .I3(\data_out_temp[5]_i_4_n_0 ),
        .I4(diff[0]),
        .I5(diff[4]),
        .O(SHIFT_LEFT[5]));
  LUT6 #(
    .INIT(64'h777733337777333F)) 
    \data_out_temp[5]_i_2 
       (.I0(\data_out_temp[6]_i_4_n_0 ),
        .I1(diff[4]),
        .I2(diff[3]),
        .I3(diff[1]),
        .I4(diff[0]),
        .I5(diff[2]),
        .O(\data_out_temp[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \data_out_temp[5]_i_3 
       (.I0(\data_in_reg_n_0_[11] ),
        .I1(SHIFT_LEFT1[3]),
        .I2(SHIFT_LEFT1[2]),
        .I3(\data_out_temp[5]_i_5_n_0 ),
        .I4(SHIFT_LEFT1[1]),
        .I5(\data_out_temp[5]_i_6_n_0 ),
        .O(\data_out_temp[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h003000BB00300088)) 
    \data_out_temp[5]_i_4 
       (.I0(\data_in_reg_n_0_[2] ),
        .I1(diff[1]),
        .I2(\data_in_reg_n_0_[0] ),
        .I3(diff[3]),
        .I4(diff[2]),
        .I5(\data_in_reg_n_0_[4] ),
        .O(\data_out_temp[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \data_out_temp[5]_i_5 
       (.I0(\data_in_reg_n_0_[7] ),
        .I1(p_1_in_0),
        .I2(SHIFT_LEFT1[3]),
        .O(\data_out_temp[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_out_temp[5]_i_6 
       (.I0(\data_in_reg_n_0_[9] ),
        .I1(SHIFT_LEFT1[2]),
        .I2(\data_in_reg_n_0_[13] ),
        .I3(SHIFT_LEFT1[3]),
        .I4(\data_in_reg_n_0_[5] ),
        .O(\data_out_temp[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h44445555FF44F5F5)) 
    \data_out_temp[6]_i_1 
       (.I0(\data_out_temp[6]_i_2_n_0 ),
        .I1(\data_out_temp[7]_i_3_n_0 ),
        .I2(\data_out_temp[7]_i_4_n_0 ),
        .I3(\data_out_temp[6]_i_3_n_0 ),
        .I4(diff[0]),
        .I5(diff[4]),
        .O(SHIFT_LEFT[6]));
  LUT6 #(
    .INIT(64'h333377773333777F)) 
    \data_out_temp[6]_i_2 
       (.I0(\data_out_temp[6]_i_4_n_0 ),
        .I1(diff[4]),
        .I2(diff[3]),
        .I3(diff[1]),
        .I4(diff[0]),
        .I5(diff[2]),
        .O(\data_out_temp[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h003000BB00300088)) 
    \data_out_temp[6]_i_3 
       (.I0(\data_in_reg_n_0_[3] ),
        .I1(diff[1]),
        .I2(\data_in_reg_n_0_[1] ),
        .I3(diff[3]),
        .I4(diff[2]),
        .I5(\data_in_reg_n_0_[5] ),
        .O(\data_out_temp[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00ACFFFF00AC0000)) 
    \data_out_temp[6]_i_4 
       (.I0(\data_in_reg_n_0_[12] ),
        .I1(\data_in_reg_n_0_[8] ),
        .I2(SHIFT_LEFT1[2]),
        .I3(SHIFT_LEFT1[3]),
        .I4(SHIFT_LEFT1[1]),
        .I5(\data_out_temp[6]_i_5_n_0 ),
        .O(\data_out_temp[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_out_temp[6]_i_5 
       (.I0(\data_in_reg_n_0_[10] ),
        .I1(SHIFT_LEFT1[2]),
        .I2(\data_in_reg_n_0_[14] ),
        .I3(SHIFT_LEFT1[3]),
        .I4(\data_in_reg_n_0_[6] ),
        .O(\data_out_temp[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h55554444FF55F4F4)) 
    \data_out_temp[7]_i_1 
       (.I0(\data_out_temp[7]_i_2_n_0 ),
        .I1(\data_out_temp[7]_i_3_n_0 ),
        .I2(\data_out_temp[8]_i_4_n_0 ),
        .I3(\data_out_temp[7]_i_4_n_0 ),
        .I4(diff[0]),
        .I5(diff[4]),
        .O(SHIFT_LEFT[7]));
  LUT6 #(
    .INIT(64'h777733337777333F)) 
    \data_out_temp[7]_i_2 
       (.I0(\data_out_temp[8]_i_5_n_0 ),
        .I1(diff[4]),
        .I2(diff[3]),
        .I3(diff[1]),
        .I4(diff[0]),
        .I5(diff[2]),
        .O(\data_out_temp[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00ACFFFF00AC0000)) 
    \data_out_temp[7]_i_3 
       (.I0(\data_in_reg_n_0_[13] ),
        .I1(\data_in_reg_n_0_[9] ),
        .I2(SHIFT_LEFT1[2]),
        .I3(SHIFT_LEFT1[3]),
        .I4(SHIFT_LEFT1[1]),
        .I5(\data_out_temp[7]_i_5_n_0 ),
        .O(\data_out_temp[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2320FFFF23200000)) 
    \data_out_temp[7]_i_4 
       (.I0(\data_in_reg_n_0_[0] ),
        .I1(diff[3]),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[4] ),
        .I4(diff[1]),
        .I5(\data_out_temp[7]_i_6_n_0 ),
        .O(\data_out_temp[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h3300B8B8)) 
    \data_out_temp[7]_i_5 
       (.I0(\data_in_reg_n_0_[11] ),
        .I1(SHIFT_LEFT1[2]),
        .I2(\data_in_reg_n_0_[7] ),
        .I3(p_1_in_0),
        .I4(SHIFT_LEFT1[3]),
        .O(\data_out_temp[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h2320)) 
    \data_out_temp[7]_i_6 
       (.I0(\data_in_reg_n_0_[2] ),
        .I1(diff[3]),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[6] ),
        .O(\data_out_temp[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h44445555FF44F5F5)) 
    \data_out_temp[8]_i_1 
       (.I0(\data_out_temp[8]_i_2_n_0 ),
        .I1(\data_out_temp[8]_i_3_n_0 ),
        .I2(\data_out_temp[9]_i_4_n_0 ),
        .I3(\data_out_temp[8]_i_4_n_0 ),
        .I4(diff[0]),
        .I5(diff[4]),
        .O(SHIFT_LEFT[8]));
  LUT6 #(
    .INIT(64'h333377773333777F)) 
    \data_out_temp[8]_i_2 
       (.I0(\data_out_temp[8]_i_5_n_0 ),
        .I1(diff[4]),
        .I2(diff[3]),
        .I3(diff[1]),
        .I4(diff[0]),
        .I5(diff[2]),
        .O(\data_out_temp[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00ACFFFF00AC0000)) 
    \data_out_temp[8]_i_3 
       (.I0(p_1_in_0),
        .I1(\data_in_reg_n_0_[11] ),
        .I2(SHIFT_LEFT1[2]),
        .I3(SHIFT_LEFT1[3]),
        .I4(SHIFT_LEFT1[1]),
        .I5(\data_out_temp[8]_i_6_n_0 ),
        .O(\data_out_temp[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2320FFFF23200000)) 
    \data_out_temp[8]_i_4 
       (.I0(\data_in_reg_n_0_[1] ),
        .I1(diff[3]),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[5] ),
        .I4(diff[1]),
        .I5(\data_out_temp[8]_i_7_n_0 ),
        .O(\data_out_temp[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00ACFFFF00AC0000)) 
    \data_out_temp[8]_i_5 
       (.I0(\data_in_reg_n_0_[14] ),
        .I1(\data_in_reg_n_0_[10] ),
        .I2(SHIFT_LEFT1[2]),
        .I3(SHIFT_LEFT1[3]),
        .I4(SHIFT_LEFT1[1]),
        .I5(\data_out_temp[8]_i_8_n_0 ),
        .O(\data_out_temp[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \data_out_temp[8]_i_6 
       (.I0(\data_in_reg_n_0_[13] ),
        .I1(\data_in_reg_n_0_[9] ),
        .I2(SHIFT_LEFT1[2]),
        .I3(SHIFT_LEFT1[3]),
        .O(\data_out_temp[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h2320)) 
    \data_out_temp[8]_i_7 
       (.I0(\data_in_reg_n_0_[3] ),
        .I1(diff[3]),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[7] ),
        .O(\data_out_temp[8]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \data_out_temp[8]_i_8 
       (.I0(\data_in_reg_n_0_[12] ),
        .I1(\data_in_reg_n_0_[8] ),
        .I2(SHIFT_LEFT1[2]),
        .I3(SHIFT_LEFT1[3]),
        .O(\data_out_temp[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h44445555FF44F5F5)) 
    \data_out_temp[9]_i_1 
       (.I0(\data_out_temp[9]_i_2_n_0 ),
        .I1(\data_out_temp[9]_i_3_n_0 ),
        .I2(\data_out_temp[10]_i_4_n_0 ),
        .I3(\data_out_temp[9]_i_4_n_0 ),
        .I4(diff[0]),
        .I5(diff[4]),
        .O(SHIFT_LEFT[9]));
  LUT6 #(
    .INIT(64'h333377773333777F)) 
    \data_out_temp[9]_i_2 
       (.I0(\data_out_temp[8]_i_3_n_0 ),
        .I1(diff[4]),
        .I2(diff[3]),
        .I3(diff[1]),
        .I4(diff[0]),
        .I5(diff[2]),
        .O(\data_out_temp[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \data_out_temp[9]_i_3 
       (.I0(\data_in_reg_n_0_[12] ),
        .I1(SHIFT_LEFT1[1]),
        .I2(\data_in_reg_n_0_[14] ),
        .I3(\data_in_reg_n_0_[10] ),
        .I4(SHIFT_LEFT1[2]),
        .I5(SHIFT_LEFT1[3]),
        .O(\data_out_temp[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2320FFFF23200000)) 
    \data_out_temp[9]_i_4 
       (.I0(\data_in_reg_n_0_[2] ),
        .I1(diff[3]),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[6] ),
        .I4(diff[1]),
        .I5(\data_out_temp[11]_i_5_n_0 ),
        .O(\data_out_temp[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[0] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[0]),
        .Q(data_out_temp[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[10] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[10]),
        .Q(data_out_temp[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[11] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[11]),
        .Q(data_out_temp[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[12] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[12]),
        .Q(data_out_temp[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[13] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[13]),
        .Q(data_out_temp[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[14] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[14]),
        .Q(data_out_temp[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[15] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[15]),
        .Q(data_out_temp[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[1] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[1]),
        .Q(data_out_temp[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[2] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[2]),
        .Q(data_out_temp[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[3] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[3]),
        .Q(data_out_temp[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[4] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[4]),
        .Q(data_out_temp[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[5] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[5]),
        .Q(data_out_temp[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[6] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[6]),
        .Q(data_out_temp[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[7] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[7]),
        .Q(data_out_temp[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[8] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[8]),
        .Q(data_out_temp[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_temp_reg[9] 
       (.C(aclk),
        .CE(data_out_temp0),
        .D(SHIFT_LEFT[9]),
        .Q(data_out_temp[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \diff[4]_i_1 
       (.I0(aresetn),
        .I1(state0__0),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(s_axis_tvalid),
        .O(tlast_sampled0));
  LUT2 #(
    .INIT(4'h9)) 
    \diff[4]_i_3 
       (.I0(tlast_expected),
        .I1(s_axis_tlast),
        .O(state0__0));
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
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    m_axis_tlast_INST_0
       (.I0(state__0[2]),
        .I1(tlast_sampled),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(m_axis_tlast));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h10)) 
    m_axis_tvalid_INST_0
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .O(m_axis_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h10)) 
    s_axis_tready_INST_0
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .O(s_axis_tready));
  LUT6 #(
    .INIT(64'hFFDFFFFF00100000)) 
    tlast_expected_i_1
       (.I0(s_axis_tlast),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .I4(s_axis_tvalid),
        .I5(tlast_expected),
        .O(tlast_expected_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tlast_expected_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(vol_led_ctrl_n_8),
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
       (.D({vol_led_ctrl_n_0,vol_led_ctrl_n_1,state1}),
        .\FSM_sequential_state_reg[1] (vol_led_ctrl_n_5),
        .\FSM_sequential_state_reg[2] (vol_led_ctrl_n_6),
        .\FSM_sequential_state_reg[2]_0 (\data_out[15]_i_3_n_0 ),
        .\FSM_sequential_state_reg[2]_1 (\FSM_sequential_state[2]_i_4_n_0 ),
        .aclk(aclk),
        .aresetn(aresetn),
        .aresetn_0(vol_led_ctrl_n_8),
        .data_out0(data_out0),
        .s_axis_tvalid(s_axis_tvalid),
        .state0__0(state0__0),
        .state__0(state__0),
        .volume_down(volume_down),
        .volume_level(volume_level),
        .volume_up(volume_up));
endmodule

(* ORIG_REF_NAME = "volume_led_ctrl" *) 
module bd_top_00_volume_controller_0_0_volume_led_ctrl
   (D,
    \FSM_sequential_state_reg[1] ,
    \FSM_sequential_state_reg[2] ,
    data_out0,
    aresetn_0,
    volume_level,
    state__0,
    \FSM_sequential_state_reg[2]_0 ,
    \FSM_sequential_state_reg[2]_1 ,
    aresetn,
    state0__0,
    s_axis_tvalid,
    volume_up,
    volume_down,
    aclk);
  output [4:0]D;
  output \FSM_sequential_state_reg[1] ;
  output \FSM_sequential_state_reg[2] ;
  output data_out0;
  output aresetn_0;
  output [14:0]volume_level;
  input [2:0]state__0;
  input \FSM_sequential_state_reg[2]_0 ;
  input \FSM_sequential_state_reg[2]_1 ;
  input aresetn;
  input state0__0;
  input s_axis_tvalid;
  input volume_up;
  input volume_down;
  input aclk;

  wire [4:0]D;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[2] ;
  wire \FSM_sequential_state_reg[2]_0 ;
  wire \FSM_sequential_state_reg[2]_1 ;
  wire aclk;
  wire aresetn;
  wire aresetn_0;
  wire data_out0;
  wire \data_out[15]_i_4_n_0 ;
  wire \data_out[15]_i_6_n_0 ;
  wire \led_out[10]_i_1_n_0 ;
  wire \led_out[12]_i_1_n_0 ;
  wire \led_out[14]_i_1_n_0 ;
  wire \led_out[15]_i_1_n_0 ;
  wire \led_out[1]_i_1_n_0 ;
  wire \led_out[2]_i_1_n_0 ;
  wire \led_out[3]_i_3_n_0 ;
  wire \led_out[4]_i_1_n_0 ;
  wire \led_out[6]_i_1_n_0 ;
  wire \led_out[8]_i_1_n_0 ;
  wire [1:1]p_0_in;
  wire [13:3]p_1_in;
  wire s_axis_tvalid;
  wire state0__0;
  wire [2:0]state__0;
  wire [3:0]volume;
  wire volume_down;
  wire [14:0]volume_level;
  wire [3:0]volume_uns_var;
  wire volume_up;

  LUT5 #(
    .INIT(32'h01FF0400)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(\FSM_sequential_state_reg[2]_1 ),
        .I4(state__0[1]),
        .O(\FSM_sequential_state_reg[2] ));
  LUT6 #(
    .INIT(64'h080000000800FFFF)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(volume[0]),
        .I1(volume[1]),
        .I2(volume[3]),
        .I3(volume[2]),
        .I4(state__0[0]),
        .I5(\FSM_sequential_state_reg[2]_0 ),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFEE0E0000)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state[2]_i_3_n_0 ),
        .I1(state__0[1]),
        .I2(\FSM_sequential_state_reg[2]_0 ),
        .I3(state__0[0]),
        .I4(\FSM_sequential_state_reg[2]_1 ),
        .I5(state__0[2]),
        .O(\FSM_sequential_state_reg[1] ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(aresetn),
        .O(aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(volume[3]),
        .I1(state__0[0]),
        .I2(volume[2]),
        .I3(volume[0]),
        .I4(volume[1]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FCDC0000)) 
    \data_out[15]_i_1 
       (.I0(\FSM_sequential_state_reg[2]_0 ),
        .I1(\data_out[15]_i_4_n_0 ),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(aresetn),
        .I5(state__0[2]),
        .O(data_out0));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \data_out[15]_i_4 
       (.I0(\data_out[15]_i_6_n_0 ),
        .I1(state0__0),
        .I2(state__0[0]),
        .I3(s_axis_tvalid),
        .I4(volume[2]),
        .I5(volume[3]),
        .O(\data_out[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \data_out[15]_i_6 
       (.I0(volume[0]),
        .I1(volume[1]),
        .O(\data_out[15]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \diff[0]_i_1 
       (.I0(volume[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \diff[1]_i_1 
       (.I0(volume[0]),
        .I1(volume[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \diff[2]_i_1 
       (.I0(volume[2]),
        .I1(volume[1]),
        .I2(volume[0]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h807F)) 
    \diff[3]_i_1 
       (.I0(volume[2]),
        .I1(volume[0]),
        .I2(volume[1]),
        .I3(volume[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h007F)) 
    \diff[4]_i_2 
       (.I0(volume[2]),
        .I1(volume[0]),
        .I2(volume[1]),
        .I3(volume[3]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hF0F0F0F0F040D000)) 
    \led_out[10]_i_1 
       (.I0(volume_down),
        .I1(volume_up),
        .I2(volume[3]),
        .I3(volume[1]),
        .I4(volume[0]),
        .I5(volume[2]),
        .O(\led_out[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEA00AA00FA00EA00)) 
    \led_out[11]_i_1 
       (.I0(volume[2]),
        .I1(volume[0]),
        .I2(volume[1]),
        .I3(volume[3]),
        .I4(volume_up),
        .I5(volume_down),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'hAA00A800EA00AA00)) 
    \led_out[12]_i_1 
       (.I0(volume[2]),
        .I1(volume[0]),
        .I2(volume[1]),
        .I3(volume[3]),
        .I4(volume_up),
        .I5(volume_down),
        .O(\led_out[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0D0F04000000000)) 
    \led_out[13]_i_1 
       (.I0(volume_down),
        .I1(volume_up),
        .I2(volume[3]),
        .I3(volume[1]),
        .I4(volume[0]),
        .I5(volume[2]),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'hA0008000A800A000)) 
    \led_out[14]_i_1 
       (.I0(volume[2]),
        .I1(volume[0]),
        .I2(volume[1]),
        .I3(volume[3]),
        .I4(volume_up),
        .I5(volume_down),
        .O(\led_out[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80000000A0008000)) 
    \led_out[15]_i_1 
       (.I0(volume[2]),
        .I1(volume[0]),
        .I2(volume[1]),
        .I3(volume[3]),
        .I4(volume_up),
        .I5(volume_down),
        .O(\led_out[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFAFFFFFFFE)) 
    \led_out[1]_i_1 
       (.I0(volume[2]),
        .I1(volume[0]),
        .I2(volume[1]),
        .I3(volume[3]),
        .I4(volume_up),
        .I5(volume_down),
        .O(\led_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFAFFEAFFFEFFFA)) 
    \led_out[2]_i_1 
       (.I0(volume[2]),
        .I1(volume[0]),
        .I2(volume[1]),
        .I3(volume[3]),
        .I4(volume_up),
        .I5(volume_down),
        .O(\led_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE77EEFEEEFEFDEE)) 
    \led_out[3]_i_1 
       (.I0(volume[2]),
        .I1(volume[3]),
        .I2(volume_uns_var[0]),
        .I3(p_0_in),
        .I4(volume[1]),
        .I5(\led_out[3]_i_3_n_0 ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h0000FFFE00000000)) 
    \led_out[3]_i_2 
       (.I0(volume[2]),
        .I1(volume[0]),
        .I2(volume[1]),
        .I3(volume[3]),
        .I4(volume_up),
        .I5(volume_down),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h2666666600000000)) 
    \led_out[3]_i_3 
       (.I0(volume_down),
        .I1(volume_up),
        .I2(volume[3]),
        .I3(volume[1]),
        .I4(volume[2]),
        .I5(volume[0]),
        .O(\led_out[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFFA8FFEAFFAA)) 
    \led_out[4]_i_1 
       (.I0(volume[2]),
        .I1(volume[0]),
        .I2(volume[1]),
        .I3(volume[3]),
        .I4(volume_up),
        .I5(volume_down),
        .O(\led_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFF4F0F0F0F0)) 
    \led_out[5]_i_1 
       (.I0(volume_down),
        .I1(volume_up),
        .I2(volume[3]),
        .I3(volume[1]),
        .I4(volume[0]),
        .I5(volume[2]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hFFF4FDF0F0F0F0F0)) 
    \led_out[6]_i_1 
       (.I0(volume_down),
        .I1(volume_up),
        .I2(volume[3]),
        .I3(volume[1]),
        .I4(volume[0]),
        .I5(volume[2]),
        .O(\led_out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF80FF00FFA0FF80)) 
    \led_out[7]_i_1 
       (.I0(volume[2]),
        .I1(volume[0]),
        .I2(volume[1]),
        .I3(volume[3]),
        .I4(volume_up),
        .I5(volume_down),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hCCCCCCC8ECCCCCCC)) 
    \led_out[8]_i_1 
       (.I0(volume[2]),
        .I1(volume[3]),
        .I2(volume[0]),
        .I3(volume[1]),
        .I4(volume_up),
        .I5(volume_down),
        .O(\led_out[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FDF40000)) 
    \led_out[9]_i_1 
       (.I0(volume_down),
        .I1(volume_up),
        .I2(volume[1]),
        .I3(volume[0]),
        .I4(volume[3]),
        .I5(volume[2]),
        .O(p_1_in[9]));
  FDRE \led_out_reg[10] 
       (.C(aclk),
        .CE(aresetn),
        .D(\led_out[10]_i_1_n_0 ),
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
        .D(\led_out[12]_i_1_n_0 ),
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
        .D(\led_out[14]_i_1_n_0 ),
        .Q(volume_level[13]),
        .R(1'b0));
  FDRE \led_out_reg[15] 
       (.C(aclk),
        .CE(aresetn),
        .D(\led_out[15]_i_1_n_0 ),
        .Q(volume_level[14]),
        .R(1'b0));
  FDRE \led_out_reg[1] 
       (.C(aclk),
        .CE(aresetn),
        .D(\led_out[1]_i_1_n_0 ),
        .Q(volume_level[0]),
        .R(1'b0));
  FDRE \led_out_reg[2] 
       (.C(aclk),
        .CE(aresetn),
        .D(\led_out[2]_i_1_n_0 ),
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
        .D(\led_out[4]_i_1_n_0 ),
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
        .D(\led_out[6]_i_1_n_0 ),
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
        .D(\led_out[8]_i_1_n_0 ),
        .Q(volume_level[7]),
        .R(1'b0));
  FDRE \led_out_reg[9] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[9]),
        .Q(volume_level[8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hD999666699996664)) 
    \volume_uns[0]_i_1 
       (.I0(volume_down),
        .I1(volume_up),
        .I2(volume[3]),
        .I3(volume[1]),
        .I4(volume[0]),
        .I5(volume[2]),
        .O(volume_uns_var[0]));
  LUT6 #(
    .INIT(64'hAAAAA5A4DA5AAAAA)) 
    \volume_uns[1]_i_1 
       (.I0(volume[1]),
        .I1(volume[2]),
        .I2(volume[0]),
        .I3(volume[3]),
        .I4(volume_up),
        .I5(volume_down),
        .O(volume_uns_var[1]));
  LUT6 #(
    .INIT(64'hAAAAA9A8EA6AAAAA)) 
    \volume_uns[2]_i_1 
       (.I0(volume[2]),
        .I1(volume[0]),
        .I2(volume[1]),
        .I3(volume[3]),
        .I4(volume_up),
        .I5(volume_down),
        .O(volume_uns_var[2]));
  LUT6 #(
    .INIT(64'hFFFF4000FFFD0000)) 
    \volume_uns[3]_i_1 
       (.I0(volume_down),
        .I1(volume_up),
        .I2(volume[1]),
        .I3(volume[0]),
        .I4(volume[3]),
        .I5(volume[2]),
        .O(volume_uns_var[3]));
  FDPE #(
    .INIT(1'b1)) 
    \volume_uns_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(volume_uns_var[0]),
        .PRE(aresetn_0),
        .Q(volume[0]));
  FDPE #(
    .INIT(1'b1)) 
    \volume_uns_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(volume_uns_var[1]),
        .PRE(aresetn_0),
        .Q(volume[1]));
  FDPE #(
    .INIT(1'b1)) 
    \volume_uns_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(volume_uns_var[2]),
        .PRE(aresetn_0),
        .Q(volume[2]));
  FDCE #(
    .INIT(1'b0)) 
    \volume_uns_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(volume_uns_var[3]),
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

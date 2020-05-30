// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat May 30 23:35:25 2020
// Host        : DESKTOP-O39JAIK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Vivado_DESD_Project/Project/Personal/Lab3_A4/LAB3A4/Sources/BD/bd_try/ip/bd_try_volume_controller_0_0/bd_try_volume_controller_0_0_sim_netlist.v
// Design      : bd_try_volume_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_try_volume_controller_0_0,volume_controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "volume_controller,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module bd_try_volume_controller_0_0
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 225000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input volume_up;
  input volume_down;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 225000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [15:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 225000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
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
  bd_try_volume_controller_0_0_volume_controller U0
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
module bd_try_volume_controller_0_0_volume_controller
   (volume_level,
    m_axis_tdata,
    s_axis_tready,
    m_axis_tlast,
    m_axis_tvalid,
    volume_up,
    volume_down,
    m_axis_tready,
    aclk,
    aresetn,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tlast);
  output [14:0]volume_level;
  output [15:0]m_axis_tdata;
  output s_axis_tready;
  output m_axis_tlast;
  output m_axis_tvalid;
  input volume_up;
  input volume_down;
  input m_axis_tready;
  input aclk;
  input aresetn;
  input [15:0]s_axis_tdata;
  input s_axis_tvalid;
  input s_axis_tlast;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire aclk;
  wire aresetn;
  wire [15:0]bitmask;
  wire bitmask0;
  wire \bitmask[0]_i_1_n_0 ;
  wire \bitmask[10]_i_1_n_0 ;
  wire \bitmask[11]_i_1_n_0 ;
  wire \bitmask[12]_i_1_n_0 ;
  wire \bitmask[13]_i_1_n_0 ;
  wire \bitmask[13]_i_3_n_0 ;
  wire \bitmask[14]_i_1_n_0 ;
  wire \bitmask[15]_i_1_n_0 ;
  wire \bitmask[1]_i_1_n_0 ;
  wire \bitmask[2]_i_1_n_0 ;
  wire \bitmask[3]_i_1_n_0 ;
  wire \bitmask[4]_i_1_n_0 ;
  wire \bitmask[5]_i_1_n_0 ;
  wire \bitmask[6]_i_1_n_0 ;
  wire \bitmask[8]_i_1_n_0 ;
  wire \bitmask[9]_i_1_n_0 ;
  wire [15:0]bitmask_and;
  wire \bitmask_and[0]_i_1_n_0 ;
  wire \bitmask_and[10]_i_1_n_0 ;
  wire \bitmask_and[11]_i_1_n_0 ;
  wire \bitmask_and[12]_i_1_n_0 ;
  wire \bitmask_and[13]_i_1_n_0 ;
  wire \bitmask_and[14]_i_1_n_0 ;
  wire \bitmask_and[1]_i_1_n_0 ;
  wire \bitmask_and[2]_i_1_n_0 ;
  wire \bitmask_and[3]_i_1_n_0 ;
  wire \bitmask_and[4]_i_1_n_0 ;
  wire \bitmask_and[5]_i_1_n_0 ;
  wire \bitmask_and[6]_i_1_n_0 ;
  wire \bitmask_and[7]_i_1_n_0 ;
  wire \bitmask_and[8]_i_1_n_0 ;
  wire \bitmask_and[9]_i_1_n_0 ;
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
  wire data_out0_1;
  wire data_out0_carry__0_i_1_n_0;
  wire data_out0_carry__0_i_2_n_0;
  wire data_out0_carry__0_n_3;
  wire data_out0_carry_i_1_n_0;
  wire data_out0_carry_i_2_n_0;
  wire data_out0_carry_i_3_n_0;
  wire data_out0_carry_i_4_n_0;
  wire data_out0_carry_n_0;
  wire data_out0_carry_n_1;
  wire data_out0_carry_n_2;
  wire data_out0_carry_n_3;
  wire \data_out[0]_i_1_n_0 ;
  wire \data_out[0]_i_2_n_0 ;
  wire \data_out[0]_i_3_n_0 ;
  wire \data_out[0]_i_4_n_0 ;
  wire \data_out[10]_i_1_n_0 ;
  wire \data_out[10]_i_2_n_0 ;
  wire \data_out[10]_i_3_n_0 ;
  wire \data_out[10]_i_4_n_0 ;
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
  wire \data_out[13]_i_6_n_0 ;
  wire \data_out[14]_i_1_n_0 ;
  wire \data_out[14]_i_2_n_0 ;
  wire \data_out[14]_i_3_n_0 ;
  wire \data_out[15]_i_10_n_0 ;
  wire \data_out[15]_i_11_n_0 ;
  wire \data_out[15]_i_12_n_0 ;
  wire \data_out[15]_i_2_n_0 ;
  wire \data_out[15]_i_3_n_0 ;
  wire \data_out[15]_i_5_n_0 ;
  wire \data_out[15]_i_6_n_0 ;
  wire \data_out[15]_i_7_n_0 ;
  wire \data_out[15]_i_8_n_0 ;
  wire \data_out[15]_i_9_n_0 ;
  wire \data_out[1]_i_1_n_0 ;
  wire \data_out[1]_i_2_n_0 ;
  wire \data_out[1]_i_3_n_0 ;
  wire \data_out[1]_i_4_n_0 ;
  wire \data_out[2]_i_1_n_0 ;
  wire \data_out[2]_i_2_n_0 ;
  wire \data_out[2]_i_3_n_0 ;
  wire \data_out[2]_i_4_n_0 ;
  wire \data_out[3]_i_1_n_0 ;
  wire \data_out[3]_i_2_n_0 ;
  wire \data_out[3]_i_3_n_0 ;
  wire \data_out[3]_i_4_n_0 ;
  wire \data_out[3]_i_5_n_0 ;
  wire \data_out[4]_i_1_n_0 ;
  wire \data_out[4]_i_2_n_0 ;
  wire \data_out[4]_i_3_n_0 ;
  wire \data_out[4]_i_4_n_0 ;
  wire \data_out[4]_i_5_n_0 ;
  wire \data_out[5]_i_1_n_0 ;
  wire \data_out[5]_i_2_n_0 ;
  wire \data_out[5]_i_3_n_0 ;
  wire \data_out[5]_i_4_n_0 ;
  wire \data_out[5]_i_5_n_0 ;
  wire \data_out[6]_i_1_n_0 ;
  wire \data_out[6]_i_2_n_0 ;
  wire \data_out[6]_i_3_n_0 ;
  wire \data_out[6]_i_4_n_0 ;
  wire \data_out[6]_i_5_n_0 ;
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
  wire \data_out[9]_i_1_n_0 ;
  wire \data_out[9]_i_2_n_0 ;
  wire \data_out[9]_i_3_n_0 ;
  wire \data_out[9]_i_4_n_0 ;
  wire \data_out[9]_i_5_n_0 ;
  wire [4:0]diff;
  wire [15:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire p_0_in;
  wire [15:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [4:0]state1;
  wire [2:0]state__0;
  wire tlast_expected;
  wire tlast_expected_0;
  wire tlast_expected_i_1_n_0;
  wire tlast_sampled;
  wire tlast_sampled0;
  wire vol_led_ctrl_n_0;
  wire vol_led_ctrl_n_1;
  wire vol_led_ctrl_n_8;
  wire volume_down;
  wire [14:0]volume_level;
  wire volume_up;
  wire [3:0]NLW_data_out0_carry_O_UNCONNECTED;
  wire [3:2]NLW_data_out0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_data_out0_carry__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFA0AFA0AF0CFFFCF)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[1]_i_3_n_0 ),
        .I1(m_axis_tready),
        .I2(state__0[2]),
        .I3(state__0[0]),
        .I4(\FSM_sequential_state[0]_i_2_n_0 ),
        .I5(state__0[1]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h90)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(s_axis_tlast),
        .I1(tlast_expected),
        .I2(s_axis_tvalid),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555554)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(diff[4]),
        .I1(diff[1]),
        .I2(diff[2]),
        .I3(diff[3]),
        .I4(diff[0]),
        .I5(state__0[0]),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAAB)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(diff[4]),
        .I1(diff[1]),
        .I2(diff[3]),
        .I3(diff[2]),
        .I4(diff[0]),
        .I5(state__0[0]),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h33333B0B)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(m_axis_tready),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[0]_i_2_n_0 ),
        .I4(state__0[1]),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,receive_data:001,multiply:010,send_data:100,check_of:011" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(vol_led_ctrl_n_8),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]));
  (* FSM_ENCODED_STATES = "idle:000,receive_data:001,multiply:010,send_data:100,check_of:011" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(vol_led_ctrl_n_8),
        .D(vol_led_ctrl_n_1),
        .Q(state__0[1]));
  (* FSM_ENCODED_STATES = "idle:000,receive_data:001,multiply:010,send_data:100,check_of:011" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(vol_led_ctrl_n_8),
        .D(vol_led_ctrl_n_0),
        .Q(state__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \bitmask[0]_i_1 
       (.I0(diff[1]),
        .I1(diff[3]),
        .I2(diff[2]),
        .I3(diff[0]),
        .O(\bitmask[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFC8)) 
    \bitmask[10]_i_1 
       (.I0(diff[0]),
        .I1(diff[2]),
        .I2(diff[1]),
        .I3(diff[3]),
        .O(\bitmask[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bitmask[11]_i_1 
       (.I0(diff[2]),
        .I1(diff[3]),
        .O(\bitmask[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bitmask[12]_i_1 
       (.I0(diff[1]),
        .I1(diff[0]),
        .I2(diff[2]),
        .I3(diff[3]),
        .O(\bitmask[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \bitmask[13]_i_1 
       (.I0(diff[4]),
        .I1(aresetn),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .O(\bitmask[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \bitmask[13]_i_2 
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(aresetn),
        .O(bitmask0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \bitmask[13]_i_3 
       (.I0(diff[3]),
        .I1(diff[2]),
        .I2(diff[1]),
        .O(\bitmask[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00FEFFFF00FE0000)) 
    \bitmask[14]_i_1 
       (.I0(diff[0]),
        .I1(\bitmask[11]_i_1_n_0 ),
        .I2(diff[1]),
        .I3(diff[4]),
        .I4(bitmask0),
        .I5(bitmask[14]),
        .O(\bitmask[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFFFFF00100000)) 
    \bitmask[15]_i_1 
       (.I0(diff[4]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(aresetn),
        .I5(bitmask[15]),
        .O(\bitmask[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \bitmask[1]_i_1 
       (.I0(diff[2]),
        .I1(diff[3]),
        .I2(diff[1]),
        .O(\bitmask[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hC080)) 
    \bitmask[2]_i_1 
       (.I0(diff[0]),
        .I1(diff[2]),
        .I2(diff[3]),
        .I3(diff[1]),
        .O(\bitmask[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bitmask[3]_i_1 
       (.I0(diff[3]),
        .I1(diff[2]),
        .O(\bitmask[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hF080)) 
    \bitmask[4]_i_1 
       (.I0(diff[1]),
        .I1(diff[0]),
        .I2(diff[3]),
        .I3(diff[2]),
        .O(\bitmask[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \bitmask[5]_i_1 
       (.I0(diff[1]),
        .I1(diff[3]),
        .I2(diff[2]),
        .O(\bitmask[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hF0E0)) 
    \bitmask[6]_i_1 
       (.I0(diff[0]),
        .I1(diff[1]),
        .I2(diff[3]),
        .I3(diff[2]),
        .O(\bitmask[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \bitmask[8]_i_1 
       (.I0(diff[2]),
        .I1(diff[1]),
        .I2(diff[0]),
        .I3(diff[3]),
        .O(\bitmask[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \bitmask[9]_i_1 
       (.I0(diff[2]),
        .I1(diff[1]),
        .I2(diff[3]),
        .O(\bitmask[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \bitmask_and[0]_i_1 
       (.I0(diff[1]),
        .I1(diff[3]),
        .I2(\data_in_reg_n_0_[0] ),
        .I3(diff[2]),
        .I4(diff[0]),
        .O(\bitmask_and[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFF00C800)) 
    \bitmask_and[10]_i_1 
       (.I0(diff[0]),
        .I1(diff[2]),
        .I2(diff[1]),
        .I3(\data_in_reg_n_0_[10] ),
        .I4(diff[3]),
        .O(\bitmask_and[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \bitmask_and[11]_i_1 
       (.I0(diff[2]),
        .I1(\data_in_reg_n_0_[11] ),
        .I2(diff[3]),
        .O(\bitmask_and[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFF00F800)) 
    \bitmask_and[12]_i_1 
       (.I0(diff[1]),
        .I1(diff[0]),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[12] ),
        .I4(diff[3]),
        .O(\bitmask_and[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hF0E0)) 
    \bitmask_and[13]_i_1 
       (.I0(diff[1]),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[13] ),
        .I3(diff[3]),
        .O(\bitmask_and[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFF00FE00)) 
    \bitmask_and[14]_i_1 
       (.I0(diff[0]),
        .I1(diff[1]),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[14] ),
        .I4(diff[3]),
        .O(\bitmask_and[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \bitmask_and[1]_i_1 
       (.I0(diff[2]),
        .I1(\data_in_reg_n_0_[1] ),
        .I2(diff[3]),
        .I3(diff[1]),
        .O(\bitmask_and[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hC0008000)) 
    \bitmask_and[2]_i_1 
       (.I0(diff[0]),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[2] ),
        .I3(diff[3]),
        .I4(diff[1]),
        .O(\bitmask_and[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \bitmask_and[3]_i_1 
       (.I0(diff[3]),
        .I1(\data_in_reg_n_0_[3] ),
        .I2(diff[2]),
        .O(\bitmask_and[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hF0008000)) 
    \bitmask_and[4]_i_1 
       (.I0(diff[1]),
        .I1(diff[0]),
        .I2(diff[3]),
        .I3(\data_in_reg_n_0_[4] ),
        .I4(diff[2]),
        .O(\bitmask_and[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hC080)) 
    \bitmask_and[5]_i_1 
       (.I0(diff[1]),
        .I1(diff[3]),
        .I2(\data_in_reg_n_0_[5] ),
        .I3(diff[2]),
        .O(\bitmask_and[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hF000E000)) 
    \bitmask_and[6]_i_1 
       (.I0(diff[0]),
        .I1(diff[1]),
        .I2(diff[3]),
        .I3(\data_in_reg_n_0_[6] ),
        .I4(diff[2]),
        .O(\bitmask_and[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bitmask_and[7]_i_1 
       (.I0(\data_in_reg_n_0_[7] ),
        .I1(diff[3]),
        .O(\bitmask_and[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFF008000)) 
    \bitmask_and[8]_i_1 
       (.I0(diff[2]),
        .I1(diff[1]),
        .I2(diff[0]),
        .I3(\data_in_reg_n_0_[8] ),
        .I4(diff[3]),
        .O(\bitmask_and[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hF080)) 
    \bitmask_and[9]_i_1 
       (.I0(diff[2]),
        .I1(diff[1]),
        .I2(\data_in_reg_n_0_[9] ),
        .I3(diff[3]),
        .O(\bitmask_and[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_and_reg[0] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\bitmask_and[0]_i_1_n_0 ),
        .Q(bitmask_and[0]),
        .R(\bitmask[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_and_reg[10] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\bitmask_and[10]_i_1_n_0 ),
        .Q(bitmask_and[10]),
        .R(\bitmask[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_and_reg[11] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\bitmask_and[11]_i_1_n_0 ),
        .Q(bitmask_and[11]),
        .R(\bitmask[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_and_reg[12] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\bitmask_and[12]_i_1_n_0 ),
        .Q(bitmask_and[12]),
        .R(\bitmask[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_and_reg[13] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\bitmask_and[13]_i_1_n_0 ),
        .Q(bitmask_and[13]),
        .R(\bitmask[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_and_reg[14] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\bitmask_and[14]_i_1_n_0 ),
        .Q(bitmask_and[14]),
        .R(\bitmask[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_and_reg[15] 
       (.C(aclk),
        .CE(bitmask0),
        .D(p_0_in),
        .Q(bitmask_and[15]),
        .R(\bitmask[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_and_reg[1] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\bitmask_and[1]_i_1_n_0 ),
        .Q(bitmask_and[1]),
        .R(\bitmask[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_and_reg[2] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\bitmask_and[2]_i_1_n_0 ),
        .Q(bitmask_and[2]),
        .R(\bitmask[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_and_reg[3] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\bitmask_and[3]_i_1_n_0 ),
        .Q(bitmask_and[3]),
        .R(\bitmask[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_and_reg[4] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\bitmask_and[4]_i_1_n_0 ),
        .Q(bitmask_and[4]),
        .R(\bitmask[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_and_reg[5] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\bitmask_and[5]_i_1_n_0 ),
        .Q(bitmask_and[5]),
        .R(\bitmask[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_and_reg[6] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\bitmask_and[6]_i_1_n_0 ),
        .Q(bitmask_and[6]),
        .R(\bitmask[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_and_reg[7] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\bitmask_and[7]_i_1_n_0 ),
        .Q(bitmask_and[7]),
        .R(\bitmask[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_and_reg[8] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\bitmask_and[8]_i_1_n_0 ),
        .Q(bitmask_and[8]),
        .R(\bitmask[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_and_reg[9] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\bitmask_and[9]_i_1_n_0 ),
        .Q(bitmask_and[9]),
        .R(\bitmask[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_reg[0] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\bitmask[0]_i_1_n_0 ),
        .Q(bitmask[0]),
        .R(\bitmask[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_reg[10] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\bitmask[10]_i_1_n_0 ),
        .Q(bitmask[10]),
        .R(\bitmask[13]_i_1_n_0 ));
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
        .D(\bitmask[12]_i_1_n_0 ),
        .Q(bitmask[12]),
        .R(\bitmask[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_reg[13] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\bitmask[13]_i_3_n_0 ),
        .Q(bitmask[13]),
        .R(\bitmask[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bitmask[14]_i_1_n_0 ),
        .Q(bitmask[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bitmask[15]_i_1_n_0 ),
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
        .D(\bitmask[2]_i_1_n_0 ),
        .Q(bitmask[2]),
        .R(\bitmask[13]_i_1_n_0 ));
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
        .D(\bitmask[4]_i_1_n_0 ),
        .Q(bitmask[4]),
        .R(\bitmask[13]_i_1_n_0 ));
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
        .D(\bitmask[6]_i_1_n_0 ),
        .Q(bitmask[6]),
        .R(\bitmask[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_reg[7] 
       (.C(aclk),
        .CE(bitmask0),
        .D(diff[3]),
        .Q(bitmask[7]),
        .R(\bitmask[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_reg[8] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\bitmask[8]_i_1_n_0 ),
        .Q(bitmask[8]),
        .R(\bitmask[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitmask_reg[9] 
       (.C(aclk),
        .CE(bitmask0),
        .D(\bitmask[9]_i_1_n_0 ),
        .Q(bitmask[9]),
        .R(\bitmask[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \data_in[15]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(s_axis_tvalid),
        .I3(state__0[1]),
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
  CARRY4 data_out0_carry
       (.CI(1'b0),
        .CO({data_out0_carry_n_0,data_out0_carry_n_1,data_out0_carry_n_2,data_out0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_data_out0_carry_O_UNCONNECTED[3:0]),
        .S({data_out0_carry_i_1_n_0,data_out0_carry_i_2_n_0,data_out0_carry_i_3_n_0,data_out0_carry_i_4_n_0}));
  CARRY4 data_out0_carry__0
       (.CI(data_out0_carry_n_0),
        .CO({NLW_data_out0_carry__0_CO_UNCONNECTED[3:2],data_out0,data_out0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O(NLW_data_out0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,data_out0_carry__0_i_1_n_0,data_out0_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    data_out0_carry__0_i_1
       (.I0(bitmask[15]),
        .I1(bitmask_and[15]),
        .O(data_out0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    data_out0_carry__0_i_2
       (.I0(bitmask_and[14]),
        .I1(bitmask_and[13]),
        .I2(bitmask_and[12]),
        .I3(bitmask[12]),
        .I4(bitmask[13]),
        .I5(bitmask[14]),
        .O(data_out0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    data_out0_carry_i_1
       (.I0(bitmask_and[11]),
        .I1(bitmask_and[10]),
        .I2(bitmask_and[9]),
        .I3(bitmask[9]),
        .I4(bitmask[10]),
        .I5(bitmask[11]),
        .O(data_out0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    data_out0_carry_i_2
       (.I0(bitmask_and[8]),
        .I1(bitmask_and[7]),
        .I2(bitmask_and[6]),
        .I3(bitmask[6]),
        .I4(bitmask[7]),
        .I5(bitmask[8]),
        .O(data_out0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    data_out0_carry_i_3
       (.I0(bitmask_and[5]),
        .I1(bitmask_and[4]),
        .I2(bitmask_and[3]),
        .I3(bitmask[3]),
        .I4(bitmask[4]),
        .I5(bitmask[5]),
        .O(data_out0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    data_out0_carry_i_4
       (.I0(bitmask[2]),
        .I1(bitmask_and[1]),
        .I2(bitmask_and[0]),
        .I3(bitmask[0]),
        .I4(bitmask[1]),
        .I5(bitmask_and[2]),
        .O(data_out0_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_out[0]_i_1 
       (.I0(p_0_in),
        .I1(state__0[0]),
        .I2(\data_out[0]_i_2_n_0 ),
        .I3(state__0[1]),
        .I4(s_axis_tdata[0]),
        .O(\data_out[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \data_out[0]_i_2 
       (.I0(\data_out[0]_i_3_n_0 ),
        .I1(\data_out[1]_i_3_n_0 ),
        .I2(diff[4]),
        .I3(\data_out[0]_i_4_n_0 ),
        .I4(diff[0]),
        .O(\data_out[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[0]_i_3 
       (.I0(\data_out[15]_i_9_n_0 ),
        .I1(diff[1]),
        .I2(\data_out[15]_i_10_n_0 ),
        .O(\data_out[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \data_out[0]_i_4 
       (.I0(diff[2]),
        .I1(\data_in_reg_n_0_[0] ),
        .I2(diff[3]),
        .I3(diff[1]),
        .O(\data_out[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_out[10]_i_1 
       (.I0(p_0_in),
        .I1(state__0[0]),
        .I2(\data_out[10]_i_2_n_0 ),
        .I3(state__0[1]),
        .I4(s_axis_tdata[10]),
        .O(\data_out[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[10]_i_2 
       (.I0(\data_out[10]_i_3_n_0 ),
        .I1(\data_out[11]_i_3_n_0 ),
        .I2(diff[4]),
        .I3(\data_out[10]_i_4_n_0 ),
        .I4(diff[0]),
        .I5(\data_out[11]_i_4_n_0 ),
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
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \data_out[10]_i_4 
       (.I0(\data_in_reg_n_0_[3] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[7] ),
        .I3(diff[3]),
        .I4(diff[1]),
        .I5(\data_out[12]_i_5_n_0 ),
        .O(\data_out[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_out[11]_i_1 
       (.I0(p_0_in),
        .I1(state__0[0]),
        .I2(\data_out[11]_i_2_n_0 ),
        .I3(state__0[1]),
        .I4(s_axis_tdata[11]),
        .O(\data_out[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[11]_i_2 
       (.I0(\data_out[11]_i_3_n_0 ),
        .I1(\data_out[12]_i_3_n_0 ),
        .I2(diff[4]),
        .I3(\data_out[11]_i_4_n_0 ),
        .I4(diff[0]),
        .I5(\data_out[12]_i_4_n_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[11]_i_4 
       (.I0(\data_out[11]_i_5_n_0 ),
        .I1(diff[1]),
        .I2(\data_out[13]_i_6_n_0 ),
        .O(\data_out[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_out[11]_i_5 
       (.I0(\data_in_reg_n_0_[4] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[0] ),
        .I3(diff[3]),
        .I4(\data_in_reg_n_0_[8] ),
        .O(\data_out[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_out[12]_i_1 
       (.I0(p_0_in),
        .I1(state__0[0]),
        .I2(\data_out[12]_i_2_n_0 ),
        .I3(state__0[1]),
        .I4(s_axis_tdata[12]),
        .O(\data_out[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[12]_i_2 
       (.I0(\data_out[12]_i_3_n_0 ),
        .I1(\data_out[13]_i_3_n_0 ),
        .I2(diff[4]),
        .I3(\data_out[12]_i_4_n_0 ),
        .I4(diff[0]),
        .I5(\data_out[13]_i_4_n_0 ),
        .O(\data_out[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \data_out[12]_i_3 
       (.I0(\data_in_reg_n_0_[13] ),
        .I1(diff[3]),
        .I2(diff[2]),
        .I3(diff[1]),
        .I4(p_0_in),
        .O(\data_out[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[12]_i_4 
       (.I0(\data_out[12]_i_5_n_0 ),
        .I1(diff[1]),
        .I2(\data_out[14]_i_3_n_0 ),
        .O(\data_out[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_out[12]_i_5 
       (.I0(\data_in_reg_n_0_[5] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[1] ),
        .I3(diff[3]),
        .I4(\data_in_reg_n_0_[9] ),
        .O(\data_out[12]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_out[13]_i_1 
       (.I0(p_0_in),
        .I1(state__0[0]),
        .I2(\data_out[13]_i_2_n_0 ),
        .I3(state__0[1]),
        .I4(s_axis_tdata[13]),
        .O(\data_out[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[13]_i_2 
       (.I0(\data_out[13]_i_3_n_0 ),
        .I1(p_0_in),
        .I2(diff[4]),
        .I3(\data_out[13]_i_4_n_0 ),
        .I4(diff[0]),
        .I5(\data_out[13]_i_5_n_0 ),
        .O(\data_out[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \data_out[13]_i_3 
       (.I0(\data_in_reg_n_0_[14] ),
        .I1(diff[3]),
        .I2(diff[2]),
        .I3(diff[1]),
        .I4(p_0_in),
        .O(\data_out[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[13]_i_4 
       (.I0(\data_out[13]_i_6_n_0 ),
        .I1(diff[1]),
        .I2(\data_out[15]_i_7_n_0 ),
        .O(\data_out[13]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[13]_i_5 
       (.I0(\data_out[14]_i_3_n_0 ),
        .I1(diff[1]),
        .I2(\data_out[15]_i_9_n_0 ),
        .O(\data_out[13]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_out[13]_i_6 
       (.I0(\data_in_reg_n_0_[6] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[2] ),
        .I3(diff[3]),
        .I4(\data_in_reg_n_0_[10] ),
        .O(\data_out[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6762FFFF67620000)) 
    \data_out[14]_i_1 
       (.I0(state__0[0]),
        .I1(p_0_in),
        .I2(diff[4]),
        .I3(\data_out[14]_i_2_n_0 ),
        .I4(state__0[1]),
        .I5(s_axis_tdata[14]),
        .O(\data_out[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[14]_i_2 
       (.I0(\data_out[14]_i_3_n_0 ),
        .I1(\data_out[15]_i_9_n_0 ),
        .I2(diff[0]),
        .I3(\data_out[15]_i_7_n_0 ),
        .I4(diff[1]),
        .I5(\data_out[15]_i_8_n_0 ),
        .O(\data_out[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \data_out[14]_i_3 
       (.I0(\data_in_reg_n_0_[7] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[3] ),
        .I3(diff[3]),
        .I4(\data_in_reg_n_0_[11] ),
        .O(\data_out[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[15]_i_10 
       (.I0(\data_in_reg_n_0_[3] ),
        .I1(\data_in_reg_n_0_[11] ),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[7] ),
        .I4(diff[3]),
        .I5(p_0_in),
        .O(\data_out[15]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_out[15]_i_11 
       (.I0(bitmask_and[13]),
        .I1(bitmask_and[1]),
        .I2(\data_out[15]_i_12_n_0 ),
        .I3(bitmask_and[12]),
        .I4(bitmask_and[10]),
        .O(\data_out[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \data_out[15]_i_12 
       (.I0(bitmask_and[4]),
        .I1(bitmask_and[9]),
        .I2(bitmask_and[6]),
        .I3(bitmask_and[7]),
        .I4(bitmask_and[3]),
        .I5(bitmask_and[0]),
        .O(\data_out[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \data_out[15]_i_2 
       (.I0(state__0[0]),
        .I1(p_0_in),
        .I2(diff[4]),
        .I3(\data_out[15]_i_5_n_0 ),
        .I4(state__0[1]),
        .I5(s_axis_tdata[15]),
        .O(\data_out[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF1FFF0FFE0EE)) 
    \data_out[15]_i_3 
       (.I0(bitmask_and[14]),
        .I1(bitmask_and[15]),
        .I2(data_out0),
        .I3(p_0_in),
        .I4(bitmask_and[11]),
        .I5(\data_out[15]_i_6_n_0 ),
        .O(\data_out[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[15]_i_5 
       (.I0(\data_out[15]_i_7_n_0 ),
        .I1(\data_out[15]_i_8_n_0 ),
        .I2(diff[0]),
        .I3(\data_out[15]_i_9_n_0 ),
        .I4(diff[1]),
        .I5(\data_out[15]_i_10_n_0 ),
        .O(\data_out[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FFFFFF00FEFE)) 
    \data_out[15]_i_6 
       (.I0(bitmask_and[8]),
        .I1(bitmask_and[5]),
        .I2(bitmask_and[2]),
        .I3(data_out0),
        .I4(p_0_in),
        .I5(\data_out[15]_i_11_n_0 ),
        .O(\data_out[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[15]_i_7 
       (.I0(\data_in_reg_n_0_[0] ),
        .I1(\data_in_reg_n_0_[8] ),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[4] ),
        .I4(diff[3]),
        .I5(\data_in_reg_n_0_[12] ),
        .O(\data_out[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[15]_i_8 
       (.I0(\data_in_reg_n_0_[2] ),
        .I1(\data_in_reg_n_0_[10] ),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[6] ),
        .I4(diff[3]),
        .I5(\data_in_reg_n_0_[14] ),
        .O(\data_out[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[15]_i_9 
       (.I0(\data_in_reg_n_0_[1] ),
        .I1(\data_in_reg_n_0_[9] ),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[5] ),
        .I4(diff[3]),
        .I5(\data_in_reg_n_0_[13] ),
        .O(\data_out[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_out[1]_i_1 
       (.I0(p_0_in),
        .I1(state__0[0]),
        .I2(\data_out[1]_i_2_n_0 ),
        .I3(state__0[1]),
        .I4(s_axis_tdata[1]),
        .O(\data_out[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[1]_i_2 
       (.I0(\data_out[1]_i_3_n_0 ),
        .I1(diff[0]),
        .I2(\data_out[2]_i_3_n_0 ),
        .I3(diff[4]),
        .I4(\data_out[1]_i_4_n_0 ),
        .O(\data_out[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[1]_i_3 
       (.I0(\data_out[15]_i_8_n_0 ),
        .I1(diff[1]),
        .I2(\data_out[3]_i_5_n_0 ),
        .O(\data_out[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \data_out[1]_i_4 
       (.I0(\data_in_reg_n_0_[0] ),
        .I1(diff[0]),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[1] ),
        .I4(diff[3]),
        .I5(diff[1]),
        .O(\data_out[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_out[2]_i_1 
       (.I0(p_0_in),
        .I1(state__0[0]),
        .I2(\data_out[2]_i_2_n_0 ),
        .I3(state__0[1]),
        .I4(s_axis_tdata[2]),
        .O(\data_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_2 
       (.I0(\data_out[2]_i_3_n_0 ),
        .I1(\data_out[3]_i_3_n_0 ),
        .I2(diff[4]),
        .I3(\data_out[2]_i_4_n_0 ),
        .I4(diff[0]),
        .I5(\data_out[3]_i_4_n_0 ),
        .O(\data_out[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[2]_i_3 
       (.I0(\data_out[15]_i_10_n_0 ),
        .I1(diff[1]),
        .I2(\data_out[4]_i_5_n_0 ),
        .O(\data_out[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \data_out[2]_i_4 
       (.I0(diff[2]),
        .I1(\data_in_reg_n_0_[1] ),
        .I2(diff[3]),
        .I3(diff[1]),
        .O(\data_out[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_out[3]_i_1 
       (.I0(p_0_in),
        .I1(state__0[0]),
        .I2(\data_out[3]_i_2_n_0 ),
        .I3(state__0[1]),
        .I4(s_axis_tdata[3]),
        .O(\data_out[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_2 
       (.I0(\data_out[3]_i_3_n_0 ),
        .I1(\data_out[4]_i_3_n_0 ),
        .I2(diff[4]),
        .I3(\data_out[3]_i_4_n_0 ),
        .I4(diff[0]),
        .I5(\data_out[4]_i_4_n_0 ),
        .O(\data_out[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[3]_i_3 
       (.I0(\data_out[3]_i_5_n_0 ),
        .I1(diff[1]),
        .I2(\data_out[5]_i_5_n_0 ),
        .O(\data_out[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \data_out[3]_i_4 
       (.I0(\data_in_reg_n_0_[0] ),
        .I1(diff[1]),
        .I2(diff[3]),
        .I3(\data_in_reg_n_0_[2] ),
        .I4(diff[2]),
        .O(\data_out[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_5 
       (.I0(\data_in_reg_n_0_[4] ),
        .I1(\data_in_reg_n_0_[12] ),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[8] ),
        .I4(diff[3]),
        .I5(p_0_in),
        .O(\data_out[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_out[4]_i_1 
       (.I0(p_0_in),
        .I1(state__0[0]),
        .I2(\data_out[4]_i_2_n_0 ),
        .I3(state__0[1]),
        .I4(s_axis_tdata[4]),
        .O(\data_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_2 
       (.I0(\data_out[4]_i_3_n_0 ),
        .I1(\data_out[5]_i_3_n_0 ),
        .I2(diff[4]),
        .I3(\data_out[4]_i_4_n_0 ),
        .I4(diff[0]),
        .I5(\data_out[5]_i_4_n_0 ),
        .O(\data_out[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[4]_i_3 
       (.I0(\data_out[4]_i_5_n_0 ),
        .I1(diff[1]),
        .I2(\data_out[6]_i_5_n_0 ),
        .O(\data_out[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \data_out[4]_i_4 
       (.I0(\data_in_reg_n_0_[1] ),
        .I1(diff[1]),
        .I2(diff[3]),
        .I3(\data_in_reg_n_0_[3] ),
        .I4(diff[2]),
        .O(\data_out[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_5 
       (.I0(\data_in_reg_n_0_[5] ),
        .I1(\data_in_reg_n_0_[13] ),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[9] ),
        .I4(diff[3]),
        .I5(p_0_in),
        .O(\data_out[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_out[5]_i_1 
       (.I0(p_0_in),
        .I1(state__0[0]),
        .I2(\data_out[5]_i_2_n_0 ),
        .I3(state__0[1]),
        .I4(s_axis_tdata[5]),
        .O(\data_out[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_2 
       (.I0(\data_out[5]_i_3_n_0 ),
        .I1(\data_out[6]_i_3_n_0 ),
        .I2(diff[4]),
        .I3(\data_out[5]_i_4_n_0 ),
        .I4(diff[0]),
        .I5(\data_out[6]_i_4_n_0 ),
        .O(\data_out[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[5]_i_3 
       (.I0(\data_out[5]_i_5_n_0 ),
        .I1(diff[1]),
        .I2(\data_out[7]_i_5_n_0 ),
        .O(\data_out[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \data_out[5]_i_4 
       (.I0(\data_in_reg_n_0_[2] ),
        .I1(diff[1]),
        .I2(\data_in_reg_n_0_[0] ),
        .I3(diff[2]),
        .I4(\data_in_reg_n_0_[4] ),
        .I5(diff[3]),
        .O(\data_out[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_5 
       (.I0(\data_in_reg_n_0_[6] ),
        .I1(\data_in_reg_n_0_[14] ),
        .I2(diff[2]),
        .I3(\data_in_reg_n_0_[10] ),
        .I4(diff[3]),
        .I5(p_0_in),
        .O(\data_out[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_out[6]_i_1 
       (.I0(p_0_in),
        .I1(state__0[0]),
        .I2(\data_out[6]_i_2_n_0 ),
        .I3(state__0[1]),
        .I4(s_axis_tdata[6]),
        .O(\data_out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_2 
       (.I0(\data_out[6]_i_3_n_0 ),
        .I1(\data_out[7]_i_3_n_0 ),
        .I2(diff[4]),
        .I3(\data_out[6]_i_4_n_0 ),
        .I4(diff[0]),
        .I5(\data_out[7]_i_4_n_0 ),
        .O(\data_out[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[6]_i_3 
       (.I0(\data_out[6]_i_5_n_0 ),
        .I1(diff[1]),
        .I2(\data_out[8]_i_5_n_0 ),
        .O(\data_out[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \data_out[6]_i_4 
       (.I0(\data_in_reg_n_0_[3] ),
        .I1(diff[1]),
        .I2(\data_in_reg_n_0_[1] ),
        .I3(diff[2]),
        .I4(\data_in_reg_n_0_[5] ),
        .I5(diff[3]),
        .O(\data_out[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[6]_i_5 
       (.I0(\data_in_reg_n_0_[7] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[11] ),
        .I3(diff[3]),
        .I4(p_0_in),
        .O(\data_out[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_out[7]_i_1 
       (.I0(p_0_in),
        .I1(state__0[0]),
        .I2(\data_out[7]_i_2_n_0 ),
        .I3(state__0[1]),
        .I4(s_axis_tdata[7]),
        .O(\data_out[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_2 
       (.I0(\data_out[7]_i_3_n_0 ),
        .I1(\data_out[8]_i_3_n_0 ),
        .I2(diff[4]),
        .I3(\data_out[7]_i_4_n_0 ),
        .I4(diff[0]),
        .I5(\data_out[8]_i_4_n_0 ),
        .O(\data_out[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_out[7]_i_3 
       (.I0(\data_out[7]_i_5_n_0 ),
        .I1(diff[1]),
        .I2(\data_out[9]_i_5_n_0 ),
        .O(\data_out[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \data_out[7]_i_4 
       (.I0(\data_in_reg_n_0_[0] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[4] ),
        .I3(diff[3]),
        .I4(diff[1]),
        .I5(\data_out[7]_i_6_n_0 ),
        .O(\data_out[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[7]_i_5 
       (.I0(\data_in_reg_n_0_[8] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[12] ),
        .I3(diff[3]),
        .I4(p_0_in),
        .O(\data_out[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \data_out[7]_i_6 
       (.I0(\data_in_reg_n_0_[2] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[6] ),
        .I3(diff[3]),
        .O(\data_out[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_out[8]_i_1 
       (.I0(p_0_in),
        .I1(state__0[0]),
        .I2(\data_out[8]_i_2_n_0 ),
        .I3(state__0[1]),
        .I4(s_axis_tdata[8]),
        .O(\data_out[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[8]_i_2 
       (.I0(\data_out[8]_i_3_n_0 ),
        .I1(\data_out[9]_i_3_n_0 ),
        .I2(diff[4]),
        .I3(\data_out[8]_i_4_n_0 ),
        .I4(diff[0]),
        .I5(\data_out[9]_i_4_n_0 ),
        .O(\data_out[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \data_out[8]_i_3 
       (.I0(\data_out[8]_i_5_n_0 ),
        .I1(diff[1]),
        .I2(\data_in_reg_n_0_[11] ),
        .I3(diff[3]),
        .I4(diff[2]),
        .I5(p_0_in),
        .O(\data_out[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \data_out[8]_i_4 
       (.I0(\data_in_reg_n_0_[1] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[5] ),
        .I3(diff[3]),
        .I4(diff[1]),
        .I5(\data_out[8]_i_6_n_0 ),
        .O(\data_out[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[8]_i_5 
       (.I0(\data_in_reg_n_0_[9] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[13] ),
        .I3(diff[3]),
        .I4(p_0_in),
        .O(\data_out[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \data_out[8]_i_6 
       (.I0(\data_in_reg_n_0_[3] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[7] ),
        .I3(diff[3]),
        .O(\data_out[8]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data_out[9]_i_1 
       (.I0(p_0_in),
        .I1(state__0[0]),
        .I2(\data_out[9]_i_2_n_0 ),
        .I3(state__0[1]),
        .I4(s_axis_tdata[9]),
        .O(\data_out[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[9]_i_2 
       (.I0(\data_out[9]_i_3_n_0 ),
        .I1(\data_out[10]_i_3_n_0 ),
        .I2(diff[4]),
        .I3(\data_out[9]_i_4_n_0 ),
        .I4(diff[0]),
        .I5(\data_out[10]_i_4_n_0 ),
        .O(\data_out[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \data_out[9]_i_3 
       (.I0(\data_out[9]_i_5_n_0 ),
        .I1(diff[1]),
        .I2(\data_in_reg_n_0_[12] ),
        .I3(diff[3]),
        .I4(diff[2]),
        .I5(p_0_in),
        .O(\data_out[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \data_out[9]_i_4 
       (.I0(\data_in_reg_n_0_[2] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[6] ),
        .I3(diff[3]),
        .I4(diff[1]),
        .I5(\data_out[11]_i_5_n_0 ),
        .O(\data_out[9]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[9]_i_5 
       (.I0(\data_in_reg_n_0_[10] ),
        .I1(diff[2]),
        .I2(\data_in_reg_n_0_[14] ),
        .I3(diff[3]),
        .I4(p_0_in),
        .O(\data_out[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(aclk),
        .CE(data_out0_1),
        .D(\data_out[0]_i_1_n_0 ),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[10] 
       (.C(aclk),
        .CE(data_out0_1),
        .D(\data_out[10]_i_1_n_0 ),
        .Q(m_axis_tdata[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[11] 
       (.C(aclk),
        .CE(data_out0_1),
        .D(\data_out[11]_i_1_n_0 ),
        .Q(m_axis_tdata[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[12] 
       (.C(aclk),
        .CE(data_out0_1),
        .D(\data_out[12]_i_1_n_0 ),
        .Q(m_axis_tdata[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[13] 
       (.C(aclk),
        .CE(data_out0_1),
        .D(\data_out[13]_i_1_n_0 ),
        .Q(m_axis_tdata[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[14] 
       (.C(aclk),
        .CE(data_out0_1),
        .D(\data_out[14]_i_1_n_0 ),
        .Q(m_axis_tdata[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[15] 
       (.C(aclk),
        .CE(data_out0_1),
        .D(\data_out[15]_i_2_n_0 ),
        .Q(m_axis_tdata[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(aclk),
        .CE(data_out0_1),
        .D(\data_out[1]_i_1_n_0 ),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(aclk),
        .CE(data_out0_1),
        .D(\data_out[2]_i_1_n_0 ),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(aclk),
        .CE(data_out0_1),
        .D(\data_out[3]_i_1_n_0 ),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(aclk),
        .CE(data_out0_1),
        .D(\data_out[4]_i_1_n_0 ),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(aclk),
        .CE(data_out0_1),
        .D(\data_out[5]_i_1_n_0 ),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(aclk),
        .CE(data_out0_1),
        .D(\data_out[6]_i_1_n_0 ),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(aclk),
        .CE(data_out0_1),
        .D(\data_out[7]_i_1_n_0 ),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[8] 
       (.C(aclk),
        .CE(data_out0_1),
        .D(\data_out[8]_i_1_n_0 ),
        .Q(m_axis_tdata[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[9] 
       (.C(aclk),
        .CE(data_out0_1),
        .D(\data_out[9]_i_1_n_0 ),
        .Q(m_axis_tdata[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \diff[4]_i_1 
       (.I0(tlast_expected_0),
        .I1(aresetn),
        .O(tlast_sampled0));
  LUT6 #(
    .INIT(64'h0000000040040000)) 
    \diff[4]_i_3 
       (.I0(state__0[1]),
        .I1(s_axis_tvalid),
        .I2(tlast_expected),
        .I3(s_axis_tlast),
        .I4(state__0[0]),
        .I5(state__0[2]),
        .O(tlast_expected_0));
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
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    m_axis_tlast_INST_0
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(tlast_sampled),
        .O(m_axis_tlast));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h10)) 
    m_axis_tvalid_INST_0
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .O(m_axis_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h04)) 
    s_axis_tready_INST_0
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .O(s_axis_tready));
  LUT6 #(
    .INIT(64'hFFFFBFFF00000400)) 
    tlast_expected_i_1
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(s_axis_tlast),
        .I3(s_axis_tvalid),
        .I4(state__0[1]),
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
  bd_try_volume_controller_0_0_volume_led_ctrl_v2 vol_led_ctrl
       (.D(state1),
        .\FSM_sequential_state_reg[0] (vol_led_ctrl_n_0),
        .\FSM_sequential_state_reg[1] (\FSM_sequential_state[1]_i_3_n_0 ),
        .\FSM_sequential_state_reg[2] (vol_led_ctrl_n_1),
        .\FSM_sequential_state_reg[2]_0 (\FSM_sequential_state[2]_i_4_n_0 ),
        .\FSM_sequential_state_reg[2]_1 (\FSM_sequential_state[2]_i_5_n_0 ),
        .aclk(aclk),
        .aresetn(aresetn),
        .aresetn_0(vol_led_ctrl_n_8),
        .data_out0_1(data_out0_1),
        .\data_out_reg[0] (\data_out[15]_i_3_n_0 ),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid),
        .state__0(state__0),
        .tlast_expected(tlast_expected),
        .volume_down(volume_down),
        .volume_level(volume_level),
        .volume_up(volume_up));
endmodule

(* ORIG_REF_NAME = "volume_led_ctrl_v2" *) 
module bd_try_volume_controller_0_0_volume_led_ctrl_v2
   (\FSM_sequential_state_reg[0] ,
    \FSM_sequential_state_reg[2] ,
    data_out0_1,
    D,
    aresetn_0,
    volume_level,
    volume_up,
    volume_down,
    state__0,
    \FSM_sequential_state_reg[2]_0 ,
    \FSM_sequential_state_reg[2]_1 ,
    \FSM_sequential_state_reg[1] ,
    \data_out_reg[0] ,
    aresetn,
    s_axis_tvalid,
    tlast_expected,
    s_axis_tlast,
    aclk);
  output \FSM_sequential_state_reg[0] ;
  output \FSM_sequential_state_reg[2] ;
  output data_out0_1;
  output [4:0]D;
  output aresetn_0;
  output [14:0]volume_level;
  input volume_up;
  input volume_down;
  input [2:0]state__0;
  input \FSM_sequential_state_reg[2]_0 ;
  input \FSM_sequential_state_reg[2]_1 ;
  input \FSM_sequential_state_reg[1] ;
  input \data_out_reg[0] ;
  input aresetn;
  input s_axis_tvalid;
  input tlast_expected;
  input s_axis_tlast;
  input aclk;

  wire [4:0]D;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[2] ;
  wire \FSM_sequential_state_reg[2]_0 ;
  wire \FSM_sequential_state_reg[2]_1 ;
  wire aclk;
  wire aresetn;
  wire aresetn_0;
  wire data_out0_1;
  wire \data_out[15]_i_4_n_0 ;
  wire \data_out_reg[0] ;
  wire \led_out[10]_i_1_n_0 ;
  wire \led_out[11]_i_1_n_0 ;
  wire \led_out[12]_i_1_n_0 ;
  wire \led_out[13]_i_1_n_0 ;
  wire \led_out[14]_i_1_n_0 ;
  wire \led_out[15]_i_1_n_0 ;
  wire \led_out[9]_i_1_n_0 ;
  wire [7:1]p_1_in;
  wire s_axis_tlast;
  wire s_axis_tvalid;
  wire [2:0]state__0;
  wire tlast_expected;
  wire [3:0]volume;
  wire volume_down;
  wire [14:0]volume_level;
  wire [3:3]volume_uns_var;
  wire [2:0]volume_uns_var__0;
  wire volume_up;

  LUT5 #(
    .INIT(32'h0CFF0A00)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg[1] ),
        .I2(state__0[2]),
        .I3(\FSM_sequential_state_reg[2]_1 ),
        .I4(state__0[1]),
        .O(\FSM_sequential_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBFFF0000)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(volume[3]),
        .I1(volume[1]),
        .I2(volume[0]),
        .I3(volume[2]),
        .I4(state__0[0]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFF8080000)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state__0[0]),
        .I1(\FSM_sequential_state[2]_i_3_n_0 ),
        .I2(state__0[1]),
        .I3(\FSM_sequential_state_reg[2]_0 ),
        .I4(\FSM_sequential_state_reg[2]_1 ),
        .I5(state__0[2]),
        .O(\FSM_sequential_state_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(aresetn),
        .O(aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(volume[2]),
        .I1(volume[1]),
        .I2(volume[0]),
        .I3(volume[3]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4555450000000000)) 
    \data_out[15]_i_1 
       (.I0(state__0[2]),
        .I1(\data_out_reg[0] ),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(\data_out[15]_i_4_n_0 ),
        .I5(aresetn),
        .O(data_out0_1));
  LUT5 #(
    .INIT(32'h80200000)) 
    \data_out[15]_i_4 
       (.I0(s_axis_tvalid),
        .I1(tlast_expected),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(s_axis_tlast),
        .I4(state__0[0]),
        .O(\data_out[15]_i_4_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \diff[2]_i_1 
       (.I0(volume[2]),
        .I1(volume[0]),
        .I2(volume[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h9555)) 
    \diff[3]_i_1 
       (.I0(volume[3]),
        .I1(volume[1]),
        .I2(volume[0]),
        .I3(volume[2]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h007F)) 
    \diff[4]_i_2 
       (.I0(volume[2]),
        .I1(volume[0]),
        .I2(volume[1]),
        .I3(volume[3]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAA88A88088)) 
    \led_out[10]_i_1 
       (.I0(volume[3]),
        .I1(volume[1]),
        .I2(volume_up),
        .I3(volume_down),
        .I4(volume[0]),
        .I5(volume[2]),
        .O(\led_out[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80880080)) 
    \led_out[11]_i_1 
       (.I0(volume[3]),
        .I1(volume[1]),
        .I2(volume_up),
        .I3(volume_down),
        .I4(volume[0]),
        .I5(volume[2]),
        .O(\led_out[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888A88888808888)) 
    \led_out[12]_i_1 
       (.I0(volume[3]),
        .I1(volume[2]),
        .I2(volume[1]),
        .I3(volume_up),
        .I4(volume_down),
        .I5(volume[0]),
        .O(\led_out[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8AA88A800000000)) 
    \led_out[13]_i_1 
       (.I0(volume[3]),
        .I1(volume[1]),
        .I2(volume_up),
        .I3(volume_down),
        .I4(volume[0]),
        .I5(volume[2]),
        .O(\led_out[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88A8808800000000)) 
    \led_out[14]_i_1 
       (.I0(volume[3]),
        .I1(volume[1]),
        .I2(volume_up),
        .I3(volume_down),
        .I4(volume[0]),
        .I5(volume[2]),
        .O(\led_out[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8088008000000000)) 
    \led_out[15]_i_1 
       (.I0(volume[3]),
        .I1(volume[1]),
        .I2(volume_up),
        .I3(volume_down),
        .I4(volume[0]),
        .I5(volume[2]),
        .O(\led_out[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFAE)) 
    \led_out[1]_i_1 
       (.I0(volume[2]),
        .I1(volume[0]),
        .I2(volume_down),
        .I3(volume_up),
        .I4(volume[1]),
        .I5(volume[3]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFAEAA)) 
    \led_out[2]_i_1 
       (.I0(volume[2]),
        .I1(volume[0]),
        .I2(volume_down),
        .I3(volume_up),
        .I4(volume[1]),
        .I5(volume[3]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFAEAAAA)) 
    \led_out[3]_i_1 
       (.I0(volume[2]),
        .I1(volume[0]),
        .I2(volume_down),
        .I3(volume_up),
        .I4(volume[1]),
        .I5(volume[3]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFB2000)) 
    \led_out[4]_i_1 
       (.I0(volume[0]),
        .I1(volume_down),
        .I2(volume_up),
        .I3(volume[1]),
        .I4(volume[2]),
        .I5(volume[3]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAA8A08)) 
    \led_out[5]_i_1 
       (.I0(volume[2]),
        .I1(volume[0]),
        .I2(volume_down),
        .I3(volume_up),
        .I4(volume[1]),
        .I5(volume[3]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA8A0800)) 
    \led_out[6]_i_1 
       (.I0(volume[2]),
        .I1(volume[0]),
        .I2(volume_down),
        .I3(volume_up),
        .I4(volume[1]),
        .I5(volume[3]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFF8A080000)) 
    \led_out[7]_i_1 
       (.I0(volume[2]),
        .I1(volume[0]),
        .I2(volume_down),
        .I3(volume_up),
        .I4(volume[1]),
        .I5(volume[3]),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hAEAAAAAAAAAAAA8A)) 
    \led_out[8]_i_1 
       (.I0(volume[3]),
        .I1(volume[0]),
        .I2(volume_down),
        .I3(volume_up),
        .I4(volume[1]),
        .I5(volume[2]),
        .O(volume_uns_var));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8AA88A8)) 
    \led_out[9]_i_1 
       (.I0(volume[3]),
        .I1(volume[1]),
        .I2(volume_up),
        .I3(volume_down),
        .I4(volume[0]),
        .I5(volume[2]),
        .O(\led_out[9]_i_1_n_0 ));
  FDRE \led_out_reg[10] 
       (.C(aclk),
        .CE(aresetn),
        .D(\led_out[10]_i_1_n_0 ),
        .Q(volume_level[9]),
        .R(1'b0));
  FDRE \led_out_reg[11] 
       (.C(aclk),
        .CE(aresetn),
        .D(\led_out[11]_i_1_n_0 ),
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
        .D(\led_out[13]_i_1_n_0 ),
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
        .D(volume_uns_var),
        .Q(volume_level[7]),
        .R(1'b0));
  FDRE \led_out_reg[9] 
       (.C(aclk),
        .CE(aresetn),
        .D(\led_out[9]_i_1_n_0 ),
        .Q(volume_level[8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0F00F0E8F0FF0F0)) 
    \volume_uns[0]_i_1 
       (.I0(volume[3]),
        .I1(volume[2]),
        .I2(volume[0]),
        .I3(volume[1]),
        .I4(volume_up),
        .I5(volume_down),
        .O(volume_uns_var__0[0]));
  LUT6 #(
    .INIT(64'hFF8FF0FF00F00E00)) 
    \volume_uns[1]_i_1 
       (.I0(volume[3]),
        .I1(volume[2]),
        .I2(volume[0]),
        .I3(volume_down),
        .I4(volume_up),
        .I5(volume[1]),
        .O(volume_uns_var__0[1]));
  LUT6 #(
    .INIT(64'hCCCCBCCCCCC2CCCC)) 
    \volume_uns[2]_i_1 
       (.I0(volume[3]),
        .I1(volume[2]),
        .I2(volume[1]),
        .I3(volume_up),
        .I4(volume_down),
        .I5(volume[0]),
        .O(volume_uns_var__0[2]));
  FDPE #(
    .INIT(1'b1)) 
    \volume_uns_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(volume_uns_var__0[0]),
        .PRE(aresetn_0),
        .Q(volume[0]));
  FDPE #(
    .INIT(1'b1)) 
    \volume_uns_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(volume_uns_var__0[1]),
        .PRE(aresetn_0),
        .Q(volume[1]));
  FDPE #(
    .INIT(1'b1)) 
    \volume_uns_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(volume_uns_var__0[2]),
        .PRE(aresetn_0),
        .Q(volume[2]));
  FDCE #(
    .INIT(1'b0)) 
    \volume_uns_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(volume_uns_var),
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

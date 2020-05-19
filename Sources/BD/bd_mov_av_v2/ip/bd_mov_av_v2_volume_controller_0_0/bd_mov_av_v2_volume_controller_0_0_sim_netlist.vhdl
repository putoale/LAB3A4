-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue May 19 21:13:23 2020
-- Host        : DESKTOP-O39JAIK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Vivado_DESD_Project/Project/Personal/Lab3_A4/LAB3A4/Sources/BD/bd_mov_av_v2/ip/bd_mov_av_v2_volume_controller_0_0/bd_mov_av_v2_volume_controller_0_0_sim_netlist.vhdl
-- Design      : bd_mov_av_v2_volume_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_mov_av_v2_volume_controller_0_0_volume_controller is
  port (
    m_axis_tvalid : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    volume_level : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    volume_up : in STD_LOGIC;
    volume_down : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_mov_av_v2_volume_controller_0_0_volume_controller : entity is "volume_controller";
end bd_mov_av_v2_volume_controller_0_0_volume_controller;

architecture STRUCTURE of bd_mov_av_v2_volume_controller_0_0_volume_controller is
  signal \ARG__0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__0_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__0_n_1\ : STD_LOGIC;
  signal \ARG__0_carry__0_n_2\ : STD_LOGIC;
  signal \ARG__0_carry__0_n_3\ : STD_LOGIC;
  signal \ARG__0_carry__0_n_4\ : STD_LOGIC;
  signal \ARG__0_carry__0_n_5\ : STD_LOGIC;
  signal \ARG__0_carry__0_n_6\ : STD_LOGIC;
  signal \ARG__0_carry__0_n_7\ : STD_LOGIC;
  signal \ARG__0_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__1_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__1_n_1\ : STD_LOGIC;
  signal \ARG__0_carry__1_n_2\ : STD_LOGIC;
  signal \ARG__0_carry__1_n_3\ : STD_LOGIC;
  signal \ARG__0_carry__1_n_4\ : STD_LOGIC;
  signal \ARG__0_carry__1_n_5\ : STD_LOGIC;
  signal \ARG__0_carry__1_n_6\ : STD_LOGIC;
  signal \ARG__0_carry__1_n_7\ : STD_LOGIC;
  signal \ARG__0_carry__2_i_10_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__2_i_11_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__2_i_12_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__2_i_9_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__2_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__2_n_1\ : STD_LOGIC;
  signal \ARG__0_carry__2_n_2\ : STD_LOGIC;
  signal \ARG__0_carry__2_n_3\ : STD_LOGIC;
  signal \ARG__0_carry__2_n_4\ : STD_LOGIC;
  signal \ARG__0_carry__2_n_5\ : STD_LOGIC;
  signal \ARG__0_carry__2_n_6\ : STD_LOGIC;
  signal \ARG__0_carry__2_n_7\ : STD_LOGIC;
  signal \ARG__0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \ARG__0_carry__3_n_1\ : STD_LOGIC;
  signal \ARG__0_carry__3_n_3\ : STD_LOGIC;
  signal \ARG__0_carry__3_n_6\ : STD_LOGIC;
  signal \ARG__0_carry__3_n_7\ : STD_LOGIC;
  signal \ARG__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \ARG__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \ARG__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \ARG__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \ARG__0_carry_i_5_n_0\ : STD_LOGIC;
  signal \ARG__0_carry_i_6_n_0\ : STD_LOGIC;
  signal \ARG__0_carry_i_7_n_0\ : STD_LOGIC;
  signal \ARG__0_carry_i_8_n_0\ : STD_LOGIC;
  signal \ARG__0_carry_n_0\ : STD_LOGIC;
  signal \ARG__0_carry_n_1\ : STD_LOGIC;
  signal \ARG__0_carry_n_2\ : STD_LOGIC;
  signal \ARG__0_carry_n_3\ : STD_LOGIC;
  signal \ARG__0_carry_n_4\ : STD_LOGIC;
  signal \ARG__0_carry_n_5\ : STD_LOGIC;
  signal \ARG__0_carry_n_6\ : STD_LOGIC;
  signal \ARG__0_carry_n_7\ : STD_LOGIC;
  signal \ARG__53_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__0_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__0_n_1\ : STD_LOGIC;
  signal \ARG__53_carry__0_n_2\ : STD_LOGIC;
  signal \ARG__53_carry__0_n_3\ : STD_LOGIC;
  signal \ARG__53_carry__0_n_4\ : STD_LOGIC;
  signal \ARG__53_carry__0_n_5\ : STD_LOGIC;
  signal \ARG__53_carry__0_n_6\ : STD_LOGIC;
  signal \ARG__53_carry__0_n_7\ : STD_LOGIC;
  signal \ARG__53_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__1_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__1_n_1\ : STD_LOGIC;
  signal \ARG__53_carry__1_n_2\ : STD_LOGIC;
  signal \ARG__53_carry__1_n_3\ : STD_LOGIC;
  signal \ARG__53_carry__1_n_4\ : STD_LOGIC;
  signal \ARG__53_carry__1_n_5\ : STD_LOGIC;
  signal \ARG__53_carry__1_n_6\ : STD_LOGIC;
  signal \ARG__53_carry__1_n_7\ : STD_LOGIC;
  signal \ARG__53_carry__2_i_10_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__2_i_11_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__2_i_12_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__2_i_9_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__2_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__2_n_1\ : STD_LOGIC;
  signal \ARG__53_carry__2_n_2\ : STD_LOGIC;
  signal \ARG__53_carry__2_n_3\ : STD_LOGIC;
  signal \ARG__53_carry__2_n_4\ : STD_LOGIC;
  signal \ARG__53_carry__2_n_5\ : STD_LOGIC;
  signal \ARG__53_carry__2_n_7\ : STD_LOGIC;
  signal \ARG__53_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \ARG__53_carry__3_n_2\ : STD_LOGIC;
  signal \ARG__53_carry__3_n_3\ : STD_LOGIC;
  signal \ARG__53_carry__3_n_6\ : STD_LOGIC;
  signal \ARG__53_carry__3_n_7\ : STD_LOGIC;
  signal \ARG__53_carry_i_1_n_0\ : STD_LOGIC;
  signal \ARG__53_carry_i_2_n_0\ : STD_LOGIC;
  signal \ARG__53_carry_i_3_n_0\ : STD_LOGIC;
  signal \ARG__53_carry_i_4_n_0\ : STD_LOGIC;
  signal \ARG__53_carry_i_5_n_0\ : STD_LOGIC;
  signal \ARG__53_carry_n_0\ : STD_LOGIC;
  signal \ARG__53_carry_n_1\ : STD_LOGIC;
  signal \ARG__53_carry_n_2\ : STD_LOGIC;
  signal \ARG__53_carry_n_3\ : STD_LOGIC;
  signal \ARG__53_carry_n_4\ : STD_LOGIC;
  signal \ARG__53_carry_n_5\ : STD_LOGIC;
  signal \ARG__53_carry_n_6\ : STD_LOGIC;
  signal \ARG__53_carry_n_7\ : STD_LOGIC;
  signal B : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_n_1\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_n_2\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_n_3\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_n_4\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_n_5\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_n_6\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__0_n_7\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_n_1\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_n_2\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_n_3\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_n_4\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_n_5\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_n_6\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__1_n_7\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_n_2\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_n_3\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_n_5\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_n_6\ : STD_LOGIC;
  signal \SHIFT_RIGHT3_carry__2_n_7\ : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_i_6_n_0 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_i_7_n_0 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_i_8_n_0 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_i_9_n_0 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_n_0 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_n_1 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_n_2 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_n_3 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_n_4 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_n_5 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_n_6 : STD_LOGIC;
  signal SHIFT_RIGHT3_carry_n_7 : STD_LOGIC;
  signal SHIFT_RIGHT4 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal data_in0 : STD_LOGIC;
  signal \data_in_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[9]\ : STD_LOGIC;
  signal data_out : STD_LOGIC;
  signal data_out0 : STD_LOGIC;
  signal data_out12_in : STD_LOGIC;
  signal data_out1_carry_i_1_n_0 : STD_LOGIC;
  signal data_out1_carry_i_2_n_0 : STD_LOGIC;
  signal data_out1_carry_i_3_n_0 : STD_LOGIC;
  signal data_out1_carry_i_4_n_0 : STD_LOGIC;
  signal data_out1_carry_i_5_n_0 : STD_LOGIC;
  signal data_out1_carry_n_2 : STD_LOGIC;
  signal data_out1_carry_n_3 : STD_LOGIC;
  signal \data_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_10_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_11_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_9_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[8]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[8]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[8]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[8]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[8]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[8]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[8]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_4_n_0\ : STD_LOGIC;
  signal diff : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal p_0_out0 : STD_LOGIC;
  signal plusOp0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^s_axis_tready\ : STD_LOGIC;
  signal tlast_expected : STD_LOGIC;
  signal tlast_expected_i_1_n_0 : STD_LOGIC;
  signal tlast_sampled : STD_LOGIC;
  signal tlast_sampled0 : STD_LOGIC;
  signal \volume[0]_i_1_n_0\ : STD_LOGIC;
  signal \volume[1]_i_1_n_0\ : STD_LOGIC;
  signal \volume[2]_i_1_n_0\ : STD_LOGIC;
  signal \volume[3]_i_1_n_0\ : STD_LOGIC;
  signal volume_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ARG__0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_ARG__0_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_ARG__53_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \NLW_ARG__53_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_ARG__53_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_SHIFT_RIGHT3_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_SHIFT_RIGHT3_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_data_out1_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_data_out1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ARG__0_carry__0_i_10\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \ARG__0_carry__0_i_11\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \ARG__0_carry__0_i_12\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \ARG__0_carry__0_i_9\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ARG__0_carry__1_i_10\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ARG__0_carry__1_i_12\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \ARG__0_carry__1_i_9\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \ARG__0_carry__2_i_10\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \ARG__0_carry__2_i_11\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \ARG__0_carry__2_i_12\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \ARG__0_carry__2_i_9\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ARG__0_carry_i_8\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ARG__53_carry__2_i_10\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ARG__53_carry__2_i_11\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ARG__53_carry__2_i_12\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ARG__53_carry__2_i_9\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \ARG__53_carry__3_i_6\ : label is "soft_lutpair6";
  attribute HLUTNM : string;
  attribute HLUTNM of \ARG__53_carry_i_1\ : label is "lutpair0";
  attribute HLUTNM of \ARG__53_carry_i_4\ : label is "lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "idle:0001,receive_data:0010,multiply:0100,send_data:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "idle:0001,receive_data:0010,multiply:0100,send_data:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "idle:0001,receive_data:0010,multiply:0100,send_data:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "idle:0001,receive_data:0010,multiply:0100,send_data:1000";
  attribute SOFT_HLUTNM of \data_out[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_out[10]_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data_out[10]_i_5\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_out[10]_i_6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out[11]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out[11]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[11]_i_5\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data_out[12]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[12]_i_5\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data_out[13]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out[13]_i_5\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \data_out[14]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out[14]_i_7\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data_out[14]_i_8\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_out[15]_i_10\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[15]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_out[15]_i_5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_out[15]_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out[1]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out[2]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data_out[3]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \data_out[3]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_out[4]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_out[4]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_out[5]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_out[5]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_out[6]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_out[7]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data_out[7]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out[7]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[7]_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out[8]_i_4\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \data_out[9]_i_4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \diff[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \diff[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \diff[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \diff[4]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \volume_level[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \volume_level[2]_i_1\ : label is "soft_lutpair0";
begin
  m_axis_tvalid <= \^m_axis_tvalid\;
  s_axis_tready <= \^s_axis_tready\;
\ARG__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ARG__0_carry_n_0\,
      CO(2) => \ARG__0_carry_n_1\,
      CO(1) => \ARG__0_carry_n_2\,
      CO(0) => \ARG__0_carry_n_3\,
      CYINIT => '0',
      DI(3) => \ARG__0_carry_i_1_n_0\,
      DI(2) => \ARG__0_carry_i_2_n_0\,
      DI(1) => \ARG__0_carry_i_3_n_0\,
      DI(0) => '0',
      O(3) => \ARG__0_carry_n_4\,
      O(2) => \ARG__0_carry_n_5\,
      O(1) => \ARG__0_carry_n_6\,
      O(0) => \ARG__0_carry_n_7\,
      S(3) => \ARG__0_carry_i_4_n_0\,
      S(2) => \ARG__0_carry_i_5_n_0\,
      S(1) => \ARG__0_carry_i_6_n_0\,
      S(0) => \ARG__0_carry_i_7_n_0\
    );
\ARG__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG__0_carry_n_0\,
      CO(3) => \ARG__0_carry__0_n_0\,
      CO(2) => \ARG__0_carry__0_n_1\,
      CO(1) => \ARG__0_carry__0_n_2\,
      CO(0) => \ARG__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \ARG__0_carry__0_i_1_n_0\,
      DI(2) => \ARG__0_carry__0_i_2_n_0\,
      DI(1) => \ARG__0_carry__0_i_3_n_0\,
      DI(0) => \ARG__0_carry__0_i_4_n_0\,
      O(3) => \ARG__0_carry__0_n_4\,
      O(2) => \ARG__0_carry__0_n_5\,
      O(1) => \ARG__0_carry__0_n_6\,
      O(0) => \ARG__0_carry__0_n_7\,
      S(3) => \ARG__0_carry__0_i_5_n_0\,
      S(2) => \ARG__0_carry__0_i_6_n_0\,
      S(1) => \ARG__0_carry__0_i_7_n_0\,
      S(0) => \ARG__0_carry__0_i_8_n_0\
    );
\ARG__0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => diff(2),
      I1 => \data_in_reg_n_0_[4]\,
      I2 => diff(1),
      I3 => \data_in_reg_n_0_[5]\,
      I4 => diff(0),
      I5 => \data_in_reg_n_0_[6]\,
      O => \ARG__0_carry__0_i_1_n_0\
    );
\ARG__0_carry__0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_in_reg_n_0_[5]\,
      I1 => diff(1),
      O => \ARG__0_carry__0_i_10_n_0\
    );
\ARG__0_carry__0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_in_reg_n_0_[4]\,
      I1 => diff(1),
      O => \ARG__0_carry__0_i_11_n_0\
    );
\ARG__0_carry__0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_in_reg_n_0_[3]\,
      I1 => diff(1),
      O => \ARG__0_carry__0_i_12_n_0\
    );
\ARG__0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => diff(2),
      I1 => \data_in_reg_n_0_[3]\,
      I2 => diff(1),
      I3 => \data_in_reg_n_0_[4]\,
      I4 => diff(0),
      I5 => \data_in_reg_n_0_[5]\,
      O => \ARG__0_carry__0_i_2_n_0\
    );
\ARG__0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => diff(2),
      I1 => \data_in_reg_n_0_[2]\,
      I2 => diff(1),
      I3 => \data_in_reg_n_0_[3]\,
      I4 => diff(0),
      I5 => \data_in_reg_n_0_[4]\,
      O => \ARG__0_carry__0_i_3_n_0\
    );
\ARG__0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => diff(2),
      I1 => \data_in_reg_n_0_[1]\,
      I2 => diff(1),
      I3 => \data_in_reg_n_0_[2]\,
      I4 => diff(0),
      I5 => \data_in_reg_n_0_[3]\,
      O => \ARG__0_carry__0_i_4_n_0\
    );
\ARG__0_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \ARG__0_carry__0_i_1_n_0\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[5]\,
      I3 => \ARG__0_carry__0_i_9_n_0\,
      I4 => diff(0),
      I5 => \data_in_reg_n_0_[7]\,
      O => \ARG__0_carry__0_i_5_n_0\
    );
\ARG__0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \ARG__0_carry__0_i_2_n_0\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[4]\,
      I3 => \ARG__0_carry__0_i_10_n_0\,
      I4 => diff(0),
      I5 => \data_in_reg_n_0_[6]\,
      O => \ARG__0_carry__0_i_6_n_0\
    );
\ARG__0_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \ARG__0_carry__0_i_3_n_0\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[3]\,
      I3 => \ARG__0_carry__0_i_11_n_0\,
      I4 => diff(0),
      I5 => \data_in_reg_n_0_[5]\,
      O => \ARG__0_carry__0_i_7_n_0\
    );
\ARG__0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \ARG__0_carry__0_i_4_n_0\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[2]\,
      I3 => \ARG__0_carry__0_i_12_n_0\,
      I4 => diff(0),
      I5 => \data_in_reg_n_0_[4]\,
      O => \ARG__0_carry__0_i_8_n_0\
    );
\ARG__0_carry__0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_in_reg_n_0_[6]\,
      I1 => diff(1),
      O => \ARG__0_carry__0_i_9_n_0\
    );
\ARG__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG__0_carry__0_n_0\,
      CO(3) => \ARG__0_carry__1_n_0\,
      CO(2) => \ARG__0_carry__1_n_1\,
      CO(1) => \ARG__0_carry__1_n_2\,
      CO(0) => \ARG__0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \ARG__0_carry__1_i_1_n_0\,
      DI(2) => \ARG__0_carry__1_i_2_n_0\,
      DI(1) => \ARG__0_carry__1_i_3_n_0\,
      DI(0) => \ARG__0_carry__1_i_4_n_0\,
      O(3) => \ARG__0_carry__1_n_4\,
      O(2) => \ARG__0_carry__1_n_5\,
      O(1) => \ARG__0_carry__1_n_6\,
      O(0) => \ARG__0_carry__1_n_7\,
      S(3) => \ARG__0_carry__1_i_5_n_0\,
      S(2) => \ARG__0_carry__1_i_6_n_0\,
      S(1) => \ARG__0_carry__1_i_7_n_0\,
      S(0) => \ARG__0_carry__1_i_8_n_0\
    );
\ARG__0_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => diff(2),
      I1 => \data_in_reg_n_0_[8]\,
      I2 => diff(1),
      I3 => \data_in_reg_n_0_[9]\,
      I4 => diff(0),
      I5 => \data_in_reg_n_0_[10]\,
      O => \ARG__0_carry__1_i_1_n_0\
    );
\ARG__0_carry__1_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_in_reg_n_0_[9]\,
      I1 => diff(1),
      O => \ARG__0_carry__1_i_10_n_0\
    );
\ARG__0_carry__1_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_in_reg_n_0_[8]\,
      I1 => diff(1),
      O => \ARG__0_carry__1_i_11_n_0\
    );
\ARG__0_carry__1_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_in_reg_n_0_[7]\,
      I1 => diff(1),
      O => \ARG__0_carry__1_i_12_n_0\
    );
\ARG__0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => diff(2),
      I1 => \data_in_reg_n_0_[7]\,
      I2 => diff(1),
      I3 => \data_in_reg_n_0_[8]\,
      I4 => diff(0),
      I5 => \data_in_reg_n_0_[9]\,
      O => \ARG__0_carry__1_i_2_n_0\
    );
\ARG__0_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => diff(2),
      I1 => \data_in_reg_n_0_[6]\,
      I2 => diff(1),
      I3 => \data_in_reg_n_0_[7]\,
      I4 => diff(0),
      I5 => \data_in_reg_n_0_[8]\,
      O => \ARG__0_carry__1_i_3_n_0\
    );
\ARG__0_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => diff(2),
      I1 => \data_in_reg_n_0_[5]\,
      I2 => diff(1),
      I3 => \data_in_reg_n_0_[6]\,
      I4 => diff(0),
      I5 => \data_in_reg_n_0_[7]\,
      O => \ARG__0_carry__1_i_4_n_0\
    );
\ARG__0_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \ARG__0_carry__1_i_1_n_0\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[9]\,
      I3 => \ARG__0_carry__1_i_9_n_0\,
      I4 => diff(0),
      I5 => \data_in_reg_n_0_[11]\,
      O => \ARG__0_carry__1_i_5_n_0\
    );
\ARG__0_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \ARG__0_carry__1_i_2_n_0\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[8]\,
      I3 => \ARG__0_carry__1_i_10_n_0\,
      I4 => diff(0),
      I5 => \data_in_reg_n_0_[10]\,
      O => \ARG__0_carry__1_i_6_n_0\
    );
\ARG__0_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \ARG__0_carry__1_i_3_n_0\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[7]\,
      I3 => \ARG__0_carry__1_i_11_n_0\,
      I4 => diff(0),
      I5 => \data_in_reg_n_0_[9]\,
      O => \ARG__0_carry__1_i_7_n_0\
    );
\ARG__0_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \ARG__0_carry__1_i_4_n_0\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[6]\,
      I3 => \ARG__0_carry__1_i_12_n_0\,
      I4 => diff(0),
      I5 => \data_in_reg_n_0_[8]\,
      O => \ARG__0_carry__1_i_8_n_0\
    );
\ARG__0_carry__1_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_in_reg_n_0_[10]\,
      I1 => diff(1),
      O => \ARG__0_carry__1_i_9_n_0\
    );
\ARG__0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG__0_carry__1_n_0\,
      CO(3) => \ARG__0_carry__2_n_0\,
      CO(2) => \ARG__0_carry__2_n_1\,
      CO(1) => \ARG__0_carry__2_n_2\,
      CO(0) => \ARG__0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \ARG__0_carry__2_i_1_n_0\,
      DI(2) => \ARG__0_carry__2_i_2_n_0\,
      DI(1) => \ARG__0_carry__2_i_3_n_0\,
      DI(0) => \ARG__0_carry__2_i_4_n_0\,
      O(3) => \ARG__0_carry__2_n_4\,
      O(2) => \ARG__0_carry__2_n_5\,
      O(1) => \ARG__0_carry__2_n_6\,
      O(0) => \ARG__0_carry__2_n_7\,
      S(3) => \ARG__0_carry__2_i_5_n_0\,
      S(2) => \ARG__0_carry__2_i_6_n_0\,
      S(1) => \ARG__0_carry__2_i_7_n_0\,
      S(0) => \ARG__0_carry__2_i_8_n_0\
    );
\ARG__0_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => diff(2),
      I1 => \data_in_reg_n_0_[12]\,
      I2 => diff(1),
      I3 => \data_in_reg_n_0_[13]\,
      I4 => diff(0),
      I5 => \data_in_reg_n_0_[14]\,
      O => \ARG__0_carry__2_i_1_n_0\
    );
\ARG__0_carry__2_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_in_reg_n_0_[13]\,
      I1 => diff(1),
      O => \ARG__0_carry__2_i_10_n_0\
    );
\ARG__0_carry__2_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_in_reg_n_0_[12]\,
      I1 => diff(1),
      O => \ARG__0_carry__2_i_11_n_0\
    );
\ARG__0_carry__2_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_in_reg_n_0_[11]\,
      I1 => diff(1),
      O => \ARG__0_carry__2_i_12_n_0\
    );
\ARG__0_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => diff(2),
      I1 => \data_in_reg_n_0_[11]\,
      I2 => diff(1),
      I3 => \data_in_reg_n_0_[12]\,
      I4 => diff(0),
      I5 => \data_in_reg_n_0_[13]\,
      O => \ARG__0_carry__2_i_2_n_0\
    );
\ARG__0_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => diff(2),
      I1 => \data_in_reg_n_0_[10]\,
      I2 => diff(1),
      I3 => \data_in_reg_n_0_[11]\,
      I4 => diff(0),
      I5 => \data_in_reg_n_0_[12]\,
      O => \ARG__0_carry__2_i_3_n_0\
    );
\ARG__0_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => diff(2),
      I1 => \data_in_reg_n_0_[9]\,
      I2 => diff(1),
      I3 => \data_in_reg_n_0_[10]\,
      I4 => diff(0),
      I5 => \data_in_reg_n_0_[11]\,
      O => \ARG__0_carry__2_i_4_n_0\
    );
\ARG__0_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"956A6A6A6A959595"
    )
        port map (
      I0 => \ARG__0_carry__2_i_1_n_0\,
      I1 => \data_in_reg_n_0_[14]\,
      I2 => diff(1),
      I3 => \data_in_reg_n_0_[13]\,
      I4 => diff(2),
      I5 => \ARG__0_carry__2_i_9_n_0\,
      O => \ARG__0_carry__2_i_5_n_0\
    );
\ARG__0_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \ARG__0_carry__2_i_2_n_0\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[12]\,
      I3 => \ARG__0_carry__2_i_10_n_0\,
      I4 => diff(0),
      I5 => \data_in_reg_n_0_[14]\,
      O => \ARG__0_carry__2_i_6_n_0\
    );
\ARG__0_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \ARG__0_carry__2_i_3_n_0\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[11]\,
      I3 => \ARG__0_carry__2_i_11_n_0\,
      I4 => diff(0),
      I5 => \data_in_reg_n_0_[13]\,
      O => \ARG__0_carry__2_i_7_n_0\
    );
\ARG__0_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \ARG__0_carry__2_i_4_n_0\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[10]\,
      I3 => \ARG__0_carry__2_i_12_n_0\,
      I4 => diff(0),
      I5 => \data_in_reg_n_0_[12]\,
      O => \ARG__0_carry__2_i_8_n_0\
    );
\ARG__0_carry__2_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => diff(0),
      I1 => \data_in_reg_n_0_[15]\,
      O => \ARG__0_carry__2_i_9_n_0\
    );
\ARG__0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG__0_carry__2_n_0\,
      CO(3) => \NLW_ARG__0_carry__3_CO_UNCONNECTED\(3),
      CO(2) => \ARG__0_carry__3_n_1\,
      CO(1) => \NLW_ARG__0_carry__3_CO_UNCONNECTED\(1),
      CO(0) => \ARG__0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \ARG__0_carry__3_i_1_n_0\,
      DI(0) => \ARG__0_carry__3_i_2_n_0\,
      O(3 downto 2) => \NLW_ARG__0_carry__3_O_UNCONNECTED\(3 downto 2),
      O(1) => \ARG__0_carry__3_n_6\,
      O(0) => \ARG__0_carry__3_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \ARG__0_carry__3_i_3_n_0\,
      S(0) => \ARG__0_carry__3_i_4_n_0\
    );
\ARG__0_carry__3_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => diff(2),
      I1 => \data_in_reg_n_0_[14]\,
      I2 => diff(1),
      I3 => \data_in_reg_n_0_[15]\,
      O => \ARG__0_carry__3_i_1_n_0\
    );
\ARG__0_carry__3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000EAC0EAC0EAC0"
    )
        port map (
      I0 => diff(1),
      I1 => \data_in_reg_n_0_[13]\,
      I2 => diff(2),
      I3 => \data_in_reg_n_0_[14]\,
      I4 => diff(0),
      I5 => \data_in_reg_n_0_[15]\,
      O => \ARG__0_carry__3_i_2_n_0\
    );
\ARG__0_carry__3_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F3F"
    )
        port map (
      I0 => diff(1),
      I1 => \data_in_reg_n_0_[14]\,
      I2 => diff(2),
      I3 => \data_in_reg_n_0_[15]\,
      O => \ARG__0_carry__3_i_3_n_0\
    );
\ARG__0_carry__3_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"25404FBFF03FCF3F"
    )
        port map (
      I0 => diff(0),
      I1 => \data_in_reg_n_0_[13]\,
      I2 => diff(2),
      I3 => \data_in_reg_n_0_[14]\,
      I4 => diff(1),
      I5 => \data_in_reg_n_0_[15]\,
      O => \ARG__0_carry__3_i_4_n_0\
    );
\ARG__0_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \data_in_reg_n_0_[3]\,
      I1 => diff(0),
      I2 => \data_in_reg_n_0_[2]\,
      I3 => diff(1),
      I4 => \data_in_reg_n_0_[1]\,
      I5 => diff(2),
      O => \ARG__0_carry_i_1_n_0\
    );
\ARG__0_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => diff(1),
      I1 => \data_in_reg_n_0_[1]\,
      I2 => diff(2),
      I3 => \data_in_reg_n_0_[0]\,
      O => \ARG__0_carry_i_2_n_0\
    );
\ARG__0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_in_reg_n_0_[0]\,
      I1 => diff(1),
      O => \ARG__0_carry_i_3_n_0\
    );
\ARG__0_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A953F3F6A6AC0C0"
    )
        port map (
      I0 => \data_in_reg_n_0_[2]\,
      I1 => diff(0),
      I2 => \data_in_reg_n_0_[3]\,
      I3 => \data_in_reg_n_0_[0]\,
      I4 => diff(1),
      I5 => \ARG__0_carry_i_8_n_0\,
      O => \ARG__0_carry_i_4_n_0\
    );
\ARG__0_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \data_in_reg_n_0_[0]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[1]\,
      I3 => diff(1),
      I4 => \data_in_reg_n_0_[2]\,
      I5 => diff(0),
      O => \ARG__0_carry_i_5_n_0\
    );
\ARG__0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \data_in_reg_n_0_[1]\,
      I1 => diff(0),
      I2 => diff(1),
      I3 => \data_in_reg_n_0_[0]\,
      O => \ARG__0_carry_i_6_n_0\
    );
\ARG__0_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => diff(0),
      I1 => \data_in_reg_n_0_[0]\,
      O => \ARG__0_carry_i_7_n_0\
    );
\ARG__0_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_in_reg_n_0_[1]\,
      I1 => diff(2),
      O => \ARG__0_carry_i_8_n_0\
    );
\ARG__53_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ARG__53_carry_n_0\,
      CO(2) => \ARG__53_carry_n_1\,
      CO(1) => \ARG__53_carry_n_2\,
      CO(0) => \ARG__53_carry_n_3\,
      CYINIT => '0',
      DI(3) => \ARG__53_carry_i_1_n_0\,
      DI(2) => \ARG__53_carry_i_2_n_0\,
      DI(1) => \ARG__0_carry_n_4\,
      DI(0) => '0',
      O(3) => \ARG__53_carry_n_4\,
      O(2) => \ARG__53_carry_n_5\,
      O(1) => \ARG__53_carry_n_6\,
      O(0) => \ARG__53_carry_n_7\,
      S(3) => \ARG__53_carry_i_3_n_0\,
      S(2) => \ARG__53_carry_i_4_n_0\,
      S(1) => \ARG__53_carry_i_5_n_0\,
      S(0) => \ARG__0_carry_n_5\
    );
\ARG__53_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG__53_carry_n_0\,
      CO(3) => \ARG__53_carry__0_n_0\,
      CO(2) => \ARG__53_carry__0_n_1\,
      CO(1) => \ARG__53_carry__0_n_2\,
      CO(0) => \ARG__53_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \ARG__53_carry__0_i_1_n_0\,
      DI(2) => \ARG__53_carry__0_i_2_n_0\,
      DI(1) => \ARG__53_carry__0_i_3_n_0\,
      DI(0) => \ARG__53_carry__0_i_4_n_0\,
      O(3) => \ARG__53_carry__0_n_4\,
      O(2) => \ARG__53_carry__0_n_5\,
      O(1) => \ARG__53_carry__0_n_6\,
      O(0) => \ARG__53_carry__0_n_7\,
      S(3) => \ARG__53_carry__0_i_5_n_0\,
      S(2) => \ARG__53_carry__0_i_6_n_0\,
      S(1) => \ARG__53_carry__0_i_7_n_0\,
      S(0) => \ARG__53_carry__0_i_8_n_0\
    );
\ARG__53_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF0888"
    )
        port map (
      I0 => diff(3),
      I1 => \data_in_reg_n_0_[5]\,
      I2 => diff(4),
      I3 => \data_in_reg_n_0_[4]\,
      I4 => \ARG__0_carry__1_n_7\,
      O => \ARG__53_carry__0_i_1_n_0\
    );
\ARG__53_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF0888"
    )
        port map (
      I0 => diff(3),
      I1 => \data_in_reg_n_0_[4]\,
      I2 => diff(4),
      I3 => \data_in_reg_n_0_[3]\,
      I4 => \ARG__0_carry__0_n_4\,
      O => \ARG__53_carry__0_i_2_n_0\
    );
\ARG__53_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF0888"
    )
        port map (
      I0 => diff(3),
      I1 => \data_in_reg_n_0_[3]\,
      I2 => diff(4),
      I3 => \data_in_reg_n_0_[2]\,
      I4 => \ARG__0_carry__0_n_5\,
      O => \ARG__53_carry__0_i_3_n_0\
    );
\ARG__53_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF0888"
    )
        port map (
      I0 => diff(3),
      I1 => \data_in_reg_n_0_[2]\,
      I2 => diff(4),
      I3 => \data_in_reg_n_0_[1]\,
      I4 => \ARG__0_carry__0_n_6\,
      O => \ARG__53_carry__0_i_4_n_0\
    );
\ARG__53_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"956A6A6A6A959595"
    )
        port map (
      I0 => \ARG__53_carry__0_i_1_n_0\,
      I1 => diff(3),
      I2 => \data_in_reg_n_0_[6]\,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[5]\,
      I5 => \ARG__0_carry__1_n_6\,
      O => \ARG__53_carry__0_i_5_n_0\
    );
\ARG__53_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"956A6A6A6A959595"
    )
        port map (
      I0 => \ARG__53_carry__0_i_2_n_0\,
      I1 => diff(3),
      I2 => \data_in_reg_n_0_[5]\,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[4]\,
      I5 => \ARG__0_carry__1_n_7\,
      O => \ARG__53_carry__0_i_6_n_0\
    );
\ARG__53_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"956A6A6A6A959595"
    )
        port map (
      I0 => \ARG__53_carry__0_i_3_n_0\,
      I1 => diff(3),
      I2 => \data_in_reg_n_0_[4]\,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[3]\,
      I5 => \ARG__0_carry__0_n_4\,
      O => \ARG__53_carry__0_i_7_n_0\
    );
\ARG__53_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"956A6A6A6A959595"
    )
        port map (
      I0 => \ARG__53_carry__0_i_4_n_0\,
      I1 => diff(3),
      I2 => \data_in_reg_n_0_[3]\,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[2]\,
      I5 => \ARG__0_carry__0_n_5\,
      O => \ARG__53_carry__0_i_8_n_0\
    );
\ARG__53_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG__53_carry__0_n_0\,
      CO(3) => \ARG__53_carry__1_n_0\,
      CO(2) => \ARG__53_carry__1_n_1\,
      CO(1) => \ARG__53_carry__1_n_2\,
      CO(0) => \ARG__53_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \ARG__53_carry__1_i_1_n_0\,
      DI(2) => \ARG__53_carry__1_i_2_n_0\,
      DI(1) => \ARG__53_carry__1_i_3_n_0\,
      DI(0) => \ARG__53_carry__1_i_4_n_0\,
      O(3) => \ARG__53_carry__1_n_4\,
      O(2) => \ARG__53_carry__1_n_5\,
      O(1) => \ARG__53_carry__1_n_6\,
      O(0) => \ARG__53_carry__1_n_7\,
      S(3) => \ARG__53_carry__1_i_5_n_0\,
      S(2) => \ARG__53_carry__1_i_6_n_0\,
      S(1) => \ARG__53_carry__1_i_7_n_0\,
      S(0) => \ARG__53_carry__1_i_8_n_0\
    );
\ARG__53_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF0888"
    )
        port map (
      I0 => diff(3),
      I1 => \data_in_reg_n_0_[9]\,
      I2 => diff(4),
      I3 => \data_in_reg_n_0_[8]\,
      I4 => \ARG__0_carry__2_n_7\,
      O => \ARG__53_carry__1_i_1_n_0\
    );
\ARG__53_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF0888"
    )
        port map (
      I0 => diff(3),
      I1 => \data_in_reg_n_0_[8]\,
      I2 => diff(4),
      I3 => \data_in_reg_n_0_[7]\,
      I4 => \ARG__0_carry__1_n_4\,
      O => \ARG__53_carry__1_i_2_n_0\
    );
\ARG__53_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF0888"
    )
        port map (
      I0 => diff(3),
      I1 => \data_in_reg_n_0_[7]\,
      I2 => diff(4),
      I3 => \data_in_reg_n_0_[6]\,
      I4 => \ARG__0_carry__1_n_5\,
      O => \ARG__53_carry__1_i_3_n_0\
    );
\ARG__53_carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF0888"
    )
        port map (
      I0 => diff(3),
      I1 => \data_in_reg_n_0_[6]\,
      I2 => diff(4),
      I3 => \data_in_reg_n_0_[5]\,
      I4 => \ARG__0_carry__1_n_6\,
      O => \ARG__53_carry__1_i_4_n_0\
    );
\ARG__53_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"956A6A6A6A959595"
    )
        port map (
      I0 => \ARG__53_carry__1_i_1_n_0\,
      I1 => diff(3),
      I2 => \data_in_reg_n_0_[10]\,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[9]\,
      I5 => \ARG__0_carry__2_n_6\,
      O => \ARG__53_carry__1_i_5_n_0\
    );
\ARG__53_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"956A6A6A6A959595"
    )
        port map (
      I0 => \ARG__53_carry__1_i_2_n_0\,
      I1 => diff(3),
      I2 => \data_in_reg_n_0_[9]\,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[8]\,
      I5 => \ARG__0_carry__2_n_7\,
      O => \ARG__53_carry__1_i_6_n_0\
    );
\ARG__53_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"956A6A6A6A959595"
    )
        port map (
      I0 => \ARG__53_carry__1_i_3_n_0\,
      I1 => diff(3),
      I2 => \data_in_reg_n_0_[8]\,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[7]\,
      I5 => \ARG__0_carry__1_n_4\,
      O => \ARG__53_carry__1_i_7_n_0\
    );
\ARG__53_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"956A6A6A6A959595"
    )
        port map (
      I0 => \ARG__53_carry__1_i_4_n_0\,
      I1 => diff(3),
      I2 => \data_in_reg_n_0_[7]\,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[6]\,
      I5 => \ARG__0_carry__1_n_5\,
      O => \ARG__53_carry__1_i_8_n_0\
    );
\ARG__53_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG__53_carry__1_n_0\,
      CO(3) => \ARG__53_carry__2_n_0\,
      CO(2) => \ARG__53_carry__2_n_1\,
      CO(1) => \ARG__53_carry__2_n_2\,
      CO(0) => \ARG__53_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \ARG__53_carry__2_i_1_n_0\,
      DI(2) => \ARG__53_carry__2_i_2_n_0\,
      DI(1) => \ARG__53_carry__2_i_3_n_0\,
      DI(0) => \ARG__53_carry__2_i_4_n_0\,
      O(3) => \ARG__53_carry__2_n_4\,
      O(2) => \ARG__53_carry__2_n_5\,
      O(1) => \NLW_ARG__53_carry__2_O_UNCONNECTED\(1),
      O(0) => \ARG__53_carry__2_n_7\,
      S(3) => \ARG__53_carry__2_i_5_n_0\,
      S(2) => \ARG__53_carry__2_i_6_n_0\,
      S(1) => \ARG__53_carry__2_i_7_n_0\,
      S(0) => \ARG__53_carry__2_i_8_n_0\
    );
\ARG__53_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0DFFD000D0000DFF"
    )
        port map (
      I0 => \data_in_reg_n_0_[11]\,
      I1 => \ARG__0_carry__2_n_4\,
      I2 => \data_in_reg_n_0_[12]\,
      I3 => diff(4),
      I4 => \ARG__53_carry__2_i_9_n_0\,
      I5 => \ARG__0_carry__3_n_7\,
      O => \ARG__53_carry__2_i_1_n_0\
    );
\ARG__53_carry__2_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A959595"
    )
        port map (
      I0 => \ARG__0_carry__3_n_6\,
      I1 => diff(4),
      I2 => \data_in_reg_n_0_[13]\,
      I3 => diff(3),
      I4 => \data_in_reg_n_0_[14]\,
      O => \ARG__53_carry__2_i_10_n_0\
    );
\ARG__53_carry__2_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF0888"
    )
        port map (
      I0 => diff(3),
      I1 => \data_in_reg_n_0_[13]\,
      I2 => diff(4),
      I3 => \data_in_reg_n_0_[12]\,
      I4 => \ARG__0_carry__3_n_7\,
      O => \ARG__53_carry__2_i_11_n_0\
    );
\ARG__53_carry__2_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A959595"
    )
        port map (
      I0 => \ARG__0_carry__3_n_7\,
      I1 => diff(3),
      I2 => \data_in_reg_n_0_[13]\,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[12]\,
      O => \ARG__53_carry__2_i_12_n_0\
    );
\ARG__53_carry__2_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888000"
    )
        port map (
      I0 => diff(3),
      I1 => \data_in_reg_n_0_[12]\,
      I2 => \data_in_reg_n_0_[11]\,
      I3 => diff(4),
      I4 => \ARG__0_carry__2_n_4\,
      O => \ARG__53_carry__2_i_2_n_0\
    );
\ARG__53_carry__2_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87787878"
    )
        port map (
      I0 => \data_in_reg_n_0_[12]\,
      I1 => diff(3),
      I2 => \ARG__0_carry__2_n_4\,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[11]\,
      O => \ARG__53_carry__2_i_3_n_0\
    );
\ARG__53_carry__2_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF0888"
    )
        port map (
      I0 => diff(3),
      I1 => \data_in_reg_n_0_[10]\,
      I2 => diff(4),
      I3 => \data_in_reg_n_0_[9]\,
      I4 => \ARG__0_carry__2_n_6\,
      O => \ARG__53_carry__2_i_4_n_0\
    );
\ARG__53_carry__2_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \ARG__53_carry__2_i_1_n_0\,
      I1 => \ARG__53_carry__2_i_10_n_0\,
      I2 => \ARG__53_carry__2_i_11_n_0\,
      O => \ARG__53_carry__2_i_5_n_0\
    );
\ARG__53_carry__2_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96999999"
    )
        port map (
      I0 => \ARG__53_carry__2_i_2_n_0\,
      I1 => \ARG__53_carry__2_i_12_n_0\,
      I2 => \ARG__0_carry__2_n_4\,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[11]\,
      O => \ARG__53_carry__2_i_6_n_0\
    );
\ARG__53_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6555A666A666A666"
    )
        port map (
      I0 => \ARG__53_carry__2_i_3_n_0\,
      I1 => \ARG__0_carry__2_n_5\,
      I2 => \data_in_reg_n_0_[10]\,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[11]\,
      I5 => diff(3),
      O => \ARG__53_carry__2_i_7_n_0\
    );
\ARG__53_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"956A6A6A6A959595"
    )
        port map (
      I0 => \ARG__53_carry__2_i_4_n_0\,
      I1 => diff(3),
      I2 => \data_in_reg_n_0_[11]\,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[10]\,
      I5 => \ARG__0_carry__2_n_5\,
      O => \ARG__53_carry__2_i_8_n_0\
    );
\ARG__53_carry__2_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_in_reg_n_0_[13]\,
      I1 => diff(3),
      O => \ARG__53_carry__2_i_9_n_0\
    );
\ARG__53_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG__53_carry__2_n_0\,
      CO(3 downto 2) => \NLW_ARG__53_carry__3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \ARG__53_carry__3_n_2\,
      CO(0) => \ARG__53_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \ARG__53_carry__3_i_1_n_0\,
      DI(0) => \ARG__53_carry__3_i_2_n_0\,
      O(3) => \NLW_ARG__53_carry__3_O_UNCONNECTED\(3),
      O(2) => p_0_out0,
      O(1) => \ARG__53_carry__3_n_6\,
      O(0) => \ARG__53_carry__3_n_7\,
      S(3) => '0',
      S(2) => \ARG__53_carry__3_i_3_n_0\,
      S(1) => \ARG__53_carry__3_i_4_n_0\,
      S(0) => \ARG__53_carry__3_i_5_n_0\
    );
\ARG__53_carry__3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"956A6A6A00000000"
    )
        port map (
      I0 => \ARG__0_carry__3_n_1\,
      I1 => diff(3),
      I2 => \data_in_reg_n_0_[15]\,
      I3 => \data_in_reg_n_0_[14]\,
      I4 => diff(4),
      I5 => \ARG__53_carry__3_i_6_n_0\,
      O => \ARG__53_carry__3_i_1_n_0\
    );
\ARG__53_carry__3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2A2A2A00000000"
    )
        port map (
      I0 => \ARG__0_carry__3_n_7\,
      I1 => \data_in_reg_n_0_[12]\,
      I2 => diff(4),
      I3 => \data_in_reg_n_0_[13]\,
      I4 => diff(3),
      I5 => \ARG__53_carry__2_i_10_n_0\,
      O => \ARG__53_carry__3_i_2_n_0\
    );
\ARG__53_carry__3_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF5FFFDF"
    )
        port map (
      I0 => diff(4),
      I1 => \data_in_reg_n_0_[14]\,
      I2 => \data_in_reg_n_0_[15]\,
      I3 => diff(3),
      I4 => \ARG__0_carry__3_n_1\,
      O => \ARG__53_carry__3_i_3_n_0\
    );
\ARG__53_carry__3_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"71EE1877E777E777"
    )
        port map (
      I0 => \ARG__53_carry__3_i_6_n_0\,
      I1 => \ARG__0_carry__3_n_1\,
      I2 => diff(3),
      I3 => \data_in_reg_n_0_[15]\,
      I4 => \data_in_reg_n_0_[14]\,
      I5 => diff(4),
      O => \ARG__53_carry__3_i_4_n_0\
    );
\ARG__53_carry__3_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666699969999666"
    )
        port map (
      I0 => \ARG__53_carry__3_i_2_n_0\,
      I1 => \ARG__53_carry__3_i_6_n_0\,
      I2 => diff(4),
      I3 => \data_in_reg_n_0_[14]\,
      I4 => \ARG__53_carry__3_i_7_n_0\,
      I5 => \ARG__0_carry__3_n_1\,
      O => \ARG__53_carry__3_i_5_n_0\
    );
\ARG__53_carry__3_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF0888"
    )
        port map (
      I0 => diff(3),
      I1 => \data_in_reg_n_0_[14]\,
      I2 => diff(4),
      I3 => \data_in_reg_n_0_[13]\,
      I4 => \ARG__0_carry__3_n_6\,
      O => \ARG__53_carry__3_i_6_n_0\
    );
\ARG__53_carry__3_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_in_reg_n_0_[15]\,
      I1 => diff(3),
      O => \ARG__53_carry__3_i_7_n_0\
    );
\ARG__53_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \ARG__0_carry__0_n_7\,
      I1 => diff(4),
      I2 => \data_in_reg_n_0_[0]\,
      O => \ARG__53_carry_i_1_n_0\
    );
\ARG__53_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \ARG__0_carry__0_n_7\,
      I1 => diff(4),
      I2 => \data_in_reg_n_0_[0]\,
      O => \ARG__53_carry_i_2_n_0\
    );
\ARG__53_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"956A6A6A6A959595"
    )
        port map (
      I0 => \ARG__53_carry_i_1_n_0\,
      I1 => diff(3),
      I2 => \data_in_reg_n_0_[2]\,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[1]\,
      I5 => \ARG__0_carry__0_n_6\,
      O => \ARG__53_carry_i_3_n_0\
    );
\ARG__53_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"956A6A6A"
    )
        port map (
      I0 => \ARG__0_carry__0_n_7\,
      I1 => diff(4),
      I2 => \data_in_reg_n_0_[0]\,
      I3 => diff(3),
      I4 => \data_in_reg_n_0_[1]\,
      O => \ARG__53_carry_i_4_n_0\
    );
\ARG__53_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \ARG__0_carry_n_4\,
      I1 => diff(3),
      I2 => \data_in_reg_n_0_[0]\,
      O => \ARG__53_carry_i_5_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state[1]_i_3_n_0\,
      I2 => data_out,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \FSM_onehot_state[1]_i_2_n_0\
    );
\FSM_onehot_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF900090009000"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => tlast_expected,
      I2 => s_axis_tvalid,
      I3 => \^s_axis_tready\,
      I4 => \^m_axis_tvalid\,
      I5 => m_axis_tready,
      O => \FSM_onehot_state[1]_i_3_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \FSM_onehot_state[1]_i_1_n_0\,
      D => \^m_axis_tvalid\,
      PRE => \FSM_onehot_state[1]_i_2_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \FSM_onehot_state[1]_i_1_n_0\,
      CLR => \FSM_onehot_state[1]_i_2_n_0\,
      D => \FSM_onehot_state_reg_n_0_[0]\,
      Q => \^s_axis_tready\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \FSM_onehot_state[1]_i_1_n_0\,
      CLR => \FSM_onehot_state[1]_i_2_n_0\,
      D => \^s_axis_tready\,
      Q => data_out
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \FSM_onehot_state[1]_i_1_n_0\,
      CLR => \FSM_onehot_state[1]_i_2_n_0\,
      D => data_out,
      Q => \^m_axis_tvalid\
    );
SHIFT_RIGHT3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => SHIFT_RIGHT3_carry_n_0,
      CO(2) => SHIFT_RIGHT3_carry_n_1,
      CO(1) => SHIFT_RIGHT3_carry_n_2,
      CO(0) => SHIFT_RIGHT3_carry_n_3,
      CYINIT => SHIFT_RIGHT4(0),
      DI(3 downto 0) => SHIFT_RIGHT4(4 downto 1),
      O(3) => SHIFT_RIGHT3_carry_n_4,
      O(2) => SHIFT_RIGHT3_carry_n_5,
      O(1) => SHIFT_RIGHT3_carry_n_6,
      O(0) => SHIFT_RIGHT3_carry_n_7,
      S(3) => SHIFT_RIGHT3_carry_i_6_n_0,
      S(2) => SHIFT_RIGHT3_carry_i_7_n_0,
      S(1) => SHIFT_RIGHT3_carry_i_8_n_0,
      S(0) => SHIFT_RIGHT3_carry_i_9_n_0
    );
\SHIFT_RIGHT3_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => SHIFT_RIGHT3_carry_n_0,
      CO(3) => \SHIFT_RIGHT3_carry__0_n_0\,
      CO(2) => \SHIFT_RIGHT3_carry__0_n_1\,
      CO(1) => \SHIFT_RIGHT3_carry__0_n_2\,
      CO(0) => \SHIFT_RIGHT3_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \SHIFT_RIGHT3_carry__0_i_1_n_0\,
      DI(2 downto 0) => SHIFT_RIGHT4(7 downto 5),
      O(3) => \SHIFT_RIGHT3_carry__0_n_4\,
      O(2) => \SHIFT_RIGHT3_carry__0_n_5\,
      O(1) => \SHIFT_RIGHT3_carry__0_n_6\,
      O(0) => \SHIFT_RIGHT3_carry__0_n_7\,
      S(3) => \SHIFT_RIGHT3_carry__0_i_5_n_0\,
      S(2) => \SHIFT_RIGHT3_carry__0_i_6_n_0\,
      S(1) => \SHIFT_RIGHT3_carry__0_i_7_n_0\,
      S(0) => \SHIFT_RIGHT3_carry__0_i_8_n_0\
    );
\SHIFT_RIGHT3_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => diff(0),
      I1 => diff(1),
      I2 => diff(2),
      I3 => diff(3),
      O => \SHIFT_RIGHT3_carry__0_i_1_n_0\
    );
\SHIFT_RIGHT3_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00402000"
    )
        port map (
      I0 => diff(2),
      I1 => diff(4),
      I2 => diff(0),
      I3 => diff(1),
      I4 => diff(3),
      O => SHIFT_RIGHT4(7)
    );
\SHIFT_RIGHT3_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000200"
    )
        port map (
      I0 => diff(2),
      I1 => diff(4),
      I2 => diff(0),
      I3 => diff(1),
      I4 => diff(3),
      O => SHIFT_RIGHT4(6)
    );
\SHIFT_RIGHT3_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000020"
    )
        port map (
      I0 => diff(2),
      I1 => diff(4),
      I2 => diff(0),
      I3 => diff(1),
      I4 => diff(3),
      O => SHIFT_RIGHT4(5)
    );
\SHIFT_RIGHT3_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => diff(3),
      I1 => diff(2),
      I2 => diff(1),
      I3 => diff(0),
      O => \SHIFT_RIGHT3_carry__0_i_5_n_0\
    );
\SHIFT_RIGHT3_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFDFFF"
    )
        port map (
      I0 => diff(3),
      I1 => diff(1),
      I2 => diff(0),
      I3 => diff(4),
      I4 => diff(2),
      O => \SHIFT_RIGHT3_carry__0_i_6_n_0\
    );
\SHIFT_RIGHT3_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFBF7FF"
    )
        port map (
      I0 => diff(3),
      I1 => diff(1),
      I2 => diff(0),
      I3 => diff(4),
      I4 => diff(2),
      O => \SHIFT_RIGHT3_carry__0_i_7_n_0\
    );
\SHIFT_RIGHT3_carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF7FFF"
    )
        port map (
      I0 => diff(3),
      I1 => diff(1),
      I2 => diff(0),
      I3 => diff(4),
      I4 => diff(2),
      O => \SHIFT_RIGHT3_carry__0_i_8_n_0\
    );
\SHIFT_RIGHT3_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \SHIFT_RIGHT3_carry__0_n_0\,
      CO(3) => \SHIFT_RIGHT3_carry__1_n_0\,
      CO(2) => \SHIFT_RIGHT3_carry__1_n_1\,
      CO(1) => \SHIFT_RIGHT3_carry__1_n_2\,
      CO(0) => \SHIFT_RIGHT3_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SHIFT_RIGHT4(12 downto 9),
      O(3) => \SHIFT_RIGHT3_carry__1_n_4\,
      O(2) => \SHIFT_RIGHT3_carry__1_n_5\,
      O(1) => \SHIFT_RIGHT3_carry__1_n_6\,
      O(0) => \SHIFT_RIGHT3_carry__1_n_7\,
      S(3) => \SHIFT_RIGHT3_carry__1_i_5_n_0\,
      S(2) => \SHIFT_RIGHT3_carry__1_i_6_n_0\,
      S(1) => \SHIFT_RIGHT3_carry__1_i_7_n_0\,
      S(0) => \SHIFT_RIGHT3_carry__1_i_8_n_0\
    );
\SHIFT_RIGHT3_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020008"
    )
        port map (
      I0 => diff(2),
      I1 => diff(4),
      I2 => diff(0),
      I3 => diff(1),
      I4 => diff(3),
      O => SHIFT_RIGHT4(12)
    );
\SHIFT_RIGHT3_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04002000"
    )
        port map (
      I0 => diff(3),
      I1 => diff(2),
      I2 => diff(1),
      I3 => diff(0),
      I4 => diff(4),
      O => SHIFT_RIGHT4(11)
    );
\SHIFT_RIGHT3_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400020"
    )
        port map (
      I0 => diff(3),
      I1 => diff(2),
      I2 => diff(1),
      I3 => diff(0),
      I4 => diff(4),
      O => SHIFT_RIGHT4(10)
    );
\SHIFT_RIGHT3_carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000200"
    )
        port map (
      I0 => diff(3),
      I1 => diff(2),
      I2 => diff(1),
      I3 => diff(0),
      I4 => diff(4),
      O => SHIFT_RIGHT4(9)
    );
\SHIFT_RIGHT3_carry__1_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFDFFFF"
    )
        port map (
      I0 => diff(3),
      I1 => diff(1),
      I2 => diff(0),
      I3 => diff(4),
      I4 => diff(2),
      O => \SHIFT_RIGHT3_carry__1_i_5_n_0\
    );
\SHIFT_RIGHT3_carry__1_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFF7FF"
    )
        port map (
      I0 => diff(4),
      I1 => diff(0),
      I2 => diff(1),
      I3 => diff(2),
      I4 => diff(3),
      O => \SHIFT_RIGHT3_carry__1_i_6_n_0\
    );
\SHIFT_RIGHT3_carry__1_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFDFFF"
    )
        port map (
      I0 => diff(4),
      I1 => diff(0),
      I2 => diff(1),
      I3 => diff(2),
      I4 => diff(3),
      O => \SHIFT_RIGHT3_carry__1_i_7_n_0\
    );
\SHIFT_RIGHT3_carry__1_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB7FFF"
    )
        port map (
      I0 => diff(4),
      I1 => diff(0),
      I2 => diff(1),
      I3 => diff(2),
      I4 => diff(3),
      O => \SHIFT_RIGHT3_carry__1_i_8_n_0\
    );
\SHIFT_RIGHT3_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \SHIFT_RIGHT3_carry__1_n_0\,
      CO(3 downto 2) => \NLW_SHIFT_RIGHT3_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \SHIFT_RIGHT3_carry__2_n_2\,
      CO(0) => \SHIFT_RIGHT3_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => SHIFT_RIGHT4(14 downto 13),
      O(3) => \NLW_SHIFT_RIGHT3_carry__2_O_UNCONNECTED\(3),
      O(2) => \SHIFT_RIGHT3_carry__2_n_5\,
      O(1) => \SHIFT_RIGHT3_carry__2_n_6\,
      O(0) => \SHIFT_RIGHT3_carry__2_n_7\,
      S(3) => '0',
      S(2) => \SHIFT_RIGHT3_carry__2_i_3_n_0\,
      S(1) => \SHIFT_RIGHT3_carry__2_i_4_n_0\,
      S(0) => \SHIFT_RIGHT3_carry__2_i_5_n_0\
    );
\SHIFT_RIGHT3_carry__2_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000400"
    )
        port map (
      I0 => diff(2),
      I1 => diff(4),
      I2 => diff(0),
      I3 => diff(1),
      I4 => diff(3),
      O => SHIFT_RIGHT4(14)
    );
\SHIFT_RIGHT3_carry__2_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000080"
    )
        port map (
      I0 => diff(2),
      I1 => diff(3),
      I2 => diff(0),
      I3 => diff(4),
      I4 => diff(1),
      O => SHIFT_RIGHT4(13)
    );
\SHIFT_RIGHT3_carry__2_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFFFFBF"
    )
        port map (
      I0 => diff(2),
      I1 => diff(4),
      I2 => diff(0),
      I3 => diff(1),
      I4 => diff(3),
      O => \SHIFT_RIGHT3_carry__2_i_3_n_0\
    );
\SHIFT_RIGHT3_carry__2_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF7FBFF"
    )
        port map (
      I0 => diff(3),
      I1 => diff(1),
      I2 => diff(0),
      I3 => diff(4),
      I4 => diff(2),
      O => \SHIFT_RIGHT3_carry__2_i_4_n_0\
    );
\SHIFT_RIGHT3_carry__2_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFF7F"
    )
        port map (
      I0 => diff(1),
      I1 => diff(4),
      I2 => diff(0),
      I3 => diff(3),
      I4 => diff(2),
      O => \SHIFT_RIGHT3_carry__2_i_5_n_0\
    );
SHIFT_RIGHT3_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => diff(3),
      I1 => diff(2),
      I2 => diff(1),
      I3 => diff(0),
      I4 => diff(4),
      O => SHIFT_RIGHT4(0)
    );
SHIFT_RIGHT3_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080002"
    )
        port map (
      I0 => diff(2),
      I1 => diff(4),
      I2 => diff(0),
      I3 => diff(1),
      I4 => diff(3),
      O => SHIFT_RIGHT4(4)
    );
SHIFT_RIGHT3_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000040"
    )
        port map (
      I0 => diff(4),
      I1 => diff(0),
      I2 => diff(1),
      I3 => diff(2),
      I4 => diff(3),
      O => SHIFT_RIGHT4(3)
    );
SHIFT_RIGHT3_carry_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000010"
    )
        port map (
      I0 => diff(4),
      I1 => diff(0),
      I2 => diff(1),
      I3 => diff(2),
      I4 => diff(3),
      O => SHIFT_RIGHT4(2)
    );
SHIFT_RIGHT3_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000004"
    )
        port map (
      I0 => diff(4),
      I1 => diff(0),
      I2 => diff(1),
      I3 => diff(2),
      I4 => diff(3),
      O => SHIFT_RIGHT4(1)
    );
SHIFT_RIGHT3_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFEFFFF"
    )
        port map (
      I0 => diff(3),
      I1 => diff(1),
      I2 => diff(0),
      I3 => diff(4),
      I4 => diff(2),
      O => SHIFT_RIGHT3_carry_i_6_n_0
    );
SHIFT_RIGHT3_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFEFFF"
    )
        port map (
      I0 => diff(3),
      I1 => diff(2),
      I2 => diff(1),
      I3 => diff(0),
      I4 => diff(4),
      O => SHIFT_RIGHT3_carry_i_7_n_0
    );
SHIFT_RIGHT3_carry_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FFFEF"
    )
        port map (
      I0 => diff(3),
      I1 => diff(2),
      I2 => diff(1),
      I3 => diff(0),
      I4 => diff(4),
      O => SHIFT_RIGHT3_carry_i_8_n_0
    );
SHIFT_RIGHT3_carry_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFEFF"
    )
        port map (
      I0 => diff(3),
      I1 => diff(2),
      I2 => diff(1),
      I3 => diff(0),
      I4 => diff(4),
      O => SHIFT_RIGHT3_carry_i_9_n_0
    );
\data_in[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => aresetn,
      I2 => \^s_axis_tready\,
      O => data_in0
    );
\data_in_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_in0,
      D => s_axis_tdata(0),
      Q => \data_in_reg_n_0_[0]\,
      R => '0'
    );
\data_in_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_in0,
      D => s_axis_tdata(10),
      Q => \data_in_reg_n_0_[10]\,
      R => '0'
    );
\data_in_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_in0,
      D => s_axis_tdata(11),
      Q => \data_in_reg_n_0_[11]\,
      R => '0'
    );
\data_in_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_in0,
      D => s_axis_tdata(12),
      Q => \data_in_reg_n_0_[12]\,
      R => '0'
    );
\data_in_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_in0,
      D => s_axis_tdata(13),
      Q => \data_in_reg_n_0_[13]\,
      R => '0'
    );
\data_in_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_in0,
      D => s_axis_tdata(14),
      Q => \data_in_reg_n_0_[14]\,
      R => '0'
    );
\data_in_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_in0,
      D => s_axis_tdata(15),
      Q => \data_in_reg_n_0_[15]\,
      R => '0'
    );
\data_in_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_in0,
      D => s_axis_tdata(1),
      Q => \data_in_reg_n_0_[1]\,
      R => '0'
    );
\data_in_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_in0,
      D => s_axis_tdata(2),
      Q => \data_in_reg_n_0_[2]\,
      R => '0'
    );
\data_in_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_in0,
      D => s_axis_tdata(3),
      Q => \data_in_reg_n_0_[3]\,
      R => '0'
    );
\data_in_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_in0,
      D => s_axis_tdata(4),
      Q => \data_in_reg_n_0_[4]\,
      R => '0'
    );
\data_in_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_in0,
      D => s_axis_tdata(5),
      Q => \data_in_reg_n_0_[5]\,
      R => '0'
    );
\data_in_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_in0,
      D => s_axis_tdata(6),
      Q => \data_in_reg_n_0_[6]\,
      R => '0'
    );
\data_in_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_in0,
      D => s_axis_tdata(7),
      Q => \data_in_reg_n_0_[7]\,
      R => '0'
    );
\data_in_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_in0,
      D => s_axis_tdata(8),
      Q => \data_in_reg_n_0_[8]\,
      R => '0'
    );
\data_in_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_in0,
      D => s_axis_tdata(9),
      Q => \data_in_reg_n_0_[9]\,
      R => '0'
    );
data_out1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NLW_data_out1_carry_CO_UNCONNECTED(3),
      CO(2) => data_out12_in,
      CO(1) => data_out1_carry_n_2,
      CO(0) => data_out1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => data_out1_carry_i_1_n_0,
      DI(0) => data_out1_carry_i_2_n_0,
      O(3 downto 0) => NLW_data_out1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => data_out1_carry_i_3_n_0,
      S(1) => data_out1_carry_i_4_n_0,
      S(0) => data_out1_carry_i_5_n_0
    );
data_out1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \ARG__53_carry__3_n_6\,
      I1 => \ARG__53_carry__3_n_7\,
      O => data_out1_carry_i_1_n_0
    );
data_out1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \ARG__53_carry__2_n_4\,
      I1 => \ARG__53_carry__2_n_5\,
      O => data_out1_carry_i_2_n_0
    );
data_out1_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_out0,
      O => data_out1_carry_i_3_n_0
    );
data_out1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ARG__53_carry__3_n_7\,
      I1 => \ARG__53_carry__3_n_6\,
      O => data_out1_carry_i_4_n_0
    );
data_out1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ARG__53_carry__2_n_5\,
      I1 => \ARG__53_carry__2_n_4\,
      O => data_out1_carry_i_5_n_0
    );
\data_out[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \ARG__0_carry_n_7\,
      I1 => data_out12_in,
      I2 => \data_out[7]_i_3_n_0\,
      I3 => \data_in_reg_n_0_[0]\,
      O => \data_out[0]_i_1_n_0\
    );
\data_out[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAAAEAA"
    )
        port map (
      I0 => \data_out[10]_i_2_n_0\,
      I1 => \data_out[11]_i_2_n_0\,
      I2 => diff(0),
      I3 => \data_out[14]_i_3_n_0\,
      I4 => \data_out[10]_i_3_n_0\,
      O => \data_out[10]_i_1_n_0\
    );
\data_out[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFE0EFE0EFE0"
    )
        port map (
      I0 => data_out12_in,
      I1 => \ARG__53_carry__1_n_7\,
      I2 => \data_out[7]_i_3_n_0\,
      I3 => \data_out[10]_i_4_n_0\,
      I4 => \data_out[14]_i_8_n_0\,
      I5 => \SHIFT_RIGHT3_carry__1_n_6\,
      O => \data_out[10]_i_2_n_0\
    );
\data_out[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \data_in_reg_n_0_[3]\,
      I1 => \data_out[10]_i_5_n_0\,
      I2 => \data_in_reg_n_0_[7]\,
      I3 => \data_out[10]_i_6_n_0\,
      I4 => \data_out[15]_i_10_n_0\,
      I5 => \data_out[12]_i_4_n_0\,
      O => \data_out[10]_i_3_n_0\
    );
\data_out[10]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \data_in_reg_n_0_[10]\,
      I1 => diff(4),
      O => \data_out[10]_i_4_n_0\
    );
\data_out[10]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"666A"
    )
        port map (
      I0 => diff(2),
      I1 => diff(4),
      I2 => diff(0),
      I3 => diff(1),
      O => \data_out[10]_i_5_n_0\
    );
\data_out[10]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5556AAAA"
    )
        port map (
      I0 => diff(3),
      I1 => diff(2),
      I2 => diff(1),
      I3 => diff(0),
      I4 => diff(4),
      O => \data_out[10]_i_6_n_0\
    );
\data_out[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFE020"
    )
        port map (
      I0 => \data_out[12]_i_2_n_0\,
      I1 => diff(0),
      I2 => \data_out[14]_i_3_n_0\,
      I3 => \data_out[11]_i_2_n_0\,
      I4 => \data_out[11]_i_3_n_0\,
      O => \data_out[11]_i_1_n_0\
    );
\data_out[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EABF2A80"
    )
        port map (
      I0 => \data_out[11]_i_4_n_0\,
      I1 => diff(0),
      I2 => diff(4),
      I3 => diff(1),
      I4 => \data_out[13]_i_4_n_0\,
      O => \data_out[11]_i_2_n_0\
    );
\data_out[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFE0EFE0EFE0"
    )
        port map (
      I0 => data_out12_in,
      I1 => \ARG__53_carry__1_n_6\,
      I2 => \data_out[7]_i_3_n_0\,
      I3 => \data_out[11]_i_5_n_0\,
      I4 => \data_out[14]_i_8_n_0\,
      I5 => \SHIFT_RIGHT3_carry__1_n_5\,
      O => \data_out[11]_i_3_n_0\
    );
\data_out[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0ACFC0"
    )
        port map (
      I0 => \data_in_reg_n_0_[4]\,
      I1 => \data_in_reg_n_0_[0]\,
      I2 => \data_out[10]_i_6_n_0\,
      I3 => \data_in_reg_n_0_[8]\,
      I4 => \data_out[10]_i_5_n_0\,
      O => \data_out[11]_i_4_n_0\
    );
\data_out[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \data_in_reg_n_0_[11]\,
      I1 => diff(4),
      O => \data_out[11]_i_5_n_0\
    );
\data_out[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFE020"
    )
        port map (
      I0 => \data_out[13]_i_2_n_0\,
      I1 => diff(0),
      I2 => \data_out[14]_i_3_n_0\,
      I3 => \data_out[12]_i_2_n_0\,
      I4 => \data_out[12]_i_3_n_0\,
      O => \data_out[12]_i_1_n_0\
    );
\data_out[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EABF2A80"
    )
        port map (
      I0 => \data_out[12]_i_4_n_0\,
      I1 => diff(0),
      I2 => diff(4),
      I3 => diff(1),
      I4 => \data_out[14]_i_6_n_0\,
      O => \data_out[12]_i_2_n_0\
    );
\data_out[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFE0EFE0EFE0"
    )
        port map (
      I0 => data_out12_in,
      I1 => \ARG__53_carry__1_n_5\,
      I2 => \data_out[7]_i_3_n_0\,
      I3 => \data_out[12]_i_5_n_0\,
      I4 => \data_out[14]_i_8_n_0\,
      I5 => \SHIFT_RIGHT3_carry__1_n_4\,
      O => \data_out[12]_i_3_n_0\
    );
\data_out[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0ACFC0"
    )
        port map (
      I0 => \data_in_reg_n_0_[5]\,
      I1 => \data_in_reg_n_0_[1]\,
      I2 => \data_out[10]_i_6_n_0\,
      I3 => \data_in_reg_n_0_[9]\,
      I4 => \data_out[10]_i_5_n_0\,
      O => \data_out[12]_i_4_n_0\
    );
\data_out[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \data_in_reg_n_0_[12]\,
      I1 => diff(4),
      O => \data_out[12]_i_5_n_0\
    );
\data_out[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFE020"
    )
        port map (
      I0 => \data_out[14]_i_4_n_0\,
      I1 => diff(0),
      I2 => \data_out[14]_i_3_n_0\,
      I3 => \data_out[13]_i_2_n_0\,
      I4 => \data_out[13]_i_3_n_0\,
      O => \data_out[13]_i_1_n_0\
    );
\data_out[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3AAAA333"
    )
        port map (
      I0 => \data_out[13]_i_4_n_0\,
      I1 => \data_out[15]_i_7_n_0\,
      I2 => diff(0),
      I3 => diff(4),
      I4 => diff(1),
      O => \data_out[13]_i_2_n_0\
    );
\data_out[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFE0EFE0EFE0"
    )
        port map (
      I0 => data_out12_in,
      I1 => \ARG__53_carry__1_n_4\,
      I2 => \data_out[7]_i_3_n_0\,
      I3 => \data_out[13]_i_5_n_0\,
      I4 => \data_out[14]_i_8_n_0\,
      I5 => \SHIFT_RIGHT3_carry__2_n_7\,
      O => \data_out[13]_i_3_n_0\
    );
\data_out[13]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0ACFC0"
    )
        port map (
      I0 => \data_in_reg_n_0_[6]\,
      I1 => \data_in_reg_n_0_[2]\,
      I2 => \data_out[10]_i_6_n_0\,
      I3 => \data_in_reg_n_0_[10]\,
      I4 => \data_out[10]_i_5_n_0\,
      O => \data_out[13]_i_4_n_0\
    );
\data_out[13]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \data_in_reg_n_0_[13]\,
      I1 => diff(4),
      O => \data_out[13]_i_5_n_0\
    );
\data_out[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB010"
    )
        port map (
      I0 => diff(0),
      I1 => \data_out[14]_i_2_n_0\,
      I2 => \data_out[14]_i_3_n_0\,
      I3 => \data_out[14]_i_4_n_0\,
      I4 => \data_out[14]_i_5_n_0\,
      O => \data_out[14]_i_1_n_0\
    );
\data_out[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EABF2A80"
    )
        port map (
      I0 => \data_out[15]_i_7_n_0\,
      I1 => diff(0),
      I2 => diff(4),
      I3 => diff(1),
      I4 => \data_out[15]_i_8_n_0\,
      O => \data_out[14]_i_2_n_0\
    );
\data_out[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => diff(4),
      I1 => diff(3),
      I2 => diff(2),
      I3 => diff(1),
      I4 => diff(0),
      O => \data_out[14]_i_3_n_0\
    );
\data_out[14]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3AAAA333"
    )
        port map (
      I0 => \data_out[14]_i_6_n_0\,
      I1 => \data_out[15]_i_9_n_0\,
      I2 => diff(0),
      I3 => diff(4),
      I4 => diff(1),
      O => \data_out[14]_i_4_n_0\
    );
\data_out[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFE0EFE0EFE0"
    )
        port map (
      I0 => data_out12_in,
      I1 => \ARG__53_carry__2_n_7\,
      I2 => \data_out[7]_i_3_n_0\,
      I3 => \data_out[14]_i_7_n_0\,
      I4 => \data_out[14]_i_8_n_0\,
      I5 => \SHIFT_RIGHT3_carry__2_n_6\,
      O => \data_out[14]_i_5_n_0\
    );
\data_out[14]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0ACFC0"
    )
        port map (
      I0 => \data_in_reg_n_0_[7]\,
      I1 => \data_in_reg_n_0_[3]\,
      I2 => \data_out[10]_i_6_n_0\,
      I3 => \data_in_reg_n_0_[11]\,
      I4 => \data_out[10]_i_5_n_0\,
      O => \data_out[14]_i_6_n_0\
    );
\data_out[14]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \data_in_reg_n_0_[14]\,
      I1 => diff(4),
      O => \data_out[14]_i_7_n_0\
    );
\data_out[14]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_in_reg_n_0_[0]\,
      I1 => diff(4),
      O => \data_out[14]_i_8_n_0\
    );
\data_out[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => aresetn,
      I1 => data_out,
      O => data_out0
    );
\data_out[15]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => diff(0),
      I1 => diff(4),
      I2 => diff(1),
      O => \data_out[15]_i_10_n_0\
    );
\data_out[15]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \data_in_reg_n_0_[3]\,
      I1 => \data_in_reg_n_0_[11]\,
      I2 => \data_out[10]_i_5_n_0\,
      I3 => \data_in_reg_n_0_[7]\,
      I4 => \data_out[10]_i_6_n_0\,
      I5 => \data_in_reg_n_0_[15]\,
      O => \data_out[15]_i_11_n_0\
    );
\data_out[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0A0A0F3F300FF"
    )
        port map (
      I0 => \data_in_reg_n_0_[15]\,
      I1 => \data_out[15]_i_3_n_0\,
      I2 => \data_out[15]_i_4_n_0\,
      I3 => \data_out[15]_i_5_n_0\,
      I4 => diff(4),
      I5 => \data_out[15]_i_6_n_0\,
      O => \data_out[15]_i_2_n_0\
    );
\data_out[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[15]_i_7_n_0\,
      I1 => \data_out[15]_i_8_n_0\,
      I2 => diff(0),
      I3 => \data_out[15]_i_9_n_0\,
      I4 => \data_out[15]_i_10_n_0\,
      I5 => \data_out[15]_i_11_n_0\,
      O => \data_out[15]_i_3_n_0\
    );
\data_out[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \SHIFT_RIGHT3_carry__2_n_5\,
      I1 => \data_in_reg_n_0_[0]\,
      I2 => diff(4),
      O => \data_out[15]_i_4_n_0\
    );
\data_out[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_out0,
      I1 => data_out12_in,
      O => \data_out[15]_i_5_n_0\
    );
\data_out[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => diff(0),
      I1 => diff(1),
      I2 => diff(2),
      I3 => diff(3),
      O => \data_out[15]_i_6_n_0\
    );
\data_out[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \data_in_reg_n_0_[0]\,
      I1 => \data_in_reg_n_0_[8]\,
      I2 => \data_out[10]_i_5_n_0\,
      I3 => \data_in_reg_n_0_[4]\,
      I4 => \data_out[10]_i_6_n_0\,
      I5 => \data_in_reg_n_0_[12]\,
      O => \data_out[15]_i_7_n_0\
    );
\data_out[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \data_in_reg_n_0_[2]\,
      I1 => \data_in_reg_n_0_[10]\,
      I2 => \data_out[10]_i_5_n_0\,
      I3 => \data_in_reg_n_0_[6]\,
      I4 => \data_out[10]_i_6_n_0\,
      I5 => \data_in_reg_n_0_[14]\,
      O => \data_out[15]_i_8_n_0\
    );
\data_out[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \data_in_reg_n_0_[1]\,
      I1 => \data_in_reg_n_0_[9]\,
      I2 => \data_out[10]_i_5_n_0\,
      I3 => \data_in_reg_n_0_[5]\,
      I4 => \data_out[10]_i_6_n_0\,
      I5 => \data_in_reg_n_0_[13]\,
      O => \data_out[15]_i_9_n_0\
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E0E0E0EFEFEFE0"
    )
        port map (
      I0 => data_out12_in,
      I1 => \ARG__0_carry_n_6\,
      I2 => \data_out[7]_i_3_n_0\,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[1]\,
      I5 => \data_out[1]_i_2_n_0\,
      O => \data_out[1]_i_1_n_0\
    );
\data_out[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF00FE00FF00"
    )
        port map (
      I0 => \data_out[10]_i_5_n_0\,
      I1 => \data_out[10]_i_6_n_0\,
      I2 => \data_out[1]_i_3_n_0\,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[0]\,
      I5 => SHIFT_RIGHT3_carry_n_7,
      O => \data_out[1]_i_2_n_0\
    );
\data_out[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => diff(1),
      I1 => diff(4),
      I2 => diff(0),
      O => \data_out[1]_i_3_n_0\
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFF444F4"
    )
        port map (
      I0 => \data_out[2]_i_2_n_0\,
      I1 => \data_out[14]_i_3_n_0\,
      I2 => \data_out[2]_i_3_n_0\,
      I3 => \data_out[7]_i_3_n_0\,
      I4 => \ARG__53_carry_n_7\,
      I5 => data_out12_in,
      O => \data_out[2]_i_1_n_0\
    );
\data_out[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFFFFEF0000"
    )
        port map (
      I0 => \data_out[15]_i_10_n_0\,
      I1 => \data_out[10]_i_5_n_0\,
      I2 => \data_in_reg_n_0_[1]\,
      I3 => \data_out[10]_i_6_n_0\,
      I4 => diff(0),
      I5 => \data_out[3]_i_4_n_0\,
      O => \data_out[2]_i_2_n_0\
    );
\data_out[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CA0A"
    )
        port map (
      I0 => \data_in_reg_n_0_[2]\,
      I1 => \data_in_reg_n_0_[0]\,
      I2 => diff(4),
      I3 => SHIFT_RIGHT3_carry_n_6,
      O => \data_out[2]_i_3_n_0\
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEEE2"
    )
        port map (
      I0 => \data_out[3]_i_2_n_0\,
      I1 => \data_out[7]_i_3_n_0\,
      I2 => \ARG__53_carry_n_6\,
      I3 => data_out12_in,
      I4 => \data_out[3]_i_3_n_0\,
      O => \data_out[3]_i_1_n_0\
    );
\data_out[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CA0A"
    )
        port map (
      I0 => \data_in_reg_n_0_[3]\,
      I1 => \data_in_reg_n_0_[0]\,
      I2 => diff(4),
      I3 => SHIFT_RIGHT3_carry_n_5,
      O => \data_out[3]_i_2_n_0\
    );
\data_out[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4C40"
    )
        port map (
      I0 => \data_out[3]_i_4_n_0\,
      I1 => \data_out[14]_i_3_n_0\,
      I2 => diff(0),
      I3 => \data_out[4]_i_4_n_0\,
      O => \data_out[3]_i_3_n_0\
    );
\data_out[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF4F7"
    )
        port map (
      I0 => \data_in_reg_n_0_[0]\,
      I1 => \data_out[15]_i_10_n_0\,
      I2 => \data_out[10]_i_6_n_0\,
      I3 => \data_in_reg_n_0_[2]\,
      I4 => \data_out[10]_i_5_n_0\,
      O => \data_out[3]_i_4_n_0\
    );
\data_out[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEEE2"
    )
        port map (
      I0 => \data_out[4]_i_2_n_0\,
      I1 => \data_out[7]_i_3_n_0\,
      I2 => \ARG__53_carry_n_5\,
      I3 => data_out12_in,
      I4 => \data_out[4]_i_3_n_0\,
      O => \data_out[4]_i_1_n_0\
    );
\data_out[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CA0A"
    )
        port map (
      I0 => \data_in_reg_n_0_[4]\,
      I1 => \data_in_reg_n_0_[0]\,
      I2 => diff(4),
      I3 => SHIFT_RIGHT3_carry_n_4,
      O => \data_out[4]_i_2_n_0\
    );
\data_out[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \data_out[5]_i_4_n_0\,
      I1 => \data_out[14]_i_3_n_0\,
      I2 => diff(0),
      I3 => \data_out[4]_i_4_n_0\,
      O => \data_out[4]_i_3_n_0\
    );
\data_out[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \data_in_reg_n_0_[1]\,
      I1 => \data_out[15]_i_10_n_0\,
      I2 => \data_out[10]_i_6_n_0\,
      I3 => \data_in_reg_n_0_[3]\,
      I4 => \data_out[10]_i_5_n_0\,
      O => \data_out[4]_i_4_n_0\
    );
\data_out[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEEE2"
    )
        port map (
      I0 => \data_out[5]_i_2_n_0\,
      I1 => \data_out[7]_i_3_n_0\,
      I2 => \ARG__53_carry_n_4\,
      I3 => data_out12_in,
      I4 => \data_out[5]_i_3_n_0\,
      O => \data_out[5]_i_1_n_0\
    );
\data_out[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CA0A"
    )
        port map (
      I0 => \data_in_reg_n_0_[5]\,
      I1 => \data_in_reg_n_0_[0]\,
      I2 => diff(4),
      I3 => \SHIFT_RIGHT3_carry__0_n_7\,
      O => \data_out[5]_i_2_n_0\
    );
\data_out[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8C80"
    )
        port map (
      I0 => \data_out[5]_i_4_n_0\,
      I1 => \data_out[14]_i_3_n_0\,
      I2 => diff(0),
      I3 => \data_out[6]_i_4_n_0\,
      O => \data_out[5]_i_3_n_0\
    );
\data_out[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \data_in_reg_n_0_[2]\,
      I1 => \data_out[15]_i_10_n_0\,
      I2 => \data_in_reg_n_0_[0]\,
      I3 => \data_out[10]_i_5_n_0\,
      I4 => \data_in_reg_n_0_[4]\,
      I5 => \data_out[10]_i_6_n_0\,
      O => \data_out[5]_i_4_n_0\
    );
\data_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEEE2"
    )
        port map (
      I0 => \data_out[6]_i_2_n_0\,
      I1 => \data_out[7]_i_3_n_0\,
      I2 => \ARG__53_carry__0_n_7\,
      I3 => data_out12_in,
      I4 => \data_out[6]_i_3_n_0\,
      O => \data_out[6]_i_1_n_0\
    );
\data_out[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CA0A"
    )
        port map (
      I0 => \data_in_reg_n_0_[6]\,
      I1 => \data_in_reg_n_0_[0]\,
      I2 => diff(4),
      I3 => \SHIFT_RIGHT3_carry__0_n_6\,
      O => \data_out[6]_i_2_n_0\
    );
\data_out[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8C8C8C8080808C80"
    )
        port map (
      I0 => \data_out[6]_i_4_n_0\,
      I1 => \data_out[14]_i_3_n_0\,
      I2 => diff(0),
      I3 => \data_out[7]_i_6_n_0\,
      I4 => \data_out[15]_i_10_n_0\,
      I5 => \data_out[7]_i_5_n_0\,
      O => \data_out[6]_i_3_n_0\
    );
\data_out[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \data_in_reg_n_0_[3]\,
      I1 => \data_out[15]_i_10_n_0\,
      I2 => \data_in_reg_n_0_[1]\,
      I3 => \data_out[10]_i_5_n_0\,
      I4 => \data_in_reg_n_0_[5]\,
      I5 => \data_out[10]_i_6_n_0\,
      O => \data_out[6]_i_4_n_0\
    );
\data_out[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEEE2"
    )
        port map (
      I0 => \data_out[7]_i_2_n_0\,
      I1 => \data_out[7]_i_3_n_0\,
      I2 => \ARG__53_carry__0_n_6\,
      I3 => data_out12_in,
      I4 => \data_out[7]_i_4_n_0\,
      O => \data_out[7]_i_1_n_0\
    );
\data_out[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CA0A"
    )
        port map (
      I0 => \data_in_reg_n_0_[7]\,
      I1 => \data_in_reg_n_0_[0]\,
      I2 => diff(4),
      I3 => \SHIFT_RIGHT3_carry__0_n_5\,
      O => \data_out[7]_i_2_n_0\
    );
\data_out[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555554"
    )
        port map (
      I0 => diff(4),
      I1 => diff(3),
      I2 => diff(2),
      I3 => diff(1),
      I4 => diff(0),
      O => \data_out[7]_i_3_n_0\
    );
\data_out[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800FF00B8000000"
    )
        port map (
      I0 => \data_out[7]_i_5_n_0\,
      I1 => \data_out[15]_i_10_n_0\,
      I2 => \data_out[7]_i_6_n_0\,
      I3 => \data_out[14]_i_3_n_0\,
      I4 => diff(0),
      I5 => \data_out[8]_i_3_n_0\,
      O => \data_out[7]_i_4_n_0\
    );
\data_out[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \data_in_reg_n_0_[0]\,
      I1 => \data_out[10]_i_5_n_0\,
      I2 => \data_in_reg_n_0_[4]\,
      I3 => \data_out[10]_i_6_n_0\,
      O => \data_out[7]_i_5_n_0\
    );
\data_out[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \data_in_reg_n_0_[2]\,
      I1 => \data_out[10]_i_5_n_0\,
      I2 => \data_in_reg_n_0_[6]\,
      I3 => \data_out[10]_i_6_n_0\,
      O => \data_out[7]_i_6_n_0\
    );
\data_out[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAAEAAA"
    )
        port map (
      I0 => \data_out[8]_i_2_n_0\,
      I1 => \data_out[8]_i_3_n_0\,
      I2 => diff(0),
      I3 => \data_out[14]_i_3_n_0\,
      I4 => \data_out[9]_i_3_n_0\,
      O => \data_out[8]_i_1_n_0\
    );
\data_out[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFE0EFE0EFE0"
    )
        port map (
      I0 => data_out12_in,
      I1 => \ARG__53_carry__0_n_5\,
      I2 => \data_out[7]_i_3_n_0\,
      I3 => \data_out[8]_i_4_n_0\,
      I4 => \data_out[14]_i_8_n_0\,
      I5 => \SHIFT_RIGHT3_carry__0_n_4\,
      O => \data_out[8]_i_2_n_0\
    );
\data_out[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[8]_i_5_n_0\,
      I1 => \data_out[8]_i_6_n_0\,
      I2 => \data_out[15]_i_10_n_0\,
      I3 => \data_out[8]_i_7_n_0\,
      I4 => \data_out[10]_i_5_n_0\,
      I5 => \data_out[8]_i_8_n_0\,
      O => \data_out[8]_i_3_n_0\
    );
\data_out[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \data_in_reg_n_0_[8]\,
      I1 => diff(4),
      O => \data_out[8]_i_4_n_0\
    );
\data_out[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888802222222A"
    )
        port map (
      I0 => \data_in_reg_n_0_[1]\,
      I1 => diff(4),
      I2 => diff(0),
      I3 => diff(1),
      I4 => diff(2),
      I5 => diff(3),
      O => \data_out[8]_i_5_n_0\
    );
\data_out[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888802222222A"
    )
        port map (
      I0 => \data_in_reg_n_0_[5]\,
      I1 => diff(4),
      I2 => diff(0),
      I3 => diff(1),
      I4 => diff(2),
      I5 => diff(3),
      O => \data_out[8]_i_6_n_0\
    );
\data_out[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888802222222A"
    )
        port map (
      I0 => \data_in_reg_n_0_[3]\,
      I1 => diff(4),
      I2 => diff(0),
      I3 => diff(1),
      I4 => diff(2),
      I5 => diff(3),
      O => \data_out[8]_i_7_n_0\
    );
\data_out[8]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888802222222A"
    )
        port map (
      I0 => \data_in_reg_n_0_[7]\,
      I1 => diff(4),
      I2 => diff(0),
      I3 => diff(1),
      I4 => diff(2),
      I5 => diff(3),
      O => \data_out[8]_i_8_n_0\
    );
\data_out[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAAAEAA"
    )
        port map (
      I0 => \data_out[9]_i_2_n_0\,
      I1 => \data_out[10]_i_3_n_0\,
      I2 => diff(0),
      I3 => \data_out[14]_i_3_n_0\,
      I4 => \data_out[9]_i_3_n_0\,
      O => \data_out[9]_i_1_n_0\
    );
\data_out[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFE0EFE0EFE0"
    )
        port map (
      I0 => data_out12_in,
      I1 => \ARG__53_carry__0_n_4\,
      I2 => \data_out[7]_i_3_n_0\,
      I3 => \data_out[9]_i_4_n_0\,
      I4 => \data_out[14]_i_8_n_0\,
      I5 => \SHIFT_RIGHT3_carry__1_n_7\,
      O => \data_out[9]_i_2_n_0\
    );
\data_out[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \data_in_reg_n_0_[2]\,
      I1 => \data_out[10]_i_5_n_0\,
      I2 => \data_in_reg_n_0_[6]\,
      I3 => \data_out[10]_i_6_n_0\,
      I4 => \data_out[15]_i_10_n_0\,
      I5 => \data_out[11]_i_4_n_0\,
      O => \data_out[9]_i_3_n_0\
    );
\data_out[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \data_in_reg_n_0_[9]\,
      I1 => diff(4),
      O => \data_out[9]_i_4_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out0,
      D => \data_out[0]_i_1_n_0\,
      Q => m_axis_tdata(0),
      R => '0'
    );
\data_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out0,
      D => \data_out[10]_i_1_n_0\,
      Q => m_axis_tdata(10),
      R => '0'
    );
\data_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out0,
      D => \data_out[11]_i_1_n_0\,
      Q => m_axis_tdata(11),
      R => '0'
    );
\data_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out0,
      D => \data_out[12]_i_1_n_0\,
      Q => m_axis_tdata(12),
      R => '0'
    );
\data_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out0,
      D => \data_out[13]_i_1_n_0\,
      Q => m_axis_tdata(13),
      R => '0'
    );
\data_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out0,
      D => \data_out[14]_i_1_n_0\,
      Q => m_axis_tdata(14),
      R => '0'
    );
\data_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out0,
      D => \data_out[15]_i_2_n_0\,
      Q => m_axis_tdata(15),
      R => '0'
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out0,
      D => \data_out[1]_i_1_n_0\,
      Q => m_axis_tdata(1),
      R => '0'
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out0,
      D => \data_out[2]_i_1_n_0\,
      Q => m_axis_tdata(2),
      R => '0'
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out0,
      D => \data_out[3]_i_1_n_0\,
      Q => m_axis_tdata(3),
      R => '0'
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out0,
      D => \data_out[4]_i_1_n_0\,
      Q => m_axis_tdata(4),
      R => '0'
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out0,
      D => \data_out[5]_i_1_n_0\,
      Q => m_axis_tdata(5),
      R => '0'
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out0,
      D => \data_out[6]_i_1_n_0\,
      Q => m_axis_tdata(6),
      R => '0'
    );
\data_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out0,
      D => \data_out[7]_i_1_n_0\,
      Q => m_axis_tdata(7),
      R => '0'
    );
\data_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out0,
      D => \data_out[8]_i_1_n_0\,
      Q => m_axis_tdata(8),
      R => '0'
    );
\data_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out0,
      D => \data_out[9]_i_1_n_0\,
      Q => m_axis_tdata(9),
      R => '0'
    );
\diff[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => volume_reg(0),
      O => B(0)
    );
\diff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => volume_reg(1),
      I1 => volume_reg(0),
      O => B(1)
    );
\diff[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => volume_reg(2),
      I1 => volume_reg(0),
      I2 => volume_reg(1),
      O => B(2)
    );
\diff[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9555"
    )
        port map (
      I0 => volume_reg(3),
      I1 => volume_reg(1),
      I2 => volume_reg(0),
      I3 => volume_reg(2),
      O => B(3)
    );
\diff[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000000"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => tlast_expected,
      I2 => s_axis_tlast,
      I3 => aresetn,
      I4 => \^s_axis_tready\,
      O => tlast_sampled0
    );
\diff[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"007F"
    )
        port map (
      I0 => volume_reg(2),
      I1 => volume_reg(0),
      I2 => volume_reg(1),
      I3 => volume_reg(3),
      O => B(4)
    );
\diff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tlast_sampled0,
      D => B(0),
      Q => diff(0),
      R => '0'
    );
\diff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tlast_sampled0,
      D => B(1),
      Q => diff(1),
      R => '0'
    );
\diff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tlast_sampled0,
      D => B(2),
      Q => diff(2),
      R => '0'
    );
\diff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tlast_sampled0,
      D => B(3),
      Q => diff(3),
      R => '0'
    );
\diff_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tlast_sampled0,
      D => B(4),
      Q => diff(4),
      R => '0'
    );
m_axis_tlast_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlast_sampled,
      I1 => \^m_axis_tvalid\,
      O => m_axis_tlast
    );
tlast_expected_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F20"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tlast,
      I2 => s_axis_tvalid,
      I3 => tlast_expected,
      O => tlast_expected_i_1_n_0
    );
tlast_expected_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \FSM_onehot_state[1]_i_2_n_0\,
      D => tlast_expected_i_1_n_0,
      Q => tlast_expected
    );
tlast_sampled_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tlast_sampled0,
      D => s_axis_tlast,
      Q => tlast_sampled,
      R => '0'
    );
\volume[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0000FE80FFFF00"
    )
        port map (
      I0 => volume_reg(3),
      I1 => volume_reg(2),
      I2 => volume_reg(1),
      I3 => volume_reg(0),
      I4 => volume_up,
      I5 => volume_down,
      O => \volume[0]_i_1_n_0\
    );
\volume[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F08FF0F0F0F00EF0"
    )
        port map (
      I0 => volume_reg(3),
      I1 => volume_reg(2),
      I2 => volume_reg(1),
      I3 => volume_down,
      I4 => volume_up,
      I5 => volume_reg(0),
      O => \volume[1]_i_1_n_0\
    );
\volume[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCBCCCCCC2CCCC"
    )
        port map (
      I0 => volume_reg(3),
      I1 => volume_reg(2),
      I2 => volume_reg(0),
      I3 => volume_up,
      I4 => volume_down,
      I5 => volume_reg(1),
      O => \volume[2]_i_1_n_0\
    );
\volume[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAAAAAAAAAAAA8A"
    )
        port map (
      I0 => volume_reg(3),
      I1 => volume_reg(1),
      I2 => volume_down,
      I3 => volume_up,
      I4 => volume_reg(0),
      I5 => volume_reg(2),
      O => \volume[3]_i_1_n_0\
    );
\volume_level[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF7F00FF0100FF"
    )
        port map (
      I0 => volume_reg(3),
      I1 => volume_reg(2),
      I2 => volume_reg(1),
      I3 => volume_reg(0),
      I4 => volume_down,
      I5 => volume_up,
      O => plusOp0(0)
    );
\volume_level[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A56"
    )
        port map (
      I0 => volume_reg(1),
      I1 => volume_reg(0),
      I2 => volume_up,
      I3 => volume_down,
      O => plusOp0(1)
    );
\volume_level[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"599AAAAA"
    )
        port map (
      I0 => volume_reg(2),
      I1 => volume_down,
      I2 => volume_up,
      I3 => volume_reg(0),
      I4 => volume_reg(1),
      O => plusOp0(2)
    );
\volume_level[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAA666AAAAAAAAA"
    )
        port map (
      I0 => volume_reg(3),
      I1 => volume_reg(1),
      I2 => volume_reg(0),
      I3 => volume_up,
      I4 => volume_down,
      I5 => volume_reg(2),
      O => plusOp0(3)
    );
\volume_level[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A220000000000000"
    )
        port map (
      I0 => volume_reg(2),
      I1 => volume_down,
      I2 => volume_up,
      I3 => volume_reg(0),
      I4 => volume_reg(1),
      I5 => volume_reg(3),
      O => plusOp0(4)
    );
\volume_level_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => plusOp0(0),
      Q => volume_level(0),
      R => '0'
    );
\volume_level_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => plusOp0(1),
      Q => volume_level(1),
      R => '0'
    );
\volume_level_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => plusOp0(2),
      Q => volume_level(2),
      R => '0'
    );
\volume_level_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => plusOp0(3),
      Q => volume_level(3),
      R => '0'
    );
\volume_level_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => plusOp0(4),
      Q => volume_level(4),
      R => '0'
    );
\volume_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \volume[0]_i_1_n_0\,
      PRE => \FSM_onehot_state[1]_i_2_n_0\,
      Q => volume_reg(0)
    );
\volume_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \volume[1]_i_1_n_0\,
      PRE => \FSM_onehot_state[1]_i_2_n_0\,
      Q => volume_reg(1)
    );
\volume_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \volume[2]_i_1_n_0\,
      PRE => \FSM_onehot_state[1]_i_2_n_0\,
      Q => volume_reg(2)
    );
\volume_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \FSM_onehot_state[1]_i_2_n_0\,
      D => \volume[3]_i_1_n_0\,
      Q => volume_reg(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_mov_av_v2_volume_controller_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    volume_up : in STD_LOGIC;
    volume_down : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    volume_level : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_mov_av_v2_volume_controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_mov_av_v2_volume_controller_0_0 : entity is "bd_mov_av_v2_volume_controller_0_0,volume_controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of bd_mov_av_v2_volume_controller_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of bd_mov_av_v2_volume_controller_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of bd_mov_av_v2_volume_controller_0_0 : entity is "volume_controller,Vivado 2019.2";
end bd_mov_av_v2_volume_controller_0_0;

architecture STRUCTURE of bd_mov_av_v2_volume_controller_0_0 is
  signal \^volume_level\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_parameter of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_parameter of s_axis_tvalid : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
  volume_level(15) <= \^volume_level\(4);
  volume_level(14) <= \^volume_level\(4);
  volume_level(13) <= \^volume_level\(4);
  volume_level(12) <= \^volume_level\(4);
  volume_level(11) <= \^volume_level\(4);
  volume_level(10) <= \^volume_level\(4);
  volume_level(9) <= \^volume_level\(4);
  volume_level(8) <= \^volume_level\(4);
  volume_level(7) <= \^volume_level\(4);
  volume_level(6) <= \^volume_level\(4);
  volume_level(5) <= \^volume_level\(4);
  volume_level(4 downto 0) <= \^volume_level\(4 downto 0);
U0: entity work.bd_mov_av_v2_volume_controller_0_0_volume_controller
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axis_tdata(15 downto 0) => m_axis_tdata(15 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(15 downto 0) => s_axis_tdata(15 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      volume_down => volume_down,
      volume_level(4 downto 0) => \^volume_level\(4 downto 0),
      volume_up => volume_up
    );
end STRUCTURE;

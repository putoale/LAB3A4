-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue May 19 12:00:50 2020
-- Host        : DESKTOP-O39JAIK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Vivado_DESD_Project/Project/Personal/Lab3_A4/LAB3A4/Sources/BD/bd_mov_av_v2/ip/bd_mov_av_v2_moving_average_v2_0_0/bd_mov_av_v2_moving_average_v2_0_0_sim_netlist.vhdl
-- Design      : bd_mov_av_v2_moving_average_v2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_mov_av_v2_moving_average_v2_0_0_moving_average_v2 is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    clk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    sw_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_mov_av_v2_moving_average_v2_0_0_moving_average_v2 : entity is "moving_average_v2";
end bd_mov_av_v2_moving_average_v2_0_0_moving_average_v2;

architecture STRUCTURE of bd_mov_av_v2_moving_average_v2_0_0_moving_average_v2 is
  signal \FSM_onehot_state1[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state1[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state1[5]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state1[5]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state1_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state1_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state1_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state1_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state1_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_state2[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state2[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state2_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state2_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state2_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state2_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state2_reg_n_0_[5]\ : STD_LOGIC;
  signal data_in_dx : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_in_sx : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_out_dx : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_out_dx0 : STD_LOGIC;
  signal \data_out_dx0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \data_out_dx0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \data_out_dx0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \data_out_dx0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \data_out_dx0_carry__0_n_0\ : STD_LOGIC;
  signal \data_out_dx0_carry__0_n_1\ : STD_LOGIC;
  signal \data_out_dx0_carry__0_n_2\ : STD_LOGIC;
  signal \data_out_dx0_carry__0_n_3\ : STD_LOGIC;
  signal \data_out_dx0_carry__0_n_4\ : STD_LOGIC;
  signal \data_out_dx0_carry__0_n_5\ : STD_LOGIC;
  signal \data_out_dx0_carry__0_n_6\ : STD_LOGIC;
  signal \data_out_dx0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \data_out_dx0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \data_out_dx0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \data_out_dx0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \data_out_dx0_carry__1_n_0\ : STD_LOGIC;
  signal \data_out_dx0_carry__1_n_1\ : STD_LOGIC;
  signal \data_out_dx0_carry__1_n_2\ : STD_LOGIC;
  signal \data_out_dx0_carry__1_n_3\ : STD_LOGIC;
  signal \data_out_dx0_carry__1_n_4\ : STD_LOGIC;
  signal \data_out_dx0_carry__1_n_5\ : STD_LOGIC;
  signal \data_out_dx0_carry__1_n_6\ : STD_LOGIC;
  signal \data_out_dx0_carry__1_n_7\ : STD_LOGIC;
  signal \data_out_dx0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \data_out_dx0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \data_out_dx0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \data_out_dx0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \data_out_dx0_carry__2_n_0\ : STD_LOGIC;
  signal \data_out_dx0_carry__2_n_1\ : STD_LOGIC;
  signal \data_out_dx0_carry__2_n_2\ : STD_LOGIC;
  signal \data_out_dx0_carry__2_n_3\ : STD_LOGIC;
  signal \data_out_dx0_carry__2_n_4\ : STD_LOGIC;
  signal \data_out_dx0_carry__2_n_5\ : STD_LOGIC;
  signal \data_out_dx0_carry__2_n_6\ : STD_LOGIC;
  signal \data_out_dx0_carry__2_n_7\ : STD_LOGIC;
  signal \data_out_dx0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \data_out_dx0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \data_out_dx0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \data_out_dx0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \data_out_dx0_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \data_out_dx0_carry__3_n_0\ : STD_LOGIC;
  signal \data_out_dx0_carry__3_n_1\ : STD_LOGIC;
  signal \data_out_dx0_carry__3_n_2\ : STD_LOGIC;
  signal \data_out_dx0_carry__3_n_3\ : STD_LOGIC;
  signal \data_out_dx0_carry__3_n_4\ : STD_LOGIC;
  signal \data_out_dx0_carry__3_n_5\ : STD_LOGIC;
  signal \data_out_dx0_carry__3_n_6\ : STD_LOGIC;
  signal \data_out_dx0_carry__3_n_7\ : STD_LOGIC;
  signal \data_out_dx0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \data_out_dx0_carry__4_n_7\ : STD_LOGIC;
  signal data_out_dx0_carry_i_1_n_0 : STD_LOGIC;
  signal data_out_dx0_carry_i_2_n_0 : STD_LOGIC;
  signal data_out_dx0_carry_i_3_n_0 : STD_LOGIC;
  signal data_out_dx0_carry_i_4_n_0 : STD_LOGIC;
  signal data_out_dx0_carry_n_0 : STD_LOGIC;
  signal data_out_dx0_carry_n_1 : STD_LOGIC;
  signal data_out_dx0_carry_n_2 : STD_LOGIC;
  signal data_out_dx0_carry_n_3 : STD_LOGIC;
  signal \data_out_dx[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_dx[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_dx[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_dx[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_dx[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_dx[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_dx[15]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_dx[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_dx[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_dx[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_dx[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_dx[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_dx[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_dx[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_dx[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_dx[9]_i_1_n_0\ : STD_LOGIC;
  signal data_out_sx : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_out_sx0 : STD_LOGIC;
  signal \data_out_sx0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \data_out_sx0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \data_out_sx0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \data_out_sx0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \data_out_sx0_carry__0_n_0\ : STD_LOGIC;
  signal \data_out_sx0_carry__0_n_1\ : STD_LOGIC;
  signal \data_out_sx0_carry__0_n_2\ : STD_LOGIC;
  signal \data_out_sx0_carry__0_n_3\ : STD_LOGIC;
  signal \data_out_sx0_carry__0_n_4\ : STD_LOGIC;
  signal \data_out_sx0_carry__0_n_5\ : STD_LOGIC;
  signal \data_out_sx0_carry__0_n_6\ : STD_LOGIC;
  signal \data_out_sx0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \data_out_sx0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \data_out_sx0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \data_out_sx0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \data_out_sx0_carry__1_n_0\ : STD_LOGIC;
  signal \data_out_sx0_carry__1_n_1\ : STD_LOGIC;
  signal \data_out_sx0_carry__1_n_2\ : STD_LOGIC;
  signal \data_out_sx0_carry__1_n_3\ : STD_LOGIC;
  signal \data_out_sx0_carry__1_n_4\ : STD_LOGIC;
  signal \data_out_sx0_carry__1_n_5\ : STD_LOGIC;
  signal \data_out_sx0_carry__1_n_6\ : STD_LOGIC;
  signal \data_out_sx0_carry__1_n_7\ : STD_LOGIC;
  signal \data_out_sx0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \data_out_sx0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \data_out_sx0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \data_out_sx0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \data_out_sx0_carry__2_n_0\ : STD_LOGIC;
  signal \data_out_sx0_carry__2_n_1\ : STD_LOGIC;
  signal \data_out_sx0_carry__2_n_2\ : STD_LOGIC;
  signal \data_out_sx0_carry__2_n_3\ : STD_LOGIC;
  signal \data_out_sx0_carry__2_n_4\ : STD_LOGIC;
  signal \data_out_sx0_carry__2_n_5\ : STD_LOGIC;
  signal \data_out_sx0_carry__2_n_6\ : STD_LOGIC;
  signal \data_out_sx0_carry__2_n_7\ : STD_LOGIC;
  signal \data_out_sx0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \data_out_sx0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \data_out_sx0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \data_out_sx0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \data_out_sx0_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \data_out_sx0_carry__3_n_0\ : STD_LOGIC;
  signal \data_out_sx0_carry__3_n_1\ : STD_LOGIC;
  signal \data_out_sx0_carry__3_n_2\ : STD_LOGIC;
  signal \data_out_sx0_carry__3_n_3\ : STD_LOGIC;
  signal \data_out_sx0_carry__3_n_4\ : STD_LOGIC;
  signal \data_out_sx0_carry__3_n_5\ : STD_LOGIC;
  signal \data_out_sx0_carry__3_n_6\ : STD_LOGIC;
  signal \data_out_sx0_carry__3_n_7\ : STD_LOGIC;
  signal \data_out_sx0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \data_out_sx0_carry__4_n_7\ : STD_LOGIC;
  signal data_out_sx0_carry_i_1_n_0 : STD_LOGIC;
  signal data_out_sx0_carry_i_2_n_0 : STD_LOGIC;
  signal data_out_sx0_carry_i_3_n_0 : STD_LOGIC;
  signal data_out_sx0_carry_i_4_n_0 : STD_LOGIC;
  signal data_out_sx0_carry_n_0 : STD_LOGIC;
  signal data_out_sx0_carry_n_1 : STD_LOGIC;
  signal data_out_sx0_carry_n_2 : STD_LOGIC;
  signal data_out_sx0_carry_n_3 : STD_LOGIC;
  signal last_sum_dx : STD_LOGIC;
  signal \last_sum_dx[0]_i_3_n_0\ : STD_LOGIC;
  signal \last_sum_dx[0]_i_4_n_0\ : STD_LOGIC;
  signal \last_sum_dx[0]_i_5_n_0\ : STD_LOGIC;
  signal \last_sum_dx[0]_i_6_n_0\ : STD_LOGIC;
  signal \last_sum_dx[12]_i_2_n_0\ : STD_LOGIC;
  signal \last_sum_dx[12]_i_3_n_0\ : STD_LOGIC;
  signal \last_sum_dx[12]_i_4_n_0\ : STD_LOGIC;
  signal \last_sum_dx[12]_i_5_n_0\ : STD_LOGIC;
  signal \last_sum_dx[16]_i_2_n_0\ : STD_LOGIC;
  signal \last_sum_dx[16]_i_3_n_0\ : STD_LOGIC;
  signal \last_sum_dx[16]_i_4_n_0\ : STD_LOGIC;
  signal \last_sum_dx[16]_i_5_n_0\ : STD_LOGIC;
  signal \last_sum_dx[20]_i_2_n_0\ : STD_LOGIC;
  signal \last_sum_dx[4]_i_2_n_0\ : STD_LOGIC;
  signal \last_sum_dx[4]_i_3_n_0\ : STD_LOGIC;
  signal \last_sum_dx[4]_i_4_n_0\ : STD_LOGIC;
  signal \last_sum_dx[4]_i_5_n_0\ : STD_LOGIC;
  signal \last_sum_dx[8]_i_2_n_0\ : STD_LOGIC;
  signal \last_sum_dx[8]_i_3_n_0\ : STD_LOGIC;
  signal \last_sum_dx[8]_i_4_n_0\ : STD_LOGIC;
  signal \last_sum_dx[8]_i_5_n_0\ : STD_LOGIC;
  signal last_sum_dx_reg : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \last_sum_dx_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \last_sum_dx_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \last_sum_dx_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \last_sum_dx_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \last_sum_dx_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \last_sum_dx_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \last_sum_dx_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \last_sum_dx_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \last_sum_dx_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \last_sum_dx_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \last_sum_dx_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \last_sum_dx_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \last_sum_dx_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \last_sum_dx_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \last_sum_dx_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \last_sum_dx_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \last_sum_dx_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \last_sum_dx_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \last_sum_dx_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \last_sum_dx_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \last_sum_dx_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \last_sum_dx_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \last_sum_dx_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \last_sum_dx_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \last_sum_dx_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \last_sum_dx_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \last_sum_dx_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \last_sum_dx_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \last_sum_dx_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \last_sum_dx_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \last_sum_dx_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \last_sum_dx_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \last_sum_dx_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \last_sum_dx_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \last_sum_dx_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \last_sum_dx_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \last_sum_dx_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \last_sum_dx_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \last_sum_dx_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \last_sum_dx_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \last_sum_dx_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \last_sum_sx[0]_i_1_n_0\ : STD_LOGIC;
  signal \last_sum_sx[0]_i_3_n_0\ : STD_LOGIC;
  signal \last_sum_sx[0]_i_4_n_0\ : STD_LOGIC;
  signal \last_sum_sx[0]_i_5_n_0\ : STD_LOGIC;
  signal \last_sum_sx[0]_i_6_n_0\ : STD_LOGIC;
  signal \last_sum_sx[12]_i_2_n_0\ : STD_LOGIC;
  signal \last_sum_sx[12]_i_3_n_0\ : STD_LOGIC;
  signal \last_sum_sx[12]_i_4_n_0\ : STD_LOGIC;
  signal \last_sum_sx[12]_i_5_n_0\ : STD_LOGIC;
  signal \last_sum_sx[16]_i_2_n_0\ : STD_LOGIC;
  signal \last_sum_sx[16]_i_3_n_0\ : STD_LOGIC;
  signal \last_sum_sx[16]_i_4_n_0\ : STD_LOGIC;
  signal \last_sum_sx[16]_i_5_n_0\ : STD_LOGIC;
  signal \last_sum_sx[20]_i_2_n_0\ : STD_LOGIC;
  signal \last_sum_sx[4]_i_2_n_0\ : STD_LOGIC;
  signal \last_sum_sx[4]_i_3_n_0\ : STD_LOGIC;
  signal \last_sum_sx[4]_i_4_n_0\ : STD_LOGIC;
  signal \last_sum_sx[4]_i_5_n_0\ : STD_LOGIC;
  signal \last_sum_sx[8]_i_2_n_0\ : STD_LOGIC;
  signal \last_sum_sx[8]_i_3_n_0\ : STD_LOGIC;
  signal \last_sum_sx[8]_i_4_n_0\ : STD_LOGIC;
  signal \last_sum_sx[8]_i_5_n_0\ : STD_LOGIC;
  signal last_sum_sx_reg : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \last_sum_sx_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \last_sum_sx_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \last_sum_sx_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \last_sum_sx_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \last_sum_sx_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \last_sum_sx_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \last_sum_sx_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \last_sum_sx_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \last_sum_sx_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \last_sum_sx_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \last_sum_sx_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \last_sum_sx_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \last_sum_sx_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \last_sum_sx_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \last_sum_sx_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \last_sum_sx_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \last_sum_sx_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \last_sum_sx_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \last_sum_sx_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \last_sum_sx_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \last_sum_sx_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \last_sum_sx_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \last_sum_sx_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \last_sum_sx_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \last_sum_sx_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \last_sum_sx_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \last_sum_sx_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \last_sum_sx_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \last_sum_sx_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \last_sum_sx_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \last_sum_sx_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \last_sum_sx_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \last_sum_sx_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \last_sum_sx_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \last_sum_sx_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \last_sum_sx_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \last_sum_sx_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \last_sum_sx_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \last_sum_sx_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \last_sum_sx_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \last_sum_sx_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \last_values_dx[0]_1\ : STD_LOGIC;
  signal \last_values_dx_reg[29][0]_srl30_U0_last_values_dx_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[29][10]_srl30_U0_last_values_dx_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[29][11]_srl30_U0_last_values_dx_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[29][12]_srl30_U0_last_values_dx_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[29][13]_srl30_U0_last_values_dx_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[29][14]_srl30_U0_last_values_dx_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[29][15]_srl30_U0_last_values_dx_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[29][1]_srl30_U0_last_values_dx_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[29][2]_srl30_U0_last_values_dx_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[29][3]_srl30_U0_last_values_dx_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[29][4]_srl30_U0_last_values_dx_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[29][5]_srl30_U0_last_values_dx_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[29][6]_srl30_U0_last_values_dx_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[29][7]_srl30_U0_last_values_dx_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[29][8]_srl30_U0_last_values_dx_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[29][9]_srl30_U0_last_values_dx_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[30][0]_U0_last_values_dx_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[30][10]_U0_last_values_dx_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[30][11]_U0_last_values_dx_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[30][12]_U0_last_values_dx_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[30][13]_U0_last_values_dx_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[30][14]_U0_last_values_dx_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[30][15]_U0_last_values_dx_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[30][1]_U0_last_values_dx_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[30][2]_U0_last_values_dx_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[30][3]_U0_last_values_dx_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[30][4]_U0_last_values_dx_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[30][5]_U0_last_values_dx_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[30][6]_U0_last_values_dx_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[30][7]_U0_last_values_dx_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[30][8]_U0_last_values_dx_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[30][9]_U0_last_values_dx_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg[31]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal last_values_dx_reg_c_30_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_31_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_32_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_33_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_34_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_35_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_36_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_37_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_38_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_39_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_40_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_41_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_42_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_43_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_44_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_45_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_46_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_47_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_48_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_49_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_50_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_51_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_52_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_53_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_54_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_55_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_56_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_57_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_58_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_59_n_0 : STD_LOGIC;
  signal last_values_dx_reg_c_n_0 : STD_LOGIC;
  signal \last_values_dx_reg_gate__0_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg_gate__10_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg_gate__11_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg_gate__12_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg_gate__13_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg_gate__14_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg_gate__1_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg_gate__2_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg_gate__3_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg_gate__4_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg_gate__5_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg_gate__6_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg_gate__7_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg_gate__8_n_0\ : STD_LOGIC;
  signal \last_values_dx_reg_gate__9_n_0\ : STD_LOGIC;
  signal last_values_dx_reg_gate_n_0 : STD_LOGIC;
  signal \last_values_sx[0]_0\ : STD_LOGIC;
  signal \last_values_sx_reg[29][0]_srl30_U0_last_values_sx_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[29][10]_srl30_U0_last_values_sx_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[29][11]_srl30_U0_last_values_sx_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[29][12]_srl30_U0_last_values_sx_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[29][13]_srl30_U0_last_values_sx_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[29][14]_srl30_U0_last_values_sx_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[29][15]_srl30_U0_last_values_sx_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[29][1]_srl30_U0_last_values_sx_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[29][2]_srl30_U0_last_values_sx_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[29][3]_srl30_U0_last_values_sx_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[29][4]_srl30_U0_last_values_sx_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[29][5]_srl30_U0_last_values_sx_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[29][6]_srl30_U0_last_values_sx_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[29][7]_srl30_U0_last_values_sx_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[29][8]_srl30_U0_last_values_sx_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[29][9]_srl30_U0_last_values_sx_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[30][0]_U0_last_values_sx_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[30][10]_U0_last_values_sx_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[30][11]_U0_last_values_sx_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[30][12]_U0_last_values_sx_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[30][13]_U0_last_values_sx_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[30][14]_U0_last_values_sx_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[30][15]_U0_last_values_sx_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[30][1]_U0_last_values_sx_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[30][2]_U0_last_values_sx_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[30][3]_U0_last_values_sx_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[30][4]_U0_last_values_sx_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[30][5]_U0_last_values_sx_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[30][6]_U0_last_values_sx_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[30][7]_U0_last_values_sx_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[30][8]_U0_last_values_sx_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[30][9]_U0_last_values_sx_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg[31]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal last_values_sx_reg_c_0_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_10_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_11_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_12_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_13_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_14_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_15_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_16_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_17_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_18_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_19_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_1_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_20_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_21_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_22_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_23_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_24_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_25_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_26_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_27_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_28_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_29_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_2_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_3_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_4_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_5_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_6_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_7_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_8_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_9_n_0 : STD_LOGIC;
  signal last_values_sx_reg_c_n_0 : STD_LOGIC;
  signal \last_values_sx_reg_gate__0_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg_gate__10_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg_gate__11_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg_gate__12_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg_gate__13_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg_gate__14_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg_gate__1_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg_gate__2_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg_gate__3_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg_gate__4_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg_gate__5_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg_gate__6_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg_gate__7_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg_gate__8_n_0\ : STD_LOGIC;
  signal \last_values_sx_reg_gate__9_n_0\ : STD_LOGIC;
  signal last_values_sx_reg_gate_n_0 : STD_LOGIC;
  signal \m_axis_tdata_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_0_in7_in : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal read_allowed_sx_i_1_n_0 : STD_LOGIC;
  signal read_allowed_sx_reg_n_0 : STD_LOGIC;
  signal sub_dx : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal sub_dx0 : STD_LOGIC;
  signal sub_dx00_in : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \sub_dx0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sub_dx0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sub_dx0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sub_dx0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sub_dx0_carry__0_n_0\ : STD_LOGIC;
  signal \sub_dx0_carry__0_n_1\ : STD_LOGIC;
  signal \sub_dx0_carry__0_n_2\ : STD_LOGIC;
  signal \sub_dx0_carry__0_n_3\ : STD_LOGIC;
  signal \sub_dx0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \sub_dx0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \sub_dx0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \sub_dx0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \sub_dx0_carry__1_n_0\ : STD_LOGIC;
  signal \sub_dx0_carry__1_n_1\ : STD_LOGIC;
  signal \sub_dx0_carry__1_n_2\ : STD_LOGIC;
  signal \sub_dx0_carry__1_n_3\ : STD_LOGIC;
  signal \sub_dx0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \sub_dx0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \sub_dx0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \sub_dx0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \sub_dx0_carry__2_n_0\ : STD_LOGIC;
  signal \sub_dx0_carry__2_n_1\ : STD_LOGIC;
  signal \sub_dx0_carry__2_n_2\ : STD_LOGIC;
  signal \sub_dx0_carry__2_n_3\ : STD_LOGIC;
  signal sub_dx0_carry_i_1_n_0 : STD_LOGIC;
  signal sub_dx0_carry_i_2_n_0 : STD_LOGIC;
  signal sub_dx0_carry_i_3_n_0 : STD_LOGIC;
  signal sub_dx0_carry_i_4_n_0 : STD_LOGIC;
  signal sub_dx0_carry_n_0 : STD_LOGIC;
  signal sub_dx0_carry_n_1 : STD_LOGIC;
  signal sub_dx0_carry_n_2 : STD_LOGIC;
  signal sub_dx0_carry_n_3 : STD_LOGIC;
  signal sub_sx : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal sub_sx0 : STD_LOGIC;
  signal sub_sx00_in : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \sub_sx0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sub_sx0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sub_sx0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sub_sx0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sub_sx0_carry__0_n_0\ : STD_LOGIC;
  signal \sub_sx0_carry__0_n_1\ : STD_LOGIC;
  signal \sub_sx0_carry__0_n_2\ : STD_LOGIC;
  signal \sub_sx0_carry__0_n_3\ : STD_LOGIC;
  signal \sub_sx0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \sub_sx0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \sub_sx0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \sub_sx0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \sub_sx0_carry__1_n_0\ : STD_LOGIC;
  signal \sub_sx0_carry__1_n_1\ : STD_LOGIC;
  signal \sub_sx0_carry__1_n_2\ : STD_LOGIC;
  signal \sub_sx0_carry__1_n_3\ : STD_LOGIC;
  signal \sub_sx0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \sub_sx0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \sub_sx0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \sub_sx0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \sub_sx0_carry__2_n_0\ : STD_LOGIC;
  signal \sub_sx0_carry__2_n_1\ : STD_LOGIC;
  signal \sub_sx0_carry__2_n_2\ : STD_LOGIC;
  signal \sub_sx0_carry__2_n_3\ : STD_LOGIC;
  signal sub_sx0_carry_i_1_n_0 : STD_LOGIC;
  signal sub_sx0_carry_i_2_n_0 : STD_LOGIC;
  signal sub_sx0_carry_i_3_n_0 : STD_LOGIC;
  signal sub_sx0_carry_i_4_n_0 : STD_LOGIC;
  signal sub_sx0_carry_n_0 : STD_LOGIC;
  signal sub_sx0_carry_n_1 : STD_LOGIC;
  signal sub_sx0_carry_n_2 : STD_LOGIC;
  signal sub_sx0_carry_n_3 : STD_LOGIC;
  signal sw_reg_dx0 : STD_LOGIC;
  signal sw_reg_dx_reg_n_0 : STD_LOGIC;
  signal sw_reg_sx0 : STD_LOGIC;
  signal sw_reg_sx_reg_n_0 : STD_LOGIC;
  signal tlast_sampled_dx_i_1_n_0 : STD_LOGIC;
  signal tlast_sampled_dx_reg_n_0 : STD_LOGIC;
  signal tlast_sampled_sx_i_1_n_0 : STD_LOGIC;
  signal tlast_sampled_sx_reg_n_0 : STD_LOGIC;
  signal write_allowed_sx_i_1_n_0 : STD_LOGIC;
  signal write_allowed_sx_reg_n_0 : STD_LOGIC;
  signal NLW_data_out_dx0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_data_out_dx0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_data_out_dx0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_data_out_dx0_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_data_out_sx0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_data_out_sx0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_data_out_sx0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_data_out_sx0_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_last_sum_dx_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_last_sum_dx_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_last_sum_sx_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_last_sum_sx_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_last_values_dx_reg[29][0]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_dx_reg[29][10]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_dx_reg[29][11]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_dx_reg[29][12]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_dx_reg[29][13]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_dx_reg[29][14]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_dx_reg[29][15]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_dx_reg[29][1]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_dx_reg[29][2]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_dx_reg[29][3]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_dx_reg[29][4]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_dx_reg[29][5]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_dx_reg[29][6]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_dx_reg[29][7]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_dx_reg[29][8]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_dx_reg[29][9]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_sx_reg[29][0]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_sx_reg[29][10]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_sx_reg[29][11]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_sx_reg[29][12]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_sx_reg[29][13]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_sx_reg[29][14]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_sx_reg[29][15]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_sx_reg[29][1]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_sx_reg[29][2]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_sx_reg[29][3]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_sx_reg[29][4]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_sx_reg[29][5]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_sx_reg[29][6]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_sx_reg[29][7]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_sx_reg[29][8]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_values_sx_reg[29][9]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_sub_dx0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sub_dx0_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sub_sx0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sub_sx0_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state1[5]_i_4\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state1_reg[0]\ : label is "idle:000010,receive_data:100000,subtraction:010000,average:001000,wait_write:000100,send_data:000001,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state1_reg[1]\ : label is "idle:000010,receive_data:100000,subtraction:010000,average:001000,wait_write:000100,send_data:000001,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state1_reg[2]\ : label is "idle:000010,receive_data:100000,subtraction:010000,average:001000,wait_write:000100,send_data:000001,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state1_reg[3]\ : label is "idle:000010,receive_data:100000,subtraction:010000,average:001000,wait_write:000100,send_data:000001,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state1_reg[4]\ : label is "idle:000010,receive_data:100000,subtraction:010000,average:001000,wait_write:000100,send_data:000001,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state1_reg[5]\ : label is "idle:000010,receive_data:100000,subtraction:010000,average:001000,wait_write:000100,send_data:000001,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state2_reg[0]\ : label is "idle:000010,receive_data:100000,subtraction:010000,average:001000,wait_write:000100,send_data:000001,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state2_reg[1]\ : label is "idle:000010,receive_data:100000,subtraction:010000,average:001000,wait_write:000100,send_data:000001,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state2_reg[2]\ : label is "idle:000010,receive_data:100000,subtraction:010000,average:001000,wait_write:000100,send_data:000001,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state2_reg[3]\ : label is "idle:000010,receive_data:100000,subtraction:010000,average:001000,wait_write:000100,send_data:000001,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state2_reg[4]\ : label is "idle:000010,receive_data:100000,subtraction:010000,average:001000,wait_write:000100,send_data:000001,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state2_reg[5]\ : label is "idle:000010,receive_data:100000,subtraction:010000,average:001000,wait_write:000100,send_data:000001,";
  attribute SOFT_HLUTNM of \data_out_dx[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_out_dx[10]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data_out_dx[11]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data_out_dx[12]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data_out_dx[13]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data_out_dx[14]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \data_out_dx[15]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_out_dx[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \data_out_dx[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data_out_dx[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data_out_dx[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data_out_dx[5]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data_out_dx[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data_out_dx[7]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data_out_dx[8]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data_out_dx[9]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data_out_sx[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data_out_sx[10]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \data_out_sx[11]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out_sx[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out_sx[13]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out_sx[14]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out_sx[15]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out_sx[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data_out_sx[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data_out_sx[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data_out_sx[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out_sx[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out_sx[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out_sx[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out_sx[8]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out_sx[9]_i_1\ : label is "soft_lutpair24";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \last_values_dx_reg[29][0]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29] ";
  attribute srl_name : string;
  attribute srl_name of \last_values_dx_reg[29][0]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29][0]_srl30_U0_last_values_dx_reg_c_58 ";
  attribute srl_bus_name of \last_values_dx_reg[29][10]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29] ";
  attribute srl_name of \last_values_dx_reg[29][10]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29][10]_srl30_U0_last_values_dx_reg_c_58 ";
  attribute srl_bus_name of \last_values_dx_reg[29][11]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29] ";
  attribute srl_name of \last_values_dx_reg[29][11]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29][11]_srl30_U0_last_values_dx_reg_c_58 ";
  attribute srl_bus_name of \last_values_dx_reg[29][12]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29] ";
  attribute srl_name of \last_values_dx_reg[29][12]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29][12]_srl30_U0_last_values_dx_reg_c_58 ";
  attribute srl_bus_name of \last_values_dx_reg[29][13]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29] ";
  attribute srl_name of \last_values_dx_reg[29][13]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29][13]_srl30_U0_last_values_dx_reg_c_58 ";
  attribute srl_bus_name of \last_values_dx_reg[29][14]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29] ";
  attribute srl_name of \last_values_dx_reg[29][14]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29][14]_srl30_U0_last_values_dx_reg_c_58 ";
  attribute srl_bus_name of \last_values_dx_reg[29][15]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29] ";
  attribute srl_name of \last_values_dx_reg[29][15]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29][15]_srl30_U0_last_values_dx_reg_c_58 ";
  attribute srl_bus_name of \last_values_dx_reg[29][1]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29] ";
  attribute srl_name of \last_values_dx_reg[29][1]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29][1]_srl30_U0_last_values_dx_reg_c_58 ";
  attribute srl_bus_name of \last_values_dx_reg[29][2]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29] ";
  attribute srl_name of \last_values_dx_reg[29][2]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29][2]_srl30_U0_last_values_dx_reg_c_58 ";
  attribute srl_bus_name of \last_values_dx_reg[29][3]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29] ";
  attribute srl_name of \last_values_dx_reg[29][3]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29][3]_srl30_U0_last_values_dx_reg_c_58 ";
  attribute srl_bus_name of \last_values_dx_reg[29][4]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29] ";
  attribute srl_name of \last_values_dx_reg[29][4]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29][4]_srl30_U0_last_values_dx_reg_c_58 ";
  attribute srl_bus_name of \last_values_dx_reg[29][5]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29] ";
  attribute srl_name of \last_values_dx_reg[29][5]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29][5]_srl30_U0_last_values_dx_reg_c_58 ";
  attribute srl_bus_name of \last_values_dx_reg[29][6]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29] ";
  attribute srl_name of \last_values_dx_reg[29][6]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29][6]_srl30_U0_last_values_dx_reg_c_58 ";
  attribute srl_bus_name of \last_values_dx_reg[29][7]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29] ";
  attribute srl_name of \last_values_dx_reg[29][7]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29][7]_srl30_U0_last_values_dx_reg_c_58 ";
  attribute srl_bus_name of \last_values_dx_reg[29][8]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29] ";
  attribute srl_name of \last_values_dx_reg[29][8]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29][8]_srl30_U0_last_values_dx_reg_c_58 ";
  attribute srl_bus_name of \last_values_dx_reg[29][9]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29] ";
  attribute srl_name of \last_values_dx_reg[29][9]_srl30_U0_last_values_dx_reg_c_58\ : label is "\U0/last_values_dx_reg[29][9]_srl30_U0_last_values_dx_reg_c_58 ";
  attribute SOFT_HLUTNM of last_values_dx_reg_gate : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__10\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__11\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__12\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__13\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__14\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__3\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__4\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__5\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__6\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__7\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__8\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__9\ : label is "soft_lutpair38";
  attribute srl_bus_name of \last_values_sx_reg[29][0]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29] ";
  attribute srl_name of \last_values_sx_reg[29][0]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29][0]_srl30_U0_last_values_sx_reg_c_28 ";
  attribute srl_bus_name of \last_values_sx_reg[29][10]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29] ";
  attribute srl_name of \last_values_sx_reg[29][10]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29][10]_srl30_U0_last_values_sx_reg_c_28 ";
  attribute srl_bus_name of \last_values_sx_reg[29][11]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29] ";
  attribute srl_name of \last_values_sx_reg[29][11]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29][11]_srl30_U0_last_values_sx_reg_c_28 ";
  attribute srl_bus_name of \last_values_sx_reg[29][12]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29] ";
  attribute srl_name of \last_values_sx_reg[29][12]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29][12]_srl30_U0_last_values_sx_reg_c_28 ";
  attribute srl_bus_name of \last_values_sx_reg[29][13]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29] ";
  attribute srl_name of \last_values_sx_reg[29][13]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29][13]_srl30_U0_last_values_sx_reg_c_28 ";
  attribute srl_bus_name of \last_values_sx_reg[29][14]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29] ";
  attribute srl_name of \last_values_sx_reg[29][14]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29][14]_srl30_U0_last_values_sx_reg_c_28 ";
  attribute srl_bus_name of \last_values_sx_reg[29][15]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29] ";
  attribute srl_name of \last_values_sx_reg[29][15]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29][15]_srl30_U0_last_values_sx_reg_c_28 ";
  attribute srl_bus_name of \last_values_sx_reg[29][1]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29] ";
  attribute srl_name of \last_values_sx_reg[29][1]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29][1]_srl30_U0_last_values_sx_reg_c_28 ";
  attribute srl_bus_name of \last_values_sx_reg[29][2]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29] ";
  attribute srl_name of \last_values_sx_reg[29][2]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29][2]_srl30_U0_last_values_sx_reg_c_28 ";
  attribute srl_bus_name of \last_values_sx_reg[29][3]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29] ";
  attribute srl_name of \last_values_sx_reg[29][3]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29][3]_srl30_U0_last_values_sx_reg_c_28 ";
  attribute srl_bus_name of \last_values_sx_reg[29][4]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29] ";
  attribute srl_name of \last_values_sx_reg[29][4]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29][4]_srl30_U0_last_values_sx_reg_c_28 ";
  attribute srl_bus_name of \last_values_sx_reg[29][5]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29] ";
  attribute srl_name of \last_values_sx_reg[29][5]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29][5]_srl30_U0_last_values_sx_reg_c_28 ";
  attribute srl_bus_name of \last_values_sx_reg[29][6]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29] ";
  attribute srl_name of \last_values_sx_reg[29][6]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29][6]_srl30_U0_last_values_sx_reg_c_28 ";
  attribute srl_bus_name of \last_values_sx_reg[29][7]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29] ";
  attribute srl_name of \last_values_sx_reg[29][7]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29][7]_srl30_U0_last_values_sx_reg_c_28 ";
  attribute srl_bus_name of \last_values_sx_reg[29][8]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29] ";
  attribute srl_name of \last_values_sx_reg[29][8]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29][8]_srl30_U0_last_values_sx_reg_c_28 ";
  attribute srl_bus_name of \last_values_sx_reg[29][9]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29] ";
  attribute srl_name of \last_values_sx_reg[29][9]_srl30_U0_last_values_sx_reg_c_28\ : label is "\U0/last_values_sx_reg[29][9]_srl30_U0_last_values_sx_reg_c_28 ";
  attribute SOFT_HLUTNM of last_values_sx_reg_gate : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__10\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__11\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__12\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__13\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__14\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__3\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__4\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__5\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__6\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__7\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__8\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__9\ : label is "soft_lutpair28";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[0]_i_1\ : label is "soft_lutpair15";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[10]\ : label is "LD";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[10]_i_1\ : label is "soft_lutpair13";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[11]\ : label is "LD";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[11]_i_1\ : label is "soft_lutpair12";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[12]\ : label is "LD";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[12]_i_1\ : label is "soft_lutpair11";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[13]\ : label is "LD";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[13]_i_1\ : label is "soft_lutpair10";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[14]\ : label is "LD";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[14]_i_1\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[15]\ : label is "LD";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[15]_i_1\ : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[1]_i_1\ : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[2]_i_1\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[3]_i_1\ : label is "soft_lutpair10";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[4]_i_1\ : label is "soft_lutpair11";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[5]\ : label is "LD";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[5]_i_1\ : label is "soft_lutpair12";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[6]\ : label is "LD";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[6]_i_1\ : label is "soft_lutpair13";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[7]\ : label is "LD";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[7]_i_1\ : label is "soft_lutpair14";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[8]\ : label is "LD";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[8]_i_1\ : label is "soft_lutpair15";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[9]\ : label is "LD";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[9]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of m_axis_tlast_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of m_axis_tvalid_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of read_allowed_sx_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of tlast_sampled_sx_i_1 : label is "soft_lutpair0";
begin
  m_axis_tvalid <= \^m_axis_tvalid\;
\FSM_onehot_state1[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEA"
    )
        port map (
      I0 => \FSM_onehot_state1[5]_i_3_n_0\,
      I1 => m_axis_tready,
      I2 => p_0_in8_in,
      I3 => \FSM_onehot_state1_reg_n_0_[4]\,
      I4 => \FSM_onehot_state1_reg_n_0_[3]\,
      O => \FSM_onehot_state1[5]_i_1_n_0\
    );
\FSM_onehot_state1[5]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \FSM_onehot_state1[5]_i_2_n_0\
    );
\FSM_onehot_state1[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \FSM_onehot_state1[5]_i_4_n_0\,
      I1 => s_axis_tlast,
      I2 => write_allowed_sx_reg_n_0,
      I3 => \FSM_onehot_state1_reg_n_0_[2]\,
      I4 => \FSM_onehot_state1_reg_n_0_[1]\,
      I5 => read_allowed_sx_reg_n_0,
      O => \FSM_onehot_state1[5]_i_3_n_0\
    );
\FSM_onehot_state1[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state1_reg_n_0_[5]\,
      I1 => s_axis_tvalid,
      O => \FSM_onehot_state1[5]_i_4_n_0\
    );
\FSM_onehot_state1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state1[5]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \FSM_onehot_state1_reg_n_0_[2]\,
      Q => p_0_in8_in
    );
\FSM_onehot_state1_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state1[5]_i_1_n_0\,
      D => p_0_in8_in,
      PRE => \FSM_onehot_state1[5]_i_2_n_0\,
      Q => \FSM_onehot_state1_reg_n_0_[1]\
    );
\FSM_onehot_state1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state1[5]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \FSM_onehot_state1_reg_n_0_[3]\,
      Q => \FSM_onehot_state1_reg_n_0_[2]\
    );
\FSM_onehot_state1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state1[5]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \FSM_onehot_state1_reg_n_0_[4]\,
      Q => \FSM_onehot_state1_reg_n_0_[3]\
    );
\FSM_onehot_state1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state1[5]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \FSM_onehot_state1_reg_n_0_[5]\,
      Q => \FSM_onehot_state1_reg_n_0_[4]\
    );
\FSM_onehot_state1_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state1[5]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \FSM_onehot_state1_reg_n_0_[1]\,
      Q => \FSM_onehot_state1_reg_n_0_[5]\
    );
\FSM_onehot_state2[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEEEEEEE"
    )
        port map (
      I0 => \FSM_onehot_state2_reg_n_0_[3]\,
      I1 => \FSM_onehot_state2[5]_i_2_n_0\,
      I2 => s_axis_tvalid,
      I3 => \FSM_onehot_state2_reg_n_0_[5]\,
      I4 => s_axis_tlast,
      I5 => \FSM_onehot_state2_reg_n_0_[4]\,
      O => \FSM_onehot_state2[5]_i_1_n_0\
    );
\FSM_onehot_state2[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8FFFF88F888F8"
    )
        port map (
      I0 => p_0_in7_in,
      I1 => m_axis_tready,
      I2 => \FSM_onehot_state2_reg_n_0_[2]\,
      I3 => write_allowed_sx_reg_n_0,
      I4 => read_allowed_sx_reg_n_0,
      I5 => \FSM_onehot_state2_reg_n_0_[1]\,
      O => \FSM_onehot_state2[5]_i_2_n_0\
    );
\FSM_onehot_state2_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state2[5]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \FSM_onehot_state2_reg_n_0_[2]\,
      Q => p_0_in7_in
    );
\FSM_onehot_state2_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state2[5]_i_1_n_0\,
      D => p_0_in7_in,
      PRE => \FSM_onehot_state1[5]_i_2_n_0\,
      Q => \FSM_onehot_state2_reg_n_0_[1]\
    );
\FSM_onehot_state2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state2[5]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \FSM_onehot_state2_reg_n_0_[3]\,
      Q => \FSM_onehot_state2_reg_n_0_[2]\
    );
\FSM_onehot_state2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state2[5]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \FSM_onehot_state2_reg_n_0_[4]\,
      Q => \FSM_onehot_state2_reg_n_0_[3]\
    );
\FSM_onehot_state2_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state2[5]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \FSM_onehot_state2_reg_n_0_[5]\,
      Q => \FSM_onehot_state2_reg_n_0_[4]\
    );
\FSM_onehot_state2_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state2[5]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \FSM_onehot_state2_reg_n_0_[1]\,
      Q => \FSM_onehot_state2_reg_n_0_[5]\
    );
\data_in_dx[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \FSM_onehot_state2_reg_n_0_[5]\,
      I2 => aresetn,
      O => sw_reg_dx0
    );
\data_in_dx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_dx0,
      D => s_axis_tdata(0),
      Q => data_in_dx(0),
      R => '0'
    );
\data_in_dx_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_dx0,
      D => s_axis_tdata(10),
      Q => data_in_dx(10),
      R => '0'
    );
\data_in_dx_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_dx0,
      D => s_axis_tdata(11),
      Q => data_in_dx(11),
      R => '0'
    );
\data_in_dx_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_dx0,
      D => s_axis_tdata(12),
      Q => data_in_dx(12),
      R => '0'
    );
\data_in_dx_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_dx0,
      D => s_axis_tdata(13),
      Q => data_in_dx(13),
      R => '0'
    );
\data_in_dx_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_dx0,
      D => s_axis_tdata(14),
      Q => data_in_dx(14),
      R => '0'
    );
\data_in_dx_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_dx0,
      D => s_axis_tdata(15),
      Q => data_in_dx(15),
      R => '0'
    );
\data_in_dx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_dx0,
      D => s_axis_tdata(1),
      Q => data_in_dx(1),
      R => '0'
    );
\data_in_dx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_dx0,
      D => s_axis_tdata(2),
      Q => data_in_dx(2),
      R => '0'
    );
\data_in_dx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_dx0,
      D => s_axis_tdata(3),
      Q => data_in_dx(3),
      R => '0'
    );
\data_in_dx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_dx0,
      D => s_axis_tdata(4),
      Q => data_in_dx(4),
      R => '0'
    );
\data_in_dx_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_dx0,
      D => s_axis_tdata(5),
      Q => data_in_dx(5),
      R => '0'
    );
\data_in_dx_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_dx0,
      D => s_axis_tdata(6),
      Q => data_in_dx(6),
      R => '0'
    );
\data_in_dx_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_dx0,
      D => s_axis_tdata(7),
      Q => data_in_dx(7),
      R => '0'
    );
\data_in_dx_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_dx0,
      D => s_axis_tdata(8),
      Q => data_in_dx(8),
      R => '0'
    );
\data_in_dx_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_dx0,
      D => s_axis_tdata(9),
      Q => data_in_dx(9),
      R => '0'
    );
\data_in_sx[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \FSM_onehot_state1_reg_n_0_[5]\,
      I2 => aresetn,
      O => sw_reg_sx0
    );
\data_in_sx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_sx0,
      D => s_axis_tdata(0),
      Q => data_in_sx(0),
      R => '0'
    );
\data_in_sx_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_sx0,
      D => s_axis_tdata(10),
      Q => data_in_sx(10),
      R => '0'
    );
\data_in_sx_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_sx0,
      D => s_axis_tdata(11),
      Q => data_in_sx(11),
      R => '0'
    );
\data_in_sx_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_sx0,
      D => s_axis_tdata(12),
      Q => data_in_sx(12),
      R => '0'
    );
\data_in_sx_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_sx0,
      D => s_axis_tdata(13),
      Q => data_in_sx(13),
      R => '0'
    );
\data_in_sx_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_sx0,
      D => s_axis_tdata(14),
      Q => data_in_sx(14),
      R => '0'
    );
\data_in_sx_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_sx0,
      D => s_axis_tdata(15),
      Q => data_in_sx(15),
      R => '0'
    );
\data_in_sx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_sx0,
      D => s_axis_tdata(1),
      Q => data_in_sx(1),
      R => '0'
    );
\data_in_sx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_sx0,
      D => s_axis_tdata(2),
      Q => data_in_sx(2),
      R => '0'
    );
\data_in_sx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_sx0,
      D => s_axis_tdata(3),
      Q => data_in_sx(3),
      R => '0'
    );
\data_in_sx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_sx0,
      D => s_axis_tdata(4),
      Q => data_in_sx(4),
      R => '0'
    );
\data_in_sx_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_sx0,
      D => s_axis_tdata(5),
      Q => data_in_sx(5),
      R => '0'
    );
\data_in_sx_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_sx0,
      D => s_axis_tdata(6),
      Q => data_in_sx(6),
      R => '0'
    );
\data_in_sx_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_sx0,
      D => s_axis_tdata(7),
      Q => data_in_sx(7),
      R => '0'
    );
\data_in_sx_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_sx0,
      D => s_axis_tdata(8),
      Q => data_in_sx(8),
      R => '0'
    );
\data_in_sx_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_sx0,
      D => s_axis_tdata(9),
      Q => data_in_sx(9),
      R => '0'
    );
data_out_dx0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => data_out_dx0_carry_n_0,
      CO(2) => data_out_dx0_carry_n_1,
      CO(1) => data_out_dx0_carry_n_2,
      CO(0) => data_out_dx0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => last_sum_dx_reg(3 downto 0),
      O(3 downto 0) => NLW_data_out_dx0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => data_out_dx0_carry_i_1_n_0,
      S(2) => data_out_dx0_carry_i_2_n_0,
      S(1) => data_out_dx0_carry_i_3_n_0,
      S(0) => data_out_dx0_carry_i_4_n_0
    );
\data_out_dx0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => data_out_dx0_carry_n_0,
      CO(3) => \data_out_dx0_carry__0_n_0\,
      CO(2) => \data_out_dx0_carry__0_n_1\,
      CO(1) => \data_out_dx0_carry__0_n_2\,
      CO(0) => \data_out_dx0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => last_sum_dx_reg(7 downto 4),
      O(3) => \data_out_dx0_carry__0_n_4\,
      O(2) => \data_out_dx0_carry__0_n_5\,
      O(1) => \data_out_dx0_carry__0_n_6\,
      O(0) => \NLW_data_out_dx0_carry__0_O_UNCONNECTED\(0),
      S(3) => \data_out_dx0_carry__0_i_1_n_0\,
      S(2) => \data_out_dx0_carry__0_i_2_n_0\,
      S(1) => \data_out_dx0_carry__0_i_3_n_0\,
      S(0) => \data_out_dx0_carry__0_i_4_n_0\
    );
\data_out_dx0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(7),
      I1 => sub_dx(7),
      O => \data_out_dx0_carry__0_i_1_n_0\
    );
\data_out_dx0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(6),
      I1 => sub_dx(6),
      O => \data_out_dx0_carry__0_i_2_n_0\
    );
\data_out_dx0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(5),
      I1 => sub_dx(5),
      O => \data_out_dx0_carry__0_i_3_n_0\
    );
\data_out_dx0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(4),
      I1 => sub_dx(4),
      O => \data_out_dx0_carry__0_i_4_n_0\
    );
\data_out_dx0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out_dx0_carry__0_n_0\,
      CO(3) => \data_out_dx0_carry__1_n_0\,
      CO(2) => \data_out_dx0_carry__1_n_1\,
      CO(1) => \data_out_dx0_carry__1_n_2\,
      CO(0) => \data_out_dx0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => last_sum_dx_reg(11 downto 8),
      O(3) => \data_out_dx0_carry__1_n_4\,
      O(2) => \data_out_dx0_carry__1_n_5\,
      O(1) => \data_out_dx0_carry__1_n_6\,
      O(0) => \data_out_dx0_carry__1_n_7\,
      S(3) => \data_out_dx0_carry__1_i_1_n_0\,
      S(2) => \data_out_dx0_carry__1_i_2_n_0\,
      S(1) => \data_out_dx0_carry__1_i_3_n_0\,
      S(0) => \data_out_dx0_carry__1_i_4_n_0\
    );
\data_out_dx0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(11),
      I1 => sub_dx(11),
      O => \data_out_dx0_carry__1_i_1_n_0\
    );
\data_out_dx0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(10),
      I1 => sub_dx(10),
      O => \data_out_dx0_carry__1_i_2_n_0\
    );
\data_out_dx0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(9),
      I1 => sub_dx(9),
      O => \data_out_dx0_carry__1_i_3_n_0\
    );
\data_out_dx0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(8),
      I1 => sub_dx(8),
      O => \data_out_dx0_carry__1_i_4_n_0\
    );
\data_out_dx0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out_dx0_carry__1_n_0\,
      CO(3) => \data_out_dx0_carry__2_n_0\,
      CO(2) => \data_out_dx0_carry__2_n_1\,
      CO(1) => \data_out_dx0_carry__2_n_2\,
      CO(0) => \data_out_dx0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => last_sum_dx_reg(15 downto 12),
      O(3) => \data_out_dx0_carry__2_n_4\,
      O(2) => \data_out_dx0_carry__2_n_5\,
      O(1) => \data_out_dx0_carry__2_n_6\,
      O(0) => \data_out_dx0_carry__2_n_7\,
      S(3) => \data_out_dx0_carry__2_i_1_n_0\,
      S(2) => \data_out_dx0_carry__2_i_2_n_0\,
      S(1) => \data_out_dx0_carry__2_i_3_n_0\,
      S(0) => \data_out_dx0_carry__2_i_4_n_0\
    );
\data_out_dx0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(15),
      I1 => sub_dx(15),
      O => \data_out_dx0_carry__2_i_1_n_0\
    );
\data_out_dx0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(14),
      I1 => sub_dx(14),
      O => \data_out_dx0_carry__2_i_2_n_0\
    );
\data_out_dx0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(13),
      I1 => sub_dx(13),
      O => \data_out_dx0_carry__2_i_3_n_0\
    );
\data_out_dx0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(12),
      I1 => sub_dx(12),
      O => \data_out_dx0_carry__2_i_4_n_0\
    );
\data_out_dx0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out_dx0_carry__2_n_0\,
      CO(3) => \data_out_dx0_carry__3_n_0\,
      CO(2) => \data_out_dx0_carry__3_n_1\,
      CO(1) => \data_out_dx0_carry__3_n_2\,
      CO(0) => \data_out_dx0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => last_sum_dx_reg(18 downto 17),
      DI(1) => \data_out_dx0_carry__3_i_1_n_0\,
      DI(0) => sub_dx(16),
      O(3) => \data_out_dx0_carry__3_n_4\,
      O(2) => \data_out_dx0_carry__3_n_5\,
      O(1) => \data_out_dx0_carry__3_n_6\,
      O(0) => \data_out_dx0_carry__3_n_7\,
      S(3) => \data_out_dx0_carry__3_i_2_n_0\,
      S(2) => \data_out_dx0_carry__3_i_3_n_0\,
      S(1) => \data_out_dx0_carry__3_i_4_n_0\,
      S(0) => \data_out_dx0_carry__3_i_5_n_0\
    );
\data_out_dx0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sub_dx(16),
      O => \data_out_dx0_carry__3_i_1_n_0\
    );
\data_out_dx0_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => last_sum_dx_reg(18),
      I1 => last_sum_dx_reg(19),
      O => \data_out_dx0_carry__3_i_2_n_0\
    );
\data_out_dx0_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => last_sum_dx_reg(17),
      I1 => last_sum_dx_reg(18),
      O => \data_out_dx0_carry__3_i_3_n_0\
    );
\data_out_dx0_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_dx(16),
      I1 => last_sum_dx_reg(17),
      O => \data_out_dx0_carry__3_i_4_n_0\
    );
\data_out_dx0_carry__3_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_dx(16),
      I1 => last_sum_dx_reg(16),
      O => \data_out_dx0_carry__3_i_5_n_0\
    );
\data_out_dx0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out_dx0_carry__3_n_0\,
      CO(3 downto 0) => \NLW_data_out_dx0_carry__4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_data_out_dx0_carry__4_O_UNCONNECTED\(3 downto 1),
      O(0) => \data_out_dx0_carry__4_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \data_out_dx0_carry__4_i_1_n_0\
    );
\data_out_dx0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => last_sum_dx_reg(19),
      I1 => last_sum_dx_reg(20),
      O => \data_out_dx0_carry__4_i_1_n_0\
    );
data_out_dx0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(3),
      I1 => sub_dx(3),
      O => data_out_dx0_carry_i_1_n_0
    );
data_out_dx0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(2),
      I1 => sub_dx(2),
      O => data_out_dx0_carry_i_2_n_0
    );
data_out_dx0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(1),
      I1 => sub_dx(1),
      O => data_out_dx0_carry_i_3_n_0
    );
data_out_dx0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(0),
      I1 => sub_dx(0),
      O => data_out_dx0_carry_i_4_n_0
    );
\data_out_dx[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_dx0_carry__0_n_6\,
      I1 => sw_reg_dx_reg_n_0,
      I2 => data_in_dx(0),
      O => \data_out_dx[0]_i_1_n_0\
    );
\data_out_dx[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_dx0_carry__2_n_4\,
      I1 => sw_reg_dx_reg_n_0,
      I2 => data_in_dx(10),
      O => \data_out_dx[10]_i_1_n_0\
    );
\data_out_dx[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_dx0_carry__3_n_7\,
      I1 => sw_reg_dx_reg_n_0,
      I2 => data_in_dx(11),
      O => \data_out_dx[11]_i_1_n_0\
    );
\data_out_dx[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_dx0_carry__3_n_6\,
      I1 => sw_reg_dx_reg_n_0,
      I2 => data_in_dx(12),
      O => \data_out_dx[12]_i_1_n_0\
    );
\data_out_dx[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_dx0_carry__3_n_5\,
      I1 => sw_reg_dx_reg_n_0,
      I2 => data_in_dx(13),
      O => \data_out_dx[13]_i_1_n_0\
    );
\data_out_dx[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_dx0_carry__3_n_4\,
      I1 => sw_reg_dx_reg_n_0,
      I2 => data_in_dx(14),
      O => \data_out_dx[14]_i_1_n_0\
    );
\data_out_dx[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => aresetn,
      I1 => \FSM_onehot_state2_reg_n_0_[3]\,
      I2 => sw_reg_dx_reg_n_0,
      I3 => tlast_sampled_dx_reg_n_0,
      O => data_out_dx0
    );
\data_out_dx[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_dx0_carry__4_n_7\,
      I1 => sw_reg_dx_reg_n_0,
      I2 => data_in_dx(15),
      O => \data_out_dx[15]_i_2_n_0\
    );
\data_out_dx[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_dx0_carry__0_n_5\,
      I1 => sw_reg_dx_reg_n_0,
      I2 => data_in_dx(1),
      O => \data_out_dx[1]_i_1_n_0\
    );
\data_out_dx[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_dx0_carry__0_n_4\,
      I1 => sw_reg_dx_reg_n_0,
      I2 => data_in_dx(2),
      O => \data_out_dx[2]_i_1_n_0\
    );
\data_out_dx[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_dx0_carry__1_n_7\,
      I1 => sw_reg_dx_reg_n_0,
      I2 => data_in_dx(3),
      O => \data_out_dx[3]_i_1_n_0\
    );
\data_out_dx[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_dx0_carry__1_n_6\,
      I1 => sw_reg_dx_reg_n_0,
      I2 => data_in_dx(4),
      O => \data_out_dx[4]_i_1_n_0\
    );
\data_out_dx[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_dx0_carry__1_n_5\,
      I1 => sw_reg_dx_reg_n_0,
      I2 => data_in_dx(5),
      O => \data_out_dx[5]_i_1_n_0\
    );
\data_out_dx[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_dx0_carry__1_n_4\,
      I1 => sw_reg_dx_reg_n_0,
      I2 => data_in_dx(6),
      O => \data_out_dx[6]_i_1_n_0\
    );
\data_out_dx[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_dx0_carry__2_n_7\,
      I1 => sw_reg_dx_reg_n_0,
      I2 => data_in_dx(7),
      O => \data_out_dx[7]_i_1_n_0\
    );
\data_out_dx[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_dx0_carry__2_n_6\,
      I1 => sw_reg_dx_reg_n_0,
      I2 => data_in_dx(8),
      O => \data_out_dx[8]_i_1_n_0\
    );
\data_out_dx[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_dx0_carry__2_n_5\,
      I1 => sw_reg_dx_reg_n_0,
      I2 => data_in_dx(9),
      O => \data_out_dx[9]_i_1_n_0\
    );
\data_out_dx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_dx0,
      D => \data_out_dx[0]_i_1_n_0\,
      Q => data_out_dx(0),
      R => '0'
    );
\data_out_dx_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_dx0,
      D => \data_out_dx[10]_i_1_n_0\,
      Q => data_out_dx(10),
      R => '0'
    );
\data_out_dx_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_dx0,
      D => \data_out_dx[11]_i_1_n_0\,
      Q => data_out_dx(11),
      R => '0'
    );
\data_out_dx_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_dx0,
      D => \data_out_dx[12]_i_1_n_0\,
      Q => data_out_dx(12),
      R => '0'
    );
\data_out_dx_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_dx0,
      D => \data_out_dx[13]_i_1_n_0\,
      Q => data_out_dx(13),
      R => '0'
    );
\data_out_dx_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_dx0,
      D => \data_out_dx[14]_i_1_n_0\,
      Q => data_out_dx(14),
      R => '0'
    );
\data_out_dx_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_dx0,
      D => \data_out_dx[15]_i_2_n_0\,
      Q => data_out_dx(15),
      R => '0'
    );
\data_out_dx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_dx0,
      D => \data_out_dx[1]_i_1_n_0\,
      Q => data_out_dx(1),
      R => '0'
    );
\data_out_dx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_dx0,
      D => \data_out_dx[2]_i_1_n_0\,
      Q => data_out_dx(2),
      R => '0'
    );
\data_out_dx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_dx0,
      D => \data_out_dx[3]_i_1_n_0\,
      Q => data_out_dx(3),
      R => '0'
    );
\data_out_dx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_dx0,
      D => \data_out_dx[4]_i_1_n_0\,
      Q => data_out_dx(4),
      R => '0'
    );
\data_out_dx_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_dx0,
      D => \data_out_dx[5]_i_1_n_0\,
      Q => data_out_dx(5),
      R => '0'
    );
\data_out_dx_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_dx0,
      D => \data_out_dx[6]_i_1_n_0\,
      Q => data_out_dx(6),
      R => '0'
    );
\data_out_dx_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_dx0,
      D => \data_out_dx[7]_i_1_n_0\,
      Q => data_out_dx(7),
      R => '0'
    );
\data_out_dx_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_dx0,
      D => \data_out_dx[8]_i_1_n_0\,
      Q => data_out_dx(8),
      R => '0'
    );
\data_out_dx_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_dx0,
      D => \data_out_dx[9]_i_1_n_0\,
      Q => data_out_dx(9),
      R => '0'
    );
data_out_sx0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => data_out_sx0_carry_n_0,
      CO(2) => data_out_sx0_carry_n_1,
      CO(1) => data_out_sx0_carry_n_2,
      CO(0) => data_out_sx0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => last_sum_sx_reg(3 downto 0),
      O(3 downto 0) => NLW_data_out_sx0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => data_out_sx0_carry_i_1_n_0,
      S(2) => data_out_sx0_carry_i_2_n_0,
      S(1) => data_out_sx0_carry_i_3_n_0,
      S(0) => data_out_sx0_carry_i_4_n_0
    );
\data_out_sx0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => data_out_sx0_carry_n_0,
      CO(3) => \data_out_sx0_carry__0_n_0\,
      CO(2) => \data_out_sx0_carry__0_n_1\,
      CO(1) => \data_out_sx0_carry__0_n_2\,
      CO(0) => \data_out_sx0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => last_sum_sx_reg(7 downto 4),
      O(3) => \data_out_sx0_carry__0_n_4\,
      O(2) => \data_out_sx0_carry__0_n_5\,
      O(1) => \data_out_sx0_carry__0_n_6\,
      O(0) => \NLW_data_out_sx0_carry__0_O_UNCONNECTED\(0),
      S(3) => \data_out_sx0_carry__0_i_1_n_0\,
      S(2) => \data_out_sx0_carry__0_i_2_n_0\,
      S(1) => \data_out_sx0_carry__0_i_3_n_0\,
      S(0) => \data_out_sx0_carry__0_i_4_n_0\
    );
\data_out_sx0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(7),
      I1 => sub_sx(7),
      O => \data_out_sx0_carry__0_i_1_n_0\
    );
\data_out_sx0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(6),
      I1 => sub_sx(6),
      O => \data_out_sx0_carry__0_i_2_n_0\
    );
\data_out_sx0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(5),
      I1 => sub_sx(5),
      O => \data_out_sx0_carry__0_i_3_n_0\
    );
\data_out_sx0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(4),
      I1 => sub_sx(4),
      O => \data_out_sx0_carry__0_i_4_n_0\
    );
\data_out_sx0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out_sx0_carry__0_n_0\,
      CO(3) => \data_out_sx0_carry__1_n_0\,
      CO(2) => \data_out_sx0_carry__1_n_1\,
      CO(1) => \data_out_sx0_carry__1_n_2\,
      CO(0) => \data_out_sx0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => last_sum_sx_reg(11 downto 8),
      O(3) => \data_out_sx0_carry__1_n_4\,
      O(2) => \data_out_sx0_carry__1_n_5\,
      O(1) => \data_out_sx0_carry__1_n_6\,
      O(0) => \data_out_sx0_carry__1_n_7\,
      S(3) => \data_out_sx0_carry__1_i_1_n_0\,
      S(2) => \data_out_sx0_carry__1_i_2_n_0\,
      S(1) => \data_out_sx0_carry__1_i_3_n_0\,
      S(0) => \data_out_sx0_carry__1_i_4_n_0\
    );
\data_out_sx0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(11),
      I1 => sub_sx(11),
      O => \data_out_sx0_carry__1_i_1_n_0\
    );
\data_out_sx0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(10),
      I1 => sub_sx(10),
      O => \data_out_sx0_carry__1_i_2_n_0\
    );
\data_out_sx0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(9),
      I1 => sub_sx(9),
      O => \data_out_sx0_carry__1_i_3_n_0\
    );
\data_out_sx0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(8),
      I1 => sub_sx(8),
      O => \data_out_sx0_carry__1_i_4_n_0\
    );
\data_out_sx0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out_sx0_carry__1_n_0\,
      CO(3) => \data_out_sx0_carry__2_n_0\,
      CO(2) => \data_out_sx0_carry__2_n_1\,
      CO(1) => \data_out_sx0_carry__2_n_2\,
      CO(0) => \data_out_sx0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => last_sum_sx_reg(15 downto 12),
      O(3) => \data_out_sx0_carry__2_n_4\,
      O(2) => \data_out_sx0_carry__2_n_5\,
      O(1) => \data_out_sx0_carry__2_n_6\,
      O(0) => \data_out_sx0_carry__2_n_7\,
      S(3) => \data_out_sx0_carry__2_i_1_n_0\,
      S(2) => \data_out_sx0_carry__2_i_2_n_0\,
      S(1) => \data_out_sx0_carry__2_i_3_n_0\,
      S(0) => \data_out_sx0_carry__2_i_4_n_0\
    );
\data_out_sx0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(15),
      I1 => sub_sx(15),
      O => \data_out_sx0_carry__2_i_1_n_0\
    );
\data_out_sx0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(14),
      I1 => sub_sx(14),
      O => \data_out_sx0_carry__2_i_2_n_0\
    );
\data_out_sx0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(13),
      I1 => sub_sx(13),
      O => \data_out_sx0_carry__2_i_3_n_0\
    );
\data_out_sx0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(12),
      I1 => sub_sx(12),
      O => \data_out_sx0_carry__2_i_4_n_0\
    );
\data_out_sx0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out_sx0_carry__2_n_0\,
      CO(3) => \data_out_sx0_carry__3_n_0\,
      CO(2) => \data_out_sx0_carry__3_n_1\,
      CO(1) => \data_out_sx0_carry__3_n_2\,
      CO(0) => \data_out_sx0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => last_sum_sx_reg(18 downto 17),
      DI(1) => \data_out_sx0_carry__3_i_1_n_0\,
      DI(0) => sub_sx(16),
      O(3) => \data_out_sx0_carry__3_n_4\,
      O(2) => \data_out_sx0_carry__3_n_5\,
      O(1) => \data_out_sx0_carry__3_n_6\,
      O(0) => \data_out_sx0_carry__3_n_7\,
      S(3) => \data_out_sx0_carry__3_i_2_n_0\,
      S(2) => \data_out_sx0_carry__3_i_3_n_0\,
      S(1) => \data_out_sx0_carry__3_i_4_n_0\,
      S(0) => \data_out_sx0_carry__3_i_5_n_0\
    );
\data_out_sx0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sub_sx(16),
      O => \data_out_sx0_carry__3_i_1_n_0\
    );
\data_out_sx0_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => last_sum_sx_reg(18),
      I1 => last_sum_sx_reg(19),
      O => \data_out_sx0_carry__3_i_2_n_0\
    );
\data_out_sx0_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => last_sum_sx_reg(17),
      I1 => last_sum_sx_reg(18),
      O => \data_out_sx0_carry__3_i_3_n_0\
    );
\data_out_sx0_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sx(16),
      I1 => last_sum_sx_reg(17),
      O => \data_out_sx0_carry__3_i_4_n_0\
    );
\data_out_sx0_carry__3_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sx(16),
      I1 => last_sum_sx_reg(16),
      O => \data_out_sx0_carry__3_i_5_n_0\
    );
\data_out_sx0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out_sx0_carry__3_n_0\,
      CO(3 downto 0) => \NLW_data_out_sx0_carry__4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_data_out_sx0_carry__4_O_UNCONNECTED\(3 downto 1),
      O(0) => \data_out_sx0_carry__4_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \data_out_sx0_carry__4_i_1_n_0\
    );
\data_out_sx0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => last_sum_sx_reg(19),
      I1 => last_sum_sx_reg(20),
      O => \data_out_sx0_carry__4_i_1_n_0\
    );
data_out_sx0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(3),
      I1 => sub_sx(3),
      O => data_out_sx0_carry_i_1_n_0
    );
data_out_sx0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(2),
      I1 => sub_sx(2),
      O => data_out_sx0_carry_i_2_n_0
    );
data_out_sx0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(1),
      I1 => sub_sx(1),
      O => data_out_sx0_carry_i_3_n_0
    );
data_out_sx0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(0),
      I1 => sub_sx(0),
      O => data_out_sx0_carry_i_4_n_0
    );
\data_out_sx[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_sx0_carry__0_n_6\,
      I1 => sw_reg_sx_reg_n_0,
      I2 => data_in_sx(0),
      O => p_0_in(0)
    );
\data_out_sx[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_sx0_carry__2_n_4\,
      I1 => sw_reg_sx_reg_n_0,
      I2 => data_in_sx(10),
      O => p_0_in(10)
    );
\data_out_sx[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_sx0_carry__3_n_7\,
      I1 => sw_reg_sx_reg_n_0,
      I2 => data_in_sx(11),
      O => p_0_in(11)
    );
\data_out_sx[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_sx0_carry__3_n_6\,
      I1 => sw_reg_sx_reg_n_0,
      I2 => data_in_sx(12),
      O => p_0_in(12)
    );
\data_out_sx[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_sx0_carry__3_n_5\,
      I1 => sw_reg_sx_reg_n_0,
      I2 => data_in_sx(13),
      O => p_0_in(13)
    );
\data_out_sx[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_sx0_carry__3_n_4\,
      I1 => sw_reg_sx_reg_n_0,
      I2 => data_in_sx(14),
      O => p_0_in(14)
    );
\data_out_sx[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => aresetn,
      I1 => \FSM_onehot_state1_reg_n_0_[3]\,
      I2 => tlast_sampled_sx_reg_n_0,
      I3 => sw_reg_sx_reg_n_0,
      O => data_out_sx0
    );
\data_out_sx[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_sx0_carry__4_n_7\,
      I1 => sw_reg_sx_reg_n_0,
      I2 => data_in_sx(15),
      O => p_0_in(15)
    );
\data_out_sx[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_sx0_carry__0_n_5\,
      I1 => sw_reg_sx_reg_n_0,
      I2 => data_in_sx(1),
      O => p_0_in(1)
    );
\data_out_sx[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_sx0_carry__0_n_4\,
      I1 => sw_reg_sx_reg_n_0,
      I2 => data_in_sx(2),
      O => p_0_in(2)
    );
\data_out_sx[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_sx0_carry__1_n_7\,
      I1 => sw_reg_sx_reg_n_0,
      I2 => data_in_sx(3),
      O => p_0_in(3)
    );
\data_out_sx[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_sx0_carry__1_n_6\,
      I1 => sw_reg_sx_reg_n_0,
      I2 => data_in_sx(4),
      O => p_0_in(4)
    );
\data_out_sx[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_sx0_carry__1_n_5\,
      I1 => sw_reg_sx_reg_n_0,
      I2 => data_in_sx(5),
      O => p_0_in(5)
    );
\data_out_sx[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_sx0_carry__1_n_4\,
      I1 => sw_reg_sx_reg_n_0,
      I2 => data_in_sx(6),
      O => p_0_in(6)
    );
\data_out_sx[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_sx0_carry__2_n_7\,
      I1 => sw_reg_sx_reg_n_0,
      I2 => data_in_sx(7),
      O => p_0_in(7)
    );
\data_out_sx[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_sx0_carry__2_n_6\,
      I1 => sw_reg_sx_reg_n_0,
      I2 => data_in_sx(8),
      O => p_0_in(8)
    );
\data_out_sx[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_sx0_carry__2_n_5\,
      I1 => sw_reg_sx_reg_n_0,
      I2 => data_in_sx(9),
      O => p_0_in(9)
    );
\data_out_sx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_sx0,
      D => p_0_in(0),
      Q => data_out_sx(0),
      R => '0'
    );
\data_out_sx_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_sx0,
      D => p_0_in(10),
      Q => data_out_sx(10),
      R => '0'
    );
\data_out_sx_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_sx0,
      D => p_0_in(11),
      Q => data_out_sx(11),
      R => '0'
    );
\data_out_sx_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_sx0,
      D => p_0_in(12),
      Q => data_out_sx(12),
      R => '0'
    );
\data_out_sx_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_sx0,
      D => p_0_in(13),
      Q => data_out_sx(13),
      R => '0'
    );
\data_out_sx_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_sx0,
      D => p_0_in(14),
      Q => data_out_sx(14),
      R => '0'
    );
\data_out_sx_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_sx0,
      D => p_0_in(15),
      Q => data_out_sx(15),
      R => '0'
    );
\data_out_sx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_sx0,
      D => p_0_in(1),
      Q => data_out_sx(1),
      R => '0'
    );
\data_out_sx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_sx0,
      D => p_0_in(2),
      Q => data_out_sx(2),
      R => '0'
    );
\data_out_sx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_sx0,
      D => p_0_in(3),
      Q => data_out_sx(3),
      R => '0'
    );
\data_out_sx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_sx0,
      D => p_0_in(4),
      Q => data_out_sx(4),
      R => '0'
    );
\data_out_sx_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_sx0,
      D => p_0_in(5),
      Q => data_out_sx(5),
      R => '0'
    );
\data_out_sx_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_sx0,
      D => p_0_in(6),
      Q => data_out_sx(6),
      R => '0'
    );
\data_out_sx_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_sx0,
      D => p_0_in(7),
      Q => data_out_sx(7),
      R => '0'
    );
\data_out_sx_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_sx0,
      D => p_0_in(8),
      Q => data_out_sx(8),
      R => '0'
    );
\data_out_sx_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out_sx0,
      D => p_0_in(9),
      Q => data_out_sx(9),
      R => '0'
    );
\last_sum_dx[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state2_reg_n_0_[3]\,
      I1 => tlast_sampled_dx_reg_n_0,
      O => last_sum_dx
    );
\last_sum_dx[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_dx(3),
      I1 => last_sum_dx_reg(3),
      O => \last_sum_dx[0]_i_3_n_0\
    );
\last_sum_dx[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_dx(2),
      I1 => last_sum_dx_reg(2),
      O => \last_sum_dx[0]_i_4_n_0\
    );
\last_sum_dx[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_dx(1),
      I1 => last_sum_dx_reg(1),
      O => \last_sum_dx[0]_i_5_n_0\
    );
\last_sum_dx[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_dx(0),
      I1 => last_sum_dx_reg(0),
      O => \last_sum_dx[0]_i_6_n_0\
    );
\last_sum_dx[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_dx(15),
      I1 => last_sum_dx_reg(15),
      O => \last_sum_dx[12]_i_2_n_0\
    );
\last_sum_dx[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_dx(14),
      I1 => last_sum_dx_reg(14),
      O => \last_sum_dx[12]_i_3_n_0\
    );
\last_sum_dx[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_dx(13),
      I1 => last_sum_dx_reg(13),
      O => \last_sum_dx[12]_i_4_n_0\
    );
\last_sum_dx[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_dx(12),
      I1 => last_sum_dx_reg(12),
      O => \last_sum_dx[12]_i_5_n_0\
    );
\last_sum_dx[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_dx(16),
      I1 => last_sum_dx_reg(19),
      O => \last_sum_dx[16]_i_2_n_0\
    );
\last_sum_dx[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_dx(16),
      I1 => last_sum_dx_reg(18),
      O => \last_sum_dx[16]_i_3_n_0\
    );
\last_sum_dx[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_dx(16),
      I1 => last_sum_dx_reg(17),
      O => \last_sum_dx[16]_i_4_n_0\
    );
\last_sum_dx[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_dx(16),
      I1 => last_sum_dx_reg(16),
      O => \last_sum_dx[16]_i_5_n_0\
    );
\last_sum_dx[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_dx(16),
      I1 => last_sum_dx_reg(20),
      O => \last_sum_dx[20]_i_2_n_0\
    );
\last_sum_dx[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_dx(7),
      I1 => last_sum_dx_reg(7),
      O => \last_sum_dx[4]_i_2_n_0\
    );
\last_sum_dx[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_dx(6),
      I1 => last_sum_dx_reg(6),
      O => \last_sum_dx[4]_i_3_n_0\
    );
\last_sum_dx[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_dx(5),
      I1 => last_sum_dx_reg(5),
      O => \last_sum_dx[4]_i_4_n_0\
    );
\last_sum_dx[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_dx(4),
      I1 => last_sum_dx_reg(4),
      O => \last_sum_dx[4]_i_5_n_0\
    );
\last_sum_dx[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_dx(11),
      I1 => last_sum_dx_reg(11),
      O => \last_sum_dx[8]_i_2_n_0\
    );
\last_sum_dx[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_dx(10),
      I1 => last_sum_dx_reg(10),
      O => \last_sum_dx[8]_i_3_n_0\
    );
\last_sum_dx[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_dx(9),
      I1 => last_sum_dx_reg(9),
      O => \last_sum_dx[8]_i_4_n_0\
    );
\last_sum_dx[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_dx(8),
      I1 => last_sum_dx_reg(8),
      O => \last_sum_dx[8]_i_5_n_0\
    );
\last_sum_dx_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_dx,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_dx_reg[0]_i_2_n_7\,
      Q => last_sum_dx_reg(0)
    );
\last_sum_dx_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \last_sum_dx_reg[0]_i_2_n_0\,
      CO(2) => \last_sum_dx_reg[0]_i_2_n_1\,
      CO(1) => \last_sum_dx_reg[0]_i_2_n_2\,
      CO(0) => \last_sum_dx_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sub_dx(3 downto 0),
      O(3) => \last_sum_dx_reg[0]_i_2_n_4\,
      O(2) => \last_sum_dx_reg[0]_i_2_n_5\,
      O(1) => \last_sum_dx_reg[0]_i_2_n_6\,
      O(0) => \last_sum_dx_reg[0]_i_2_n_7\,
      S(3) => \last_sum_dx[0]_i_3_n_0\,
      S(2) => \last_sum_dx[0]_i_4_n_0\,
      S(1) => \last_sum_dx[0]_i_5_n_0\,
      S(0) => \last_sum_dx[0]_i_6_n_0\
    );
\last_sum_dx_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_dx,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_dx_reg[8]_i_1_n_5\,
      Q => last_sum_dx_reg(10)
    );
\last_sum_dx_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_dx,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_dx_reg[8]_i_1_n_4\,
      Q => last_sum_dx_reg(11)
    );
\last_sum_dx_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_dx,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_dx_reg[12]_i_1_n_7\,
      Q => last_sum_dx_reg(12)
    );
\last_sum_dx_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_sum_dx_reg[8]_i_1_n_0\,
      CO(3) => \last_sum_dx_reg[12]_i_1_n_0\,
      CO(2) => \last_sum_dx_reg[12]_i_1_n_1\,
      CO(1) => \last_sum_dx_reg[12]_i_1_n_2\,
      CO(0) => \last_sum_dx_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sub_dx(15 downto 12),
      O(3) => \last_sum_dx_reg[12]_i_1_n_4\,
      O(2) => \last_sum_dx_reg[12]_i_1_n_5\,
      O(1) => \last_sum_dx_reg[12]_i_1_n_6\,
      O(0) => \last_sum_dx_reg[12]_i_1_n_7\,
      S(3) => \last_sum_dx[12]_i_2_n_0\,
      S(2) => \last_sum_dx[12]_i_3_n_0\,
      S(1) => \last_sum_dx[12]_i_4_n_0\,
      S(0) => \last_sum_dx[12]_i_5_n_0\
    );
\last_sum_dx_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_dx,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_dx_reg[12]_i_1_n_6\,
      Q => last_sum_dx_reg(13)
    );
\last_sum_dx_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_dx,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_dx_reg[12]_i_1_n_5\,
      Q => last_sum_dx_reg(14)
    );
\last_sum_dx_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_dx,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_dx_reg[12]_i_1_n_4\,
      Q => last_sum_dx_reg(15)
    );
\last_sum_dx_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_dx,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_dx_reg[16]_i_1_n_7\,
      Q => last_sum_dx_reg(16)
    );
\last_sum_dx_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_sum_dx_reg[12]_i_1_n_0\,
      CO(3) => \last_sum_dx_reg[16]_i_1_n_0\,
      CO(2) => \last_sum_dx_reg[16]_i_1_n_1\,
      CO(1) => \last_sum_dx_reg[16]_i_1_n_2\,
      CO(0) => \last_sum_dx_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => sub_dx(16),
      DI(2) => sub_dx(16),
      DI(1) => sub_dx(16),
      DI(0) => sub_dx(16),
      O(3) => \last_sum_dx_reg[16]_i_1_n_4\,
      O(2) => \last_sum_dx_reg[16]_i_1_n_5\,
      O(1) => \last_sum_dx_reg[16]_i_1_n_6\,
      O(0) => \last_sum_dx_reg[16]_i_1_n_7\,
      S(3) => \last_sum_dx[16]_i_2_n_0\,
      S(2) => \last_sum_dx[16]_i_3_n_0\,
      S(1) => \last_sum_dx[16]_i_4_n_0\,
      S(0) => \last_sum_dx[16]_i_5_n_0\
    );
\last_sum_dx_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_dx,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_dx_reg[16]_i_1_n_6\,
      Q => last_sum_dx_reg(17)
    );
\last_sum_dx_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_dx,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_dx_reg[16]_i_1_n_5\,
      Q => last_sum_dx_reg(18)
    );
\last_sum_dx_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_dx,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_dx_reg[16]_i_1_n_4\,
      Q => last_sum_dx_reg(19)
    );
\last_sum_dx_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_dx,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_dx_reg[0]_i_2_n_6\,
      Q => last_sum_dx_reg(1)
    );
\last_sum_dx_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_dx,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_dx_reg[20]_i_1_n_7\,
      Q => last_sum_dx_reg(20)
    );
\last_sum_dx_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_sum_dx_reg[16]_i_1_n_0\,
      CO(3 downto 0) => \NLW_last_sum_dx_reg[20]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_last_sum_dx_reg[20]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \last_sum_dx_reg[20]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \last_sum_dx[20]_i_2_n_0\
    );
\last_sum_dx_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_dx,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_dx_reg[0]_i_2_n_5\,
      Q => last_sum_dx_reg(2)
    );
\last_sum_dx_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_dx,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_dx_reg[0]_i_2_n_4\,
      Q => last_sum_dx_reg(3)
    );
\last_sum_dx_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_dx,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_dx_reg[4]_i_1_n_7\,
      Q => last_sum_dx_reg(4)
    );
\last_sum_dx_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_sum_dx_reg[0]_i_2_n_0\,
      CO(3) => \last_sum_dx_reg[4]_i_1_n_0\,
      CO(2) => \last_sum_dx_reg[4]_i_1_n_1\,
      CO(1) => \last_sum_dx_reg[4]_i_1_n_2\,
      CO(0) => \last_sum_dx_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sub_dx(7 downto 4),
      O(3) => \last_sum_dx_reg[4]_i_1_n_4\,
      O(2) => \last_sum_dx_reg[4]_i_1_n_5\,
      O(1) => \last_sum_dx_reg[4]_i_1_n_6\,
      O(0) => \last_sum_dx_reg[4]_i_1_n_7\,
      S(3) => \last_sum_dx[4]_i_2_n_0\,
      S(2) => \last_sum_dx[4]_i_3_n_0\,
      S(1) => \last_sum_dx[4]_i_4_n_0\,
      S(0) => \last_sum_dx[4]_i_5_n_0\
    );
\last_sum_dx_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_dx,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_dx_reg[4]_i_1_n_6\,
      Q => last_sum_dx_reg(5)
    );
\last_sum_dx_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_dx,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_dx_reg[4]_i_1_n_5\,
      Q => last_sum_dx_reg(6)
    );
\last_sum_dx_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_dx,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_dx_reg[4]_i_1_n_4\,
      Q => last_sum_dx_reg(7)
    );
\last_sum_dx_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_dx,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_dx_reg[8]_i_1_n_7\,
      Q => last_sum_dx_reg(8)
    );
\last_sum_dx_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_sum_dx_reg[4]_i_1_n_0\,
      CO(3) => \last_sum_dx_reg[8]_i_1_n_0\,
      CO(2) => \last_sum_dx_reg[8]_i_1_n_1\,
      CO(1) => \last_sum_dx_reg[8]_i_1_n_2\,
      CO(0) => \last_sum_dx_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sub_dx(11 downto 8),
      O(3) => \last_sum_dx_reg[8]_i_1_n_4\,
      O(2) => \last_sum_dx_reg[8]_i_1_n_5\,
      O(1) => \last_sum_dx_reg[8]_i_1_n_6\,
      O(0) => \last_sum_dx_reg[8]_i_1_n_7\,
      S(3) => \last_sum_dx[8]_i_2_n_0\,
      S(2) => \last_sum_dx[8]_i_3_n_0\,
      S(1) => \last_sum_dx[8]_i_4_n_0\,
      S(0) => \last_sum_dx[8]_i_5_n_0\
    );
\last_sum_dx_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_dx,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_dx_reg[8]_i_1_n_6\,
      Q => last_sum_dx_reg(9)
    );
\last_sum_sx[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state1_reg_n_0_[3]\,
      I1 => tlast_sampled_sx_reg_n_0,
      O => \last_sum_sx[0]_i_1_n_0\
    );
\last_sum_sx[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sx(3),
      I1 => last_sum_sx_reg(3),
      O => \last_sum_sx[0]_i_3_n_0\
    );
\last_sum_sx[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sx(2),
      I1 => last_sum_sx_reg(2),
      O => \last_sum_sx[0]_i_4_n_0\
    );
\last_sum_sx[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sx(1),
      I1 => last_sum_sx_reg(1),
      O => \last_sum_sx[0]_i_5_n_0\
    );
\last_sum_sx[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sx(0),
      I1 => last_sum_sx_reg(0),
      O => \last_sum_sx[0]_i_6_n_0\
    );
\last_sum_sx[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sx(15),
      I1 => last_sum_sx_reg(15),
      O => \last_sum_sx[12]_i_2_n_0\
    );
\last_sum_sx[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sx(14),
      I1 => last_sum_sx_reg(14),
      O => \last_sum_sx[12]_i_3_n_0\
    );
\last_sum_sx[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sx(13),
      I1 => last_sum_sx_reg(13),
      O => \last_sum_sx[12]_i_4_n_0\
    );
\last_sum_sx[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sx(12),
      I1 => last_sum_sx_reg(12),
      O => \last_sum_sx[12]_i_5_n_0\
    );
\last_sum_sx[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sx(16),
      I1 => last_sum_sx_reg(19),
      O => \last_sum_sx[16]_i_2_n_0\
    );
\last_sum_sx[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sx(16),
      I1 => last_sum_sx_reg(18),
      O => \last_sum_sx[16]_i_3_n_0\
    );
\last_sum_sx[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sx(16),
      I1 => last_sum_sx_reg(17),
      O => \last_sum_sx[16]_i_4_n_0\
    );
\last_sum_sx[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sx(16),
      I1 => last_sum_sx_reg(16),
      O => \last_sum_sx[16]_i_5_n_0\
    );
\last_sum_sx[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sx(16),
      I1 => last_sum_sx_reg(20),
      O => \last_sum_sx[20]_i_2_n_0\
    );
\last_sum_sx[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sx(7),
      I1 => last_sum_sx_reg(7),
      O => \last_sum_sx[4]_i_2_n_0\
    );
\last_sum_sx[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sx(6),
      I1 => last_sum_sx_reg(6),
      O => \last_sum_sx[4]_i_3_n_0\
    );
\last_sum_sx[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sx(5),
      I1 => last_sum_sx_reg(5),
      O => \last_sum_sx[4]_i_4_n_0\
    );
\last_sum_sx[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sx(4),
      I1 => last_sum_sx_reg(4),
      O => \last_sum_sx[4]_i_5_n_0\
    );
\last_sum_sx[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sx(11),
      I1 => last_sum_sx_reg(11),
      O => \last_sum_sx[8]_i_2_n_0\
    );
\last_sum_sx[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sx(10),
      I1 => last_sum_sx_reg(10),
      O => \last_sum_sx[8]_i_3_n_0\
    );
\last_sum_sx[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sx(9),
      I1 => last_sum_sx_reg(9),
      O => \last_sum_sx[8]_i_4_n_0\
    );
\last_sum_sx[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sx(8),
      I1 => last_sum_sx_reg(8),
      O => \last_sum_sx[8]_i_5_n_0\
    );
\last_sum_sx_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_sum_sx[0]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_sx_reg[0]_i_2_n_7\,
      Q => last_sum_sx_reg(0)
    );
\last_sum_sx_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \last_sum_sx_reg[0]_i_2_n_0\,
      CO(2) => \last_sum_sx_reg[0]_i_2_n_1\,
      CO(1) => \last_sum_sx_reg[0]_i_2_n_2\,
      CO(0) => \last_sum_sx_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sub_sx(3 downto 0),
      O(3) => \last_sum_sx_reg[0]_i_2_n_4\,
      O(2) => \last_sum_sx_reg[0]_i_2_n_5\,
      O(1) => \last_sum_sx_reg[0]_i_2_n_6\,
      O(0) => \last_sum_sx_reg[0]_i_2_n_7\,
      S(3) => \last_sum_sx[0]_i_3_n_0\,
      S(2) => \last_sum_sx[0]_i_4_n_0\,
      S(1) => \last_sum_sx[0]_i_5_n_0\,
      S(0) => \last_sum_sx[0]_i_6_n_0\
    );
\last_sum_sx_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_sum_sx[0]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_sx_reg[8]_i_1_n_5\,
      Q => last_sum_sx_reg(10)
    );
\last_sum_sx_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_sum_sx[0]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_sx_reg[8]_i_1_n_4\,
      Q => last_sum_sx_reg(11)
    );
\last_sum_sx_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_sum_sx[0]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_sx_reg[12]_i_1_n_7\,
      Q => last_sum_sx_reg(12)
    );
\last_sum_sx_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_sum_sx_reg[8]_i_1_n_0\,
      CO(3) => \last_sum_sx_reg[12]_i_1_n_0\,
      CO(2) => \last_sum_sx_reg[12]_i_1_n_1\,
      CO(1) => \last_sum_sx_reg[12]_i_1_n_2\,
      CO(0) => \last_sum_sx_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sub_sx(15 downto 12),
      O(3) => \last_sum_sx_reg[12]_i_1_n_4\,
      O(2) => \last_sum_sx_reg[12]_i_1_n_5\,
      O(1) => \last_sum_sx_reg[12]_i_1_n_6\,
      O(0) => \last_sum_sx_reg[12]_i_1_n_7\,
      S(3) => \last_sum_sx[12]_i_2_n_0\,
      S(2) => \last_sum_sx[12]_i_3_n_0\,
      S(1) => \last_sum_sx[12]_i_4_n_0\,
      S(0) => \last_sum_sx[12]_i_5_n_0\
    );
\last_sum_sx_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_sum_sx[0]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_sx_reg[12]_i_1_n_6\,
      Q => last_sum_sx_reg(13)
    );
\last_sum_sx_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_sum_sx[0]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_sx_reg[12]_i_1_n_5\,
      Q => last_sum_sx_reg(14)
    );
\last_sum_sx_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_sum_sx[0]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_sx_reg[12]_i_1_n_4\,
      Q => last_sum_sx_reg(15)
    );
\last_sum_sx_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_sum_sx[0]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_sx_reg[16]_i_1_n_7\,
      Q => last_sum_sx_reg(16)
    );
\last_sum_sx_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_sum_sx_reg[12]_i_1_n_0\,
      CO(3) => \last_sum_sx_reg[16]_i_1_n_0\,
      CO(2) => \last_sum_sx_reg[16]_i_1_n_1\,
      CO(1) => \last_sum_sx_reg[16]_i_1_n_2\,
      CO(0) => \last_sum_sx_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => sub_sx(16),
      DI(2) => sub_sx(16),
      DI(1) => sub_sx(16),
      DI(0) => sub_sx(16),
      O(3) => \last_sum_sx_reg[16]_i_1_n_4\,
      O(2) => \last_sum_sx_reg[16]_i_1_n_5\,
      O(1) => \last_sum_sx_reg[16]_i_1_n_6\,
      O(0) => \last_sum_sx_reg[16]_i_1_n_7\,
      S(3) => \last_sum_sx[16]_i_2_n_0\,
      S(2) => \last_sum_sx[16]_i_3_n_0\,
      S(1) => \last_sum_sx[16]_i_4_n_0\,
      S(0) => \last_sum_sx[16]_i_5_n_0\
    );
\last_sum_sx_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_sum_sx[0]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_sx_reg[16]_i_1_n_6\,
      Q => last_sum_sx_reg(17)
    );
\last_sum_sx_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_sum_sx[0]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_sx_reg[16]_i_1_n_5\,
      Q => last_sum_sx_reg(18)
    );
\last_sum_sx_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_sum_sx[0]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_sx_reg[16]_i_1_n_4\,
      Q => last_sum_sx_reg(19)
    );
\last_sum_sx_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_sum_sx[0]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_sx_reg[0]_i_2_n_6\,
      Q => last_sum_sx_reg(1)
    );
\last_sum_sx_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_sum_sx[0]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_sx_reg[20]_i_1_n_7\,
      Q => last_sum_sx_reg(20)
    );
\last_sum_sx_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_sum_sx_reg[16]_i_1_n_0\,
      CO(3 downto 0) => \NLW_last_sum_sx_reg[20]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_last_sum_sx_reg[20]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \last_sum_sx_reg[20]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \last_sum_sx[20]_i_2_n_0\
    );
\last_sum_sx_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_sum_sx[0]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_sx_reg[0]_i_2_n_5\,
      Q => last_sum_sx_reg(2)
    );
\last_sum_sx_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_sum_sx[0]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_sx_reg[0]_i_2_n_4\,
      Q => last_sum_sx_reg(3)
    );
\last_sum_sx_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_sum_sx[0]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_sx_reg[4]_i_1_n_7\,
      Q => last_sum_sx_reg(4)
    );
\last_sum_sx_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_sum_sx_reg[0]_i_2_n_0\,
      CO(3) => \last_sum_sx_reg[4]_i_1_n_0\,
      CO(2) => \last_sum_sx_reg[4]_i_1_n_1\,
      CO(1) => \last_sum_sx_reg[4]_i_1_n_2\,
      CO(0) => \last_sum_sx_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sub_sx(7 downto 4),
      O(3) => \last_sum_sx_reg[4]_i_1_n_4\,
      O(2) => \last_sum_sx_reg[4]_i_1_n_5\,
      O(1) => \last_sum_sx_reg[4]_i_1_n_6\,
      O(0) => \last_sum_sx_reg[4]_i_1_n_7\,
      S(3) => \last_sum_sx[4]_i_2_n_0\,
      S(2) => \last_sum_sx[4]_i_3_n_0\,
      S(1) => \last_sum_sx[4]_i_4_n_0\,
      S(0) => \last_sum_sx[4]_i_5_n_0\
    );
\last_sum_sx_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_sum_sx[0]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_sx_reg[4]_i_1_n_6\,
      Q => last_sum_sx_reg(5)
    );
\last_sum_sx_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_sum_sx[0]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_sx_reg[4]_i_1_n_5\,
      Q => last_sum_sx_reg(6)
    );
\last_sum_sx_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_sum_sx[0]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_sx_reg[4]_i_1_n_4\,
      Q => last_sum_sx_reg(7)
    );
\last_sum_sx_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_sum_sx[0]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_sx_reg[8]_i_1_n_7\,
      Q => last_sum_sx_reg(8)
    );
\last_sum_sx_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_sum_sx_reg[4]_i_1_n_0\,
      CO(3) => \last_sum_sx_reg[8]_i_1_n_0\,
      CO(2) => \last_sum_sx_reg[8]_i_1_n_1\,
      CO(1) => \last_sum_sx_reg[8]_i_1_n_2\,
      CO(0) => \last_sum_sx_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sub_sx(11 downto 8),
      O(3) => \last_sum_sx_reg[8]_i_1_n_4\,
      O(2) => \last_sum_sx_reg[8]_i_1_n_5\,
      O(1) => \last_sum_sx_reg[8]_i_1_n_6\,
      O(0) => \last_sum_sx_reg[8]_i_1_n_7\,
      S(3) => \last_sum_sx[8]_i_2_n_0\,
      S(2) => \last_sum_sx[8]_i_3_n_0\,
      S(1) => \last_sum_sx[8]_i_4_n_0\,
      S(0) => \last_sum_sx[8]_i_5_n_0\
    );
\last_sum_sx_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \last_sum_sx[0]_i_1_n_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_sum_sx_reg[8]_i_1_n_6\,
      Q => last_sum_sx_reg(9)
    );
last_values_dx_c_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlast_sampled_dx_reg_n_0,
      I1 => \FSM_onehot_state2_reg_n_0_[4]\,
      O => \last_values_dx[0]_1\
    );
\last_values_dx_reg[29][0]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]_1\,
      CLK => clk,
      D => data_in_dx(0),
      Q => \last_values_dx_reg[29][0]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][0]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][10]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]_1\,
      CLK => clk,
      D => data_in_dx(10),
      Q => \last_values_dx_reg[29][10]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][10]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][11]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]_1\,
      CLK => clk,
      D => data_in_dx(11),
      Q => \last_values_dx_reg[29][11]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][11]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][12]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]_1\,
      CLK => clk,
      D => data_in_dx(12),
      Q => \last_values_dx_reg[29][12]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][12]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][13]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]_1\,
      CLK => clk,
      D => data_in_dx(13),
      Q => \last_values_dx_reg[29][13]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][13]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][14]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]_1\,
      CLK => clk,
      D => data_in_dx(14),
      Q => \last_values_dx_reg[29][14]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][14]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][15]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]_1\,
      CLK => clk,
      D => data_in_dx(15),
      Q => \last_values_dx_reg[29][15]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][15]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][1]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]_1\,
      CLK => clk,
      D => data_in_dx(1),
      Q => \last_values_dx_reg[29][1]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][1]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][2]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]_1\,
      CLK => clk,
      D => data_in_dx(2),
      Q => \last_values_dx_reg[29][2]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][2]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][3]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]_1\,
      CLK => clk,
      D => data_in_dx(3),
      Q => \last_values_dx_reg[29][3]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][3]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][4]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]_1\,
      CLK => clk,
      D => data_in_dx(4),
      Q => \last_values_dx_reg[29][4]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][4]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][5]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]_1\,
      CLK => clk,
      D => data_in_dx(5),
      Q => \last_values_dx_reg[29][5]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][5]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][6]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]_1\,
      CLK => clk,
      D => data_in_dx(6),
      Q => \last_values_dx_reg[29][6]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][6]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][7]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]_1\,
      CLK => clk,
      D => data_in_dx(7),
      Q => \last_values_dx_reg[29][7]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][7]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][8]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]_1\,
      CLK => clk,
      D => data_in_dx(8),
      Q => \last_values_dx_reg[29][8]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][8]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][9]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]_1\,
      CLK => clk,
      D => data_in_dx(9),
      Q => \last_values_dx_reg[29][9]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][9]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[30][0]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      D => \last_values_dx_reg[29][0]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][0]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][10]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      D => \last_values_dx_reg[29][10]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][10]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][11]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      D => \last_values_dx_reg[29][11]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][11]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][12]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      D => \last_values_dx_reg[29][12]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][12]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][13]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      D => \last_values_dx_reg[29][13]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][13]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][14]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      D => \last_values_dx_reg[29][14]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][14]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][15]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      D => \last_values_dx_reg[29][15]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][15]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][1]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      D => \last_values_dx_reg[29][1]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][1]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][2]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      D => \last_values_dx_reg[29][2]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][2]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][3]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      D => \last_values_dx_reg[29][3]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][3]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][4]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      D => \last_values_dx_reg[29][4]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][4]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][5]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      D => \last_values_dx_reg[29][5]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][5]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][6]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      D => \last_values_dx_reg[29][6]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][6]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][7]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      D => \last_values_dx_reg[29][7]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][7]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][8]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      D => \last_values_dx_reg[29][8]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][8]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][9]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      D => \last_values_dx_reg[29][9]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][9]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[31][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_dx_reg_gate__14_n_0\,
      Q => \last_values_dx_reg[31]\(0)
    );
\last_values_dx_reg[31][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_dx_reg_gate__4_n_0\,
      Q => \last_values_dx_reg[31]\(10)
    );
\last_values_dx_reg[31][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_dx_reg_gate__3_n_0\,
      Q => \last_values_dx_reg[31]\(11)
    );
\last_values_dx_reg[31][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_dx_reg_gate__2_n_0\,
      Q => \last_values_dx_reg[31]\(12)
    );
\last_values_dx_reg[31][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_dx_reg_gate__1_n_0\,
      Q => \last_values_dx_reg[31]\(13)
    );
\last_values_dx_reg[31][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_dx_reg_gate__0_n_0\,
      Q => \last_values_dx_reg[31]\(14)
    );
\last_values_dx_reg[31][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_gate_n_0,
      Q => \last_values_dx_reg[31]\(15)
    );
\last_values_dx_reg[31][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_dx_reg_gate__13_n_0\,
      Q => \last_values_dx_reg[31]\(1)
    );
\last_values_dx_reg[31][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_dx_reg_gate__12_n_0\,
      Q => \last_values_dx_reg[31]\(2)
    );
\last_values_dx_reg[31][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_dx_reg_gate__11_n_0\,
      Q => \last_values_dx_reg[31]\(3)
    );
\last_values_dx_reg[31][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_dx_reg_gate__10_n_0\,
      Q => \last_values_dx_reg[31]\(4)
    );
\last_values_dx_reg[31][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_dx_reg_gate__9_n_0\,
      Q => \last_values_dx_reg[31]\(5)
    );
\last_values_dx_reg[31][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_dx_reg_gate__8_n_0\,
      Q => \last_values_dx_reg[31]\(6)
    );
\last_values_dx_reg[31][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_dx_reg_gate__7_n_0\,
      Q => \last_values_dx_reg[31]\(7)
    );
\last_values_dx_reg[31][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_dx_reg_gate__6_n_0\,
      Q => \last_values_dx_reg[31]\(8)
    );
\last_values_dx_reg[31][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_dx_reg_gate__5_n_0\,
      Q => \last_values_dx_reg[31]\(9)
    );
last_values_dx_reg_c: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => '1',
      Q => last_values_dx_reg_c_n_0
    );
last_values_dx_reg_c_30: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_n_0,
      Q => last_values_dx_reg_c_30_n_0
    );
last_values_dx_reg_c_31: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_30_n_0,
      Q => last_values_dx_reg_c_31_n_0
    );
last_values_dx_reg_c_32: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_31_n_0,
      Q => last_values_dx_reg_c_32_n_0
    );
last_values_dx_reg_c_33: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_32_n_0,
      Q => last_values_dx_reg_c_33_n_0
    );
last_values_dx_reg_c_34: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_33_n_0,
      Q => last_values_dx_reg_c_34_n_0
    );
last_values_dx_reg_c_35: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_34_n_0,
      Q => last_values_dx_reg_c_35_n_0
    );
last_values_dx_reg_c_36: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_35_n_0,
      Q => last_values_dx_reg_c_36_n_0
    );
last_values_dx_reg_c_37: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_36_n_0,
      Q => last_values_dx_reg_c_37_n_0
    );
last_values_dx_reg_c_38: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_37_n_0,
      Q => last_values_dx_reg_c_38_n_0
    );
last_values_dx_reg_c_39: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_38_n_0,
      Q => last_values_dx_reg_c_39_n_0
    );
last_values_dx_reg_c_40: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_39_n_0,
      Q => last_values_dx_reg_c_40_n_0
    );
last_values_dx_reg_c_41: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_40_n_0,
      Q => last_values_dx_reg_c_41_n_0
    );
last_values_dx_reg_c_42: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_41_n_0,
      Q => last_values_dx_reg_c_42_n_0
    );
last_values_dx_reg_c_43: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_42_n_0,
      Q => last_values_dx_reg_c_43_n_0
    );
last_values_dx_reg_c_44: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_43_n_0,
      Q => last_values_dx_reg_c_44_n_0
    );
last_values_dx_reg_c_45: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_44_n_0,
      Q => last_values_dx_reg_c_45_n_0
    );
last_values_dx_reg_c_46: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_45_n_0,
      Q => last_values_dx_reg_c_46_n_0
    );
last_values_dx_reg_c_47: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_46_n_0,
      Q => last_values_dx_reg_c_47_n_0
    );
last_values_dx_reg_c_48: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_47_n_0,
      Q => last_values_dx_reg_c_48_n_0
    );
last_values_dx_reg_c_49: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_48_n_0,
      Q => last_values_dx_reg_c_49_n_0
    );
last_values_dx_reg_c_50: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_49_n_0,
      Q => last_values_dx_reg_c_50_n_0
    );
last_values_dx_reg_c_51: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_50_n_0,
      Q => last_values_dx_reg_c_51_n_0
    );
last_values_dx_reg_c_52: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_51_n_0,
      Q => last_values_dx_reg_c_52_n_0
    );
last_values_dx_reg_c_53: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_52_n_0,
      Q => last_values_dx_reg_c_53_n_0
    );
last_values_dx_reg_c_54: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_53_n_0,
      Q => last_values_dx_reg_c_54_n_0
    );
last_values_dx_reg_c_55: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_54_n_0,
      Q => last_values_dx_reg_c_55_n_0
    );
last_values_dx_reg_c_56: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_55_n_0,
      Q => last_values_dx_reg_c_56_n_0
    );
last_values_dx_reg_c_57: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_56_n_0,
      Q => last_values_dx_reg_c_57_n_0
    );
last_values_dx_reg_c_58: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_57_n_0,
      Q => last_values_dx_reg_c_58_n_0
    );
last_values_dx_reg_c_59: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_dx_reg_c_58_n_0,
      Q => last_values_dx_reg_c_59_n_0
    );
last_values_dx_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_dx_reg[30][15]_U0_last_values_dx_reg_c_59_n_0\,
      I1 => last_values_dx_reg_c_59_n_0,
      O => last_values_dx_reg_gate_n_0
    );
\last_values_dx_reg_gate__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_dx_reg[30][14]_U0_last_values_dx_reg_c_59_n_0\,
      I1 => last_values_dx_reg_c_59_n_0,
      O => \last_values_dx_reg_gate__0_n_0\
    );
\last_values_dx_reg_gate__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_dx_reg[30][13]_U0_last_values_dx_reg_c_59_n_0\,
      I1 => last_values_dx_reg_c_59_n_0,
      O => \last_values_dx_reg_gate__1_n_0\
    );
\last_values_dx_reg_gate__10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_dx_reg[30][4]_U0_last_values_dx_reg_c_59_n_0\,
      I1 => last_values_dx_reg_c_59_n_0,
      O => \last_values_dx_reg_gate__10_n_0\
    );
\last_values_dx_reg_gate__11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_dx_reg[30][3]_U0_last_values_dx_reg_c_59_n_0\,
      I1 => last_values_dx_reg_c_59_n_0,
      O => \last_values_dx_reg_gate__11_n_0\
    );
\last_values_dx_reg_gate__12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_dx_reg[30][2]_U0_last_values_dx_reg_c_59_n_0\,
      I1 => last_values_dx_reg_c_59_n_0,
      O => \last_values_dx_reg_gate__12_n_0\
    );
\last_values_dx_reg_gate__13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_dx_reg[30][1]_U0_last_values_dx_reg_c_59_n_0\,
      I1 => last_values_dx_reg_c_59_n_0,
      O => \last_values_dx_reg_gate__13_n_0\
    );
\last_values_dx_reg_gate__14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_dx_reg[30][0]_U0_last_values_dx_reg_c_59_n_0\,
      I1 => last_values_dx_reg_c_59_n_0,
      O => \last_values_dx_reg_gate__14_n_0\
    );
\last_values_dx_reg_gate__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_dx_reg[30][12]_U0_last_values_dx_reg_c_59_n_0\,
      I1 => last_values_dx_reg_c_59_n_0,
      O => \last_values_dx_reg_gate__2_n_0\
    );
\last_values_dx_reg_gate__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_dx_reg[30][11]_U0_last_values_dx_reg_c_59_n_0\,
      I1 => last_values_dx_reg_c_59_n_0,
      O => \last_values_dx_reg_gate__3_n_0\
    );
\last_values_dx_reg_gate__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_dx_reg[30][10]_U0_last_values_dx_reg_c_59_n_0\,
      I1 => last_values_dx_reg_c_59_n_0,
      O => \last_values_dx_reg_gate__4_n_0\
    );
\last_values_dx_reg_gate__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_dx_reg[30][9]_U0_last_values_dx_reg_c_59_n_0\,
      I1 => last_values_dx_reg_c_59_n_0,
      O => \last_values_dx_reg_gate__5_n_0\
    );
\last_values_dx_reg_gate__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_dx_reg[30][8]_U0_last_values_dx_reg_c_59_n_0\,
      I1 => last_values_dx_reg_c_59_n_0,
      O => \last_values_dx_reg_gate__6_n_0\
    );
\last_values_dx_reg_gate__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_dx_reg[30][7]_U0_last_values_dx_reg_c_59_n_0\,
      I1 => last_values_dx_reg_c_59_n_0,
      O => \last_values_dx_reg_gate__7_n_0\
    );
\last_values_dx_reg_gate__8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_dx_reg[30][6]_U0_last_values_dx_reg_c_59_n_0\,
      I1 => last_values_dx_reg_c_59_n_0,
      O => \last_values_dx_reg_gate__8_n_0\
    );
\last_values_dx_reg_gate__9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_dx_reg[30][5]_U0_last_values_dx_reg_c_59_n_0\,
      I1 => last_values_dx_reg_c_59_n_0,
      O => \last_values_dx_reg_gate__9_n_0\
    );
last_values_sx_c_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state1_reg_n_0_[4]\,
      I1 => tlast_sampled_sx_reg_n_0,
      O => \last_values_sx[0]_0\
    );
\last_values_sx_reg[29][0]_srl30_U0_last_values_sx_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_sx[0]_0\,
      CLK => clk,
      D => data_in_sx(0),
      Q => \last_values_sx_reg[29][0]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q31 => \NLW_last_values_sx_reg[29][0]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\
    );
\last_values_sx_reg[29][10]_srl30_U0_last_values_sx_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_sx[0]_0\,
      CLK => clk,
      D => data_in_sx(10),
      Q => \last_values_sx_reg[29][10]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q31 => \NLW_last_values_sx_reg[29][10]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\
    );
\last_values_sx_reg[29][11]_srl30_U0_last_values_sx_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_sx[0]_0\,
      CLK => clk,
      D => data_in_sx(11),
      Q => \last_values_sx_reg[29][11]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q31 => \NLW_last_values_sx_reg[29][11]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\
    );
\last_values_sx_reg[29][12]_srl30_U0_last_values_sx_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_sx[0]_0\,
      CLK => clk,
      D => data_in_sx(12),
      Q => \last_values_sx_reg[29][12]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q31 => \NLW_last_values_sx_reg[29][12]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\
    );
\last_values_sx_reg[29][13]_srl30_U0_last_values_sx_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_sx[0]_0\,
      CLK => clk,
      D => data_in_sx(13),
      Q => \last_values_sx_reg[29][13]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q31 => \NLW_last_values_sx_reg[29][13]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\
    );
\last_values_sx_reg[29][14]_srl30_U0_last_values_sx_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_sx[0]_0\,
      CLK => clk,
      D => data_in_sx(14),
      Q => \last_values_sx_reg[29][14]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q31 => \NLW_last_values_sx_reg[29][14]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\
    );
\last_values_sx_reg[29][15]_srl30_U0_last_values_sx_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_sx[0]_0\,
      CLK => clk,
      D => data_in_sx(15),
      Q => \last_values_sx_reg[29][15]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q31 => \NLW_last_values_sx_reg[29][15]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\
    );
\last_values_sx_reg[29][1]_srl30_U0_last_values_sx_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_sx[0]_0\,
      CLK => clk,
      D => data_in_sx(1),
      Q => \last_values_sx_reg[29][1]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q31 => \NLW_last_values_sx_reg[29][1]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\
    );
\last_values_sx_reg[29][2]_srl30_U0_last_values_sx_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_sx[0]_0\,
      CLK => clk,
      D => data_in_sx(2),
      Q => \last_values_sx_reg[29][2]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q31 => \NLW_last_values_sx_reg[29][2]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\
    );
\last_values_sx_reg[29][3]_srl30_U0_last_values_sx_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_sx[0]_0\,
      CLK => clk,
      D => data_in_sx(3),
      Q => \last_values_sx_reg[29][3]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q31 => \NLW_last_values_sx_reg[29][3]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\
    );
\last_values_sx_reg[29][4]_srl30_U0_last_values_sx_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_sx[0]_0\,
      CLK => clk,
      D => data_in_sx(4),
      Q => \last_values_sx_reg[29][4]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q31 => \NLW_last_values_sx_reg[29][4]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\
    );
\last_values_sx_reg[29][5]_srl30_U0_last_values_sx_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_sx[0]_0\,
      CLK => clk,
      D => data_in_sx(5),
      Q => \last_values_sx_reg[29][5]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q31 => \NLW_last_values_sx_reg[29][5]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\
    );
\last_values_sx_reg[29][6]_srl30_U0_last_values_sx_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_sx[0]_0\,
      CLK => clk,
      D => data_in_sx(6),
      Q => \last_values_sx_reg[29][6]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q31 => \NLW_last_values_sx_reg[29][6]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\
    );
\last_values_sx_reg[29][7]_srl30_U0_last_values_sx_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_sx[0]_0\,
      CLK => clk,
      D => data_in_sx(7),
      Q => \last_values_sx_reg[29][7]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q31 => \NLW_last_values_sx_reg[29][7]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\
    );
\last_values_sx_reg[29][8]_srl30_U0_last_values_sx_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_sx[0]_0\,
      CLK => clk,
      D => data_in_sx(8),
      Q => \last_values_sx_reg[29][8]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q31 => \NLW_last_values_sx_reg[29][8]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\
    );
\last_values_sx_reg[29][9]_srl30_U0_last_values_sx_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_sx[0]_0\,
      CLK => clk,
      D => data_in_sx(9),
      Q => \last_values_sx_reg[29][9]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q31 => \NLW_last_values_sx_reg[29][9]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\
    );
\last_values_sx_reg[30][0]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      D => \last_values_sx_reg[29][0]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][0]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][10]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      D => \last_values_sx_reg[29][10]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][10]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][11]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      D => \last_values_sx_reg[29][11]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][11]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][12]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      D => \last_values_sx_reg[29][12]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][12]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][13]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      D => \last_values_sx_reg[29][13]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][13]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][14]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      D => \last_values_sx_reg[29][14]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][14]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][15]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      D => \last_values_sx_reg[29][15]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][15]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][1]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      D => \last_values_sx_reg[29][1]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][1]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][2]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      D => \last_values_sx_reg[29][2]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][2]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][3]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      D => \last_values_sx_reg[29][3]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][3]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][4]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      D => \last_values_sx_reg[29][4]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][4]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][5]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      D => \last_values_sx_reg[29][5]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][5]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][6]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      D => \last_values_sx_reg[29][6]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][6]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][7]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      D => \last_values_sx_reg[29][7]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][7]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][8]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      D => \last_values_sx_reg[29][8]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][8]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][9]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      D => \last_values_sx_reg[29][9]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][9]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[31][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_sx_reg_gate__14_n_0\,
      Q => \last_values_sx_reg[31]\(0)
    );
\last_values_sx_reg[31][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_sx_reg_gate__4_n_0\,
      Q => \last_values_sx_reg[31]\(10)
    );
\last_values_sx_reg[31][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_sx_reg_gate__3_n_0\,
      Q => \last_values_sx_reg[31]\(11)
    );
\last_values_sx_reg[31][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_sx_reg_gate__2_n_0\,
      Q => \last_values_sx_reg[31]\(12)
    );
\last_values_sx_reg[31][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_sx_reg_gate__1_n_0\,
      Q => \last_values_sx_reg[31]\(13)
    );
\last_values_sx_reg[31][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_sx_reg_gate__0_n_0\,
      Q => \last_values_sx_reg[31]\(14)
    );
\last_values_sx_reg[31][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_gate_n_0,
      Q => \last_values_sx_reg[31]\(15)
    );
\last_values_sx_reg[31][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_sx_reg_gate__13_n_0\,
      Q => \last_values_sx_reg[31]\(1)
    );
\last_values_sx_reg[31][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_sx_reg_gate__12_n_0\,
      Q => \last_values_sx_reg[31]\(2)
    );
\last_values_sx_reg[31][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_sx_reg_gate__11_n_0\,
      Q => \last_values_sx_reg[31]\(3)
    );
\last_values_sx_reg[31][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_sx_reg_gate__10_n_0\,
      Q => \last_values_sx_reg[31]\(4)
    );
\last_values_sx_reg[31][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_sx_reg_gate__9_n_0\,
      Q => \last_values_sx_reg[31]\(5)
    );
\last_values_sx_reg[31][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_sx_reg_gate__8_n_0\,
      Q => \last_values_sx_reg[31]\(6)
    );
\last_values_sx_reg[31][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_sx_reg_gate__7_n_0\,
      Q => \last_values_sx_reg[31]\(7)
    );
\last_values_sx_reg[31][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_sx_reg_gate__6_n_0\,
      Q => \last_values_sx_reg[31]\(8)
    );
\last_values_sx_reg[31][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => \last_values_sx_reg_gate__5_n_0\,
      Q => \last_values_sx_reg[31]\(9)
    );
last_values_sx_reg_c: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => '1',
      Q => last_values_sx_reg_c_n_0
    );
last_values_sx_reg_c_0: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_n_0,
      Q => last_values_sx_reg_c_0_n_0
    );
last_values_sx_reg_c_1: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_0_n_0,
      Q => last_values_sx_reg_c_1_n_0
    );
last_values_sx_reg_c_10: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_9_n_0,
      Q => last_values_sx_reg_c_10_n_0
    );
last_values_sx_reg_c_11: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_10_n_0,
      Q => last_values_sx_reg_c_11_n_0
    );
last_values_sx_reg_c_12: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_11_n_0,
      Q => last_values_sx_reg_c_12_n_0
    );
last_values_sx_reg_c_13: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_12_n_0,
      Q => last_values_sx_reg_c_13_n_0
    );
last_values_sx_reg_c_14: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_13_n_0,
      Q => last_values_sx_reg_c_14_n_0
    );
last_values_sx_reg_c_15: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_14_n_0,
      Q => last_values_sx_reg_c_15_n_0
    );
last_values_sx_reg_c_16: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_15_n_0,
      Q => last_values_sx_reg_c_16_n_0
    );
last_values_sx_reg_c_17: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_16_n_0,
      Q => last_values_sx_reg_c_17_n_0
    );
last_values_sx_reg_c_18: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_17_n_0,
      Q => last_values_sx_reg_c_18_n_0
    );
last_values_sx_reg_c_19: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_18_n_0,
      Q => last_values_sx_reg_c_19_n_0
    );
last_values_sx_reg_c_2: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_1_n_0,
      Q => last_values_sx_reg_c_2_n_0
    );
last_values_sx_reg_c_20: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_19_n_0,
      Q => last_values_sx_reg_c_20_n_0
    );
last_values_sx_reg_c_21: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_20_n_0,
      Q => last_values_sx_reg_c_21_n_0
    );
last_values_sx_reg_c_22: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_21_n_0,
      Q => last_values_sx_reg_c_22_n_0
    );
last_values_sx_reg_c_23: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_22_n_0,
      Q => last_values_sx_reg_c_23_n_0
    );
last_values_sx_reg_c_24: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_23_n_0,
      Q => last_values_sx_reg_c_24_n_0
    );
last_values_sx_reg_c_25: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_24_n_0,
      Q => last_values_sx_reg_c_25_n_0
    );
last_values_sx_reg_c_26: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_25_n_0,
      Q => last_values_sx_reg_c_26_n_0
    );
last_values_sx_reg_c_27: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_26_n_0,
      Q => last_values_sx_reg_c_27_n_0
    );
last_values_sx_reg_c_28: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_27_n_0,
      Q => last_values_sx_reg_c_28_n_0
    );
last_values_sx_reg_c_29: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_28_n_0,
      Q => last_values_sx_reg_c_29_n_0
    );
last_values_sx_reg_c_3: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_2_n_0,
      Q => last_values_sx_reg_c_3_n_0
    );
last_values_sx_reg_c_4: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_3_n_0,
      Q => last_values_sx_reg_c_4_n_0
    );
last_values_sx_reg_c_5: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_4_n_0,
      Q => last_values_sx_reg_c_5_n_0
    );
last_values_sx_reg_c_6: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_5_n_0,
      Q => last_values_sx_reg_c_6_n_0
    );
last_values_sx_reg_c_7: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_6_n_0,
      Q => last_values_sx_reg_c_7_n_0
    );
last_values_sx_reg_c_8: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_7_n_0,
      Q => last_values_sx_reg_c_8_n_0
    );
last_values_sx_reg_c_9: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_onehot_state1[5]_i_2_n_0\,
      D => last_values_sx_reg_c_8_n_0,
      Q => last_values_sx_reg_c_9_n_0
    );
last_values_sx_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_sx_reg[30][15]_U0_last_values_sx_reg_c_29_n_0\,
      I1 => last_values_sx_reg_c_29_n_0,
      O => last_values_sx_reg_gate_n_0
    );
\last_values_sx_reg_gate__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_sx_reg[30][14]_U0_last_values_sx_reg_c_29_n_0\,
      I1 => last_values_sx_reg_c_29_n_0,
      O => \last_values_sx_reg_gate__0_n_0\
    );
\last_values_sx_reg_gate__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_sx_reg[30][13]_U0_last_values_sx_reg_c_29_n_0\,
      I1 => last_values_sx_reg_c_29_n_0,
      O => \last_values_sx_reg_gate__1_n_0\
    );
\last_values_sx_reg_gate__10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_sx_reg[30][4]_U0_last_values_sx_reg_c_29_n_0\,
      I1 => last_values_sx_reg_c_29_n_0,
      O => \last_values_sx_reg_gate__10_n_0\
    );
\last_values_sx_reg_gate__11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_sx_reg[30][3]_U0_last_values_sx_reg_c_29_n_0\,
      I1 => last_values_sx_reg_c_29_n_0,
      O => \last_values_sx_reg_gate__11_n_0\
    );
\last_values_sx_reg_gate__12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_sx_reg[30][2]_U0_last_values_sx_reg_c_29_n_0\,
      I1 => last_values_sx_reg_c_29_n_0,
      O => \last_values_sx_reg_gate__12_n_0\
    );
\last_values_sx_reg_gate__13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_sx_reg[30][1]_U0_last_values_sx_reg_c_29_n_0\,
      I1 => last_values_sx_reg_c_29_n_0,
      O => \last_values_sx_reg_gate__13_n_0\
    );
\last_values_sx_reg_gate__14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_sx_reg[30][0]_U0_last_values_sx_reg_c_29_n_0\,
      I1 => last_values_sx_reg_c_29_n_0,
      O => \last_values_sx_reg_gate__14_n_0\
    );
\last_values_sx_reg_gate__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_sx_reg[30][12]_U0_last_values_sx_reg_c_29_n_0\,
      I1 => last_values_sx_reg_c_29_n_0,
      O => \last_values_sx_reg_gate__2_n_0\
    );
\last_values_sx_reg_gate__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_sx_reg[30][11]_U0_last_values_sx_reg_c_29_n_0\,
      I1 => last_values_sx_reg_c_29_n_0,
      O => \last_values_sx_reg_gate__3_n_0\
    );
\last_values_sx_reg_gate__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_sx_reg[30][10]_U0_last_values_sx_reg_c_29_n_0\,
      I1 => last_values_sx_reg_c_29_n_0,
      O => \last_values_sx_reg_gate__4_n_0\
    );
\last_values_sx_reg_gate__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_sx_reg[30][9]_U0_last_values_sx_reg_c_29_n_0\,
      I1 => last_values_sx_reg_c_29_n_0,
      O => \last_values_sx_reg_gate__5_n_0\
    );
\last_values_sx_reg_gate__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_sx_reg[30][8]_U0_last_values_sx_reg_c_29_n_0\,
      I1 => last_values_sx_reg_c_29_n_0,
      O => \last_values_sx_reg_gate__6_n_0\
    );
\last_values_sx_reg_gate__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_sx_reg[30][7]_U0_last_values_sx_reg_c_29_n_0\,
      I1 => last_values_sx_reg_c_29_n_0,
      O => \last_values_sx_reg_gate__7_n_0\
    );
\last_values_sx_reg_gate__8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_sx_reg[30][6]_U0_last_values_sx_reg_c_29_n_0\,
      I1 => last_values_sx_reg_c_29_n_0,
      O => \last_values_sx_reg_gate__8_n_0\
    );
\last_values_sx_reg_gate__9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_values_sx_reg[30][5]_U0_last_values_sx_reg_c_29_n_0\,
      I1 => last_values_sx_reg_c_29_n_0,
      O => \last_values_sx_reg_gate__9_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \m_axis_tdata_reg[0]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(0)
    );
\m_axis_tdata_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_out_sx(0),
      I1 => p_0_in8_in,
      I2 => data_out_dx(0),
      O => \m_axis_tdata_reg[0]_i_1_n_0\
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \m_axis_tdata_reg[10]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(10)
    );
\m_axis_tdata_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_out_sx(10),
      I1 => p_0_in8_in,
      I2 => data_out_dx(10),
      O => \m_axis_tdata_reg[10]_i_1_n_0\
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \m_axis_tdata_reg[11]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(11)
    );
\m_axis_tdata_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_out_sx(11),
      I1 => p_0_in8_in,
      I2 => data_out_dx(11),
      O => \m_axis_tdata_reg[11]_i_1_n_0\
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \m_axis_tdata_reg[12]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(12)
    );
\m_axis_tdata_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_out_sx(12),
      I1 => p_0_in8_in,
      I2 => data_out_dx(12),
      O => \m_axis_tdata_reg[12]_i_1_n_0\
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \m_axis_tdata_reg[13]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(13)
    );
\m_axis_tdata_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_out_sx(13),
      I1 => p_0_in8_in,
      I2 => data_out_dx(13),
      O => \m_axis_tdata_reg[13]_i_1_n_0\
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \m_axis_tdata_reg[14]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(14)
    );
\m_axis_tdata_reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_out_sx(14),
      I1 => p_0_in8_in,
      I2 => data_out_dx(14),
      O => \m_axis_tdata_reg[14]_i_1_n_0\
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \m_axis_tdata_reg[15]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(15)
    );
\m_axis_tdata_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_out_sx(15),
      I1 => p_0_in8_in,
      I2 => data_out_dx(15),
      O => \m_axis_tdata_reg[15]_i_1_n_0\
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \m_axis_tdata_reg[1]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(1)
    );
\m_axis_tdata_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_out_sx(1),
      I1 => p_0_in8_in,
      I2 => data_out_dx(1),
      O => \m_axis_tdata_reg[1]_i_1_n_0\
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \m_axis_tdata_reg[2]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(2)
    );
\m_axis_tdata_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_out_sx(2),
      I1 => p_0_in8_in,
      I2 => data_out_dx(2),
      O => \m_axis_tdata_reg[2]_i_1_n_0\
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \m_axis_tdata_reg[3]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(3)
    );
\m_axis_tdata_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_out_sx(3),
      I1 => p_0_in8_in,
      I2 => data_out_dx(3),
      O => \m_axis_tdata_reg[3]_i_1_n_0\
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \m_axis_tdata_reg[4]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(4)
    );
\m_axis_tdata_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_out_sx(4),
      I1 => p_0_in8_in,
      I2 => data_out_dx(4),
      O => \m_axis_tdata_reg[4]_i_1_n_0\
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \m_axis_tdata_reg[5]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(5)
    );
\m_axis_tdata_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_out_sx(5),
      I1 => p_0_in8_in,
      I2 => data_out_dx(5),
      O => \m_axis_tdata_reg[5]_i_1_n_0\
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \m_axis_tdata_reg[6]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(6)
    );
\m_axis_tdata_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_out_sx(6),
      I1 => p_0_in8_in,
      I2 => data_out_dx(6),
      O => \m_axis_tdata_reg[6]_i_1_n_0\
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \m_axis_tdata_reg[7]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(7)
    );
\m_axis_tdata_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_out_sx(7),
      I1 => p_0_in8_in,
      I2 => data_out_dx(7),
      O => \m_axis_tdata_reg[7]_i_1_n_0\
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \m_axis_tdata_reg[8]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(8)
    );
\m_axis_tdata_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_out_sx(8),
      I1 => p_0_in8_in,
      I2 => data_out_dx(8),
      O => \m_axis_tdata_reg[8]_i_1_n_0\
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \m_axis_tdata_reg[9]_i_1_n_0\,
      G => \^m_axis_tvalid\,
      GE => '1',
      Q => m_axis_tdata(9)
    );
\m_axis_tdata_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_out_sx(9),
      I1 => p_0_in8_in,
      I2 => data_out_dx(9),
      O => \m_axis_tdata_reg[9]_i_1_n_0\
    );
m_axis_tlast_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => tlast_sampled_sx_reg_n_0,
      I1 => p_0_in8_in,
      I2 => tlast_sampled_dx_reg_n_0,
      I3 => p_0_in7_in,
      O => m_axis_tlast
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in7_in,
      I1 => p_0_in8_in,
      O => \^m_axis_tvalid\
    );
read_allowed_sx_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDFFC000"
    )
        port map (
      I0 => \FSM_onehot_state1_reg_n_0_[5]\,
      I1 => s_axis_tlast,
      I2 => \FSM_onehot_state2_reg_n_0_[5]\,
      I3 => s_axis_tvalid,
      I4 => read_allowed_sx_reg_n_0,
      O => read_allowed_sx_i_1_n_0
    );
read_allowed_sx_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => read_allowed_sx_i_1_n_0,
      PRE => \FSM_onehot_state1[5]_i_2_n_0\,
      Q => read_allowed_sx_reg_n_0
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state1_reg_n_0_[5]\,
      I1 => \FSM_onehot_state2_reg_n_0_[5]\,
      O => s_axis_tready
    );
sub_dx0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sub_dx0_carry_n_0,
      CO(2) => sub_dx0_carry_n_1,
      CO(1) => sub_dx0_carry_n_2,
      CO(0) => sub_dx0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => data_in_dx(3 downto 0),
      O(3 downto 0) => sub_dx00_in(3 downto 0),
      S(3) => sub_dx0_carry_i_1_n_0,
      S(2) => sub_dx0_carry_i_2_n_0,
      S(1) => sub_dx0_carry_i_3_n_0,
      S(0) => sub_dx0_carry_i_4_n_0
    );
\sub_dx0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sub_dx0_carry_n_0,
      CO(3) => \sub_dx0_carry__0_n_0\,
      CO(2) => \sub_dx0_carry__0_n_1\,
      CO(1) => \sub_dx0_carry__0_n_2\,
      CO(0) => \sub_dx0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_in_dx(7 downto 4),
      O(3 downto 0) => sub_dx00_in(7 downto 4),
      S(3) => \sub_dx0_carry__0_i_1_n_0\,
      S(2) => \sub_dx0_carry__0_i_2_n_0\,
      S(1) => \sub_dx0_carry__0_i_3_n_0\,
      S(0) => \sub_dx0_carry__0_i_4_n_0\
    );
\sub_dx0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_dx(7),
      I1 => \last_values_dx_reg[31]\(7),
      O => \sub_dx0_carry__0_i_1_n_0\
    );
\sub_dx0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_dx(6),
      I1 => \last_values_dx_reg[31]\(6),
      O => \sub_dx0_carry__0_i_2_n_0\
    );
\sub_dx0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_dx(5),
      I1 => \last_values_dx_reg[31]\(5),
      O => \sub_dx0_carry__0_i_3_n_0\
    );
\sub_dx0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_dx(4),
      I1 => \last_values_dx_reg[31]\(4),
      O => \sub_dx0_carry__0_i_4_n_0\
    );
\sub_dx0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sub_dx0_carry__0_n_0\,
      CO(3) => \sub_dx0_carry__1_n_0\,
      CO(2) => \sub_dx0_carry__1_n_1\,
      CO(1) => \sub_dx0_carry__1_n_2\,
      CO(0) => \sub_dx0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_in_dx(11 downto 8),
      O(3 downto 0) => sub_dx00_in(11 downto 8),
      S(3) => \sub_dx0_carry__1_i_1_n_0\,
      S(2) => \sub_dx0_carry__1_i_2_n_0\,
      S(1) => \sub_dx0_carry__1_i_3_n_0\,
      S(0) => \sub_dx0_carry__1_i_4_n_0\
    );
\sub_dx0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_dx(11),
      I1 => \last_values_dx_reg[31]\(11),
      O => \sub_dx0_carry__1_i_1_n_0\
    );
\sub_dx0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_dx(10),
      I1 => \last_values_dx_reg[31]\(10),
      O => \sub_dx0_carry__1_i_2_n_0\
    );
\sub_dx0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_dx(9),
      I1 => \last_values_dx_reg[31]\(9),
      O => \sub_dx0_carry__1_i_3_n_0\
    );
\sub_dx0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_dx(8),
      I1 => \last_values_dx_reg[31]\(8),
      O => \sub_dx0_carry__1_i_4_n_0\
    );
\sub_dx0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sub_dx0_carry__1_n_0\,
      CO(3) => \sub_dx0_carry__2_n_0\,
      CO(2) => \sub_dx0_carry__2_n_1\,
      CO(1) => \sub_dx0_carry__2_n_2\,
      CO(0) => \sub_dx0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \last_values_dx_reg[31]\(15),
      DI(2 downto 0) => data_in_dx(14 downto 12),
      O(3 downto 0) => sub_dx00_in(15 downto 12),
      S(3) => \sub_dx0_carry__2_i_1_n_0\,
      S(2) => \sub_dx0_carry__2_i_2_n_0\,
      S(1) => \sub_dx0_carry__2_i_3_n_0\,
      S(0) => \sub_dx0_carry__2_i_4_n_0\
    );
\sub_dx0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_dx(15),
      I1 => \last_values_dx_reg[31]\(15),
      O => \sub_dx0_carry__2_i_1_n_0\
    );
\sub_dx0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_dx(14),
      I1 => \last_values_dx_reg[31]\(14),
      O => \sub_dx0_carry__2_i_2_n_0\
    );
\sub_dx0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_dx(13),
      I1 => \last_values_dx_reg[31]\(13),
      O => \sub_dx0_carry__2_i_3_n_0\
    );
\sub_dx0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_dx(12),
      I1 => \last_values_dx_reg[31]\(12),
      O => \sub_dx0_carry__2_i_4_n_0\
    );
\sub_dx0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sub_dx0_carry__2_n_0\,
      CO(3 downto 0) => \NLW_sub_dx0_carry__3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_sub_dx0_carry__3_O_UNCONNECTED\(3 downto 1),
      O(0) => sub_dx00_in(16),
      S(3 downto 0) => B"0001"
    );
sub_dx0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_dx(3),
      I1 => \last_values_dx_reg[31]\(3),
      O => sub_dx0_carry_i_1_n_0
    );
sub_dx0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_dx(2),
      I1 => \last_values_dx_reg[31]\(2),
      O => sub_dx0_carry_i_2_n_0
    );
sub_dx0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_dx(1),
      I1 => \last_values_dx_reg[31]\(1),
      O => sub_dx0_carry_i_3_n_0
    );
sub_dx0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_dx(0),
      I1 => \last_values_dx_reg[31]\(0),
      O => sub_dx0_carry_i_4_n_0
    );
\sub_dx[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => aresetn,
      I1 => \FSM_onehot_state2_reg_n_0_[4]\,
      I2 => tlast_sampled_dx_reg_n_0,
      O => sub_dx0
    );
\sub_dx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_dx0,
      D => sub_dx00_in(0),
      Q => sub_dx(0),
      R => '0'
    );
\sub_dx_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_dx0,
      D => sub_dx00_in(10),
      Q => sub_dx(10),
      R => '0'
    );
\sub_dx_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_dx0,
      D => sub_dx00_in(11),
      Q => sub_dx(11),
      R => '0'
    );
\sub_dx_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_dx0,
      D => sub_dx00_in(12),
      Q => sub_dx(12),
      R => '0'
    );
\sub_dx_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_dx0,
      D => sub_dx00_in(13),
      Q => sub_dx(13),
      R => '0'
    );
\sub_dx_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_dx0,
      D => sub_dx00_in(14),
      Q => sub_dx(14),
      R => '0'
    );
\sub_dx_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_dx0,
      D => sub_dx00_in(15),
      Q => sub_dx(15),
      R => '0'
    );
\sub_dx_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_dx0,
      D => sub_dx00_in(16),
      Q => sub_dx(16),
      R => '0'
    );
\sub_dx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_dx0,
      D => sub_dx00_in(1),
      Q => sub_dx(1),
      R => '0'
    );
\sub_dx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_dx0,
      D => sub_dx00_in(2),
      Q => sub_dx(2),
      R => '0'
    );
\sub_dx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_dx0,
      D => sub_dx00_in(3),
      Q => sub_dx(3),
      R => '0'
    );
\sub_dx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_dx0,
      D => sub_dx00_in(4),
      Q => sub_dx(4),
      R => '0'
    );
\sub_dx_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_dx0,
      D => sub_dx00_in(5),
      Q => sub_dx(5),
      R => '0'
    );
\sub_dx_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_dx0,
      D => sub_dx00_in(6),
      Q => sub_dx(6),
      R => '0'
    );
\sub_dx_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_dx0,
      D => sub_dx00_in(7),
      Q => sub_dx(7),
      R => '0'
    );
\sub_dx_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_dx0,
      D => sub_dx00_in(8),
      Q => sub_dx(8),
      R => '0'
    );
\sub_dx_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_dx0,
      D => sub_dx00_in(9),
      Q => sub_dx(9),
      R => '0'
    );
sub_sx0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sub_sx0_carry_n_0,
      CO(2) => sub_sx0_carry_n_1,
      CO(1) => sub_sx0_carry_n_2,
      CO(0) => sub_sx0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => data_in_sx(3 downto 0),
      O(3 downto 0) => sub_sx00_in(3 downto 0),
      S(3) => sub_sx0_carry_i_1_n_0,
      S(2) => sub_sx0_carry_i_2_n_0,
      S(1) => sub_sx0_carry_i_3_n_0,
      S(0) => sub_sx0_carry_i_4_n_0
    );
\sub_sx0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sub_sx0_carry_n_0,
      CO(3) => \sub_sx0_carry__0_n_0\,
      CO(2) => \sub_sx0_carry__0_n_1\,
      CO(1) => \sub_sx0_carry__0_n_2\,
      CO(0) => \sub_sx0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_in_sx(7 downto 4),
      O(3 downto 0) => sub_sx00_in(7 downto 4),
      S(3) => \sub_sx0_carry__0_i_1_n_0\,
      S(2) => \sub_sx0_carry__0_i_2_n_0\,
      S(1) => \sub_sx0_carry__0_i_3_n_0\,
      S(0) => \sub_sx0_carry__0_i_4_n_0\
    );
\sub_sx0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_sx(7),
      I1 => \last_values_sx_reg[31]\(7),
      O => \sub_sx0_carry__0_i_1_n_0\
    );
\sub_sx0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_sx(6),
      I1 => \last_values_sx_reg[31]\(6),
      O => \sub_sx0_carry__0_i_2_n_0\
    );
\sub_sx0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_sx(5),
      I1 => \last_values_sx_reg[31]\(5),
      O => \sub_sx0_carry__0_i_3_n_0\
    );
\sub_sx0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_sx(4),
      I1 => \last_values_sx_reg[31]\(4),
      O => \sub_sx0_carry__0_i_4_n_0\
    );
\sub_sx0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sub_sx0_carry__0_n_0\,
      CO(3) => \sub_sx0_carry__1_n_0\,
      CO(2) => \sub_sx0_carry__1_n_1\,
      CO(1) => \sub_sx0_carry__1_n_2\,
      CO(0) => \sub_sx0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_in_sx(11 downto 8),
      O(3 downto 0) => sub_sx00_in(11 downto 8),
      S(3) => \sub_sx0_carry__1_i_1_n_0\,
      S(2) => \sub_sx0_carry__1_i_2_n_0\,
      S(1) => \sub_sx0_carry__1_i_3_n_0\,
      S(0) => \sub_sx0_carry__1_i_4_n_0\
    );
\sub_sx0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_sx(11),
      I1 => \last_values_sx_reg[31]\(11),
      O => \sub_sx0_carry__1_i_1_n_0\
    );
\sub_sx0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_sx(10),
      I1 => \last_values_sx_reg[31]\(10),
      O => \sub_sx0_carry__1_i_2_n_0\
    );
\sub_sx0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_sx(9),
      I1 => \last_values_sx_reg[31]\(9),
      O => \sub_sx0_carry__1_i_3_n_0\
    );
\sub_sx0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_sx(8),
      I1 => \last_values_sx_reg[31]\(8),
      O => \sub_sx0_carry__1_i_4_n_0\
    );
\sub_sx0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sub_sx0_carry__1_n_0\,
      CO(3) => \sub_sx0_carry__2_n_0\,
      CO(2) => \sub_sx0_carry__2_n_1\,
      CO(1) => \sub_sx0_carry__2_n_2\,
      CO(0) => \sub_sx0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \last_values_sx_reg[31]\(15),
      DI(2 downto 0) => data_in_sx(14 downto 12),
      O(3 downto 0) => sub_sx00_in(15 downto 12),
      S(3) => \sub_sx0_carry__2_i_1_n_0\,
      S(2) => \sub_sx0_carry__2_i_2_n_0\,
      S(1) => \sub_sx0_carry__2_i_3_n_0\,
      S(0) => \sub_sx0_carry__2_i_4_n_0\
    );
\sub_sx0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_sx(15),
      I1 => \last_values_sx_reg[31]\(15),
      O => \sub_sx0_carry__2_i_1_n_0\
    );
\sub_sx0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_sx(14),
      I1 => \last_values_sx_reg[31]\(14),
      O => \sub_sx0_carry__2_i_2_n_0\
    );
\sub_sx0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_sx(13),
      I1 => \last_values_sx_reg[31]\(13),
      O => \sub_sx0_carry__2_i_3_n_0\
    );
\sub_sx0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_sx(12),
      I1 => \last_values_sx_reg[31]\(12),
      O => \sub_sx0_carry__2_i_4_n_0\
    );
\sub_sx0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sub_sx0_carry__2_n_0\,
      CO(3 downto 0) => \NLW_sub_sx0_carry__3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_sub_sx0_carry__3_O_UNCONNECTED\(3 downto 1),
      O(0) => sub_sx00_in(16),
      S(3 downto 0) => B"0001"
    );
sub_sx0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_sx(3),
      I1 => \last_values_sx_reg[31]\(3),
      O => sub_sx0_carry_i_1_n_0
    );
sub_sx0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_sx(2),
      I1 => \last_values_sx_reg[31]\(2),
      O => sub_sx0_carry_i_2_n_0
    );
sub_sx0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_sx(1),
      I1 => \last_values_sx_reg[31]\(1),
      O => sub_sx0_carry_i_3_n_0
    );
sub_sx0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in_sx(0),
      I1 => \last_values_sx_reg[31]\(0),
      O => sub_sx0_carry_i_4_n_0
    );
\sub_sx[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => aresetn,
      I1 => \FSM_onehot_state1_reg_n_0_[4]\,
      I2 => tlast_sampled_sx_reg_n_0,
      O => sub_sx0
    );
\sub_sx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_sx0,
      D => sub_sx00_in(0),
      Q => sub_sx(0),
      R => '0'
    );
\sub_sx_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_sx0,
      D => sub_sx00_in(10),
      Q => sub_sx(10),
      R => '0'
    );
\sub_sx_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_sx0,
      D => sub_sx00_in(11),
      Q => sub_sx(11),
      R => '0'
    );
\sub_sx_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_sx0,
      D => sub_sx00_in(12),
      Q => sub_sx(12),
      R => '0'
    );
\sub_sx_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_sx0,
      D => sub_sx00_in(13),
      Q => sub_sx(13),
      R => '0'
    );
\sub_sx_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_sx0,
      D => sub_sx00_in(14),
      Q => sub_sx(14),
      R => '0'
    );
\sub_sx_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_sx0,
      D => sub_sx00_in(15),
      Q => sub_sx(15),
      R => '0'
    );
\sub_sx_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_sx0,
      D => sub_sx00_in(16),
      Q => sub_sx(16),
      R => '0'
    );
\sub_sx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_sx0,
      D => sub_sx00_in(1),
      Q => sub_sx(1),
      R => '0'
    );
\sub_sx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_sx0,
      D => sub_sx00_in(2),
      Q => sub_sx(2),
      R => '0'
    );
\sub_sx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_sx0,
      D => sub_sx00_in(3),
      Q => sub_sx(3),
      R => '0'
    );
\sub_sx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_sx0,
      D => sub_sx00_in(4),
      Q => sub_sx(4),
      R => '0'
    );
\sub_sx_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_sx0,
      D => sub_sx00_in(5),
      Q => sub_sx(5),
      R => '0'
    );
\sub_sx_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_sx0,
      D => sub_sx00_in(6),
      Q => sub_sx(6),
      R => '0'
    );
\sub_sx_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_sx0,
      D => sub_sx00_in(7),
      Q => sub_sx(7),
      R => '0'
    );
\sub_sx_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_sx0,
      D => sub_sx00_in(8),
      Q => sub_sx(8),
      R => '0'
    );
\sub_sx_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_sx0,
      D => sub_sx00_in(9),
      Q => sub_sx(9),
      R => '0'
    );
sw_reg_dx_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_dx0,
      D => sw_in,
      Q => sw_reg_dx_reg_n_0,
      R => '0'
    );
sw_reg_sx_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg_sx0,
      D => sw_in,
      Q => sw_reg_sx_reg_n_0,
      R => '0'
    );
tlast_sampled_dx_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => \FSM_onehot_state2_reg_n_0_[5]\,
      I2 => s_axis_tvalid,
      I3 => aresetn,
      I4 => tlast_sampled_dx_reg_n_0,
      O => tlast_sampled_dx_i_1_n_0
    );
tlast_sampled_dx_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tlast_sampled_dx_i_1_n_0,
      Q => tlast_sampled_dx_reg_n_0,
      R => '0'
    );
tlast_sampled_sx_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => aresetn,
      I2 => s_axis_tvalid,
      I3 => \FSM_onehot_state1_reg_n_0_[5]\,
      I4 => tlast_sampled_sx_reg_n_0,
      O => tlast_sampled_sx_i_1_n_0
    );
tlast_sampled_sx_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tlast_sampled_sx_i_1_n_0,
      Q => tlast_sampled_sx_reg_n_0,
      R => '0'
    );
write_allowed_sx_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5F40"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => p_0_in7_in,
      I2 => m_axis_tready,
      I3 => write_allowed_sx_reg_n_0,
      O => write_allowed_sx_i_1_n_0
    );
write_allowed_sx_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => write_allowed_sx_i_1_n_0,
      PRE => \FSM_onehot_state1[5]_i_2_n_0\,
      Q => write_allowed_sx_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_mov_av_v2_moving_average_v2_0_0 is
  port (
    clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    sw_in : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_mov_av_v2_moving_average_v2_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_mov_av_v2_moving_average_v2_0_0 : entity is "bd_mov_av_v2_moving_average_v2_0_0,moving_average_v2,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of bd_mov_av_v2_moving_average_v2_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of bd_mov_av_v2_moving_average_v2_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of bd_mov_av_v2_moving_average_v2_0_0 : entity is "moving_average_v2,Vivado 2019.2";
end bd_mov_av_v2_moving_average_v2_0_0;

architecture STRUCTURE of bd_mov_av_v2_moving_average_v2_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
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
U0: entity work.bd_mov_av_v2_moving_average_v2_0_0_moving_average_v2
     port map (
      aresetn => aresetn,
      clk => clk,
      m_axis_tdata(15 downto 0) => m_axis_tdata(15 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(15 downto 0) => s_axis_tdata(15 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      sw_in => sw_in
    );
end STRUCTURE;

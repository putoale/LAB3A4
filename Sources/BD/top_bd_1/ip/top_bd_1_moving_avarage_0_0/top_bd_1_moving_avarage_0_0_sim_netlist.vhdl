-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun May 17 22:20:27 2020
-- Host        : DESKTOP-O39JAIK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Vivado_DESD_Project/Project/Personal/Lab3_A4/LAB3A4/Sources/BD/top_bd_1/ip/top_bd_1_moving_avarage_0_0/top_bd_1_moving_avarage_0_0_sim_netlist.vhdl
-- Design      : top_bd_1_moving_avarage_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_bd_1_moving_avarage_0_0_moving_avarage is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    clk : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    sw_in : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_bd_1_moving_avarage_0_0_moving_avarage : entity is "moving_avarage";
end top_bd_1_moving_avarage_0_0_moving_avarage;

architecture STRUCTURE of top_bd_1_moving_avarage_0_0_moving_avarage is
  signal ARG : STD_LOGIC_VECTOR ( 15 downto 5 );
  signal \ARG_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ARG_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ARG_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ARG_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ARG_carry__0_n_0\ : STD_LOGIC;
  signal \ARG_carry__0_n_1\ : STD_LOGIC;
  signal \ARG_carry__0_n_2\ : STD_LOGIC;
  signal \ARG_carry__0_n_3\ : STD_LOGIC;
  signal \ARG_carry__0_n_4\ : STD_LOGIC;
  signal \ARG_carry__0_n_5\ : STD_LOGIC;
  signal \ARG_carry__0_n_6\ : STD_LOGIC;
  signal \ARG_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \ARG_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \ARG_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \ARG_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \ARG_carry__1_n_0\ : STD_LOGIC;
  signal \ARG_carry__1_n_1\ : STD_LOGIC;
  signal \ARG_carry__1_n_2\ : STD_LOGIC;
  signal \ARG_carry__1_n_3\ : STD_LOGIC;
  signal \ARG_carry__1_n_4\ : STD_LOGIC;
  signal \ARG_carry__1_n_5\ : STD_LOGIC;
  signal \ARG_carry__1_n_6\ : STD_LOGIC;
  signal \ARG_carry__1_n_7\ : STD_LOGIC;
  signal \ARG_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \ARG_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \ARG_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \ARG_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \ARG_carry__2_n_1\ : STD_LOGIC;
  signal \ARG_carry__2_n_2\ : STD_LOGIC;
  signal \ARG_carry__2_n_3\ : STD_LOGIC;
  signal \ARG_carry__2_n_4\ : STD_LOGIC;
  signal \ARG_carry__2_n_5\ : STD_LOGIC;
  signal \ARG_carry__2_n_6\ : STD_LOGIC;
  signal \ARG_carry__2_n_7\ : STD_LOGIC;
  signal ARG_carry_i_1_n_0 : STD_LOGIC;
  signal ARG_carry_i_2_n_0 : STD_LOGIC;
  signal ARG_carry_i_3_n_0 : STD_LOGIC;
  signal ARG_carry_i_4_n_0 : STD_LOGIC;
  signal ARG_carry_n_0 : STD_LOGIC;
  signal ARG_carry_n_1 : STD_LOGIC;
  signal ARG_carry_n_2 : STD_LOGIC;
  signal ARG_carry_n_3 : STD_LOGIC;
  signal \ARG_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \ARG_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \ARG_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \ARG_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \ARG_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \ARG_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \ARG_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \ARG_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \ARG_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \ARG_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \ARG_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \ARG_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \ARG_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \ARG_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \ARG_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal RESIZE0 : STD_LOGIC;
  signal data_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_out0 : STD_LOGIC;
  signal \data_out0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \data_out0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \data_out0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \data_out0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \data_out0_carry__0_n_0\ : STD_LOGIC;
  signal \data_out0_carry__0_n_1\ : STD_LOGIC;
  signal \data_out0_carry__0_n_2\ : STD_LOGIC;
  signal \data_out0_carry__0_n_3\ : STD_LOGIC;
  signal \data_out0_carry__0_n_4\ : STD_LOGIC;
  signal \data_out0_carry__0_n_5\ : STD_LOGIC;
  signal \data_out0_carry__0_n_6\ : STD_LOGIC;
  signal \data_out0_carry__0_n_7\ : STD_LOGIC;
  signal \data_out0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \data_out0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \data_out0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \data_out0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \data_out0_carry__1_n_0\ : STD_LOGIC;
  signal \data_out0_carry__1_n_1\ : STD_LOGIC;
  signal \data_out0_carry__1_n_2\ : STD_LOGIC;
  signal \data_out0_carry__1_n_3\ : STD_LOGIC;
  signal \data_out0_carry__1_n_4\ : STD_LOGIC;
  signal \data_out0_carry__1_n_5\ : STD_LOGIC;
  signal \data_out0_carry__1_n_6\ : STD_LOGIC;
  signal \data_out0_carry__1_n_7\ : STD_LOGIC;
  signal \data_out0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \data_out0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \data_out0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \data_out0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \data_out0_carry__2_n_1\ : STD_LOGIC;
  signal \data_out0_carry__2_n_2\ : STD_LOGIC;
  signal \data_out0_carry__2_n_3\ : STD_LOGIC;
  signal \data_out0_carry__2_n_4\ : STD_LOGIC;
  signal \data_out0_carry__2_n_5\ : STD_LOGIC;
  signal \data_out0_carry__2_n_6\ : STD_LOGIC;
  signal \data_out0_carry__2_n_7\ : STD_LOGIC;
  signal data_out0_carry_i_1_n_0 : STD_LOGIC;
  signal data_out0_carry_i_2_n_0 : STD_LOGIC;
  signal data_out0_carry_i_3_n_0 : STD_LOGIC;
  signal data_out0_carry_i_4_n_0 : STD_LOGIC;
  signal data_out0_carry_n_0 : STD_LOGIC;
  signal data_out0_carry_n_1 : STD_LOGIC;
  signal data_out0_carry_n_2 : STD_LOGIC;
  signal data_out0_carry_n_3 : STD_LOGIC;
  signal data_out0_carry_n_4 : STD_LOGIC;
  signal data_out0_carry_n_5 : STD_LOGIC;
  signal data_out0_carry_n_6 : STD_LOGIC;
  signal data_out0_carry_n_7 : STD_LOGIC;
  signal \data_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \last_avarage_dx[0]_i_3_n_0\ : STD_LOGIC;
  signal \last_avarage_dx[0]_i_4_n_0\ : STD_LOGIC;
  signal \last_avarage_dx[0]_i_5_n_0\ : STD_LOGIC;
  signal \last_avarage_dx[0]_i_6_n_0\ : STD_LOGIC;
  signal \last_avarage_dx[12]_i_2_n_0\ : STD_LOGIC;
  signal \last_avarage_dx[12]_i_3_n_0\ : STD_LOGIC;
  signal \last_avarage_dx[12]_i_4_n_0\ : STD_LOGIC;
  signal \last_avarage_dx[12]_i_5_n_0\ : STD_LOGIC;
  signal \last_avarage_dx[4]_i_2_n_0\ : STD_LOGIC;
  signal \last_avarage_dx[4]_i_3_n_0\ : STD_LOGIC;
  signal \last_avarage_dx[4]_i_4_n_0\ : STD_LOGIC;
  signal \last_avarage_dx[4]_i_5_n_0\ : STD_LOGIC;
  signal \last_avarage_dx[8]_i_2_n_0\ : STD_LOGIC;
  signal \last_avarage_dx[8]_i_3_n_0\ : STD_LOGIC;
  signal \last_avarage_dx[8]_i_4_n_0\ : STD_LOGIC;
  signal \last_avarage_dx[8]_i_5_n_0\ : STD_LOGIC;
  signal last_avarage_dx_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \last_avarage_dx_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \last_avarage_dx_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \last_avarage_dx_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \last_avarage_dx_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \last_avarage_dx_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \last_avarage_dx_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \last_avarage_dx_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \last_avarage_dx_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \last_avarage_dx_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \last_avarage_dx_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \last_avarage_dx_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \last_avarage_dx_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \last_avarage_dx_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \last_avarage_dx_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \last_avarage_dx_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \last_avarage_dx_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \last_avarage_dx_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \last_avarage_dx_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \last_avarage_dx_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \last_avarage_dx_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \last_avarage_dx_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \last_avarage_dx_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \last_avarage_dx_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \last_avarage_dx_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \last_avarage_dx_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \last_avarage_dx_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \last_avarage_dx_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \last_avarage_dx_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \last_avarage_dx_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \last_avarage_dx_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \last_avarage_dx_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal last_avarage_sx0 : STD_LOGIC;
  signal \last_avarage_sx[0]_i_3_n_0\ : STD_LOGIC;
  signal \last_avarage_sx[0]_i_4_n_0\ : STD_LOGIC;
  signal \last_avarage_sx[0]_i_5_n_0\ : STD_LOGIC;
  signal \last_avarage_sx[0]_i_6_n_0\ : STD_LOGIC;
  signal \last_avarage_sx[12]_i_2_n_0\ : STD_LOGIC;
  signal \last_avarage_sx[12]_i_3_n_0\ : STD_LOGIC;
  signal \last_avarage_sx[12]_i_4_n_0\ : STD_LOGIC;
  signal \last_avarage_sx[12]_i_5_n_0\ : STD_LOGIC;
  signal \last_avarage_sx[4]_i_2_n_0\ : STD_LOGIC;
  signal \last_avarage_sx[4]_i_3_n_0\ : STD_LOGIC;
  signal \last_avarage_sx[4]_i_4_n_0\ : STD_LOGIC;
  signal \last_avarage_sx[4]_i_5_n_0\ : STD_LOGIC;
  signal \last_avarage_sx[8]_i_2_n_0\ : STD_LOGIC;
  signal \last_avarage_sx[8]_i_3_n_0\ : STD_LOGIC;
  signal \last_avarage_sx[8]_i_4_n_0\ : STD_LOGIC;
  signal \last_avarage_sx[8]_i_5_n_0\ : STD_LOGIC;
  signal last_avarage_sx_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \last_avarage_sx_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \last_avarage_sx_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \last_avarage_sx_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \last_avarage_sx_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \last_avarage_sx_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \last_avarage_sx_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \last_avarage_sx_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \last_avarage_sx_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \last_avarage_sx_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \last_avarage_sx_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \last_avarage_sx_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \last_avarage_sx_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \last_avarage_sx_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \last_avarage_sx_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \last_avarage_sx_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \last_avarage_sx_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \last_avarage_sx_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \last_avarage_sx_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \last_avarage_sx_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \last_avarage_sx_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \last_avarage_sx_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \last_avarage_sx_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \last_avarage_sx_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \last_avarage_sx_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \last_avarage_sx_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \last_avarage_sx_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \last_avarage_sx_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \last_avarage_sx_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \last_avarage_sx_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \last_avarage_sx_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \last_avarage_sx_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \last_values_dx[0]\ : STD_LOGIC;
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
  signal sel : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sub_sig : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sub_sig0 : STD_LOGIC;
  signal \sub_sig[0]_i_1_n_0\ : STD_LOGIC;
  signal \sub_sig[1]_i_1_n_0\ : STD_LOGIC;
  signal \sub_sig[2]_i_1_n_0\ : STD_LOGIC;
  signal \sub_sig[3]_i_1_n_0\ : STD_LOGIC;
  signal \sub_sig[4]_i_1_n_0\ : STD_LOGIC;
  signal \sub_sig[5]_i_1_n_0\ : STD_LOGIC;
  signal \sub_sig[6]_i_1_n_0\ : STD_LOGIC;
  signal \sub_sig[7]_i_1_n_0\ : STD_LOGIC;
  signal \sub_sig[8]_i_1_n_0\ : STD_LOGIC;
  signal \sub_sig[9]_i_1_n_0\ : STD_LOGIC;
  signal sw_reg : STD_LOGIC;
  signal sw_reg0 : STD_LOGIC;
  signal tlast_expected : STD_LOGIC;
  signal tlast_expected_i_1_n_0 : STD_LOGIC;
  signal tlast_sampled : STD_LOGIC;
  signal NLW_ARG_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ARG_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_ARG_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ARG_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ARG_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_ARG_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_data_out0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_last_avarage_dx_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_last_avarage_sx_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_4\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "idle:000,receive_data:001,subtraction:010,avarage:011,send_data:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "idle:000,receive_data:001,subtraction:010,avarage:011,send_data:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "idle:000,receive_data:001,subtraction:010,avarage:011,send_data:100,";
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
  attribute SOFT_HLUTNM of last_values_dx_reg_gate : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__10\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__11\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__12\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__13\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__14\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__5\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__6\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__7\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__8\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__9\ : label is "soft_lutpair15";
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
  attribute SOFT_HLUTNM of last_values_sx_reg_gate : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__10\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__11\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__12\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__13\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__14\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__5\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__6\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__7\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__8\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__9\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of m_axis_tlast_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of m_axis_tvalid_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sub_sig[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sub_sig[15]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sub_sig[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sub_sig[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sub_sig[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sub_sig[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sub_sig[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sub_sig[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sub_sig[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sub_sig[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sub_sig[9]_i_1\ : label is "soft_lutpair3";
begin
ARG_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ARG_carry_n_0,
      CO(2) => ARG_carry_n_1,
      CO(1) => ARG_carry_n_2,
      CO(0) => ARG_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => data_in(3 downto 0),
      O(3 downto 0) => NLW_ARG_carry_O_UNCONNECTED(3 downto 0),
      S(3) => ARG_carry_i_1_n_0,
      S(2) => ARG_carry_i_2_n_0,
      S(1) => ARG_carry_i_3_n_0,
      S(0) => ARG_carry_i_4_n_0
    );
\ARG_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ARG_carry_n_0,
      CO(3) => \ARG_carry__0_n_0\,
      CO(2) => \ARG_carry__0_n_1\,
      CO(1) => \ARG_carry__0_n_2\,
      CO(0) => \ARG_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_in(7 downto 4),
      O(3) => \ARG_carry__0_n_4\,
      O(2) => \ARG_carry__0_n_5\,
      O(1) => \ARG_carry__0_n_6\,
      O(0) => \NLW_ARG_carry__0_O_UNCONNECTED\(0),
      S(3) => \ARG_carry__0_i_1_n_0\,
      S(2) => \ARG_carry__0_i_2_n_0\,
      S(1) => \ARG_carry__0_i_3_n_0\,
      S(0) => \ARG_carry__0_i_4_n_0\
    );
\ARG_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(7),
      I1 => \last_values_sx_reg[31]\(7),
      O => \ARG_carry__0_i_1_n_0\
    );
\ARG_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(6),
      I1 => \last_values_sx_reg[31]\(6),
      O => \ARG_carry__0_i_2_n_0\
    );
\ARG_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(5),
      I1 => \last_values_sx_reg[31]\(5),
      O => \ARG_carry__0_i_3_n_0\
    );
\ARG_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(4),
      I1 => \last_values_sx_reg[31]\(4),
      O => \ARG_carry__0_i_4_n_0\
    );
\ARG_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG_carry__0_n_0\,
      CO(3) => \ARG_carry__1_n_0\,
      CO(2) => \ARG_carry__1_n_1\,
      CO(1) => \ARG_carry__1_n_2\,
      CO(0) => \ARG_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_in(11 downto 8),
      O(3) => \ARG_carry__1_n_4\,
      O(2) => \ARG_carry__1_n_5\,
      O(1) => \ARG_carry__1_n_6\,
      O(0) => \ARG_carry__1_n_7\,
      S(3) => \ARG_carry__1_i_1_n_0\,
      S(2) => \ARG_carry__1_i_2_n_0\,
      S(1) => \ARG_carry__1_i_3_n_0\,
      S(0) => \ARG_carry__1_i_4_n_0\
    );
\ARG_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(11),
      I1 => \last_values_sx_reg[31]\(11),
      O => \ARG_carry__1_i_1_n_0\
    );
\ARG_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(10),
      I1 => \last_values_sx_reg[31]\(10),
      O => \ARG_carry__1_i_2_n_0\
    );
\ARG_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(9),
      I1 => \last_values_sx_reg[31]\(9),
      O => \ARG_carry__1_i_3_n_0\
    );
\ARG_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(8),
      I1 => \last_values_sx_reg[31]\(8),
      O => \ARG_carry__1_i_4_n_0\
    );
\ARG_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG_carry__1_n_0\,
      CO(3) => \NLW_ARG_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \ARG_carry__2_n_1\,
      CO(1) => \ARG_carry__2_n_2\,
      CO(0) => \ARG_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => data_in(14 downto 12),
      O(3) => \ARG_carry__2_n_4\,
      O(2) => \ARG_carry__2_n_5\,
      O(1) => \ARG_carry__2_n_6\,
      O(0) => \ARG_carry__2_n_7\,
      S(3) => \ARG_carry__2_i_1_n_0\,
      S(2) => \ARG_carry__2_i_2_n_0\,
      S(1) => \ARG_carry__2_i_3_n_0\,
      S(0) => \ARG_carry__2_i_4_n_0\
    );
\ARG_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(15),
      I1 => \last_values_sx_reg[31]\(15),
      O => \ARG_carry__2_i_1_n_0\
    );
\ARG_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(14),
      I1 => \last_values_sx_reg[31]\(14),
      O => \ARG_carry__2_i_2_n_0\
    );
\ARG_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(13),
      I1 => \last_values_sx_reg[31]\(13),
      O => \ARG_carry__2_i_3_n_0\
    );
\ARG_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(12),
      I1 => \last_values_sx_reg[31]\(12),
      O => \ARG_carry__2_i_4_n_0\
    );
ARG_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(3),
      I1 => \last_values_sx_reg[31]\(3),
      O => ARG_carry_i_1_n_0
    );
ARG_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(2),
      I1 => \last_values_sx_reg[31]\(2),
      O => ARG_carry_i_2_n_0
    );
ARG_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(1),
      I1 => \last_values_sx_reg[31]\(1),
      O => ARG_carry_i_3_n_0
    );
ARG_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(0),
      I1 => \last_values_sx_reg[31]\(0),
      O => ARG_carry_i_4_n_0
    );
\ARG_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ARG_inferred__0/i__carry_n_0\,
      CO(2) => \ARG_inferred__0/i__carry_n_1\,
      CO(1) => \ARG_inferred__0/i__carry_n_2\,
      CO(0) => \ARG_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => data_in(3 downto 0),
      O(3 downto 0) => \NLW_ARG_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\ARG_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG_inferred__0/i__carry_n_0\,
      CO(3) => \ARG_inferred__0/i__carry__0_n_0\,
      CO(2) => \ARG_inferred__0/i__carry__0_n_1\,
      CO(1) => \ARG_inferred__0/i__carry__0_n_2\,
      CO(0) => \ARG_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_in(7 downto 4),
      O(3 downto 1) => ARG(7 downto 5),
      O(0) => \NLW_ARG_inferred__0/i__carry__0_O_UNCONNECTED\(0),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\ARG_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG_inferred__0/i__carry__0_n_0\,
      CO(3) => \ARG_inferred__0/i__carry__1_n_0\,
      CO(2) => \ARG_inferred__0/i__carry__1_n_1\,
      CO(1) => \ARG_inferred__0/i__carry__1_n_2\,
      CO(0) => \ARG_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_in(11 downto 8),
      O(3 downto 0) => ARG(11 downto 8),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\ARG_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG_inferred__0/i__carry__1_n_0\,
      CO(3) => \NLW_ARG_inferred__0/i__carry__2_CO_UNCONNECTED\(3),
      CO(2) => \ARG_inferred__0/i__carry__2_n_1\,
      CO(1) => \ARG_inferred__0/i__carry__2_n_2\,
      CO(0) => \ARG_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => data_in(14 downto 12),
      O(3 downto 0) => ARG(15 downto 12),
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      O => \state__0\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33333B3830303B38"
    )
        port map (
      I0 => m_axis_tready,
      I1 => state(2),
      I2 => state(1),
      I3 => s_axis_tvalid,
      I4 => state(0),
      I5 => \FSM_sequential_state[2]_i_4_n_0\,
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      O => \state__0\(2)
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tlast_expected,
      I1 => tlast_sampled,
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_sequential_state[2]_i_1_n_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \state__0\(0),
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_sequential_state[2]_i_1_n_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_sequential_state[2]_i_1_n_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \state__0\(2),
      Q => state(2)
    );
\data_in_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg0,
      D => s_axis_tdata(0),
      Q => data_in(0),
      R => '0'
    );
\data_in_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg0,
      D => s_axis_tdata(10),
      Q => data_in(10),
      R => '0'
    );
\data_in_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg0,
      D => s_axis_tdata(11),
      Q => data_in(11),
      R => '0'
    );
\data_in_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg0,
      D => s_axis_tdata(12),
      Q => data_in(12),
      R => '0'
    );
\data_in_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg0,
      D => s_axis_tdata(13),
      Q => data_in(13),
      R => '0'
    );
\data_in_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg0,
      D => s_axis_tdata(14),
      Q => data_in(14),
      R => '0'
    );
\data_in_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg0,
      D => s_axis_tdata(15),
      Q => data_in(15),
      R => '0'
    );
\data_in_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg0,
      D => s_axis_tdata(1),
      Q => data_in(1),
      R => '0'
    );
\data_in_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg0,
      D => s_axis_tdata(2),
      Q => data_in(2),
      R => '0'
    );
\data_in_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg0,
      D => s_axis_tdata(3),
      Q => data_in(3),
      R => '0'
    );
\data_in_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg0,
      D => s_axis_tdata(4),
      Q => data_in(4),
      R => '0'
    );
\data_in_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg0,
      D => s_axis_tdata(5),
      Q => data_in(5),
      R => '0'
    );
\data_in_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg0,
      D => s_axis_tdata(6),
      Q => data_in(6),
      R => '0'
    );
\data_in_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg0,
      D => s_axis_tdata(7),
      Q => data_in(7),
      R => '0'
    );
\data_in_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg0,
      D => s_axis_tdata(8),
      Q => data_in(8),
      R => '0'
    );
\data_in_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg0,
      D => s_axis_tdata(9),
      Q => data_in(9),
      R => '0'
    );
data_out0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => data_out0_carry_n_0,
      CO(2) => data_out0_carry_n_1,
      CO(1) => data_out0_carry_n_2,
      CO(0) => data_out0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => sub_sig(3 downto 0),
      O(3) => data_out0_carry_n_4,
      O(2) => data_out0_carry_n_5,
      O(1) => data_out0_carry_n_6,
      O(0) => data_out0_carry_n_7,
      S(3) => data_out0_carry_i_1_n_0,
      S(2) => data_out0_carry_i_2_n_0,
      S(1) => data_out0_carry_i_3_n_0,
      S(0) => data_out0_carry_i_4_n_0
    );
\data_out0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => data_out0_carry_n_0,
      CO(3) => \data_out0_carry__0_n_0\,
      CO(2) => \data_out0_carry__0_n_1\,
      CO(1) => \data_out0_carry__0_n_2\,
      CO(0) => \data_out0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sub_sig(7 downto 4),
      O(3) => \data_out0_carry__0_n_4\,
      O(2) => \data_out0_carry__0_n_5\,
      O(1) => \data_out0_carry__0_n_6\,
      O(0) => \data_out0_carry__0_n_7\,
      S(3) => \data_out0_carry__0_i_1_n_0\,
      S(2) => \data_out0_carry__0_i_2_n_0\,
      S(1) => \data_out0_carry__0_i_3_n_0\,
      S(0) => \data_out0_carry__0_i_4_n_0\
    );
\data_out0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => sub_sig(7),
      I1 => tlast_sampled,
      I2 => last_avarage_sx_reg(7),
      I3 => last_avarage_dx_reg(7),
      O => \data_out0_carry__0_i_1_n_0\
    );
\data_out0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => sub_sig(6),
      I1 => tlast_sampled,
      I2 => last_avarage_sx_reg(6),
      I3 => last_avarage_dx_reg(6),
      O => \data_out0_carry__0_i_2_n_0\
    );
\data_out0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => sub_sig(5),
      I1 => tlast_sampled,
      I2 => last_avarage_sx_reg(5),
      I3 => last_avarage_dx_reg(5),
      O => \data_out0_carry__0_i_3_n_0\
    );
\data_out0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => sub_sig(4),
      I1 => tlast_sampled,
      I2 => last_avarage_sx_reg(4),
      I3 => last_avarage_dx_reg(4),
      O => \data_out0_carry__0_i_4_n_0\
    );
\data_out0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out0_carry__0_n_0\,
      CO(3) => \data_out0_carry__1_n_0\,
      CO(2) => \data_out0_carry__1_n_1\,
      CO(1) => \data_out0_carry__1_n_2\,
      CO(0) => \data_out0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => sub_sig(15),
      DI(2) => sub_sig(15),
      DI(1 downto 0) => sub_sig(9 downto 8),
      O(3) => \data_out0_carry__1_n_4\,
      O(2) => \data_out0_carry__1_n_5\,
      O(1) => \data_out0_carry__1_n_6\,
      O(0) => \data_out0_carry__1_n_7\,
      S(3) => \data_out0_carry__1_i_1_n_0\,
      S(2) => \data_out0_carry__1_i_2_n_0\,
      S(1) => \data_out0_carry__1_i_3_n_0\,
      S(0) => \data_out0_carry__1_i_4_n_0\
    );
\data_out0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => sub_sig(15),
      I1 => tlast_sampled,
      I2 => last_avarage_sx_reg(11),
      I3 => last_avarage_dx_reg(11),
      O => \data_out0_carry__1_i_1_n_0\
    );
\data_out0_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => sub_sig(15),
      I1 => tlast_sampled,
      I2 => last_avarage_sx_reg(10),
      I3 => last_avarage_dx_reg(10),
      O => \data_out0_carry__1_i_2_n_0\
    );
\data_out0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => sub_sig(9),
      I1 => tlast_sampled,
      I2 => last_avarage_sx_reg(9),
      I3 => last_avarage_dx_reg(9),
      O => \data_out0_carry__1_i_3_n_0\
    );
\data_out0_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => sub_sig(8),
      I1 => tlast_sampled,
      I2 => last_avarage_sx_reg(8),
      I3 => last_avarage_dx_reg(8),
      O => \data_out0_carry__1_i_4_n_0\
    );
\data_out0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out0_carry__1_n_0\,
      CO(3) => \NLW_data_out0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \data_out0_carry__2_n_1\,
      CO(1) => \data_out0_carry__2_n_2\,
      CO(0) => \data_out0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => sub_sig(15),
      DI(1) => sub_sig(15),
      DI(0) => sub_sig(15),
      O(3) => \data_out0_carry__2_n_4\,
      O(2) => \data_out0_carry__2_n_5\,
      O(1) => \data_out0_carry__2_n_6\,
      O(0) => \data_out0_carry__2_n_7\,
      S(3) => \data_out0_carry__2_i_1_n_0\,
      S(2) => \data_out0_carry__2_i_2_n_0\,
      S(1) => \data_out0_carry__2_i_3_n_0\,
      S(0) => \data_out0_carry__2_i_4_n_0\
    );
\data_out0_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => sub_sig(15),
      I1 => tlast_sampled,
      I2 => last_avarage_sx_reg(15),
      I3 => last_avarage_dx_reg(15),
      O => \data_out0_carry__2_i_1_n_0\
    );
\data_out0_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => sub_sig(15),
      I1 => tlast_sampled,
      I2 => last_avarage_sx_reg(14),
      I3 => last_avarage_dx_reg(14),
      O => \data_out0_carry__2_i_2_n_0\
    );
\data_out0_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => sub_sig(15),
      I1 => tlast_sampled,
      I2 => last_avarage_sx_reg(13),
      I3 => last_avarage_dx_reg(13),
      O => \data_out0_carry__2_i_3_n_0\
    );
\data_out0_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => sub_sig(15),
      I1 => tlast_sampled,
      I2 => last_avarage_sx_reg(12),
      I3 => last_avarage_dx_reg(12),
      O => \data_out0_carry__2_i_4_n_0\
    );
data_out0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => sub_sig(3),
      I1 => tlast_sampled,
      I2 => last_avarage_sx_reg(3),
      I3 => last_avarage_dx_reg(3),
      O => data_out0_carry_i_1_n_0
    );
data_out0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => sub_sig(2),
      I1 => tlast_sampled,
      I2 => last_avarage_sx_reg(2),
      I3 => last_avarage_dx_reg(2),
      O => data_out0_carry_i_2_n_0
    );
data_out0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => sub_sig(1),
      I1 => tlast_sampled,
      I2 => last_avarage_sx_reg(1),
      I3 => last_avarage_dx_reg(1),
      O => data_out0_carry_i_3_n_0
    );
data_out0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"569A"
    )
        port map (
      I0 => sub_sig(0),
      I1 => tlast_sampled,
      I2 => last_avarage_sx_reg(0),
      I3 => last_avarage_dx_reg(0),
      O => data_out0_carry_i_4_n_0
    );
\data_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data_out0_carry_n_7,
      I1 => sw_reg,
      I2 => data_in(0),
      I3 => state(1),
      I4 => s_axis_tdata(0),
      O => \data_out[0]_i_1_n_0\
    );
\data_out[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out0_carry__1_n_5\,
      I1 => sw_reg,
      I2 => data_in(10),
      I3 => state(1),
      I4 => s_axis_tdata(10),
      O => \data_out[10]_i_1_n_0\
    );
\data_out[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out0_carry__1_n_4\,
      I1 => sw_reg,
      I2 => data_in(11),
      I3 => state(1),
      I4 => s_axis_tdata(11),
      O => \data_out[11]_i_1_n_0\
    );
\data_out[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out0_carry__2_n_7\,
      I1 => sw_reg,
      I2 => data_in(12),
      I3 => state(1),
      I4 => s_axis_tdata(12),
      O => \data_out[12]_i_1_n_0\
    );
\data_out[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out0_carry__2_n_6\,
      I1 => sw_reg,
      I2 => data_in(13),
      I3 => state(1),
      I4 => s_axis_tdata(13),
      O => \data_out[13]_i_1_n_0\
    );
\data_out[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out0_carry__2_n_5\,
      I1 => sw_reg,
      I2 => data_in(14),
      I3 => state(1),
      I4 => s_axis_tdata(14),
      O => \data_out[14]_i_1_n_0\
    );
\data_out[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => aresetn,
      I1 => state(2),
      I2 => state(0),
      O => data_out0
    );
\data_out[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out0_carry__2_n_4\,
      I1 => sw_reg,
      I2 => data_in(15),
      I3 => state(1),
      I4 => s_axis_tdata(15),
      O => \data_out[15]_i_2_n_0\
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data_out0_carry_n_6,
      I1 => sw_reg,
      I2 => data_in(1),
      I3 => state(1),
      I4 => s_axis_tdata(1),
      O => \data_out[1]_i_1_n_0\
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data_out0_carry_n_5,
      I1 => sw_reg,
      I2 => data_in(2),
      I3 => state(1),
      I4 => s_axis_tdata(2),
      O => \data_out[2]_i_1_n_0\
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data_out0_carry_n_4,
      I1 => sw_reg,
      I2 => data_in(3),
      I3 => state(1),
      I4 => s_axis_tdata(3),
      O => \data_out[3]_i_1_n_0\
    );
\data_out[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out0_carry__0_n_7\,
      I1 => sw_reg,
      I2 => data_in(4),
      I3 => state(1),
      I4 => s_axis_tdata(4),
      O => \data_out[4]_i_1_n_0\
    );
\data_out[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out0_carry__0_n_6\,
      I1 => sw_reg,
      I2 => data_in(5),
      I3 => state(1),
      I4 => s_axis_tdata(5),
      O => \data_out[5]_i_1_n_0\
    );
\data_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out0_carry__0_n_5\,
      I1 => sw_reg,
      I2 => data_in(6),
      I3 => state(1),
      I4 => s_axis_tdata(6),
      O => \data_out[6]_i_1_n_0\
    );
\data_out[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out0_carry__0_n_4\,
      I1 => sw_reg,
      I2 => data_in(7),
      I3 => state(1),
      I4 => s_axis_tdata(7),
      O => \data_out[7]_i_1_n_0\
    );
\data_out[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out0_carry__1_n_7\,
      I1 => sw_reg,
      I2 => data_in(8),
      I3 => state(1),
      I4 => s_axis_tdata(8),
      O => \data_out[8]_i_1_n_0\
    );
\data_out[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out0_carry__1_n_6\,
      I1 => sw_reg,
      I2 => data_in(9),
      I3 => state(1),
      I4 => s_axis_tdata(9),
      O => \data_out[9]_i_1_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
      CE => data_out0,
      D => \data_out[9]_i_1_n_0\,
      Q => m_axis_tdata(9),
      R => '0'
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(7),
      I1 => \last_values_dx_reg[31]\(7),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(6),
      I1 => \last_values_dx_reg[31]\(6),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(5),
      I1 => \last_values_dx_reg[31]\(5),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(4),
      I1 => \last_values_dx_reg[31]\(4),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(11),
      I1 => \last_values_dx_reg[31]\(11),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(10),
      I1 => \last_values_dx_reg[31]\(10),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(9),
      I1 => \last_values_dx_reg[31]\(9),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(8),
      I1 => \last_values_dx_reg[31]\(8),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(15),
      I1 => \last_values_dx_reg[31]\(15),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(14),
      I1 => \last_values_dx_reg[31]\(14),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(13),
      I1 => \last_values_dx_reg[31]\(13),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(12),
      I1 => \last_values_dx_reg[31]\(12),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(3),
      I1 => \last_values_dx_reg[31]\(3),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(2),
      I1 => \last_values_dx_reg[31]\(2),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(1),
      I1 => \last_values_dx_reg[31]\(1),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_in(0),
      I1 => \last_values_dx_reg[31]\(0),
      O => \i__carry_i_4_n_0\
    );
\last_avarage_dx[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => state(2),
      I1 => tlast_sampled,
      I2 => state(1),
      I3 => state(0),
      O => sel
    );
\last_avarage_dx[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(3),
      I1 => last_avarage_dx_reg(3),
      O => \last_avarage_dx[0]_i_3_n_0\
    );
\last_avarage_dx[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(2),
      I1 => last_avarage_dx_reg(2),
      O => \last_avarage_dx[0]_i_4_n_0\
    );
\last_avarage_dx[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(1),
      I1 => last_avarage_dx_reg(1),
      O => \last_avarage_dx[0]_i_5_n_0\
    );
\last_avarage_dx[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(0),
      I1 => last_avarage_dx_reg(0),
      O => \last_avarage_dx[0]_i_6_n_0\
    );
\last_avarage_dx[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(15),
      I1 => last_avarage_dx_reg(15),
      O => \last_avarage_dx[12]_i_2_n_0\
    );
\last_avarage_dx[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(15),
      I1 => last_avarage_dx_reg(14),
      O => \last_avarage_dx[12]_i_3_n_0\
    );
\last_avarage_dx[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(15),
      I1 => last_avarage_dx_reg(13),
      O => \last_avarage_dx[12]_i_4_n_0\
    );
\last_avarage_dx[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(15),
      I1 => last_avarage_dx_reg(12),
      O => \last_avarage_dx[12]_i_5_n_0\
    );
\last_avarage_dx[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(7),
      I1 => last_avarage_dx_reg(7),
      O => \last_avarage_dx[4]_i_2_n_0\
    );
\last_avarage_dx[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(6),
      I1 => last_avarage_dx_reg(6),
      O => \last_avarage_dx[4]_i_3_n_0\
    );
\last_avarage_dx[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(5),
      I1 => last_avarage_dx_reg(5),
      O => \last_avarage_dx[4]_i_4_n_0\
    );
\last_avarage_dx[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(4),
      I1 => last_avarage_dx_reg(4),
      O => \last_avarage_dx[4]_i_5_n_0\
    );
\last_avarage_dx[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(15),
      I1 => last_avarage_dx_reg(11),
      O => \last_avarage_dx[8]_i_2_n_0\
    );
\last_avarage_dx[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(15),
      I1 => last_avarage_dx_reg(10),
      O => \last_avarage_dx[8]_i_3_n_0\
    );
\last_avarage_dx[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(9),
      I1 => last_avarage_dx_reg(9),
      O => \last_avarage_dx[8]_i_4_n_0\
    );
\last_avarage_dx[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(8),
      I1 => last_avarage_dx_reg(8),
      O => \last_avarage_dx[8]_i_5_n_0\
    );
\last_avarage_dx_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_avarage_dx_reg[0]_i_2_n_7\,
      Q => last_avarage_dx_reg(0)
    );
\last_avarage_dx_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \last_avarage_dx_reg[0]_i_2_n_0\,
      CO(2) => \last_avarage_dx_reg[0]_i_2_n_1\,
      CO(1) => \last_avarage_dx_reg[0]_i_2_n_2\,
      CO(0) => \last_avarage_dx_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sub_sig(3 downto 0),
      O(3) => \last_avarage_dx_reg[0]_i_2_n_4\,
      O(2) => \last_avarage_dx_reg[0]_i_2_n_5\,
      O(1) => \last_avarage_dx_reg[0]_i_2_n_6\,
      O(0) => \last_avarage_dx_reg[0]_i_2_n_7\,
      S(3) => \last_avarage_dx[0]_i_3_n_0\,
      S(2) => \last_avarage_dx[0]_i_4_n_0\,
      S(1) => \last_avarage_dx[0]_i_5_n_0\,
      S(0) => \last_avarage_dx[0]_i_6_n_0\
    );
\last_avarage_dx_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_avarage_dx_reg[8]_i_1_n_5\,
      Q => last_avarage_dx_reg(10)
    );
\last_avarage_dx_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_avarage_dx_reg[8]_i_1_n_4\,
      Q => last_avarage_dx_reg(11)
    );
\last_avarage_dx_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_avarage_dx_reg[12]_i_1_n_7\,
      Q => last_avarage_dx_reg(12)
    );
\last_avarage_dx_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_avarage_dx_reg[8]_i_1_n_0\,
      CO(3) => \NLW_last_avarage_dx_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \last_avarage_dx_reg[12]_i_1_n_1\,
      CO(1) => \last_avarage_dx_reg[12]_i_1_n_2\,
      CO(0) => \last_avarage_dx_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => sub_sig(15),
      DI(1) => sub_sig(15),
      DI(0) => sub_sig(15),
      O(3) => \last_avarage_dx_reg[12]_i_1_n_4\,
      O(2) => \last_avarage_dx_reg[12]_i_1_n_5\,
      O(1) => \last_avarage_dx_reg[12]_i_1_n_6\,
      O(0) => \last_avarage_dx_reg[12]_i_1_n_7\,
      S(3) => \last_avarage_dx[12]_i_2_n_0\,
      S(2) => \last_avarage_dx[12]_i_3_n_0\,
      S(1) => \last_avarage_dx[12]_i_4_n_0\,
      S(0) => \last_avarage_dx[12]_i_5_n_0\
    );
\last_avarage_dx_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_avarage_dx_reg[12]_i_1_n_6\,
      Q => last_avarage_dx_reg(13)
    );
\last_avarage_dx_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_avarage_dx_reg[12]_i_1_n_5\,
      Q => last_avarage_dx_reg(14)
    );
\last_avarage_dx_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_avarage_dx_reg[12]_i_1_n_4\,
      Q => last_avarage_dx_reg(15)
    );
\last_avarage_dx_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_avarage_dx_reg[0]_i_2_n_6\,
      Q => last_avarage_dx_reg(1)
    );
\last_avarage_dx_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_avarage_dx_reg[0]_i_2_n_5\,
      Q => last_avarage_dx_reg(2)
    );
\last_avarage_dx_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_avarage_dx_reg[0]_i_2_n_4\,
      Q => last_avarage_dx_reg(3)
    );
\last_avarage_dx_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_avarage_dx_reg[4]_i_1_n_7\,
      Q => last_avarage_dx_reg(4)
    );
\last_avarage_dx_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_avarage_dx_reg[0]_i_2_n_0\,
      CO(3) => \last_avarage_dx_reg[4]_i_1_n_0\,
      CO(2) => \last_avarage_dx_reg[4]_i_1_n_1\,
      CO(1) => \last_avarage_dx_reg[4]_i_1_n_2\,
      CO(0) => \last_avarage_dx_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sub_sig(7 downto 4),
      O(3) => \last_avarage_dx_reg[4]_i_1_n_4\,
      O(2) => \last_avarage_dx_reg[4]_i_1_n_5\,
      O(1) => \last_avarage_dx_reg[4]_i_1_n_6\,
      O(0) => \last_avarage_dx_reg[4]_i_1_n_7\,
      S(3) => \last_avarage_dx[4]_i_2_n_0\,
      S(2) => \last_avarage_dx[4]_i_3_n_0\,
      S(1) => \last_avarage_dx[4]_i_4_n_0\,
      S(0) => \last_avarage_dx[4]_i_5_n_0\
    );
\last_avarage_dx_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_avarage_dx_reg[4]_i_1_n_6\,
      Q => last_avarage_dx_reg(5)
    );
\last_avarage_dx_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_avarage_dx_reg[4]_i_1_n_5\,
      Q => last_avarage_dx_reg(6)
    );
\last_avarage_dx_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_avarage_dx_reg[4]_i_1_n_4\,
      Q => last_avarage_dx_reg(7)
    );
\last_avarage_dx_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_avarage_dx_reg[8]_i_1_n_7\,
      Q => last_avarage_dx_reg(8)
    );
\last_avarage_dx_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_avarage_dx_reg[4]_i_1_n_0\,
      CO(3) => \last_avarage_dx_reg[8]_i_1_n_0\,
      CO(2) => \last_avarage_dx_reg[8]_i_1_n_1\,
      CO(1) => \last_avarage_dx_reg[8]_i_1_n_2\,
      CO(0) => \last_avarage_dx_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => sub_sig(15),
      DI(2) => sub_sig(15),
      DI(1 downto 0) => sub_sig(9 downto 8),
      O(3) => \last_avarage_dx_reg[8]_i_1_n_4\,
      O(2) => \last_avarage_dx_reg[8]_i_1_n_5\,
      O(1) => \last_avarage_dx_reg[8]_i_1_n_6\,
      O(0) => \last_avarage_dx_reg[8]_i_1_n_7\,
      S(3) => \last_avarage_dx[8]_i_2_n_0\,
      S(2) => \last_avarage_dx[8]_i_3_n_0\,
      S(1) => \last_avarage_dx[8]_i_4_n_0\,
      S(0) => \last_avarage_dx[8]_i_5_n_0\
    );
\last_avarage_dx_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_avarage_dx_reg[8]_i_1_n_6\,
      Q => last_avarage_dx_reg(9)
    );
\last_avarage_sx[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => aresetn,
      I1 => state(1),
      I2 => state(0),
      I3 => state(2),
      I4 => tlast_sampled,
      O => last_avarage_sx0
    );
\last_avarage_sx[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(3),
      I1 => last_avarage_sx_reg(3),
      O => \last_avarage_sx[0]_i_3_n_0\
    );
\last_avarage_sx[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(2),
      I1 => last_avarage_sx_reg(2),
      O => \last_avarage_sx[0]_i_4_n_0\
    );
\last_avarage_sx[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(1),
      I1 => last_avarage_sx_reg(1),
      O => \last_avarage_sx[0]_i_5_n_0\
    );
\last_avarage_sx[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(0),
      I1 => last_avarage_sx_reg(0),
      O => \last_avarage_sx[0]_i_6_n_0\
    );
\last_avarage_sx[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(15),
      I1 => last_avarage_sx_reg(15),
      O => \last_avarage_sx[12]_i_2_n_0\
    );
\last_avarage_sx[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(15),
      I1 => last_avarage_sx_reg(14),
      O => \last_avarage_sx[12]_i_3_n_0\
    );
\last_avarage_sx[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(15),
      I1 => last_avarage_sx_reg(13),
      O => \last_avarage_sx[12]_i_4_n_0\
    );
\last_avarage_sx[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(15),
      I1 => last_avarage_sx_reg(12),
      O => \last_avarage_sx[12]_i_5_n_0\
    );
\last_avarage_sx[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(7),
      I1 => last_avarage_sx_reg(7),
      O => \last_avarage_sx[4]_i_2_n_0\
    );
\last_avarage_sx[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(6),
      I1 => last_avarage_sx_reg(6),
      O => \last_avarage_sx[4]_i_3_n_0\
    );
\last_avarage_sx[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(5),
      I1 => last_avarage_sx_reg(5),
      O => \last_avarage_sx[4]_i_4_n_0\
    );
\last_avarage_sx[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(4),
      I1 => last_avarage_sx_reg(4),
      O => \last_avarage_sx[4]_i_5_n_0\
    );
\last_avarage_sx[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(15),
      I1 => last_avarage_sx_reg(11),
      O => \last_avarage_sx[8]_i_2_n_0\
    );
\last_avarage_sx[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(15),
      I1 => last_avarage_sx_reg(10),
      O => \last_avarage_sx[8]_i_3_n_0\
    );
\last_avarage_sx[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(9),
      I1 => last_avarage_sx_reg(9),
      O => \last_avarage_sx[8]_i_4_n_0\
    );
\last_avarage_sx[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sub_sig(8),
      I1 => last_avarage_sx_reg(8),
      O => \last_avarage_sx[8]_i_5_n_0\
    );
\last_avarage_sx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_avarage_sx0,
      D => \last_avarage_sx_reg[0]_i_2_n_7\,
      Q => last_avarage_sx_reg(0),
      R => '0'
    );
\last_avarage_sx_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \last_avarage_sx_reg[0]_i_2_n_0\,
      CO(2) => \last_avarage_sx_reg[0]_i_2_n_1\,
      CO(1) => \last_avarage_sx_reg[0]_i_2_n_2\,
      CO(0) => \last_avarage_sx_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sub_sig(3 downto 0),
      O(3) => \last_avarage_sx_reg[0]_i_2_n_4\,
      O(2) => \last_avarage_sx_reg[0]_i_2_n_5\,
      O(1) => \last_avarage_sx_reg[0]_i_2_n_6\,
      O(0) => \last_avarage_sx_reg[0]_i_2_n_7\,
      S(3) => \last_avarage_sx[0]_i_3_n_0\,
      S(2) => \last_avarage_sx[0]_i_4_n_0\,
      S(1) => \last_avarage_sx[0]_i_5_n_0\,
      S(0) => \last_avarage_sx[0]_i_6_n_0\
    );
\last_avarage_sx_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_avarage_sx0,
      D => \last_avarage_sx_reg[8]_i_1_n_5\,
      Q => last_avarage_sx_reg(10),
      R => '0'
    );
\last_avarage_sx_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_avarage_sx0,
      D => \last_avarage_sx_reg[8]_i_1_n_4\,
      Q => last_avarage_sx_reg(11),
      R => '0'
    );
\last_avarage_sx_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_avarage_sx0,
      D => \last_avarage_sx_reg[12]_i_1_n_7\,
      Q => last_avarage_sx_reg(12),
      R => '0'
    );
\last_avarage_sx_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_avarage_sx_reg[8]_i_1_n_0\,
      CO(3) => \NLW_last_avarage_sx_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \last_avarage_sx_reg[12]_i_1_n_1\,
      CO(1) => \last_avarage_sx_reg[12]_i_1_n_2\,
      CO(0) => \last_avarage_sx_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => sub_sig(15),
      DI(1) => sub_sig(15),
      DI(0) => sub_sig(15),
      O(3) => \last_avarage_sx_reg[12]_i_1_n_4\,
      O(2) => \last_avarage_sx_reg[12]_i_1_n_5\,
      O(1) => \last_avarage_sx_reg[12]_i_1_n_6\,
      O(0) => \last_avarage_sx_reg[12]_i_1_n_7\,
      S(3) => \last_avarage_sx[12]_i_2_n_0\,
      S(2) => \last_avarage_sx[12]_i_3_n_0\,
      S(1) => \last_avarage_sx[12]_i_4_n_0\,
      S(0) => \last_avarage_sx[12]_i_5_n_0\
    );
\last_avarage_sx_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_avarage_sx0,
      D => \last_avarage_sx_reg[12]_i_1_n_6\,
      Q => last_avarage_sx_reg(13),
      R => '0'
    );
\last_avarage_sx_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_avarage_sx0,
      D => \last_avarage_sx_reg[12]_i_1_n_5\,
      Q => last_avarage_sx_reg(14),
      R => '0'
    );
\last_avarage_sx_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_avarage_sx0,
      D => \last_avarage_sx_reg[12]_i_1_n_4\,
      Q => last_avarage_sx_reg(15),
      R => '0'
    );
\last_avarage_sx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_avarage_sx0,
      D => \last_avarage_sx_reg[0]_i_2_n_6\,
      Q => last_avarage_sx_reg(1),
      R => '0'
    );
\last_avarage_sx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_avarage_sx0,
      D => \last_avarage_sx_reg[0]_i_2_n_5\,
      Q => last_avarage_sx_reg(2),
      R => '0'
    );
\last_avarage_sx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_avarage_sx0,
      D => \last_avarage_sx_reg[0]_i_2_n_4\,
      Q => last_avarage_sx_reg(3),
      R => '0'
    );
\last_avarage_sx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_avarage_sx0,
      D => \last_avarage_sx_reg[4]_i_1_n_7\,
      Q => last_avarage_sx_reg(4),
      R => '0'
    );
\last_avarage_sx_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_avarage_sx_reg[0]_i_2_n_0\,
      CO(3) => \last_avarage_sx_reg[4]_i_1_n_0\,
      CO(2) => \last_avarage_sx_reg[4]_i_1_n_1\,
      CO(1) => \last_avarage_sx_reg[4]_i_1_n_2\,
      CO(0) => \last_avarage_sx_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sub_sig(7 downto 4),
      O(3) => \last_avarage_sx_reg[4]_i_1_n_4\,
      O(2) => \last_avarage_sx_reg[4]_i_1_n_5\,
      O(1) => \last_avarage_sx_reg[4]_i_1_n_6\,
      O(0) => \last_avarage_sx_reg[4]_i_1_n_7\,
      S(3) => \last_avarage_sx[4]_i_2_n_0\,
      S(2) => \last_avarage_sx[4]_i_3_n_0\,
      S(1) => \last_avarage_sx[4]_i_4_n_0\,
      S(0) => \last_avarage_sx[4]_i_5_n_0\
    );
\last_avarage_sx_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_avarage_sx0,
      D => \last_avarage_sx_reg[4]_i_1_n_6\,
      Q => last_avarage_sx_reg(5),
      R => '0'
    );
\last_avarage_sx_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_avarage_sx0,
      D => \last_avarage_sx_reg[4]_i_1_n_5\,
      Q => last_avarage_sx_reg(6),
      R => '0'
    );
\last_avarage_sx_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_avarage_sx0,
      D => \last_avarage_sx_reg[4]_i_1_n_4\,
      Q => last_avarage_sx_reg(7),
      R => '0'
    );
\last_avarage_sx_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_avarage_sx0,
      D => \last_avarage_sx_reg[8]_i_1_n_7\,
      Q => last_avarage_sx_reg(8),
      R => '0'
    );
\last_avarage_sx_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \last_avarage_sx_reg[4]_i_1_n_0\,
      CO(3) => \last_avarage_sx_reg[8]_i_1_n_0\,
      CO(2) => \last_avarage_sx_reg[8]_i_1_n_1\,
      CO(1) => \last_avarage_sx_reg[8]_i_1_n_2\,
      CO(0) => \last_avarage_sx_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => sub_sig(15),
      DI(2) => sub_sig(15),
      DI(1 downto 0) => sub_sig(9 downto 8),
      O(3) => \last_avarage_sx_reg[8]_i_1_n_4\,
      O(2) => \last_avarage_sx_reg[8]_i_1_n_5\,
      O(1) => \last_avarage_sx_reg[8]_i_1_n_6\,
      O(0) => \last_avarage_sx_reg[8]_i_1_n_7\,
      S(3) => \last_avarage_sx[8]_i_2_n_0\,
      S(2) => \last_avarage_sx[8]_i_3_n_0\,
      S(1) => \last_avarage_sx[8]_i_4_n_0\,
      S(0) => \last_avarage_sx[8]_i_5_n_0\
    );
\last_avarage_sx_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_avarage_sx0,
      D => \last_avarage_sx_reg[8]_i_1_n_6\,
      Q => last_avarage_sx_reg(9),
      R => '0'
    );
last_values_dx_c_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => tlast_sampled,
      I3 => state(1),
      O => \last_values_dx[0]\
    );
\last_values_dx_reg[29][0]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]\,
      CLK => clk,
      D => data_in(0),
      Q => \last_values_dx_reg[29][0]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][0]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][10]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]\,
      CLK => clk,
      D => data_in(10),
      Q => \last_values_dx_reg[29][10]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][10]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][11]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]\,
      CLK => clk,
      D => data_in(11),
      Q => \last_values_dx_reg[29][11]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][11]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][12]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]\,
      CLK => clk,
      D => data_in(12),
      Q => \last_values_dx_reg[29][12]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][12]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][13]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]\,
      CLK => clk,
      D => data_in(13),
      Q => \last_values_dx_reg[29][13]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][13]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][14]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]\,
      CLK => clk,
      D => data_in(14),
      Q => \last_values_dx_reg[29][14]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][14]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][15]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]\,
      CLK => clk,
      D => data_in(15),
      Q => \last_values_dx_reg[29][15]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][15]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][1]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]\,
      CLK => clk,
      D => data_in(1),
      Q => \last_values_dx_reg[29][1]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][1]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][2]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]\,
      CLK => clk,
      D => data_in(2),
      Q => \last_values_dx_reg[29][2]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][2]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][3]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]\,
      CLK => clk,
      D => data_in(3),
      Q => \last_values_dx_reg[29][3]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][3]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][4]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]\,
      CLK => clk,
      D => data_in(4),
      Q => \last_values_dx_reg[29][4]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][4]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][5]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]\,
      CLK => clk,
      D => data_in(5),
      Q => \last_values_dx_reg[29][5]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][5]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][6]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]\,
      CLK => clk,
      D => data_in(6),
      Q => \last_values_dx_reg[29][6]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][6]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][7]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]\,
      CLK => clk,
      D => data_in(7),
      Q => \last_values_dx_reg[29][7]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][7]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][8]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]\,
      CLK => clk,
      D => data_in(8),
      Q => \last_values_dx_reg[29][8]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][8]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[29][9]_srl30_U0_last_values_dx_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_dx[0]\,
      CLK => clk,
      D => data_in(9),
      Q => \last_values_dx_reg[29][9]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q31 => \NLW_last_values_dx_reg[29][9]_srl30_U0_last_values_dx_reg_c_58_Q31_UNCONNECTED\
    );
\last_values_dx_reg[30][0]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      D => \last_values_dx_reg[29][0]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][0]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][10]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      D => \last_values_dx_reg[29][10]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][10]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][11]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      D => \last_values_dx_reg[29][11]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][11]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][12]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      D => \last_values_dx_reg[29][12]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][12]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][13]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      D => \last_values_dx_reg[29][13]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][13]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][14]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      D => \last_values_dx_reg[29][14]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][14]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][15]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      D => \last_values_dx_reg[29][15]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][15]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][1]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      D => \last_values_dx_reg[29][1]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][1]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][2]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      D => \last_values_dx_reg[29][2]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][2]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][3]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      D => \last_values_dx_reg[29][3]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][3]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][4]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      D => \last_values_dx_reg[29][4]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][4]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][5]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      D => \last_values_dx_reg[29][5]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][5]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][6]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      D => \last_values_dx_reg[29][6]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][6]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][7]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      D => \last_values_dx_reg[29][7]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][7]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][8]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      D => \last_values_dx_reg[29][8]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][8]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[30][9]_U0_last_values_dx_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      D => \last_values_dx_reg[29][9]_srl30_U0_last_values_dx_reg_c_58_n_0\,
      Q => \last_values_dx_reg[30][9]_U0_last_values_dx_reg_c_59_n_0\,
      R => '0'
    );
\last_values_dx_reg[31][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_dx_reg_gate__14_n_0\,
      Q => \last_values_dx_reg[31]\(0)
    );
\last_values_dx_reg[31][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_dx_reg_gate__4_n_0\,
      Q => \last_values_dx_reg[31]\(10)
    );
\last_values_dx_reg[31][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_dx_reg_gate__3_n_0\,
      Q => \last_values_dx_reg[31]\(11)
    );
\last_values_dx_reg[31][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_dx_reg_gate__2_n_0\,
      Q => \last_values_dx_reg[31]\(12)
    );
\last_values_dx_reg[31][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_dx_reg_gate__1_n_0\,
      Q => \last_values_dx_reg[31]\(13)
    );
\last_values_dx_reg[31][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_dx_reg_gate__0_n_0\,
      Q => \last_values_dx_reg[31]\(14)
    );
\last_values_dx_reg[31][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_gate_n_0,
      Q => \last_values_dx_reg[31]\(15)
    );
\last_values_dx_reg[31][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_dx_reg_gate__13_n_0\,
      Q => \last_values_dx_reg[31]\(1)
    );
\last_values_dx_reg[31][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_dx_reg_gate__12_n_0\,
      Q => \last_values_dx_reg[31]\(2)
    );
\last_values_dx_reg[31][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_dx_reg_gate__11_n_0\,
      Q => \last_values_dx_reg[31]\(3)
    );
\last_values_dx_reg[31][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_dx_reg_gate__10_n_0\,
      Q => \last_values_dx_reg[31]\(4)
    );
\last_values_dx_reg[31][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_dx_reg_gate__9_n_0\,
      Q => \last_values_dx_reg[31]\(5)
    );
\last_values_dx_reg[31][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_dx_reg_gate__8_n_0\,
      Q => \last_values_dx_reg[31]\(6)
    );
\last_values_dx_reg[31][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_dx_reg_gate__7_n_0\,
      Q => \last_values_dx_reg[31]\(7)
    );
\last_values_dx_reg[31][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_dx_reg_gate__6_n_0\,
      Q => \last_values_dx_reg[31]\(8)
    );
\last_values_dx_reg[31][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_dx_reg_gate__5_n_0\,
      Q => \last_values_dx_reg[31]\(9)
    );
last_values_dx_reg_c: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => '1',
      Q => last_values_dx_reg_c_n_0
    );
last_values_dx_reg_c_30: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_c_n_0,
      Q => last_values_dx_reg_c_30_n_0
    );
last_values_dx_reg_c_31: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_c_30_n_0,
      Q => last_values_dx_reg_c_31_n_0
    );
last_values_dx_reg_c_32: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_c_31_n_0,
      Q => last_values_dx_reg_c_32_n_0
    );
last_values_dx_reg_c_33: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_c_32_n_0,
      Q => last_values_dx_reg_c_33_n_0
    );
last_values_dx_reg_c_34: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_c_33_n_0,
      Q => last_values_dx_reg_c_34_n_0
    );
last_values_dx_reg_c_35: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_c_34_n_0,
      Q => last_values_dx_reg_c_35_n_0
    );
last_values_dx_reg_c_36: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_c_35_n_0,
      Q => last_values_dx_reg_c_36_n_0
    );
last_values_dx_reg_c_37: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_c_36_n_0,
      Q => last_values_dx_reg_c_37_n_0
    );
last_values_dx_reg_c_38: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_c_37_n_0,
      Q => last_values_dx_reg_c_38_n_0
    );
last_values_dx_reg_c_39: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_c_38_n_0,
      Q => last_values_dx_reg_c_39_n_0
    );
last_values_dx_reg_c_40: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_c_39_n_0,
      Q => last_values_dx_reg_c_40_n_0
    );
last_values_dx_reg_c_41: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_c_40_n_0,
      Q => last_values_dx_reg_c_41_n_0
    );
last_values_dx_reg_c_42: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_c_41_n_0,
      Q => last_values_dx_reg_c_42_n_0
    );
last_values_dx_reg_c_43: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_c_42_n_0,
      Q => last_values_dx_reg_c_43_n_0
    );
last_values_dx_reg_c_44: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_c_43_n_0,
      Q => last_values_dx_reg_c_44_n_0
    );
last_values_dx_reg_c_45: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_c_44_n_0,
      Q => last_values_dx_reg_c_45_n_0
    );
last_values_dx_reg_c_46: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_c_45_n_0,
      Q => last_values_dx_reg_c_46_n_0
    );
last_values_dx_reg_c_47: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_c_46_n_0,
      Q => last_values_dx_reg_c_47_n_0
    );
last_values_dx_reg_c_48: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_c_47_n_0,
      Q => last_values_dx_reg_c_48_n_0
    );
last_values_dx_reg_c_49: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_c_48_n_0,
      Q => last_values_dx_reg_c_49_n_0
    );
last_values_dx_reg_c_50: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_c_49_n_0,
      Q => last_values_dx_reg_c_50_n_0
    );
last_values_dx_reg_c_51: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_c_50_n_0,
      Q => last_values_dx_reg_c_51_n_0
    );
last_values_dx_reg_c_52: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_c_51_n_0,
      Q => last_values_dx_reg_c_52_n_0
    );
last_values_dx_reg_c_53: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_c_52_n_0,
      Q => last_values_dx_reg_c_53_n_0
    );
last_values_dx_reg_c_54: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_c_53_n_0,
      Q => last_values_dx_reg_c_54_n_0
    );
last_values_dx_reg_c_55: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_c_54_n_0,
      Q => last_values_dx_reg_c_55_n_0
    );
last_values_dx_reg_c_56: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_c_55_n_0,
      Q => last_values_dx_reg_c_56_n_0
    );
last_values_dx_reg_c_57: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_c_56_n_0,
      Q => last_values_dx_reg_c_57_n_0
    );
last_values_dx_reg_c_58: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_dx_reg_c_57_n_0,
      Q => last_values_dx_reg_c_58_n_0
    );
last_values_dx_reg_c_59: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
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
last_values_sx_c_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      I3 => tlast_sampled,
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
      D => data_in(0),
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
      D => data_in(10),
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
      D => data_in(11),
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
      D => data_in(12),
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
      D => data_in(13),
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
      D => data_in(14),
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
      D => data_in(15),
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
      D => data_in(1),
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
      D => data_in(2),
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
      D => data_in(3),
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
      D => data_in(4),
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
      D => data_in(5),
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
      D => data_in(6),
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
      D => data_in(7),
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
      D => data_in(8),
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
      D => data_in(9),
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
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_sx_reg_gate__14_n_0\,
      Q => \last_values_sx_reg[31]\(0)
    );
\last_values_sx_reg[31][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_sx_reg_gate__4_n_0\,
      Q => \last_values_sx_reg[31]\(10)
    );
\last_values_sx_reg[31][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_sx_reg_gate__3_n_0\,
      Q => \last_values_sx_reg[31]\(11)
    );
\last_values_sx_reg[31][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_sx_reg_gate__2_n_0\,
      Q => \last_values_sx_reg[31]\(12)
    );
\last_values_sx_reg[31][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_sx_reg_gate__1_n_0\,
      Q => \last_values_sx_reg[31]\(13)
    );
\last_values_sx_reg[31][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_sx_reg_gate__0_n_0\,
      Q => \last_values_sx_reg[31]\(14)
    );
\last_values_sx_reg[31][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_gate_n_0,
      Q => \last_values_sx_reg[31]\(15)
    );
\last_values_sx_reg[31][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_sx_reg_gate__13_n_0\,
      Q => \last_values_sx_reg[31]\(1)
    );
\last_values_sx_reg[31][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_sx_reg_gate__12_n_0\,
      Q => \last_values_sx_reg[31]\(2)
    );
\last_values_sx_reg[31][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_sx_reg_gate__11_n_0\,
      Q => \last_values_sx_reg[31]\(3)
    );
\last_values_sx_reg[31][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_sx_reg_gate__10_n_0\,
      Q => \last_values_sx_reg[31]\(4)
    );
\last_values_sx_reg[31][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_sx_reg_gate__9_n_0\,
      Q => \last_values_sx_reg[31]\(5)
    );
\last_values_sx_reg[31][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_sx_reg_gate__8_n_0\,
      Q => \last_values_sx_reg[31]\(6)
    );
\last_values_sx_reg[31][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_sx_reg_gate__7_n_0\,
      Q => \last_values_sx_reg[31]\(7)
    );
\last_values_sx_reg[31][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_sx_reg_gate__6_n_0\,
      Q => \last_values_sx_reg[31]\(8)
    );
\last_values_sx_reg[31][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \last_values_sx_reg_gate__5_n_0\,
      Q => \last_values_sx_reg[31]\(9)
    );
last_values_sx_reg_c: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => '1',
      Q => last_values_sx_reg_c_n_0
    );
last_values_sx_reg_c_0: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_c_n_0,
      Q => last_values_sx_reg_c_0_n_0
    );
last_values_sx_reg_c_1: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_c_0_n_0,
      Q => last_values_sx_reg_c_1_n_0
    );
last_values_sx_reg_c_10: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_c_9_n_0,
      Q => last_values_sx_reg_c_10_n_0
    );
last_values_sx_reg_c_11: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_c_10_n_0,
      Q => last_values_sx_reg_c_11_n_0
    );
last_values_sx_reg_c_12: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_c_11_n_0,
      Q => last_values_sx_reg_c_12_n_0
    );
last_values_sx_reg_c_13: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_c_12_n_0,
      Q => last_values_sx_reg_c_13_n_0
    );
last_values_sx_reg_c_14: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_c_13_n_0,
      Q => last_values_sx_reg_c_14_n_0
    );
last_values_sx_reg_c_15: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_c_14_n_0,
      Q => last_values_sx_reg_c_15_n_0
    );
last_values_sx_reg_c_16: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_c_15_n_0,
      Q => last_values_sx_reg_c_16_n_0
    );
last_values_sx_reg_c_17: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_c_16_n_0,
      Q => last_values_sx_reg_c_17_n_0
    );
last_values_sx_reg_c_18: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_c_17_n_0,
      Q => last_values_sx_reg_c_18_n_0
    );
last_values_sx_reg_c_19: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_c_18_n_0,
      Q => last_values_sx_reg_c_19_n_0
    );
last_values_sx_reg_c_2: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_c_1_n_0,
      Q => last_values_sx_reg_c_2_n_0
    );
last_values_sx_reg_c_20: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_c_19_n_0,
      Q => last_values_sx_reg_c_20_n_0
    );
last_values_sx_reg_c_21: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_c_20_n_0,
      Q => last_values_sx_reg_c_21_n_0
    );
last_values_sx_reg_c_22: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_c_21_n_0,
      Q => last_values_sx_reg_c_22_n_0
    );
last_values_sx_reg_c_23: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_c_22_n_0,
      Q => last_values_sx_reg_c_23_n_0
    );
last_values_sx_reg_c_24: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_c_23_n_0,
      Q => last_values_sx_reg_c_24_n_0
    );
last_values_sx_reg_c_25: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_c_24_n_0,
      Q => last_values_sx_reg_c_25_n_0
    );
last_values_sx_reg_c_26: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_c_25_n_0,
      Q => last_values_sx_reg_c_26_n_0
    );
last_values_sx_reg_c_27: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_c_26_n_0,
      Q => last_values_sx_reg_c_27_n_0
    );
last_values_sx_reg_c_28: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_c_27_n_0,
      Q => last_values_sx_reg_c_28_n_0
    );
last_values_sx_reg_c_29: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_c_28_n_0,
      Q => last_values_sx_reg_c_29_n_0
    );
last_values_sx_reg_c_3: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_c_2_n_0,
      Q => last_values_sx_reg_c_3_n_0
    );
last_values_sx_reg_c_4: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_c_3_n_0,
      Q => last_values_sx_reg_c_4_n_0
    );
last_values_sx_reg_c_5: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_c_4_n_0,
      Q => last_values_sx_reg_c_5_n_0
    );
last_values_sx_reg_c_6: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_c_5_n_0,
      Q => last_values_sx_reg_c_6_n_0
    );
last_values_sx_reg_c_7: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_c_6_n_0,
      Q => last_values_sx_reg_c_7_n_0
    );
last_values_sx_reg_c_8: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => last_values_sx_reg_c_7_n_0,
      Q => last_values_sx_reg_c_8_n_0
    );
last_values_sx_reg_c_9: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
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
m_axis_tlast_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      I3 => tlast_sampled,
      O => m_axis_tlast
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      O => m_axis_tvalid
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      O => s_axis_tready
    );
\sub_sig[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ARG(5),
      I1 => tlast_sampled,
      I2 => \ARG_carry__0_n_6\,
      O => \sub_sig[0]_i_1_n_0\
    );
\sub_sig[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => aresetn,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      O => sub_sig0
    );
\sub_sig[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ARG(15),
      I1 => tlast_sampled,
      I2 => \ARG_carry__2_n_4\,
      O => RESIZE0
    );
\sub_sig[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ARG(6),
      I1 => tlast_sampled,
      I2 => \ARG_carry__0_n_5\,
      O => \sub_sig[1]_i_1_n_0\
    );
\sub_sig[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ARG(7),
      I1 => tlast_sampled,
      I2 => \ARG_carry__0_n_4\,
      O => \sub_sig[2]_i_1_n_0\
    );
\sub_sig[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ARG(8),
      I1 => tlast_sampled,
      I2 => \ARG_carry__1_n_7\,
      O => \sub_sig[3]_i_1_n_0\
    );
\sub_sig[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ARG(9),
      I1 => tlast_sampled,
      I2 => \ARG_carry__1_n_6\,
      O => \sub_sig[4]_i_1_n_0\
    );
\sub_sig[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ARG(10),
      I1 => tlast_sampled,
      I2 => \ARG_carry__1_n_5\,
      O => \sub_sig[5]_i_1_n_0\
    );
\sub_sig[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ARG(11),
      I1 => tlast_sampled,
      I2 => \ARG_carry__1_n_4\,
      O => \sub_sig[6]_i_1_n_0\
    );
\sub_sig[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ARG(12),
      I1 => tlast_sampled,
      I2 => \ARG_carry__2_n_7\,
      O => \sub_sig[7]_i_1_n_0\
    );
\sub_sig[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ARG(13),
      I1 => tlast_sampled,
      I2 => \ARG_carry__2_n_6\,
      O => \sub_sig[8]_i_1_n_0\
    );
\sub_sig[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ARG(14),
      I1 => tlast_sampled,
      I2 => \ARG_carry__2_n_5\,
      O => \sub_sig[9]_i_1_n_0\
    );
\sub_sig_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_sig0,
      D => \sub_sig[0]_i_1_n_0\,
      Q => sub_sig(0),
      R => '0'
    );
\sub_sig_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_sig0,
      D => RESIZE0,
      Q => sub_sig(15),
      R => '0'
    );
\sub_sig_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_sig0,
      D => \sub_sig[1]_i_1_n_0\,
      Q => sub_sig(1),
      R => '0'
    );
\sub_sig_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_sig0,
      D => \sub_sig[2]_i_1_n_0\,
      Q => sub_sig(2),
      R => '0'
    );
\sub_sig_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_sig0,
      D => \sub_sig[3]_i_1_n_0\,
      Q => sub_sig(3),
      R => '0'
    );
\sub_sig_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_sig0,
      D => \sub_sig[4]_i_1_n_0\,
      Q => sub_sig(4),
      R => '0'
    );
\sub_sig_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_sig0,
      D => \sub_sig[5]_i_1_n_0\,
      Q => sub_sig(5),
      R => '0'
    );
\sub_sig_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_sig0,
      D => \sub_sig[6]_i_1_n_0\,
      Q => sub_sig(6),
      R => '0'
    );
\sub_sig_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_sig0,
      D => \sub_sig[7]_i_1_n_0\,
      Q => sub_sig(7),
      R => '0'
    );
\sub_sig_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_sig0,
      D => \sub_sig[8]_i_1_n_0\,
      Q => sub_sig(8),
      R => '0'
    );
\sub_sig_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub_sig0,
      D => \sub_sig[9]_i_1_n_0\,
      Q => sub_sig(9),
      R => '0'
    );
sw_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg0,
      D => sw_in,
      Q => sw_reg,
      R => '0'
    );
tlast_expected_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF00100000"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(0),
      I3 => tlast_sampled,
      I4 => aresetn,
      I5 => tlast_expected,
      O => tlast_expected_i_1_n_0
    );
tlast_expected_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tlast_expected_i_1_n_0,
      Q => tlast_expected,
      R => '0'
    );
tlast_sampled_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => aresetn,
      I1 => state(1),
      I2 => s_axis_tvalid,
      I3 => state(0),
      I4 => state(2),
      O => sw_reg0
    );
tlast_sampled_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sw_reg0,
      D => s_axis_tlast,
      Q => tlast_sampled,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_bd_1_moving_avarage_0_0 is
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
  attribute NotValidForBitStream of top_bd_1_moving_avarage_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_bd_1_moving_avarage_0_0 : entity is "top_bd_1_moving_avarage_0_0,moving_avarage,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of top_bd_1_moving_avarage_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of top_bd_1_moving_avarage_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of top_bd_1_moving_avarage_0_0 : entity is "moving_avarage,Vivado 2019.2";
end top_bd_1_moving_avarage_0_0;

architecture STRUCTURE of top_bd_1_moving_avarage_0_0 is
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
U0: entity work.top_bd_1_moving_avarage_0_0_moving_avarage
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

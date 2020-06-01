-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Jun  1 13:33:46 2020
-- Host        : DESKTOP-O39JAIK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Vivado_DESD_Project/Project/Personal/Lab3_A4/LAB3A4/Sources/BD/bd_top_00/ip/bd_top_00_moving_average_0_0/bd_top_00_moving_average_0_0_sim_netlist.vhdl
-- Design      : bd_top_00_moving_average_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_top_00_moving_average_0_0_moving_average is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    clk : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    sw_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_top_00_moving_average_0_0_moving_average : entity is "moving_average";
end bd_top_00_moving_average_0_0_moving_average;

architecture STRUCTURE of bd_top_00_moving_average_0_0_moving_average is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \_carry__0_n_0\ : STD_LOGIC;
  signal \_carry__0_n_1\ : STD_LOGIC;
  signal \_carry__0_n_2\ : STD_LOGIC;
  signal \_carry__0_n_3\ : STD_LOGIC;
  signal \_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \_carry__1_n_0\ : STD_LOGIC;
  signal \_carry__1_n_1\ : STD_LOGIC;
  signal \_carry__1_n_2\ : STD_LOGIC;
  signal \_carry__1_n_3\ : STD_LOGIC;
  signal \_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \_carry__2_n_0\ : STD_LOGIC;
  signal \_carry__2_n_1\ : STD_LOGIC;
  signal \_carry__2_n_2\ : STD_LOGIC;
  signal \_carry__2_n_3\ : STD_LOGIC;
  signal \_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \_carry_i_1_n_0\ : STD_LOGIC;
  signal \_carry_i_2_n_0\ : STD_LOGIC;
  signal \_carry_i_3_n_0\ : STD_LOGIC;
  signal \_carry_i_4_n_0\ : STD_LOGIC;
  signal \_carry_n_0\ : STD_LOGIC;
  signal \_carry_n_1\ : STD_LOGIC;
  signal \_carry_n_2\ : STD_LOGIC;
  signal \_carry_n_3\ : STD_LOGIC;
  signal data_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_out0 : STD_LOGIC;
  signal \data_out0__54_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \data_out0__54_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \data_out0__54_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \data_out0__54_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \data_out0__54_carry__0_n_0\ : STD_LOGIC;
  signal \data_out0__54_carry__0_n_1\ : STD_LOGIC;
  signal \data_out0__54_carry__0_n_2\ : STD_LOGIC;
  signal \data_out0__54_carry__0_n_3\ : STD_LOGIC;
  signal \data_out0__54_carry__0_n_4\ : STD_LOGIC;
  signal \data_out0__54_carry__0_n_5\ : STD_LOGIC;
  signal \data_out0__54_carry__0_n_6\ : STD_LOGIC;
  signal \data_out0__54_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \data_out0__54_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \data_out0__54_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \data_out0__54_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \data_out0__54_carry__1_n_0\ : STD_LOGIC;
  signal \data_out0__54_carry__1_n_1\ : STD_LOGIC;
  signal \data_out0__54_carry__1_n_2\ : STD_LOGIC;
  signal \data_out0__54_carry__1_n_3\ : STD_LOGIC;
  signal \data_out0__54_carry__1_n_4\ : STD_LOGIC;
  signal \data_out0__54_carry__1_n_5\ : STD_LOGIC;
  signal \data_out0__54_carry__1_n_6\ : STD_LOGIC;
  signal \data_out0__54_carry__1_n_7\ : STD_LOGIC;
  signal \data_out0__54_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \data_out0__54_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \data_out0__54_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \data_out0__54_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \data_out0__54_carry__2_n_0\ : STD_LOGIC;
  signal \data_out0__54_carry__2_n_1\ : STD_LOGIC;
  signal \data_out0__54_carry__2_n_2\ : STD_LOGIC;
  signal \data_out0__54_carry__2_n_3\ : STD_LOGIC;
  signal \data_out0__54_carry__2_n_4\ : STD_LOGIC;
  signal \data_out0__54_carry__2_n_5\ : STD_LOGIC;
  signal \data_out0__54_carry__2_n_6\ : STD_LOGIC;
  signal \data_out0__54_carry__2_n_7\ : STD_LOGIC;
  signal \data_out0__54_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \data_out0__54_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \data_out0__54_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \data_out0__54_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \data_out0__54_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \data_out0__54_carry__3_n_0\ : STD_LOGIC;
  signal \data_out0__54_carry__3_n_1\ : STD_LOGIC;
  signal \data_out0__54_carry__3_n_2\ : STD_LOGIC;
  signal \data_out0__54_carry__3_n_3\ : STD_LOGIC;
  signal \data_out0__54_carry__3_n_4\ : STD_LOGIC;
  signal \data_out0__54_carry__3_n_5\ : STD_LOGIC;
  signal \data_out0__54_carry__3_n_6\ : STD_LOGIC;
  signal \data_out0__54_carry__3_n_7\ : STD_LOGIC;
  signal \data_out0__54_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \data_out0__54_carry__4_n_7\ : STD_LOGIC;
  signal \data_out0__54_carry_i_1_n_0\ : STD_LOGIC;
  signal \data_out0__54_carry_i_2_n_0\ : STD_LOGIC;
  signal \data_out0__54_carry_i_3_n_0\ : STD_LOGIC;
  signal \data_out0__54_carry_i_4_n_0\ : STD_LOGIC;
  signal \data_out0__54_carry_n_0\ : STD_LOGIC;
  signal \data_out0__54_carry_n_1\ : STD_LOGIC;
  signal \data_out0__54_carry_n_2\ : STD_LOGIC;
  signal \data_out0__54_carry_n_3\ : STD_LOGIC;
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
  signal \data_out0_carry__2_n_0\ : STD_LOGIC;
  signal \data_out0_carry__2_n_1\ : STD_LOGIC;
  signal \data_out0_carry__2_n_2\ : STD_LOGIC;
  signal \data_out0_carry__2_n_3\ : STD_LOGIC;
  signal \data_out0_carry__2_n_4\ : STD_LOGIC;
  signal \data_out0_carry__2_n_5\ : STD_LOGIC;
  signal \data_out0_carry__2_n_6\ : STD_LOGIC;
  signal \data_out0_carry__2_n_7\ : STD_LOGIC;
  signal \data_out0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \data_out0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \data_out0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \data_out0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \data_out0_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \data_out0_carry__3_n_0\ : STD_LOGIC;
  signal \data_out0_carry__3_n_1\ : STD_LOGIC;
  signal \data_out0_carry__3_n_2\ : STD_LOGIC;
  signal \data_out0_carry__3_n_3\ : STD_LOGIC;
  signal \data_out0_carry__3_n_4\ : STD_LOGIC;
  signal \data_out0_carry__3_n_5\ : STD_LOGIC;
  signal \data_out0_carry__3_n_6\ : STD_LOGIC;
  signal \data_out0_carry__3_n_7\ : STD_LOGIC;
  signal \data_out0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \data_out0_carry__4_n_7\ : STD_LOGIC;
  signal data_out0_carry_i_1_n_0 : STD_LOGIC;
  signal data_out0_carry_i_2_n_0 : STD_LOGIC;
  signal data_out0_carry_i_3_n_0 : STD_LOGIC;
  signal data_out0_carry_i_4_n_0 : STD_LOGIC;
  signal data_out0_carry_n_0 : STD_LOGIC;
  signal data_out0_carry_n_1 : STD_LOGIC;
  signal data_out0_carry_n_2 : STD_LOGIC;
  signal data_out0_carry_n_3 : STD_LOGIC;
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
  signal last_sum_sx : STD_LOGIC;
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
  signal \last_values_sx[0]_2\ : STD_LOGIC;
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
  signal state : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sub : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal sub0 : STD_LOGIC;
  signal \sub_reg_n_0_[0]\ : STD_LOGIC;
  signal \sub_reg_n_0_[10]\ : STD_LOGIC;
  signal \sub_reg_n_0_[11]\ : STD_LOGIC;
  signal \sub_reg_n_0_[12]\ : STD_LOGIC;
  signal \sub_reg_n_0_[13]\ : STD_LOGIC;
  signal \sub_reg_n_0_[14]\ : STD_LOGIC;
  signal \sub_reg_n_0_[15]\ : STD_LOGIC;
  signal \sub_reg_n_0_[16]\ : STD_LOGIC;
  signal \sub_reg_n_0_[1]\ : STD_LOGIC;
  signal \sub_reg_n_0_[2]\ : STD_LOGIC;
  signal \sub_reg_n_0_[3]\ : STD_LOGIC;
  signal \sub_reg_n_0_[4]\ : STD_LOGIC;
  signal \sub_reg_n_0_[5]\ : STD_LOGIC;
  signal \sub_reg_n_0_[6]\ : STD_LOGIC;
  signal \sub_reg_n_0_[7]\ : STD_LOGIC;
  signal \sub_reg_n_0_[8]\ : STD_LOGIC;
  signal \sub_reg_n_0_[9]\ : STD_LOGIC;
  signal sw_reg : STD_LOGIC;
  signal sw_reg0 : STD_LOGIC;
  signal tlast_expected : STD_LOGIC;
  signal tlast_expected_0 : STD_LOGIC;
  signal tlast_expected_i_1_n_0 : STD_LOGIC;
  signal tlast_sampled : STD_LOGIC;
  signal tlast_sampled_i_1_n_0 : STD_LOGIC;
  signal \NLW__carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_data_out0__54_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_data_out0__54_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_data_out0__54_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_data_out0__54_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_data_out0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_data_out0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_data_out0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_data_out0_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "idle:000,receive_data:001,subtraction:010,average:011,send_data:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "idle:000,receive_data:001,subtraction:010,average:011,send_data:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "idle:000,receive_data:001,subtraction:010,average:011,send_data:100,";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_carry__3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \data_out0__54_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \data_out0__54_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \data_out0__54_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \data_out0__54_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \data_out0__54_carry__3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \data_out0__54_carry__4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of data_out0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \data_out0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \data_out0_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \data_out0_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \data_out0_carry__3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \data_out0_carry__4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \last_sum_dx_reg[0]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \last_sum_dx_reg[12]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \last_sum_dx_reg[16]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \last_sum_dx_reg[20]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \last_sum_dx_reg[4]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \last_sum_dx_reg[8]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \last_sum_sx_reg[0]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \last_sum_sx_reg[12]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \last_sum_sx_reg[16]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \last_sum_sx_reg[20]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \last_sum_sx_reg[4]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \last_sum_sx_reg[8]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
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
  attribute SOFT_HLUTNM of last_values_dx_reg_gate : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__10\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__11\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__12\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__13\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__14\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__7\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__8\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \last_values_dx_reg_gate__9\ : label is "soft_lutpair4";
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
  attribute SOFT_HLUTNM of last_values_sx_reg_gate : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__10\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__11\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__12\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__13\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__14\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__5\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__7\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__8\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \last_values_sx_reg_gate__9\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of m_axis_tlast_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of m_axis_tvalid_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0 : label is "soft_lutpair2";
begin
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3F01F1F"
    )
        port map (
      I0 => state,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => m_axis_tready,
      I4 => \state__0\(2),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC2C"
    )
        port map (
      I0 => state,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => s_axis_tlast,
      I2 => tlast_expected,
      O => state
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF88"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => m_axis_tready,
      I3 => \state__0\(2),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \state__0\(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \state__0\(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => \state__0\(2)
    );
\_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_carry_n_0\,
      CO(2) => \_carry_n_1\,
      CO(1) => \_carry_n_2\,
      CO(0) => \_carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => data_in(3 downto 0),
      O(3 downto 0) => sub(3 downto 0),
      S(3) => \_carry_i_1_n_0\,
      S(2) => \_carry_i_2_n_0\,
      S(1) => \_carry_i_3_n_0\,
      S(0) => \_carry_i_4_n_0\
    );
\_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry_n_0\,
      CO(3) => \_carry__0_n_0\,
      CO(2) => \_carry__0_n_1\,
      CO(1) => \_carry__0_n_2\,
      CO(0) => \_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_in(7 downto 4),
      O(3 downto 0) => sub(7 downto 4),
      S(3) => \_carry__0_i_1_n_0\,
      S(2) => \_carry__0_i_2_n_0\,
      S(1) => \_carry__0_i_3_n_0\,
      S(0) => \_carry__0_i_4_n_0\
    );
\_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E41B"
    )
        port map (
      I0 => tlast_sampled,
      I1 => \last_values_sx_reg[31]\(7),
      I2 => \last_values_dx_reg[31]\(7),
      I3 => data_in(7),
      O => \_carry__0_i_1_n_0\
    );
\_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E41B"
    )
        port map (
      I0 => tlast_sampled,
      I1 => \last_values_sx_reg[31]\(6),
      I2 => \last_values_dx_reg[31]\(6),
      I3 => data_in(6),
      O => \_carry__0_i_2_n_0\
    );
\_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E41B"
    )
        port map (
      I0 => tlast_sampled,
      I1 => \last_values_sx_reg[31]\(5),
      I2 => \last_values_dx_reg[31]\(5),
      I3 => data_in(5),
      O => \_carry__0_i_3_n_0\
    );
\_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E41B"
    )
        port map (
      I0 => tlast_sampled,
      I1 => \last_values_sx_reg[31]\(4),
      I2 => \last_values_dx_reg[31]\(4),
      I3 => data_in(4),
      O => \_carry__0_i_4_n_0\
    );
\_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__0_n_0\,
      CO(3) => \_carry__1_n_0\,
      CO(2) => \_carry__1_n_1\,
      CO(1) => \_carry__1_n_2\,
      CO(0) => \_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_in(11 downto 8),
      O(3 downto 0) => sub(11 downto 8),
      S(3) => \_carry__1_i_1_n_0\,
      S(2) => \_carry__1_i_2_n_0\,
      S(1) => \_carry__1_i_3_n_0\,
      S(0) => \_carry__1_i_4_n_0\
    );
\_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E41B"
    )
        port map (
      I0 => tlast_sampled,
      I1 => \last_values_sx_reg[31]\(11),
      I2 => \last_values_dx_reg[31]\(11),
      I3 => data_in(11),
      O => \_carry__1_i_1_n_0\
    );
\_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E41B"
    )
        port map (
      I0 => tlast_sampled,
      I1 => \last_values_sx_reg[31]\(10),
      I2 => \last_values_dx_reg[31]\(10),
      I3 => data_in(10),
      O => \_carry__1_i_2_n_0\
    );
\_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E41B"
    )
        port map (
      I0 => tlast_sampled,
      I1 => \last_values_sx_reg[31]\(9),
      I2 => \last_values_dx_reg[31]\(9),
      I3 => data_in(9),
      O => \_carry__1_i_3_n_0\
    );
\_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E41B"
    )
        port map (
      I0 => tlast_sampled,
      I1 => \last_values_sx_reg[31]\(8),
      I2 => \last_values_dx_reg[31]\(8),
      I3 => data_in(8),
      O => \_carry__1_i_4_n_0\
    );
\_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__1_n_0\,
      CO(3) => \_carry__2_n_0\,
      CO(2) => \_carry__2_n_1\,
      CO(1) => \_carry__2_n_2\,
      CO(0) => \_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data_in(15 downto 12),
      O(3 downto 0) => sub(15 downto 12),
      S(3) => \_carry__2_i_1_n_0\,
      S(2) => \_carry__2_i_2_n_0\,
      S(1) => \_carry__2_i_3_n_0\,
      S(0) => \_carry__2_i_4_n_0\
    );
\_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A965"
    )
        port map (
      I0 => data_in(15),
      I1 => tlast_sampled,
      I2 => \last_values_sx_reg[31]\(15),
      I3 => \last_values_dx_reg[31]\(15),
      O => \_carry__2_i_1_n_0\
    );
\_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E41B"
    )
        port map (
      I0 => tlast_sampled,
      I1 => \last_values_sx_reg[31]\(14),
      I2 => \last_values_dx_reg[31]\(14),
      I3 => data_in(14),
      O => \_carry__2_i_2_n_0\
    );
\_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E41B"
    )
        port map (
      I0 => tlast_sampled,
      I1 => \last_values_sx_reg[31]\(13),
      I2 => \last_values_dx_reg[31]\(13),
      I3 => data_in(13),
      O => \_carry__2_i_3_n_0\
    );
\_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E41B"
    )
        port map (
      I0 => tlast_sampled,
      I1 => \last_values_sx_reg[31]\(12),
      I2 => \last_values_dx_reg[31]\(12),
      I3 => data_in(12),
      O => \_carry__2_i_4_n_0\
    );
\_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__2_n_0\,
      CO(3 downto 0) => \NLW__carry__3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW__carry__3_O_UNCONNECTED\(3 downto 1),
      O(0) => sub(16),
      S(3 downto 1) => B"000",
      S(0) => \_carry__3_i_1_n_0\
    );
\_carry__3_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A965"
    )
        port map (
      I0 => data_in(15),
      I1 => tlast_sampled,
      I2 => \last_values_sx_reg[31]\(15),
      I3 => \last_values_dx_reg[31]\(15),
      O => \_carry__3_i_1_n_0\
    );
\_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E41B"
    )
        port map (
      I0 => tlast_sampled,
      I1 => \last_values_sx_reg[31]\(3),
      I2 => \last_values_dx_reg[31]\(3),
      I3 => data_in(3),
      O => \_carry_i_1_n_0\
    );
\_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E41B"
    )
        port map (
      I0 => tlast_sampled,
      I1 => \last_values_sx_reg[31]\(2),
      I2 => \last_values_dx_reg[31]\(2),
      I3 => data_in(2),
      O => \_carry_i_2_n_0\
    );
\_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E41B"
    )
        port map (
      I0 => tlast_sampled,
      I1 => \last_values_sx_reg[31]\(1),
      I2 => \last_values_dx_reg[31]\(1),
      I3 => data_in(1),
      O => \_carry_i_3_n_0\
    );
\_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E41B"
    )
        port map (
      I0 => tlast_sampled,
      I1 => \last_values_sx_reg[31]\(0),
      I2 => \last_values_dx_reg[31]\(0),
      I3 => data_in(0),
      O => \_carry_i_4_n_0\
    );
\data_in[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => aresetn,
      I1 => s_axis_tvalid,
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      I4 => \state__0\(1),
      O => sw_reg0
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
\data_out0__54_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \data_out0__54_carry_n_0\,
      CO(2) => \data_out0__54_carry_n_1\,
      CO(1) => \data_out0__54_carry_n_2\,
      CO(0) => \data_out0__54_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => last_sum_dx_reg(3 downto 0),
      O(3 downto 0) => \NLW_data_out0__54_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \data_out0__54_carry_i_1_n_0\,
      S(2) => \data_out0__54_carry_i_2_n_0\,
      S(1) => \data_out0__54_carry_i_3_n_0\,
      S(0) => \data_out0__54_carry_i_4_n_0\
    );
\data_out0__54_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out0__54_carry_n_0\,
      CO(3) => \data_out0__54_carry__0_n_0\,
      CO(2) => \data_out0__54_carry__0_n_1\,
      CO(1) => \data_out0__54_carry__0_n_2\,
      CO(0) => \data_out0__54_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => last_sum_dx_reg(7 downto 4),
      O(3) => \data_out0__54_carry__0_n_4\,
      O(2) => \data_out0__54_carry__0_n_5\,
      O(1) => \data_out0__54_carry__0_n_6\,
      O(0) => \NLW_data_out0__54_carry__0_O_UNCONNECTED\(0),
      S(3) => \data_out0__54_carry__0_i_1_n_0\,
      S(2) => \data_out0__54_carry__0_i_2_n_0\,
      S(1) => \data_out0__54_carry__0_i_3_n_0\,
      S(0) => \data_out0__54_carry__0_i_4_n_0\
    );
\data_out0__54_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(7),
      I1 => \sub_reg_n_0_[7]\,
      O => \data_out0__54_carry__0_i_1_n_0\
    );
\data_out0__54_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(6),
      I1 => \sub_reg_n_0_[6]\,
      O => \data_out0__54_carry__0_i_2_n_0\
    );
\data_out0__54_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(5),
      I1 => \sub_reg_n_0_[5]\,
      O => \data_out0__54_carry__0_i_3_n_0\
    );
\data_out0__54_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(4),
      I1 => \sub_reg_n_0_[4]\,
      O => \data_out0__54_carry__0_i_4_n_0\
    );
\data_out0__54_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out0__54_carry__0_n_0\,
      CO(3) => \data_out0__54_carry__1_n_0\,
      CO(2) => \data_out0__54_carry__1_n_1\,
      CO(1) => \data_out0__54_carry__1_n_2\,
      CO(0) => \data_out0__54_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => last_sum_dx_reg(11 downto 8),
      O(3) => \data_out0__54_carry__1_n_4\,
      O(2) => \data_out0__54_carry__1_n_5\,
      O(1) => \data_out0__54_carry__1_n_6\,
      O(0) => \data_out0__54_carry__1_n_7\,
      S(3) => \data_out0__54_carry__1_i_1_n_0\,
      S(2) => \data_out0__54_carry__1_i_2_n_0\,
      S(1) => \data_out0__54_carry__1_i_3_n_0\,
      S(0) => \data_out0__54_carry__1_i_4_n_0\
    );
\data_out0__54_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(11),
      I1 => \sub_reg_n_0_[11]\,
      O => \data_out0__54_carry__1_i_1_n_0\
    );
\data_out0__54_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(10),
      I1 => \sub_reg_n_0_[10]\,
      O => \data_out0__54_carry__1_i_2_n_0\
    );
\data_out0__54_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(9),
      I1 => \sub_reg_n_0_[9]\,
      O => \data_out0__54_carry__1_i_3_n_0\
    );
\data_out0__54_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(8),
      I1 => \sub_reg_n_0_[8]\,
      O => \data_out0__54_carry__1_i_4_n_0\
    );
\data_out0__54_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out0__54_carry__1_n_0\,
      CO(3) => \data_out0__54_carry__2_n_0\,
      CO(2) => \data_out0__54_carry__2_n_1\,
      CO(1) => \data_out0__54_carry__2_n_2\,
      CO(0) => \data_out0__54_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => last_sum_dx_reg(15 downto 12),
      O(3) => \data_out0__54_carry__2_n_4\,
      O(2) => \data_out0__54_carry__2_n_5\,
      O(1) => \data_out0__54_carry__2_n_6\,
      O(0) => \data_out0__54_carry__2_n_7\,
      S(3) => \data_out0__54_carry__2_i_1_n_0\,
      S(2) => \data_out0__54_carry__2_i_2_n_0\,
      S(1) => \data_out0__54_carry__2_i_3_n_0\,
      S(0) => \data_out0__54_carry__2_i_4_n_0\
    );
\data_out0__54_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(15),
      I1 => \sub_reg_n_0_[15]\,
      O => \data_out0__54_carry__2_i_1_n_0\
    );
\data_out0__54_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(14),
      I1 => \sub_reg_n_0_[14]\,
      O => \data_out0__54_carry__2_i_2_n_0\
    );
\data_out0__54_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(13),
      I1 => \sub_reg_n_0_[13]\,
      O => \data_out0__54_carry__2_i_3_n_0\
    );
\data_out0__54_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(12),
      I1 => \sub_reg_n_0_[12]\,
      O => \data_out0__54_carry__2_i_4_n_0\
    );
\data_out0__54_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out0__54_carry__2_n_0\,
      CO(3) => \data_out0__54_carry__3_n_0\,
      CO(2) => \data_out0__54_carry__3_n_1\,
      CO(1) => \data_out0__54_carry__3_n_2\,
      CO(0) => \data_out0__54_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => last_sum_dx_reg(18 downto 17),
      DI(1) => \data_out0__54_carry__3_i_1_n_0\,
      DI(0) => \sub_reg_n_0_[16]\,
      O(3) => \data_out0__54_carry__3_n_4\,
      O(2) => \data_out0__54_carry__3_n_5\,
      O(1) => \data_out0__54_carry__3_n_6\,
      O(0) => \data_out0__54_carry__3_n_7\,
      S(3) => \data_out0__54_carry__3_i_2_n_0\,
      S(2) => \data_out0__54_carry__3_i_3_n_0\,
      S(1) => \data_out0__54_carry__3_i_4_n_0\,
      S(0) => \data_out0__54_carry__3_i_5_n_0\
    );
\data_out0__54_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sub_reg_n_0_[16]\,
      O => \data_out0__54_carry__3_i_1_n_0\
    );
\data_out0__54_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => last_sum_dx_reg(18),
      I1 => last_sum_dx_reg(19),
      O => \data_out0__54_carry__3_i_2_n_0\
    );
\data_out0__54_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => last_sum_dx_reg(17),
      I1 => last_sum_dx_reg(18),
      O => \data_out0__54_carry__3_i_3_n_0\
    );
\data_out0__54_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[16]\,
      I1 => last_sum_dx_reg(17),
      O => \data_out0__54_carry__3_i_4_n_0\
    );
\data_out0__54_carry__3_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[16]\,
      I1 => last_sum_dx_reg(16),
      O => \data_out0__54_carry__3_i_5_n_0\
    );
\data_out0__54_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out0__54_carry__3_n_0\,
      CO(3 downto 0) => \NLW_data_out0__54_carry__4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_data_out0__54_carry__4_O_UNCONNECTED\(3 downto 1),
      O(0) => \data_out0__54_carry__4_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \data_out0__54_carry__4_i_1_n_0\
    );
\data_out0__54_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => last_sum_dx_reg(19),
      I1 => last_sum_dx_reg(20),
      O => \data_out0__54_carry__4_i_1_n_0\
    );
\data_out0__54_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(3),
      I1 => \sub_reg_n_0_[3]\,
      O => \data_out0__54_carry_i_1_n_0\
    );
\data_out0__54_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(2),
      I1 => \sub_reg_n_0_[2]\,
      O => \data_out0__54_carry_i_2_n_0\
    );
\data_out0__54_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(1),
      I1 => \sub_reg_n_0_[1]\,
      O => \data_out0__54_carry_i_3_n_0\
    );
\data_out0__54_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_dx_reg(0),
      I1 => \sub_reg_n_0_[0]\,
      O => \data_out0__54_carry_i_4_n_0\
    );
data_out0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => data_out0_carry_n_0,
      CO(2) => data_out0_carry_n_1,
      CO(1) => data_out0_carry_n_2,
      CO(0) => data_out0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => last_sum_sx_reg(3 downto 0),
      O(3 downto 0) => NLW_data_out0_carry_O_UNCONNECTED(3 downto 0),
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
      DI(3 downto 0) => last_sum_sx_reg(7 downto 4),
      O(3) => \data_out0_carry__0_n_4\,
      O(2) => \data_out0_carry__0_n_5\,
      O(1) => \data_out0_carry__0_n_6\,
      O(0) => \NLW_data_out0_carry__0_O_UNCONNECTED\(0),
      S(3) => \data_out0_carry__0_i_1_n_0\,
      S(2) => \data_out0_carry__0_i_2_n_0\,
      S(1) => \data_out0_carry__0_i_3_n_0\,
      S(0) => \data_out0_carry__0_i_4_n_0\
    );
\data_out0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(7),
      I1 => \sub_reg_n_0_[7]\,
      O => \data_out0_carry__0_i_1_n_0\
    );
\data_out0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(6),
      I1 => \sub_reg_n_0_[6]\,
      O => \data_out0_carry__0_i_2_n_0\
    );
\data_out0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(5),
      I1 => \sub_reg_n_0_[5]\,
      O => \data_out0_carry__0_i_3_n_0\
    );
\data_out0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(4),
      I1 => \sub_reg_n_0_[4]\,
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
      DI(3 downto 0) => last_sum_sx_reg(11 downto 8),
      O(3) => \data_out0_carry__1_n_4\,
      O(2) => \data_out0_carry__1_n_5\,
      O(1) => \data_out0_carry__1_n_6\,
      O(0) => \data_out0_carry__1_n_7\,
      S(3) => \data_out0_carry__1_i_1_n_0\,
      S(2) => \data_out0_carry__1_i_2_n_0\,
      S(1) => \data_out0_carry__1_i_3_n_0\,
      S(0) => \data_out0_carry__1_i_4_n_0\
    );
\data_out0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(11),
      I1 => \sub_reg_n_0_[11]\,
      O => \data_out0_carry__1_i_1_n_0\
    );
\data_out0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(10),
      I1 => \sub_reg_n_0_[10]\,
      O => \data_out0_carry__1_i_2_n_0\
    );
\data_out0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(9),
      I1 => \sub_reg_n_0_[9]\,
      O => \data_out0_carry__1_i_3_n_0\
    );
\data_out0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(8),
      I1 => \sub_reg_n_0_[8]\,
      O => \data_out0_carry__1_i_4_n_0\
    );
\data_out0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out0_carry__1_n_0\,
      CO(3) => \data_out0_carry__2_n_0\,
      CO(2) => \data_out0_carry__2_n_1\,
      CO(1) => \data_out0_carry__2_n_2\,
      CO(0) => \data_out0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => last_sum_sx_reg(15 downto 12),
      O(3) => \data_out0_carry__2_n_4\,
      O(2) => \data_out0_carry__2_n_5\,
      O(1) => \data_out0_carry__2_n_6\,
      O(0) => \data_out0_carry__2_n_7\,
      S(3) => \data_out0_carry__2_i_1_n_0\,
      S(2) => \data_out0_carry__2_i_2_n_0\,
      S(1) => \data_out0_carry__2_i_3_n_0\,
      S(0) => \data_out0_carry__2_i_4_n_0\
    );
\data_out0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(15),
      I1 => \sub_reg_n_0_[15]\,
      O => \data_out0_carry__2_i_1_n_0\
    );
\data_out0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(14),
      I1 => \sub_reg_n_0_[14]\,
      O => \data_out0_carry__2_i_2_n_0\
    );
\data_out0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(13),
      I1 => \sub_reg_n_0_[13]\,
      O => \data_out0_carry__2_i_3_n_0\
    );
\data_out0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(12),
      I1 => \sub_reg_n_0_[12]\,
      O => \data_out0_carry__2_i_4_n_0\
    );
\data_out0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out0_carry__2_n_0\,
      CO(3) => \data_out0_carry__3_n_0\,
      CO(2) => \data_out0_carry__3_n_1\,
      CO(1) => \data_out0_carry__3_n_2\,
      CO(0) => \data_out0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => last_sum_sx_reg(18 downto 17),
      DI(1) => \data_out0_carry__3_i_1_n_0\,
      DI(0) => \sub_reg_n_0_[16]\,
      O(3) => \data_out0_carry__3_n_4\,
      O(2) => \data_out0_carry__3_n_5\,
      O(1) => \data_out0_carry__3_n_6\,
      O(0) => \data_out0_carry__3_n_7\,
      S(3) => \data_out0_carry__3_i_2_n_0\,
      S(2) => \data_out0_carry__3_i_3_n_0\,
      S(1) => \data_out0_carry__3_i_4_n_0\,
      S(0) => \data_out0_carry__3_i_5_n_0\
    );
\data_out0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sub_reg_n_0_[16]\,
      O => \data_out0_carry__3_i_1_n_0\
    );
\data_out0_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => last_sum_sx_reg(18),
      I1 => last_sum_sx_reg(19),
      O => \data_out0_carry__3_i_2_n_0\
    );
\data_out0_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => last_sum_sx_reg(17),
      I1 => last_sum_sx_reg(18),
      O => \data_out0_carry__3_i_3_n_0\
    );
\data_out0_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[16]\,
      I1 => last_sum_sx_reg(17),
      O => \data_out0_carry__3_i_4_n_0\
    );
\data_out0_carry__3_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[16]\,
      I1 => last_sum_sx_reg(16),
      O => \data_out0_carry__3_i_5_n_0\
    );
\data_out0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_out0_carry__3_n_0\,
      CO(3 downto 0) => \NLW_data_out0_carry__4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_data_out0_carry__4_O_UNCONNECTED\(3 downto 1),
      O(0) => \data_out0_carry__4_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \data_out0_carry__4_i_1_n_0\
    );
\data_out0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => last_sum_sx_reg(19),
      I1 => last_sum_sx_reg(20),
      O => \data_out0_carry__4_i_1_n_0\
    );
data_out0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(3),
      I1 => \sub_reg_n_0_[3]\,
      O => data_out0_carry_i_1_n_0
    );
data_out0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(2),
      I1 => \sub_reg_n_0_[2]\,
      O => data_out0_carry_i_2_n_0
    );
data_out0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(1),
      I1 => \sub_reg_n_0_[1]\,
      O => data_out0_carry_i_3_n_0
    );
data_out0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_sum_sx_reg(0),
      I1 => \sub_reg_n_0_[0]\,
      O => data_out0_carry_i_4_n_0
    );
\data_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out0__54_carry__0_n_6\,
      I1 => tlast_sampled,
      I2 => \data_out0_carry__0_n_6\,
      I3 => sw_reg,
      I4 => data_in(0),
      O => \data_out[0]_i_1_n_0\
    );
\data_out[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out0__54_carry__2_n_4\,
      I1 => tlast_sampled,
      I2 => \data_out0_carry__2_n_4\,
      I3 => sw_reg,
      I4 => data_in(10),
      O => \data_out[10]_i_1_n_0\
    );
\data_out[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out0__54_carry__3_n_7\,
      I1 => tlast_sampled,
      I2 => \data_out0_carry__3_n_7\,
      I3 => sw_reg,
      I4 => data_in(11),
      O => \data_out[11]_i_1_n_0\
    );
\data_out[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out0__54_carry__3_n_6\,
      I1 => tlast_sampled,
      I2 => \data_out0_carry__3_n_6\,
      I3 => sw_reg,
      I4 => data_in(12),
      O => \data_out[12]_i_1_n_0\
    );
\data_out[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out0__54_carry__3_n_5\,
      I1 => tlast_sampled,
      I2 => \data_out0_carry__3_n_5\,
      I3 => sw_reg,
      I4 => data_in(13),
      O => \data_out[13]_i_1_n_0\
    );
\data_out[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out0__54_carry__3_n_4\,
      I1 => tlast_sampled,
      I2 => \data_out0_carry__3_n_4\,
      I3 => sw_reg,
      I4 => data_in(14),
      O => \data_out[14]_i_1_n_0\
    );
\data_out[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aresetn,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      O => data_out0
    );
\data_out[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out0__54_carry__4_n_7\,
      I1 => tlast_sampled,
      I2 => \data_out0_carry__4_n_7\,
      I3 => sw_reg,
      I4 => data_in(15),
      O => \data_out[15]_i_2_n_0\
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out0__54_carry__0_n_5\,
      I1 => tlast_sampled,
      I2 => \data_out0_carry__0_n_5\,
      I3 => sw_reg,
      I4 => data_in(1),
      O => \data_out[1]_i_1_n_0\
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out0__54_carry__0_n_4\,
      I1 => tlast_sampled,
      I2 => \data_out0_carry__0_n_4\,
      I3 => sw_reg,
      I4 => data_in(2),
      O => \data_out[2]_i_1_n_0\
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out0__54_carry__1_n_7\,
      I1 => tlast_sampled,
      I2 => \data_out0_carry__1_n_7\,
      I3 => sw_reg,
      I4 => data_in(3),
      O => \data_out[3]_i_1_n_0\
    );
\data_out[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out0__54_carry__1_n_6\,
      I1 => tlast_sampled,
      I2 => \data_out0_carry__1_n_6\,
      I3 => sw_reg,
      I4 => data_in(4),
      O => \data_out[4]_i_1_n_0\
    );
\data_out[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out0__54_carry__1_n_5\,
      I1 => tlast_sampled,
      I2 => \data_out0_carry__1_n_5\,
      I3 => sw_reg,
      I4 => data_in(5),
      O => \data_out[5]_i_1_n_0\
    );
\data_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out0__54_carry__1_n_4\,
      I1 => tlast_sampled,
      I2 => \data_out0_carry__1_n_4\,
      I3 => sw_reg,
      I4 => data_in(6),
      O => \data_out[6]_i_1_n_0\
    );
\data_out[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out0__54_carry__2_n_7\,
      I1 => tlast_sampled,
      I2 => \data_out0_carry__2_n_7\,
      I3 => sw_reg,
      I4 => data_in(7),
      O => \data_out[7]_i_1_n_0\
    );
\data_out[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out0__54_carry__2_n_6\,
      I1 => tlast_sampled,
      I2 => \data_out0_carry__2_n_6\,
      I3 => sw_reg,
      I4 => data_in(8),
      O => \data_out[8]_i_1_n_0\
    );
\data_out[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out0__54_carry__2_n_5\,
      I1 => tlast_sampled,
      I2 => \data_out0_carry__2_n_5\,
      I3 => sw_reg,
      I4 => data_in(9),
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
\last_sum_dx[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => tlast_sampled,
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => last_sum_dx
    );
\last_sum_dx[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[3]\,
      I1 => last_sum_dx_reg(3),
      O => \last_sum_dx[0]_i_3_n_0\
    );
\last_sum_dx[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[2]\,
      I1 => last_sum_dx_reg(2),
      O => \last_sum_dx[0]_i_4_n_0\
    );
\last_sum_dx[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[1]\,
      I1 => last_sum_dx_reg(1),
      O => \last_sum_dx[0]_i_5_n_0\
    );
\last_sum_dx[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[0]\,
      I1 => last_sum_dx_reg(0),
      O => \last_sum_dx[0]_i_6_n_0\
    );
\last_sum_dx[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[15]\,
      I1 => last_sum_dx_reg(15),
      O => \last_sum_dx[12]_i_2_n_0\
    );
\last_sum_dx[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[14]\,
      I1 => last_sum_dx_reg(14),
      O => \last_sum_dx[12]_i_3_n_0\
    );
\last_sum_dx[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[13]\,
      I1 => last_sum_dx_reg(13),
      O => \last_sum_dx[12]_i_4_n_0\
    );
\last_sum_dx[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[12]\,
      I1 => last_sum_dx_reg(12),
      O => \last_sum_dx[12]_i_5_n_0\
    );
\last_sum_dx[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[16]\,
      I1 => last_sum_dx_reg(19),
      O => \last_sum_dx[16]_i_2_n_0\
    );
\last_sum_dx[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[16]\,
      I1 => last_sum_dx_reg(18),
      O => \last_sum_dx[16]_i_3_n_0\
    );
\last_sum_dx[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[16]\,
      I1 => last_sum_dx_reg(17),
      O => \last_sum_dx[16]_i_4_n_0\
    );
\last_sum_dx[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[16]\,
      I1 => last_sum_dx_reg(16),
      O => \last_sum_dx[16]_i_5_n_0\
    );
\last_sum_dx[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[16]\,
      I1 => last_sum_dx_reg(20),
      O => \last_sum_dx[20]_i_2_n_0\
    );
\last_sum_dx[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[7]\,
      I1 => last_sum_dx_reg(7),
      O => \last_sum_dx[4]_i_2_n_0\
    );
\last_sum_dx[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[6]\,
      I1 => last_sum_dx_reg(6),
      O => \last_sum_dx[4]_i_3_n_0\
    );
\last_sum_dx[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[5]\,
      I1 => last_sum_dx_reg(5),
      O => \last_sum_dx[4]_i_4_n_0\
    );
\last_sum_dx[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[4]\,
      I1 => last_sum_dx_reg(4),
      O => \last_sum_dx[4]_i_5_n_0\
    );
\last_sum_dx[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[11]\,
      I1 => last_sum_dx_reg(11),
      O => \last_sum_dx[8]_i_2_n_0\
    );
\last_sum_dx[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[10]\,
      I1 => last_sum_dx_reg(10),
      O => \last_sum_dx[8]_i_3_n_0\
    );
\last_sum_dx[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[9]\,
      I1 => last_sum_dx_reg(9),
      O => \last_sum_dx[8]_i_4_n_0\
    );
\last_sum_dx[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[8]\,
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
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
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
      DI(3) => \sub_reg_n_0_[3]\,
      DI(2) => \sub_reg_n_0_[2]\,
      DI(1) => \sub_reg_n_0_[1]\,
      DI(0) => \sub_reg_n_0_[0]\,
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
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
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
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
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
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
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
      DI(3) => \sub_reg_n_0_[15]\,
      DI(2) => \sub_reg_n_0_[14]\,
      DI(1) => \sub_reg_n_0_[13]\,
      DI(0) => \sub_reg_n_0_[12]\,
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
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
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
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
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
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
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
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
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
      DI(3) => \sub_reg_n_0_[16]\,
      DI(2) => \sub_reg_n_0_[16]\,
      DI(1) => \sub_reg_n_0_[16]\,
      DI(0) => \sub_reg_n_0_[16]\,
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
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
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
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
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
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
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
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
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
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
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
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
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
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
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
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
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
      DI(3) => \sub_reg_n_0_[7]\,
      DI(2) => \sub_reg_n_0_[6]\,
      DI(1) => \sub_reg_n_0_[5]\,
      DI(0) => \sub_reg_n_0_[4]\,
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
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
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
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
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
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
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
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
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
      DI(3) => \sub_reg_n_0_[11]\,
      DI(2) => \sub_reg_n_0_[10]\,
      DI(1) => \sub_reg_n_0_[9]\,
      DI(0) => \sub_reg_n_0_[8]\,
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
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_sum_dx_reg[8]_i_1_n_6\,
      Q => last_sum_dx_reg(9)
    );
\last_sum_sx[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tlast_sampled,
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => last_sum_sx
    );
\last_sum_sx[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[3]\,
      I1 => last_sum_sx_reg(3),
      O => \last_sum_sx[0]_i_3_n_0\
    );
\last_sum_sx[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[2]\,
      I1 => last_sum_sx_reg(2),
      O => \last_sum_sx[0]_i_4_n_0\
    );
\last_sum_sx[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[1]\,
      I1 => last_sum_sx_reg(1),
      O => \last_sum_sx[0]_i_5_n_0\
    );
\last_sum_sx[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[0]\,
      I1 => last_sum_sx_reg(0),
      O => \last_sum_sx[0]_i_6_n_0\
    );
\last_sum_sx[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[15]\,
      I1 => last_sum_sx_reg(15),
      O => \last_sum_sx[12]_i_2_n_0\
    );
\last_sum_sx[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[14]\,
      I1 => last_sum_sx_reg(14),
      O => \last_sum_sx[12]_i_3_n_0\
    );
\last_sum_sx[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[13]\,
      I1 => last_sum_sx_reg(13),
      O => \last_sum_sx[12]_i_4_n_0\
    );
\last_sum_sx[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[12]\,
      I1 => last_sum_sx_reg(12),
      O => \last_sum_sx[12]_i_5_n_0\
    );
\last_sum_sx[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[16]\,
      I1 => last_sum_sx_reg(19),
      O => \last_sum_sx[16]_i_2_n_0\
    );
\last_sum_sx[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[16]\,
      I1 => last_sum_sx_reg(18),
      O => \last_sum_sx[16]_i_3_n_0\
    );
\last_sum_sx[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[16]\,
      I1 => last_sum_sx_reg(17),
      O => \last_sum_sx[16]_i_4_n_0\
    );
\last_sum_sx[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[16]\,
      I1 => last_sum_sx_reg(16),
      O => \last_sum_sx[16]_i_5_n_0\
    );
\last_sum_sx[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[16]\,
      I1 => last_sum_sx_reg(20),
      O => \last_sum_sx[20]_i_2_n_0\
    );
\last_sum_sx[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[7]\,
      I1 => last_sum_sx_reg(7),
      O => \last_sum_sx[4]_i_2_n_0\
    );
\last_sum_sx[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[6]\,
      I1 => last_sum_sx_reg(6),
      O => \last_sum_sx[4]_i_3_n_0\
    );
\last_sum_sx[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[5]\,
      I1 => last_sum_sx_reg(5),
      O => \last_sum_sx[4]_i_4_n_0\
    );
\last_sum_sx[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[4]\,
      I1 => last_sum_sx_reg(4),
      O => \last_sum_sx[4]_i_5_n_0\
    );
\last_sum_sx[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[11]\,
      I1 => last_sum_sx_reg(11),
      O => \last_sum_sx[8]_i_2_n_0\
    );
\last_sum_sx[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[10]\,
      I1 => last_sum_sx_reg(10),
      O => \last_sum_sx[8]_i_3_n_0\
    );
\last_sum_sx[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[9]\,
      I1 => last_sum_sx_reg(9),
      O => \last_sum_sx[8]_i_4_n_0\
    );
\last_sum_sx[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sub_reg_n_0_[8]\,
      I1 => last_sum_sx_reg(8),
      O => \last_sum_sx[8]_i_5_n_0\
    );
\last_sum_sx_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_sx,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
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
      DI(3) => \sub_reg_n_0_[3]\,
      DI(2) => \sub_reg_n_0_[2]\,
      DI(1) => \sub_reg_n_0_[1]\,
      DI(0) => \sub_reg_n_0_[0]\,
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
      CE => last_sum_sx,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_sum_sx_reg[8]_i_1_n_5\,
      Q => last_sum_sx_reg(10)
    );
\last_sum_sx_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_sx,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_sum_sx_reg[8]_i_1_n_4\,
      Q => last_sum_sx_reg(11)
    );
\last_sum_sx_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_sx,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
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
      DI(3) => \sub_reg_n_0_[15]\,
      DI(2) => \sub_reg_n_0_[14]\,
      DI(1) => \sub_reg_n_0_[13]\,
      DI(0) => \sub_reg_n_0_[12]\,
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
      CE => last_sum_sx,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_sum_sx_reg[12]_i_1_n_6\,
      Q => last_sum_sx_reg(13)
    );
\last_sum_sx_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_sx,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_sum_sx_reg[12]_i_1_n_5\,
      Q => last_sum_sx_reg(14)
    );
\last_sum_sx_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_sx,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_sum_sx_reg[12]_i_1_n_4\,
      Q => last_sum_sx_reg(15)
    );
\last_sum_sx_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_sx,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
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
      DI(3) => \sub_reg_n_0_[16]\,
      DI(2) => \sub_reg_n_0_[16]\,
      DI(1) => \sub_reg_n_0_[16]\,
      DI(0) => \sub_reg_n_0_[16]\,
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
      CE => last_sum_sx,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_sum_sx_reg[16]_i_1_n_6\,
      Q => last_sum_sx_reg(17)
    );
\last_sum_sx_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_sx,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_sum_sx_reg[16]_i_1_n_5\,
      Q => last_sum_sx_reg(18)
    );
\last_sum_sx_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_sx,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_sum_sx_reg[16]_i_1_n_4\,
      Q => last_sum_sx_reg(19)
    );
\last_sum_sx_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_sx,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_sum_sx_reg[0]_i_2_n_6\,
      Q => last_sum_sx_reg(1)
    );
\last_sum_sx_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_sx,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
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
      CE => last_sum_sx,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_sum_sx_reg[0]_i_2_n_5\,
      Q => last_sum_sx_reg(2)
    );
\last_sum_sx_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_sx,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_sum_sx_reg[0]_i_2_n_4\,
      Q => last_sum_sx_reg(3)
    );
\last_sum_sx_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_sx,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
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
      DI(3) => \sub_reg_n_0_[7]\,
      DI(2) => \sub_reg_n_0_[6]\,
      DI(1) => \sub_reg_n_0_[5]\,
      DI(0) => \sub_reg_n_0_[4]\,
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
      CE => last_sum_sx,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_sum_sx_reg[4]_i_1_n_6\,
      Q => last_sum_sx_reg(5)
    );
\last_sum_sx_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_sx,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_sum_sx_reg[4]_i_1_n_5\,
      Q => last_sum_sx_reg(6)
    );
\last_sum_sx_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_sx,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_sum_sx_reg[4]_i_1_n_4\,
      Q => last_sum_sx_reg(7)
    );
\last_sum_sx_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => last_sum_sx,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
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
      DI(3) => \sub_reg_n_0_[11]\,
      DI(2) => \sub_reg_n_0_[10]\,
      DI(1) => \sub_reg_n_0_[9]\,
      DI(0) => \sub_reg_n_0_[8]\,
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
      CE => last_sum_sx,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_sum_sx_reg[8]_i_1_n_6\,
      Q => last_sum_sx_reg(9)
    );
last_values_dx_c_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => tlast_sampled,
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
      CE => \last_values_dx[0]_1\,
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
      CE => \last_values_dx[0]_1\,
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
      CE => \last_values_dx[0]_1\,
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
      CE => \last_values_dx[0]_1\,
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
      CE => \last_values_dx[0]_1\,
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
      CE => \last_values_dx[0]_1\,
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
      CE => \last_values_dx[0]_1\,
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
      CE => \last_values_dx[0]_1\,
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
      CE => \last_values_dx[0]_1\,
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
      CE => \last_values_dx[0]_1\,
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
      CE => \last_values_dx[0]_1\,
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
      CE => \last_values_dx[0]_1\,
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
      CE => \last_values_dx[0]_1\,
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
      CE => \last_values_dx[0]_1\,
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
      CE => \last_values_dx[0]_1\,
      CLK => clk,
      D => data_in(9),
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
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_dx_reg_gate__14_n_0\,
      Q => \last_values_dx_reg[31]\(0)
    );
\last_values_dx_reg[31][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_dx_reg_gate__4_n_0\,
      Q => \last_values_dx_reg[31]\(10)
    );
\last_values_dx_reg[31][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_dx_reg_gate__3_n_0\,
      Q => \last_values_dx_reg[31]\(11)
    );
\last_values_dx_reg[31][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_dx_reg_gate__2_n_0\,
      Q => \last_values_dx_reg[31]\(12)
    );
\last_values_dx_reg[31][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_dx_reg_gate__1_n_0\,
      Q => \last_values_dx_reg[31]\(13)
    );
\last_values_dx_reg[31][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_dx_reg_gate__0_n_0\,
      Q => \last_values_dx_reg[31]\(14)
    );
\last_values_dx_reg[31][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_gate_n_0,
      Q => \last_values_dx_reg[31]\(15)
    );
\last_values_dx_reg[31][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_dx_reg_gate__13_n_0\,
      Q => \last_values_dx_reg[31]\(1)
    );
\last_values_dx_reg[31][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_dx_reg_gate__12_n_0\,
      Q => \last_values_dx_reg[31]\(2)
    );
\last_values_dx_reg[31][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_dx_reg_gate__11_n_0\,
      Q => \last_values_dx_reg[31]\(3)
    );
\last_values_dx_reg[31][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_dx_reg_gate__10_n_0\,
      Q => \last_values_dx_reg[31]\(4)
    );
\last_values_dx_reg[31][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_dx_reg_gate__9_n_0\,
      Q => \last_values_dx_reg[31]\(5)
    );
\last_values_dx_reg[31][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_dx_reg_gate__8_n_0\,
      Q => \last_values_dx_reg[31]\(6)
    );
\last_values_dx_reg[31][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_dx_reg_gate__7_n_0\,
      Q => \last_values_dx_reg[31]\(7)
    );
\last_values_dx_reg[31][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_dx_reg_gate__6_n_0\,
      Q => \last_values_dx_reg[31]\(8)
    );
\last_values_dx_reg[31][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_dx_reg_gate__5_n_0\,
      Q => \last_values_dx_reg[31]\(9)
    );
last_values_dx_reg_c: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => '1',
      Q => last_values_dx_reg_c_n_0
    );
last_values_dx_reg_c_30: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_c_n_0,
      Q => last_values_dx_reg_c_30_n_0
    );
last_values_dx_reg_c_31: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_c_30_n_0,
      Q => last_values_dx_reg_c_31_n_0
    );
last_values_dx_reg_c_32: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_c_31_n_0,
      Q => last_values_dx_reg_c_32_n_0
    );
last_values_dx_reg_c_33: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_c_32_n_0,
      Q => last_values_dx_reg_c_33_n_0
    );
last_values_dx_reg_c_34: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_c_33_n_0,
      Q => last_values_dx_reg_c_34_n_0
    );
last_values_dx_reg_c_35: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_c_34_n_0,
      Q => last_values_dx_reg_c_35_n_0
    );
last_values_dx_reg_c_36: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_c_35_n_0,
      Q => last_values_dx_reg_c_36_n_0
    );
last_values_dx_reg_c_37: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_c_36_n_0,
      Q => last_values_dx_reg_c_37_n_0
    );
last_values_dx_reg_c_38: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_c_37_n_0,
      Q => last_values_dx_reg_c_38_n_0
    );
last_values_dx_reg_c_39: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_c_38_n_0,
      Q => last_values_dx_reg_c_39_n_0
    );
last_values_dx_reg_c_40: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_c_39_n_0,
      Q => last_values_dx_reg_c_40_n_0
    );
last_values_dx_reg_c_41: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_c_40_n_0,
      Q => last_values_dx_reg_c_41_n_0
    );
last_values_dx_reg_c_42: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_c_41_n_0,
      Q => last_values_dx_reg_c_42_n_0
    );
last_values_dx_reg_c_43: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_c_42_n_0,
      Q => last_values_dx_reg_c_43_n_0
    );
last_values_dx_reg_c_44: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_c_43_n_0,
      Q => last_values_dx_reg_c_44_n_0
    );
last_values_dx_reg_c_45: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_c_44_n_0,
      Q => last_values_dx_reg_c_45_n_0
    );
last_values_dx_reg_c_46: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_c_45_n_0,
      Q => last_values_dx_reg_c_46_n_0
    );
last_values_dx_reg_c_47: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_c_46_n_0,
      Q => last_values_dx_reg_c_47_n_0
    );
last_values_dx_reg_c_48: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_c_47_n_0,
      Q => last_values_dx_reg_c_48_n_0
    );
last_values_dx_reg_c_49: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_c_48_n_0,
      Q => last_values_dx_reg_c_49_n_0
    );
last_values_dx_reg_c_50: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_c_49_n_0,
      Q => last_values_dx_reg_c_50_n_0
    );
last_values_dx_reg_c_51: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_c_50_n_0,
      Q => last_values_dx_reg_c_51_n_0
    );
last_values_dx_reg_c_52: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_c_51_n_0,
      Q => last_values_dx_reg_c_52_n_0
    );
last_values_dx_reg_c_53: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_c_52_n_0,
      Q => last_values_dx_reg_c_53_n_0
    );
last_values_dx_reg_c_54: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_c_53_n_0,
      Q => last_values_dx_reg_c_54_n_0
    );
last_values_dx_reg_c_55: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_c_54_n_0,
      Q => last_values_dx_reg_c_55_n_0
    );
last_values_dx_reg_c_56: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_c_55_n_0,
      Q => last_values_dx_reg_c_56_n_0
    );
last_values_dx_reg_c_57: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_c_56_n_0,
      Q => last_values_dx_reg_c_57_n_0
    );
last_values_dx_reg_c_58: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_dx_reg_c_57_n_0,
      Q => last_values_dx_reg_c_58_n_0
    );
last_values_dx_reg_c_59: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_dx[0]_1\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
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
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => tlast_sampled,
      O => \last_values_sx[0]_2\
    );
\last_values_sx_reg[29][0]_srl30_U0_last_values_sx_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \last_values_sx[0]_2\,
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
      CE => \last_values_sx[0]_2\,
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
      CE => \last_values_sx[0]_2\,
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
      CE => \last_values_sx[0]_2\,
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
      CE => \last_values_sx[0]_2\,
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
      CE => \last_values_sx[0]_2\,
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
      CE => \last_values_sx[0]_2\,
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
      CE => \last_values_sx[0]_2\,
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
      CE => \last_values_sx[0]_2\,
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
      CE => \last_values_sx[0]_2\,
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
      CE => \last_values_sx[0]_2\,
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
      CE => \last_values_sx[0]_2\,
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
      CE => \last_values_sx[0]_2\,
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
      CE => \last_values_sx[0]_2\,
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
      CE => \last_values_sx[0]_2\,
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
      CE => \last_values_sx[0]_2\,
      CLK => clk,
      D => data_in(9),
      Q => \last_values_sx_reg[29][9]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q31 => \NLW_last_values_sx_reg[29][9]_srl30_U0_last_values_sx_reg_c_28_Q31_UNCONNECTED\
    );
\last_values_sx_reg[30][0]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      D => \last_values_sx_reg[29][0]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][0]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][10]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      D => \last_values_sx_reg[29][10]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][10]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][11]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      D => \last_values_sx_reg[29][11]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][11]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][12]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      D => \last_values_sx_reg[29][12]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][12]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][13]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      D => \last_values_sx_reg[29][13]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][13]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][14]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      D => \last_values_sx_reg[29][14]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][14]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][15]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      D => \last_values_sx_reg[29][15]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][15]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][1]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      D => \last_values_sx_reg[29][1]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][1]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][2]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      D => \last_values_sx_reg[29][2]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][2]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][3]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      D => \last_values_sx_reg[29][3]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][3]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][4]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      D => \last_values_sx_reg[29][4]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][4]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][5]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      D => \last_values_sx_reg[29][5]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][5]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][6]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      D => \last_values_sx_reg[29][6]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][6]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][7]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      D => \last_values_sx_reg[29][7]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][7]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][8]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      D => \last_values_sx_reg[29][8]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][8]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[30][9]_U0_last_values_sx_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      D => \last_values_sx_reg[29][9]_srl30_U0_last_values_sx_reg_c_28_n_0\,
      Q => \last_values_sx_reg[30][9]_U0_last_values_sx_reg_c_29_n_0\,
      R => '0'
    );
\last_values_sx_reg[31][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_sx_reg_gate__14_n_0\,
      Q => \last_values_sx_reg[31]\(0)
    );
\last_values_sx_reg[31][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_sx_reg_gate__4_n_0\,
      Q => \last_values_sx_reg[31]\(10)
    );
\last_values_sx_reg[31][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_sx_reg_gate__3_n_0\,
      Q => \last_values_sx_reg[31]\(11)
    );
\last_values_sx_reg[31][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_sx_reg_gate__2_n_0\,
      Q => \last_values_sx_reg[31]\(12)
    );
\last_values_sx_reg[31][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_sx_reg_gate__1_n_0\,
      Q => \last_values_sx_reg[31]\(13)
    );
\last_values_sx_reg[31][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_sx_reg_gate__0_n_0\,
      Q => \last_values_sx_reg[31]\(14)
    );
\last_values_sx_reg[31][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_gate_n_0,
      Q => \last_values_sx_reg[31]\(15)
    );
\last_values_sx_reg[31][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_sx_reg_gate__13_n_0\,
      Q => \last_values_sx_reg[31]\(1)
    );
\last_values_sx_reg[31][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_sx_reg_gate__12_n_0\,
      Q => \last_values_sx_reg[31]\(2)
    );
\last_values_sx_reg[31][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_sx_reg_gate__11_n_0\,
      Q => \last_values_sx_reg[31]\(3)
    );
\last_values_sx_reg[31][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_sx_reg_gate__10_n_0\,
      Q => \last_values_sx_reg[31]\(4)
    );
\last_values_sx_reg[31][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_sx_reg_gate__9_n_0\,
      Q => \last_values_sx_reg[31]\(5)
    );
\last_values_sx_reg[31][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_sx_reg_gate__8_n_0\,
      Q => \last_values_sx_reg[31]\(6)
    );
\last_values_sx_reg[31][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_sx_reg_gate__7_n_0\,
      Q => \last_values_sx_reg[31]\(7)
    );
\last_values_sx_reg[31][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_sx_reg_gate__6_n_0\,
      Q => \last_values_sx_reg[31]\(8)
    );
\last_values_sx_reg[31][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => \last_values_sx_reg_gate__5_n_0\,
      Q => \last_values_sx_reg[31]\(9)
    );
last_values_sx_reg_c: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => '1',
      Q => last_values_sx_reg_c_n_0
    );
last_values_sx_reg_c_0: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_c_n_0,
      Q => last_values_sx_reg_c_0_n_0
    );
last_values_sx_reg_c_1: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_c_0_n_0,
      Q => last_values_sx_reg_c_1_n_0
    );
last_values_sx_reg_c_10: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_c_9_n_0,
      Q => last_values_sx_reg_c_10_n_0
    );
last_values_sx_reg_c_11: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_c_10_n_0,
      Q => last_values_sx_reg_c_11_n_0
    );
last_values_sx_reg_c_12: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_c_11_n_0,
      Q => last_values_sx_reg_c_12_n_0
    );
last_values_sx_reg_c_13: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_c_12_n_0,
      Q => last_values_sx_reg_c_13_n_0
    );
last_values_sx_reg_c_14: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_c_13_n_0,
      Q => last_values_sx_reg_c_14_n_0
    );
last_values_sx_reg_c_15: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_c_14_n_0,
      Q => last_values_sx_reg_c_15_n_0
    );
last_values_sx_reg_c_16: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_c_15_n_0,
      Q => last_values_sx_reg_c_16_n_0
    );
last_values_sx_reg_c_17: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_c_16_n_0,
      Q => last_values_sx_reg_c_17_n_0
    );
last_values_sx_reg_c_18: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_c_17_n_0,
      Q => last_values_sx_reg_c_18_n_0
    );
last_values_sx_reg_c_19: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_c_18_n_0,
      Q => last_values_sx_reg_c_19_n_0
    );
last_values_sx_reg_c_2: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_c_1_n_0,
      Q => last_values_sx_reg_c_2_n_0
    );
last_values_sx_reg_c_20: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_c_19_n_0,
      Q => last_values_sx_reg_c_20_n_0
    );
last_values_sx_reg_c_21: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_c_20_n_0,
      Q => last_values_sx_reg_c_21_n_0
    );
last_values_sx_reg_c_22: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_c_21_n_0,
      Q => last_values_sx_reg_c_22_n_0
    );
last_values_sx_reg_c_23: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_c_22_n_0,
      Q => last_values_sx_reg_c_23_n_0
    );
last_values_sx_reg_c_24: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_c_23_n_0,
      Q => last_values_sx_reg_c_24_n_0
    );
last_values_sx_reg_c_25: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_c_24_n_0,
      Q => last_values_sx_reg_c_25_n_0
    );
last_values_sx_reg_c_26: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_c_25_n_0,
      Q => last_values_sx_reg_c_26_n_0
    );
last_values_sx_reg_c_27: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_c_26_n_0,
      Q => last_values_sx_reg_c_27_n_0
    );
last_values_sx_reg_c_28: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_c_27_n_0,
      Q => last_values_sx_reg_c_28_n_0
    );
last_values_sx_reg_c_29: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_c_28_n_0,
      Q => last_values_sx_reg_c_29_n_0
    );
last_values_sx_reg_c_3: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_c_2_n_0,
      Q => last_values_sx_reg_c_3_n_0
    );
last_values_sx_reg_c_4: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_c_3_n_0,
      Q => last_values_sx_reg_c_4_n_0
    );
last_values_sx_reg_c_5: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_c_4_n_0,
      Q => last_values_sx_reg_c_5_n_0
    );
last_values_sx_reg_c_6: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_c_5_n_0,
      Q => last_values_sx_reg_c_6_n_0
    );
last_values_sx_reg_c_7: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_c_6_n_0,
      Q => last_values_sx_reg_c_7_n_0
    );
last_values_sx_reg_c_8: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => last_values_sx_reg_c_7_n_0,
      Q => last_values_sx_reg_c_8_n_0
    );
last_values_sx_reg_c_9: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \last_values_sx[0]_2\,
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
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
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => tlast_sampled,
      I3 => \state__0\(2),
      O => m_axis_tlast
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      O => m_axis_tvalid
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => s_axis_tready
    );
\sub[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => aresetn,
      I1 => \state__0\(0),
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      O => sub0
    );
\sub_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub0,
      D => sub(0),
      Q => \sub_reg_n_0_[0]\,
      R => '0'
    );
\sub_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub0,
      D => sub(10),
      Q => \sub_reg_n_0_[10]\,
      R => '0'
    );
\sub_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub0,
      D => sub(11),
      Q => \sub_reg_n_0_[11]\,
      R => '0'
    );
\sub_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub0,
      D => sub(12),
      Q => \sub_reg_n_0_[12]\,
      R => '0'
    );
\sub_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub0,
      D => sub(13),
      Q => \sub_reg_n_0_[13]\,
      R => '0'
    );
\sub_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub0,
      D => sub(14),
      Q => \sub_reg_n_0_[14]\,
      R => '0'
    );
\sub_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub0,
      D => sub(15),
      Q => \sub_reg_n_0_[15]\,
      R => '0'
    );
\sub_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub0,
      D => sub(16),
      Q => \sub_reg_n_0_[16]\,
      R => '0'
    );
\sub_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub0,
      D => sub(1),
      Q => \sub_reg_n_0_[1]\,
      R => '0'
    );
\sub_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub0,
      D => sub(2),
      Q => \sub_reg_n_0_[2]\,
      R => '0'
    );
\sub_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub0,
      D => sub(3),
      Q => \sub_reg_n_0_[3]\,
      R => '0'
    );
\sub_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub0,
      D => sub(4),
      Q => \sub_reg_n_0_[4]\,
      R => '0'
    );
\sub_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub0,
      D => sub(5),
      Q => \sub_reg_n_0_[5]\,
      R => '0'
    );
\sub_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub0,
      D => sub(6),
      Q => \sub_reg_n_0_[6]\,
      R => '0'
    );
\sub_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub0,
      D => sub(7),
      Q => \sub_reg_n_0_[7]\,
      R => '0'
    );
\sub_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub0,
      D => sub(8),
      Q => \sub_reg_n_0_[8]\,
      R => '0'
    );
\sub_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sub0,
      D => sub(9),
      Q => \sub_reg_n_0_[9]\,
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
      INIT => X"FFFFFF7F00000040"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => s_axis_tvalid,
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      I4 => \state__0\(1),
      I5 => tlast_expected,
      O => tlast_expected_i_1_n_0
    );
tlast_expected_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_state[2]_i_2_n_0\,
      D => tlast_expected_i_1_n_0,
      Q => tlast_expected
    );
tlast_sampled_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => aresetn,
      I2 => tlast_expected_0,
      I3 => tlast_sampled,
      O => tlast_sampled_i_1_n_0
    );
tlast_sampled_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000001000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => s_axis_tvalid,
      I4 => s_axis_tlast,
      I5 => tlast_expected,
      O => tlast_expected_0
    );
tlast_sampled_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tlast_sampled_i_1_n_0,
      Q => tlast_sampled,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_top_00_moving_average_0_0 is
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
  attribute NotValidForBitStream of bd_top_00_moving_average_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_top_00_moving_average_0_0 : entity is "bd_top_00_moving_average_0_0,moving_average,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of bd_top_00_moving_average_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of bd_top_00_moving_average_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of bd_top_00_moving_average_0_0 : entity is "moving_average,Vivado 2019.2";
end bd_top_00_moving_average_0_0;

architecture STRUCTURE of bd_top_00_moving_average_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 225000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_parameter of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 225000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_parameter of s_axis_tvalid : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 225000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
U0: entity work.bd_top_00_moving_average_0_0_moving_average
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

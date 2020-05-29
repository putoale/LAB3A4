-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Fri May 29 21:59:57 2020
-- Host        : DESKTOP-O39JAIK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Vivado_DESD_Project/Project/Personal/Lab3_A4/LAB3A4/Sources/BD/bd_top_00/ip/bd_top_00_mute_v1_0_0/bd_top_00_mute_v1_0_0_sim_netlist.vhdl
-- Design      : bd_top_00_mute_v1_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_top_00_mute_v1_0_0_mute_v1 is
  port (
    \FSM_onehot_state_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[2]_0\ : out STD_LOGIC;
    m_mute_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_mute_tlast : out STD_LOGIC;
    mute_left : in STD_LOGIC;
    mute_right : in STD_LOGIC;
    m_mute_tready : in STD_LOGIC;
    clk : in STD_LOGIC;
    s_mute_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    aresetn : in STD_LOGIC;
    s_mute_tvalid : in STD_LOGIC;
    s_mute_tlast : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_top_00_mute_v1_0_0_mute_v1 : entity is "mute_v1";
end bd_top_00_mute_v1_0_0_mute_v1;

architecture STRUCTURE of bd_top_00_mute_v1_0_0_mute_v1 is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[2]_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal data_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_in0 : STD_LOGIC;
  signal data_out0 : STD_LOGIC;
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
  signal tlast_expected : STD_LOGIC;
  signal tlast_expected_0 : STD_LOGIC;
  signal tlast_expected_i_1_n_0 : STD_LOGIC;
  signal tlast_sampled : STD_LOGIC;
  signal tlast_sampled_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "idle:001,receive_data:010,send_data:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "idle:001,receive_data:010,send_data:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "idle:001,receive_data:010,send_data:100,";
  attribute SOFT_HLUTNM of \data_out[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_out[10]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out[11]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[12]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out[13]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[14]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[15]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_out[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out[9]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of m_mute_tlast_INST_0 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of tlast_expected_i_1 : label is "soft_lutpair10";
begin
  \FSM_onehot_state_reg[1]_0\ <= \^fsm_onehot_state_reg[1]_0\;
  \FSM_onehot_state_reg[2]_0\ <= \^fsm_onehot_state_reg[2]_0\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCC8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => m_mute_tready,
      I3 => tlast_expected_0,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => m_mute_tready,
      I3 => tlast_expected_0,
      I4 => \^fsm_onehot_state_reg[1]_0\,
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
\FSM_onehot_state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8200"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => tlast_expected,
      I2 => s_mute_tlast,
      I3 => s_mute_tvalid,
      O => tlast_expected_0
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8B8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \^fsm_onehot_state_reg[2]_0\,
      I3 => m_mute_tready,
      I4 => tlast_expected_0,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      PRE => \FSM_onehot_state[1]_i_2_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \FSM_onehot_state[1]_i_2_n_0\,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \^fsm_onehot_state_reg[1]_0\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \FSM_onehot_state[1]_i_2_n_0\,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \^fsm_onehot_state_reg[2]_0\
    );
\data_in[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => aresetn,
      I1 => s_mute_tvalid,
      I2 => \^fsm_onehot_state_reg[1]_0\,
      O => data_in0
    );
\data_in_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_in0,
      D => s_mute_tdata(0),
      Q => data_in(0),
      R => '0'
    );
\data_in_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_in0,
      D => s_mute_tdata(10),
      Q => data_in(10),
      R => '0'
    );
\data_in_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_in0,
      D => s_mute_tdata(11),
      Q => data_in(11),
      R => '0'
    );
\data_in_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_in0,
      D => s_mute_tdata(12),
      Q => data_in(12),
      R => '0'
    );
\data_in_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_in0,
      D => s_mute_tdata(13),
      Q => data_in(13),
      R => '0'
    );
\data_in_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_in0,
      D => s_mute_tdata(14),
      Q => data_in(14),
      R => '0'
    );
\data_in_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_in0,
      D => s_mute_tdata(15),
      Q => data_in(15),
      R => '0'
    );
\data_in_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_in0,
      D => s_mute_tdata(1),
      Q => data_in(1),
      R => '0'
    );
\data_in_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_in0,
      D => s_mute_tdata(2),
      Q => data_in(2),
      R => '0'
    );
\data_in_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_in0,
      D => s_mute_tdata(3),
      Q => data_in(3),
      R => '0'
    );
\data_in_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_in0,
      D => s_mute_tdata(4),
      Q => data_in(4),
      R => '0'
    );
\data_in_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_in0,
      D => s_mute_tdata(5),
      Q => data_in(5),
      R => '0'
    );
\data_in_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_in0,
      D => s_mute_tdata(6),
      Q => data_in(6),
      R => '0'
    );
\data_in_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_in0,
      D => s_mute_tdata(7),
      Q => data_in(7),
      R => '0'
    );
\data_in_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_in0,
      D => s_mute_tdata(8),
      Q => data_in(8),
      R => '0'
    );
\data_in_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_in0,
      D => s_mute_tdata(9),
      Q => data_in(9),
      R => '0'
    );
\data_out[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10B0"
    )
        port map (
      I0 => tlast_sampled,
      I1 => mute_left,
      I2 => data_in(0),
      I3 => mute_right,
      O => \data_out[0]_i_1_n_0\
    );
\data_out[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10B0"
    )
        port map (
      I0 => tlast_sampled,
      I1 => mute_left,
      I2 => data_in(10),
      I3 => mute_right,
      O => \data_out[10]_i_1_n_0\
    );
\data_out[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10B0"
    )
        port map (
      I0 => tlast_sampled,
      I1 => mute_left,
      I2 => data_in(11),
      I3 => mute_right,
      O => \data_out[11]_i_1_n_0\
    );
\data_out[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10B0"
    )
        port map (
      I0 => tlast_sampled,
      I1 => mute_left,
      I2 => data_in(12),
      I3 => mute_right,
      O => \data_out[12]_i_1_n_0\
    );
\data_out[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10B0"
    )
        port map (
      I0 => tlast_sampled,
      I1 => mute_left,
      I2 => data_in(13),
      I3 => mute_right,
      O => \data_out[13]_i_1_n_0\
    );
\data_out[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10B0"
    )
        port map (
      I0 => tlast_sampled,
      I1 => mute_left,
      I2 => data_in(14),
      I3 => mute_right,
      O => \data_out[14]_i_1_n_0\
    );
\data_out[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80080000"
    )
        port map (
      I0 => aresetn,
      I1 => s_mute_tvalid,
      I2 => s_mute_tlast,
      I3 => tlast_expected,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => data_out0
    );
\data_out[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10B0"
    )
        port map (
      I0 => tlast_sampled,
      I1 => mute_left,
      I2 => data_in(15),
      I3 => mute_right,
      O => \data_out[15]_i_2_n_0\
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10B0"
    )
        port map (
      I0 => tlast_sampled,
      I1 => mute_left,
      I2 => data_in(1),
      I3 => mute_right,
      O => \data_out[1]_i_1_n_0\
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10B0"
    )
        port map (
      I0 => tlast_sampled,
      I1 => mute_left,
      I2 => data_in(2),
      I3 => mute_right,
      O => \data_out[2]_i_1_n_0\
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10B0"
    )
        port map (
      I0 => tlast_sampled,
      I1 => mute_left,
      I2 => data_in(3),
      I3 => mute_right,
      O => \data_out[3]_i_1_n_0\
    );
\data_out[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10B0"
    )
        port map (
      I0 => tlast_sampled,
      I1 => mute_left,
      I2 => data_in(4),
      I3 => mute_right,
      O => \data_out[4]_i_1_n_0\
    );
\data_out[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10B0"
    )
        port map (
      I0 => tlast_sampled,
      I1 => mute_left,
      I2 => data_in(5),
      I3 => mute_right,
      O => \data_out[5]_i_1_n_0\
    );
\data_out[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10B0"
    )
        port map (
      I0 => tlast_sampled,
      I1 => mute_left,
      I2 => data_in(6),
      I3 => mute_right,
      O => \data_out[6]_i_1_n_0\
    );
\data_out[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10B0"
    )
        port map (
      I0 => tlast_sampled,
      I1 => mute_left,
      I2 => data_in(7),
      I3 => mute_right,
      O => \data_out[7]_i_1_n_0\
    );
\data_out[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10B0"
    )
        port map (
      I0 => tlast_sampled,
      I1 => mute_left,
      I2 => data_in(8),
      I3 => mute_right,
      O => \data_out[8]_i_1_n_0\
    );
\data_out[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10B0"
    )
        port map (
      I0 => tlast_sampled,
      I1 => mute_left,
      I2 => data_in(9),
      I3 => mute_right,
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
      Q => m_mute_tdata(0),
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
      Q => m_mute_tdata(10),
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
      Q => m_mute_tdata(11),
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
      Q => m_mute_tdata(12),
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
      Q => m_mute_tdata(13),
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
      Q => m_mute_tdata(14),
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
      Q => m_mute_tdata(15),
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
      Q => m_mute_tdata(1),
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
      Q => m_mute_tdata(2),
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
      Q => m_mute_tdata(3),
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
      Q => m_mute_tdata(4),
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
      Q => m_mute_tdata(5),
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
      Q => m_mute_tdata(6),
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
      Q => m_mute_tdata(7),
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
      Q => m_mute_tdata(8),
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
      Q => m_mute_tdata(9),
      R => '0'
    );
m_mute_tlast_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[2]_0\,
      I1 => tlast_sampled,
      O => m_mute_tlast
    );
tlast_expected_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F20"
    )
        port map (
      I0 => s_mute_tvalid,
      I1 => s_mute_tlast,
      I2 => \^fsm_onehot_state_reg[1]_0\,
      I3 => tlast_expected,
      O => tlast_expected_i_1_n_0
    );
tlast_expected_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \FSM_onehot_state[1]_i_2_n_0\,
      D => tlast_expected_i_1_n_0,
      Q => tlast_expected
    );
tlast_sampled_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFF80000000"
    )
        port map (
      I0 => aresetn,
      I1 => s_mute_tvalid,
      I2 => s_mute_tlast,
      I3 => tlast_expected,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      I5 => tlast_sampled,
      O => tlast_sampled_i_1_n_0
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
entity bd_top_00_mute_v1_0_0 is
  port (
    clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    mute_left : in STD_LOGIC;
    mute_right : in STD_LOGIC;
    s_mute_tvalid : in STD_LOGIC;
    s_mute_tready : out STD_LOGIC;
    s_mute_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_mute_tlast : in STD_LOGIC;
    m_mute_tvalid : out STD_LOGIC;
    m_mute_tready : in STD_LOGIC;
    m_mute_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_mute_tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_top_00_mute_v1_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_top_00_mute_v1_0_0 : entity is "bd_top_00_mute_v1_0_0,mute_v1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of bd_top_00_mute_v1_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of bd_top_00_mute_v1_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of bd_top_00_mute_v1_0_0 : entity is "mute_v1,Vivado 2019.2";
end bd_top_00_mute_v1_0_0;

architecture STRUCTURE of bd_top_00_mute_v1_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_mute:s_mute, ASSOCIATED_RESET aresetn, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of m_mute_tlast : signal is "xilinx.com:interface:axis:1.0 m_mute TLAST";
  attribute x_interface_info of m_mute_tready : signal is "xilinx.com:interface:axis:1.0 m_mute TREADY";
  attribute x_interface_info of m_mute_tvalid : signal is "xilinx.com:interface:axis:1.0 m_mute TVALID";
  attribute x_interface_parameter of m_mute_tvalid : signal is "XIL_INTERFACENAME m_mute, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_mute_tlast : signal is "xilinx.com:interface:axis:1.0 s_mute TLAST";
  attribute x_interface_info of s_mute_tready : signal is "xilinx.com:interface:axis:1.0 s_mute TREADY";
  attribute x_interface_info of s_mute_tvalid : signal is "xilinx.com:interface:axis:1.0 s_mute TVALID";
  attribute x_interface_parameter of s_mute_tvalid : signal is "XIL_INTERFACENAME s_mute, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_mute_tdata : signal is "xilinx.com:interface:axis:1.0 m_mute TDATA";
  attribute x_interface_info of s_mute_tdata : signal is "xilinx.com:interface:axis:1.0 s_mute TDATA";
begin
U0: entity work.bd_top_00_mute_v1_0_0_mute_v1
     port map (
      \FSM_onehot_state_reg[1]_0\ => s_mute_tready,
      \FSM_onehot_state_reg[2]_0\ => m_mute_tvalid,
      aresetn => aresetn,
      clk => clk,
      m_mute_tdata(15 downto 0) => m_mute_tdata(15 downto 0),
      m_mute_tlast => m_mute_tlast,
      m_mute_tready => m_mute_tready,
      mute_left => mute_left,
      mute_right => mute_right,
      s_mute_tdata(15 downto 0) => s_mute_tdata(15 downto 0),
      s_mute_tlast => s_mute_tlast,
      s_mute_tvalid => s_mute_tvalid
    );
end STRUCTURE;

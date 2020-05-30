-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sat May 30 20:36:52 2020
-- Host        : DESKTOP-O39JAIK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Vivado_DESD_Project/Project/Personal/Lab3_A4/LAB3A4/Sources/BD/bd_try/ip/bd_try_mute_v1_0_0/bd_try_mute_v1_0_0_sim_netlist.vhdl
-- Design      : bd_try_mute_v1_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_try_mute_v1_0_0_mute_v1 is
  port (
    \FSM_onehot_state_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[2]_0\ : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    clk : in STD_LOGIC;
    mute_left : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mute_right : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_try_mute_v1_0_0_mute_v1 : entity is "mute_v1";
end bd_try_mute_v1_0_0_mute_v1;

architecture STRUCTURE of bd_try_mute_v1_0_0_mute_v1 is
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[2]_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal data_out0 : STD_LOGIC;
  signal \data_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_3_n_0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "idle:001,receive_data:010,send_data:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "idle:001,receive_data:010,send_data:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "idle:001,receive_data:010,send_data:100,";
  attribute SOFT_HLUTNM of \data_out[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_out[10]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out[11]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out[12]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[13]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[14]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[15]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_out[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_out[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_out[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out[9]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of tlast_expected_i_1 : label is "soft_lutpair1";
begin
  \FSM_onehot_state_reg[1]_0\ <= \^fsm_onehot_state_reg[1]_0\;
  \FSM_onehot_state_reg[2]_0\ <= \^fsm_onehot_state_reg[2]_0\;
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEFFEEEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => m_axis_tready,
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
      I2 => s_axis_tlast,
      I3 => s_axis_tvalid,
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
      I3 => m_axis_tready,
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
      D => '0',
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
\data_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => mute_right,
      I2 => s_axis_tlast,
      O => \data_out[0]_i_1_n_0\
    );
\data_out[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => s_axis_tdata(10),
      I1 => mute_right,
      I2 => s_axis_tlast,
      O => \data_out[10]_i_1_n_0\
    );
\data_out[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => s_axis_tdata(11),
      I1 => mute_right,
      I2 => s_axis_tlast,
      O => \data_out[11]_i_1_n_0\
    );
\data_out[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => s_axis_tdata(12),
      I1 => mute_right,
      I2 => s_axis_tlast,
      O => \data_out[12]_i_1_n_0\
    );
\data_out[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => s_axis_tdata(13),
      I1 => mute_right,
      I2 => s_axis_tlast,
      O => \data_out[13]_i_1_n_0\
    );
\data_out[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => s_axis_tdata(14),
      I1 => mute_right,
      I2 => s_axis_tlast,
      O => \data_out[14]_i_1_n_0\
    );
\data_out[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => mute_left,
      I1 => \^fsm_onehot_state_reg[1]_0\,
      I2 => tlast_expected,
      I3 => s_axis_tlast,
      I4 => s_axis_tvalid,
      I5 => aresetn,
      O => \data_out[15]_i_1_n_0\
    );
\data_out[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80080000"
    )
        port map (
      I0 => aresetn,
      I1 => s_axis_tvalid,
      I2 => s_axis_tlast,
      I3 => tlast_expected,
      I4 => \^fsm_onehot_state_reg[1]_0\,
      O => data_out0
    );
\data_out[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => mute_right,
      I2 => s_axis_tlast,
      O => \data_out[15]_i_3_n_0\
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => mute_right,
      I2 => s_axis_tlast,
      O => \data_out[1]_i_1_n_0\
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => s_axis_tdata(2),
      I1 => mute_right,
      I2 => s_axis_tlast,
      O => \data_out[2]_i_1_n_0\
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => s_axis_tdata(3),
      I1 => mute_right,
      I2 => s_axis_tlast,
      O => \data_out[3]_i_1_n_0\
    );
\data_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => s_axis_tdata(4),
      I1 => mute_right,
      I2 => s_axis_tlast,
      O => \data_out[4]_i_1_n_0\
    );
\data_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => mute_right,
      I2 => s_axis_tlast,
      O => \data_out[5]_i_1_n_0\
    );
\data_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => s_axis_tdata(6),
      I1 => mute_right,
      I2 => s_axis_tlast,
      O => \data_out[6]_i_1_n_0\
    );
\data_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => mute_right,
      I2 => s_axis_tlast,
      O => \data_out[7]_i_1_n_0\
    );
\data_out[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => s_axis_tdata(8),
      I1 => mute_right,
      I2 => s_axis_tlast,
      O => \data_out[8]_i_1_n_0\
    );
\data_out[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => s_axis_tdata(9),
      I1 => mute_right,
      I2 => s_axis_tlast,
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
      R => \data_out[15]_i_1_n_0\
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
      R => \data_out[15]_i_1_n_0\
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
      R => \data_out[15]_i_1_n_0\
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
      R => \data_out[15]_i_1_n_0\
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
      R => \data_out[15]_i_1_n_0\
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
      R => \data_out[15]_i_1_n_0\
    );
\data_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_out0,
      D => \data_out[15]_i_3_n_0\,
      Q => m_axis_tdata(15),
      R => \data_out[15]_i_1_n_0\
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
      R => \data_out[15]_i_1_n_0\
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
      R => \data_out[15]_i_1_n_0\
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
      R => \data_out[15]_i_1_n_0\
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
      R => \data_out[15]_i_1_n_0\
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
      R => \data_out[15]_i_1_n_0\
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
      R => \data_out[15]_i_1_n_0\
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
      R => \data_out[15]_i_1_n_0\
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
      R => \data_out[15]_i_1_n_0\
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
      R => \data_out[15]_i_1_n_0\
    );
m_axis_tlast_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[2]_0\,
      I1 => tlast_sampled,
      O => m_axis_tlast
    );
tlast_expected_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F20"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => s_axis_tlast,
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
      I1 => s_axis_tvalid,
      I2 => s_axis_tlast,
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
entity bd_try_mute_v1_0_0 is
  port (
    clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    mute_left : in STD_LOGIC;
    mute_right : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_try_mute_v1_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_try_mute_v1_0_0 : entity is "bd_try_mute_v1_0_0,mute_v1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of bd_try_mute_v1_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of bd_try_mute_v1_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of bd_try_mute_v1_0_0 : entity is "mute_v1,Vivado 2019.2";
end bd_try_mute_v1_0_0;

architecture STRUCTURE of bd_try_mute_v1_0_0 is
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
U0: entity work.bd_try_mute_v1_0_0_mute_v1
     port map (
      \FSM_onehot_state_reg[1]_0\ => s_axis_tready,
      \FSM_onehot_state_reg[2]_0\ => m_axis_tvalid,
      aresetn => aresetn,
      clk => clk,
      m_axis_tdata(15 downto 0) => m_axis_tdata(15 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      mute_left => mute_left,
      mute_right => mute_right,
      s_axis_tdata(15 downto 0) => s_axis_tdata(15 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;

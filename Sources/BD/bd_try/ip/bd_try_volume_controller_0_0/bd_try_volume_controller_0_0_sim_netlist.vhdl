-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sat May 30 23:35:25 2020
-- Host        : DESKTOP-O39JAIK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Vivado_DESD_Project/Project/Personal/Lab3_A4/LAB3A4/Sources/BD/bd_try/ip/bd_try_volume_controller_0_0/bd_try_volume_controller_0_0_sim_netlist.vhdl
-- Design      : bd_try_volume_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_try_volume_controller_0_0_volume_led_ctrl_v2 is
  port (
    \FSM_sequential_state_reg[0]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]\ : out STD_LOGIC;
    data_out0_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    aresetn_0 : out STD_LOGIC;
    volume_level : out STD_LOGIC_VECTOR ( 14 downto 0 );
    volume_up : in STD_LOGIC;
    volume_down : in STD_LOGIC;
    \state__0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_state_reg[2]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[2]_1\ : in STD_LOGIC;
    \FSM_sequential_state_reg[1]\ : in STD_LOGIC;
    \data_out_reg[0]\ : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    tlast_expected : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_try_volume_controller_0_0_volume_led_ctrl_v2 : entity is "volume_led_ctrl_v2";
end bd_try_volume_controller_0_0_volume_led_ctrl_v2;

architecture STRUCTURE of bd_try_volume_controller_0_0_volume_led_ctrl_v2 is
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \^aresetn_0\ : STD_LOGIC;
  signal \data_out[15]_i_4_n_0\ : STD_LOGIC;
  signal \led_out[10]_i_1_n_0\ : STD_LOGIC;
  signal \led_out[11]_i_1_n_0\ : STD_LOGIC;
  signal \led_out[12]_i_1_n_0\ : STD_LOGIC;
  signal \led_out[13]_i_1_n_0\ : STD_LOGIC;
  signal \led_out[14]_i_1_n_0\ : STD_LOGIC;
  signal \led_out[15]_i_1_n_0\ : STD_LOGIC;
  signal \led_out[9]_i_1_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal volume : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal volume_uns_var : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \volume_uns_var__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \diff[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \diff[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \diff[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \diff[4]_i_2\ : label is "soft_lutpair1";
begin
  aresetn_0 <= \^aresetn_0\;
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFF0A00"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_state_reg[1]\,
      I2 => \state__0\(2),
      I3 => \FSM_sequential_state_reg[2]_1\,
      I4 => \state__0\(1),
      O => \FSM_sequential_state_reg[2]\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => volume(3),
      I1 => volume(1),
      I2 => volume(0),
      I3 => volume(2),
      I4 => \state__0\(0),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFF8080000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \FSM_sequential_state[2]_i_3_n_0\,
      I2 => \state__0\(1),
      I3 => \FSM_sequential_state_reg[2]_0\,
      I4 => \FSM_sequential_state_reg[2]_1\,
      I5 => \state__0\(2),
      O => \FSM_sequential_state_reg[0]\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^aresetn_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => volume(2),
      I1 => volume(1),
      I2 => volume(0),
      I3 => volume(3),
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\data_out[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4555450000000000"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \data_out_reg[0]\,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => \data_out[15]_i_4_n_0\,
      I5 => aresetn,
      O => data_out0_1
    );
\data_out[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80200000"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => tlast_expected,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => s_axis_tlast,
      I4 => \state__0\(0),
      O => \data_out[15]_i_4_n_0\
    );
\diff[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => volume(0),
      O => D(0)
    );
\diff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => volume(0),
      I1 => volume(1),
      O => D(1)
    );
\diff[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => volume(2),
      I1 => volume(0),
      I2 => volume(1),
      O => D(2)
    );
\diff[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9555"
    )
        port map (
      I0 => volume(3),
      I1 => volume(1),
      I2 => volume(0),
      I3 => volume(2),
      O => D(3)
    );
\diff[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"007F"
    )
        port map (
      I0 => volume(2),
      I1 => volume(0),
      I2 => volume(1),
      I3 => volume(3),
      O => D(4)
    );
\led_out[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA88A88088"
    )
        port map (
      I0 => volume(3),
      I1 => volume(1),
      I2 => volume_up,
      I3 => volume_down,
      I4 => volume(0),
      I5 => volume(2),
      O => \led_out[10]_i_1_n_0\
    );
\led_out[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA80880080"
    )
        port map (
      I0 => volume(3),
      I1 => volume(1),
      I2 => volume_up,
      I3 => volume_down,
      I4 => volume(0),
      I5 => volume(2),
      O => \led_out[11]_i_1_n_0\
    );
\led_out[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888A88888808888"
    )
        port map (
      I0 => volume(3),
      I1 => volume(2),
      I2 => volume(1),
      I3 => volume_up,
      I4 => volume_down,
      I5 => volume(0),
      O => \led_out[12]_i_1_n_0\
    );
\led_out[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AA88A800000000"
    )
        port map (
      I0 => volume(3),
      I1 => volume(1),
      I2 => volume_up,
      I3 => volume_down,
      I4 => volume(0),
      I5 => volume(2),
      O => \led_out[13]_i_1_n_0\
    );
\led_out[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88A8808800000000"
    )
        port map (
      I0 => volume(3),
      I1 => volume(1),
      I2 => volume_up,
      I3 => volume_down,
      I4 => volume(0),
      I5 => volume(2),
      O => \led_out[14]_i_1_n_0\
    );
\led_out[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8088008000000000"
    )
        port map (
      I0 => volume(3),
      I1 => volume(1),
      I2 => volume_up,
      I3 => volume_down,
      I4 => volume(0),
      I5 => volume(2),
      O => \led_out[15]_i_1_n_0\
    );
\led_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFAE"
    )
        port map (
      I0 => volume(2),
      I1 => volume(0),
      I2 => volume_down,
      I3 => volume_up,
      I4 => volume(1),
      I5 => volume(3),
      O => p_1_in(1)
    );
\led_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEFAEAA"
    )
        port map (
      I0 => volume(2),
      I1 => volume(0),
      I2 => volume_down,
      I3 => volume_up,
      I4 => volume(1),
      I5 => volume(3),
      O => p_1_in(2)
    );
\led_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFAEAAAA"
    )
        port map (
      I0 => volume(2),
      I1 => volume(0),
      I2 => volume_down,
      I3 => volume_up,
      I4 => volume(1),
      I5 => volume(3),
      O => p_1_in(3)
    );
\led_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFB2000"
    )
        port map (
      I0 => volume(0),
      I1 => volume_down,
      I2 => volume_up,
      I3 => volume(1),
      I4 => volume(2),
      I5 => volume(3),
      O => p_1_in(4)
    );
\led_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAA8A08"
    )
        port map (
      I0 => volume(2),
      I1 => volume(0),
      I2 => volume_down,
      I3 => volume_up,
      I4 => volume(1),
      I5 => volume(3),
      O => p_1_in(5)
    );
\led_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA8A0800"
    )
        port map (
      I0 => volume(2),
      I1 => volume(0),
      I2 => volume_down,
      I3 => volume_up,
      I4 => volume(1),
      I5 => volume(3),
      O => p_1_in(6)
    );
\led_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF8A080000"
    )
        port map (
      I0 => volume(2),
      I1 => volume(0),
      I2 => volume_down,
      I3 => volume_up,
      I4 => volume(1),
      I5 => volume(3),
      O => p_1_in(7)
    );
\led_out[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAAAAAAAAAAAA8A"
    )
        port map (
      I0 => volume(3),
      I1 => volume(0),
      I2 => volume_down,
      I3 => volume_up,
      I4 => volume(1),
      I5 => volume(2),
      O => volume_uns_var(3)
    );
\led_out[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AA88A8"
    )
        port map (
      I0 => volume(3),
      I1 => volume(1),
      I2 => volume_up,
      I3 => volume_down,
      I4 => volume(0),
      I5 => volume(2),
      O => \led_out[9]_i_1_n_0\
    );
\led_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => \led_out[10]_i_1_n_0\,
      Q => volume_level(9),
      R => '0'
    );
\led_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => \led_out[11]_i_1_n_0\,
      Q => volume_level(10),
      R => '0'
    );
\led_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => \led_out[12]_i_1_n_0\,
      Q => volume_level(11),
      R => '0'
    );
\led_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => \led_out[13]_i_1_n_0\,
      Q => volume_level(12),
      R => '0'
    );
\led_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => \led_out[14]_i_1_n_0\,
      Q => volume_level(13),
      R => '0'
    );
\led_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => \led_out[15]_i_1_n_0\,
      Q => volume_level(14),
      R => '0'
    );
\led_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(1),
      Q => volume_level(0),
      R => '0'
    );
\led_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(2),
      Q => volume_level(1),
      R => '0'
    );
\led_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(3),
      Q => volume_level(2),
      R => '0'
    );
\led_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(4),
      Q => volume_level(3),
      R => '0'
    );
\led_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(5),
      Q => volume_level(4),
      R => '0'
    );
\led_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(6),
      Q => volume_level(5),
      R => '0'
    );
\led_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(7),
      Q => volume_level(6),
      R => '0'
    );
\led_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => volume_uns_var(3),
      Q => volume_level(7),
      R => '0'
    );
\led_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => \led_out[9]_i_1_n_0\,
      Q => volume_level(8),
      R => '0'
    );
\volume_uns[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F00F0E8F0FF0F0"
    )
        port map (
      I0 => volume(3),
      I1 => volume(2),
      I2 => volume(0),
      I3 => volume(1),
      I4 => volume_up,
      I5 => volume_down,
      O => \volume_uns_var__0\(0)
    );
\volume_uns[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8FF0FF00F00E00"
    )
        port map (
      I0 => volume(3),
      I1 => volume(2),
      I2 => volume(0),
      I3 => volume_down,
      I4 => volume_up,
      I5 => volume(1),
      O => \volume_uns_var__0\(1)
    );
\volume_uns[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCBCCCCCC2CCCC"
    )
        port map (
      I0 => volume(3),
      I1 => volume(2),
      I2 => volume(1),
      I3 => volume_up,
      I4 => volume_down,
      I5 => volume(0),
      O => \volume_uns_var__0\(2)
    );
\volume_uns_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \volume_uns_var__0\(0),
      PRE => \^aresetn_0\,
      Q => volume(0)
    );
\volume_uns_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \volume_uns_var__0\(1),
      PRE => \^aresetn_0\,
      Q => volume(1)
    );
\volume_uns_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \volume_uns_var__0\(2),
      PRE => \^aresetn_0\,
      Q => volume(2)
    );
\volume_uns_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => volume_uns_var(3),
      Q => volume(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_try_volume_controller_0_0_volume_controller is
  port (
    volume_level : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tready : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    volume_up : in STD_LOGIC;
    volume_down : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_try_volume_controller_0_0_volume_controller : entity is "volume_controller";
end bd_try_volume_controller_0_0_volume_controller;

architecture STRUCTURE of bd_try_volume_controller_0_0_volume_controller is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_5_n_0\ : STD_LOGIC;
  signal bitmask : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal bitmask0 : STD_LOGIC;
  signal \bitmask[0]_i_1_n_0\ : STD_LOGIC;
  signal \bitmask[10]_i_1_n_0\ : STD_LOGIC;
  signal \bitmask[11]_i_1_n_0\ : STD_LOGIC;
  signal \bitmask[12]_i_1_n_0\ : STD_LOGIC;
  signal \bitmask[13]_i_1_n_0\ : STD_LOGIC;
  signal \bitmask[13]_i_3_n_0\ : STD_LOGIC;
  signal \bitmask[14]_i_1_n_0\ : STD_LOGIC;
  signal \bitmask[15]_i_1_n_0\ : STD_LOGIC;
  signal \bitmask[1]_i_1_n_0\ : STD_LOGIC;
  signal \bitmask[2]_i_1_n_0\ : STD_LOGIC;
  signal \bitmask[3]_i_1_n_0\ : STD_LOGIC;
  signal \bitmask[4]_i_1_n_0\ : STD_LOGIC;
  signal \bitmask[5]_i_1_n_0\ : STD_LOGIC;
  signal \bitmask[6]_i_1_n_0\ : STD_LOGIC;
  signal \bitmask[8]_i_1_n_0\ : STD_LOGIC;
  signal \bitmask[9]_i_1_n_0\ : STD_LOGIC;
  signal bitmask_and : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \bitmask_and[0]_i_1_n_0\ : STD_LOGIC;
  signal \bitmask_and[10]_i_1_n_0\ : STD_LOGIC;
  signal \bitmask_and[11]_i_1_n_0\ : STD_LOGIC;
  signal \bitmask_and[12]_i_1_n_0\ : STD_LOGIC;
  signal \bitmask_and[13]_i_1_n_0\ : STD_LOGIC;
  signal \bitmask_and[14]_i_1_n_0\ : STD_LOGIC;
  signal \bitmask_and[1]_i_1_n_0\ : STD_LOGIC;
  signal \bitmask_and[2]_i_1_n_0\ : STD_LOGIC;
  signal \bitmask_and[3]_i_1_n_0\ : STD_LOGIC;
  signal \bitmask_and[4]_i_1_n_0\ : STD_LOGIC;
  signal \bitmask_and[5]_i_1_n_0\ : STD_LOGIC;
  signal \bitmask_and[6]_i_1_n_0\ : STD_LOGIC;
  signal \bitmask_and[7]_i_1_n_0\ : STD_LOGIC;
  signal \bitmask_and[8]_i_1_n_0\ : STD_LOGIC;
  signal \bitmask_and[9]_i_1_n_0\ : STD_LOGIC;
  signal data_in0 : STD_LOGIC;
  signal \data_in_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[9]\ : STD_LOGIC;
  signal data_out0 : STD_LOGIC;
  signal data_out0_1 : STD_LOGIC;
  signal \data_out0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \data_out0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \data_out0_carry__0_n_3\ : STD_LOGIC;
  signal data_out0_carry_i_1_n_0 : STD_LOGIC;
  signal data_out0_carry_i_2_n_0 : STD_LOGIC;
  signal data_out0_carry_i_3_n_0 : STD_LOGIC;
  signal data_out0_carry_i_4_n_0 : STD_LOGIC;
  signal data_out0_carry_n_0 : STD_LOGIC;
  signal data_out0_carry_n_1 : STD_LOGIC;
  signal data_out0_carry_n_2 : STD_LOGIC;
  signal data_out0_carry_n_3 : STD_LOGIC;
  signal \data_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_4_n_0\ : STD_LOGIC;
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
  signal \data_out[13]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_10_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_11_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_12_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_9_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_5_n_0\ : STD_LOGIC;
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
  signal \data_out[9]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_5_n_0\ : STD_LOGIC;
  signal diff : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal state1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal tlast_expected : STD_LOGIC;
  signal tlast_expected_0 : STD_LOGIC;
  signal tlast_expected_i_1_n_0 : STD_LOGIC;
  signal tlast_sampled : STD_LOGIC;
  signal tlast_sampled0 : STD_LOGIC;
  signal vol_led_ctrl_n_0 : STD_LOGIC;
  signal vol_led_ctrl_n_1 : STD_LOGIC;
  signal vol_led_ctrl_n_8 : STD_LOGIC;
  signal NLW_data_out0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_data_out0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_data_out0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_5\ : label is "soft_lutpair13";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "idle:000,receive_data:001,multiply:010,send_data:100,check_of:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "idle:000,receive_data:001,multiply:010,send_data:100,check_of:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "idle:000,receive_data:001,multiply:010,send_data:100,check_of:011";
  attribute SOFT_HLUTNM of \bitmask[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bitmask[10]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bitmask[11]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \bitmask[12]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bitmask[13]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \bitmask[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \bitmask[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bitmask[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bitmask[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bitmask[5]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \bitmask[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \bitmask[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bitmask[9]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bitmask_and[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bitmask_and[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bitmask_and[11]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \bitmask_and[12]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \bitmask_and[13]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bitmask_and[14]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bitmask_and[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bitmask_and[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bitmask_and[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \bitmask_and[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bitmask_and[5]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \bitmask_and[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bitmask_and[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bitmask_and[9]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data_out[0]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \data_out[0]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[11]_i_4\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \data_out[11]_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_out[12]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_out[12]_i_4\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \data_out[13]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \data_out[13]_i_4\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \data_out[13]_i_5\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \data_out[13]_i_6\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data_out[14]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data_out[1]_i_3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \data_out[2]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \data_out[2]_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data_out[3]_i_3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \data_out[3]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_out[4]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data_out[4]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_out[5]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data_out[6]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data_out[6]_i_5\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data_out[7]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data_out[7]_i_5\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_out[7]_i_6\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data_out[8]_i_6\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of m_axis_tlast_INST_0 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of m_axis_tvalid_INST_0 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0 : label is "soft_lutpair13";
begin
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA0AF0CFFFCF"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_3_n_0\,
      I1 => m_axis_tready,
      I2 => \state__0\(2),
      I3 => \state__0\(0),
      I4 => \FSM_sequential_state[0]_i_2_n_0\,
      I5 => \state__0\(1),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => tlast_expected,
      I2 => s_axis_tvalid,
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555554"
    )
        port map (
      I0 => diff(4),
      I1 => diff(1),
      I2 => diff(2),
      I3 => diff(3),
      I4 => diff(0),
      I5 => \state__0\(0),
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAAB"
    )
        port map (
      I0 => diff(4),
      I1 => diff(1),
      I2 => diff(3),
      I3 => diff(2),
      I4 => diff(0),
      I5 => \state__0\(0),
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33333B0B"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[0]_i_2_n_0\,
      I4 => \state__0\(1),
      O => \FSM_sequential_state[2]_i_5_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => vol_led_ctrl_n_8,
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \state__0\(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => vol_led_ctrl_n_8,
      D => vol_led_ctrl_n_1,
      Q => \state__0\(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => vol_led_ctrl_n_8,
      D => vol_led_ctrl_n_0,
      Q => \state__0\(2)
    );
\bitmask[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => diff(1),
      I1 => diff(3),
      I2 => diff(2),
      I3 => diff(0),
      O => \bitmask[0]_i_1_n_0\
    );
\bitmask[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFC8"
    )
        port map (
      I0 => diff(0),
      I1 => diff(2),
      I2 => diff(1),
      I3 => diff(3),
      O => \bitmask[10]_i_1_n_0\
    );
\bitmask[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => diff(2),
      I1 => diff(3),
      O => \bitmask[11]_i_1_n_0\
    );
\bitmask[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => diff(1),
      I1 => diff(0),
      I2 => diff(2),
      I3 => diff(3),
      O => \bitmask[12]_i_1_n_0\
    );
\bitmask[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => diff(4),
      I1 => aresetn,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => \state__0\(2),
      O => \bitmask[13]_i_1_n_0\
    );
\bitmask[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => aresetn,
      O => bitmask0
    );
\bitmask[13]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => diff(3),
      I1 => diff(2),
      I2 => diff(1),
      O => \bitmask[13]_i_3_n_0\
    );
\bitmask[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FEFFFF00FE0000"
    )
        port map (
      I0 => diff(0),
      I1 => \bitmask[11]_i_1_n_0\,
      I2 => diff(1),
      I3 => diff(4),
      I4 => bitmask0,
      I5 => bitmask(14),
      O => \bitmask[14]_i_1_n_0\
    );
\bitmask[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFF00100000"
    )
        port map (
      I0 => diff(4),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => aresetn,
      I5 => bitmask(15),
      O => \bitmask[15]_i_1_n_0\
    );
\bitmask[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => diff(2),
      I1 => diff(3),
      I2 => diff(1),
      O => \bitmask[1]_i_1_n_0\
    );
\bitmask[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C080"
    )
        port map (
      I0 => diff(0),
      I1 => diff(2),
      I2 => diff(3),
      I3 => diff(1),
      O => \bitmask[2]_i_1_n_0\
    );
\bitmask[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => diff(3),
      I1 => diff(2),
      O => \bitmask[3]_i_1_n_0\
    );
\bitmask[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => diff(1),
      I1 => diff(0),
      I2 => diff(3),
      I3 => diff(2),
      O => \bitmask[4]_i_1_n_0\
    );
\bitmask[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => diff(1),
      I1 => diff(3),
      I2 => diff(2),
      O => \bitmask[5]_i_1_n_0\
    );
\bitmask[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E0"
    )
        port map (
      I0 => diff(0),
      I1 => diff(1),
      I2 => diff(3),
      I3 => diff(2),
      O => \bitmask[6]_i_1_n_0\
    );
\bitmask[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => diff(2),
      I1 => diff(1),
      I2 => diff(0),
      I3 => diff(3),
      O => \bitmask[8]_i_1_n_0\
    );
\bitmask[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => diff(2),
      I1 => diff(1),
      I2 => diff(3),
      O => \bitmask[9]_i_1_n_0\
    );
\bitmask_and[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => diff(1),
      I1 => diff(3),
      I2 => \data_in_reg_n_0_[0]\,
      I3 => diff(2),
      I4 => diff(0),
      O => \bitmask_and[0]_i_1_n_0\
    );
\bitmask_and[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00C800"
    )
        port map (
      I0 => diff(0),
      I1 => diff(2),
      I2 => diff(1),
      I3 => \data_in_reg_n_0_[10]\,
      I4 => diff(3),
      O => \bitmask_and[10]_i_1_n_0\
    );
\bitmask_and[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => diff(2),
      I1 => \data_in_reg_n_0_[11]\,
      I2 => diff(3),
      O => \bitmask_and[11]_i_1_n_0\
    );
\bitmask_and[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00F800"
    )
        port map (
      I0 => diff(1),
      I1 => diff(0),
      I2 => diff(2),
      I3 => \data_in_reg_n_0_[12]\,
      I4 => diff(3),
      O => \bitmask_and[12]_i_1_n_0\
    );
\bitmask_and[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E0"
    )
        port map (
      I0 => diff(1),
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[13]\,
      I3 => diff(3),
      O => \bitmask_and[13]_i_1_n_0\
    );
\bitmask_and[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE00"
    )
        port map (
      I0 => diff(0),
      I1 => diff(1),
      I2 => diff(2),
      I3 => \data_in_reg_n_0_[14]\,
      I4 => diff(3),
      O => \bitmask_and[14]_i_1_n_0\
    );
\bitmask_and[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => diff(2),
      I1 => \data_in_reg_n_0_[1]\,
      I2 => diff(3),
      I3 => diff(1),
      O => \bitmask_and[1]_i_1_n_0\
    );
\bitmask_and[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0008000"
    )
        port map (
      I0 => diff(0),
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[2]\,
      I3 => diff(3),
      I4 => diff(1),
      O => \bitmask_and[2]_i_1_n_0\
    );
\bitmask_and[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => diff(3),
      I1 => \data_in_reg_n_0_[3]\,
      I2 => diff(2),
      O => \bitmask_and[3]_i_1_n_0\
    );
\bitmask_and[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0008000"
    )
        port map (
      I0 => diff(1),
      I1 => diff(0),
      I2 => diff(3),
      I3 => \data_in_reg_n_0_[4]\,
      I4 => diff(2),
      O => \bitmask_and[4]_i_1_n_0\
    );
\bitmask_and[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C080"
    )
        port map (
      I0 => diff(1),
      I1 => diff(3),
      I2 => \data_in_reg_n_0_[5]\,
      I3 => diff(2),
      O => \bitmask_and[5]_i_1_n_0\
    );
\bitmask_and[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000E000"
    )
        port map (
      I0 => diff(0),
      I1 => diff(1),
      I2 => diff(3),
      I3 => \data_in_reg_n_0_[6]\,
      I4 => diff(2),
      O => \bitmask_and[6]_i_1_n_0\
    );
\bitmask_and[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_in_reg_n_0_[7]\,
      I1 => diff(3),
      O => \bitmask_and[7]_i_1_n_0\
    );
\bitmask_and[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF008000"
    )
        port map (
      I0 => diff(2),
      I1 => diff(1),
      I2 => diff(0),
      I3 => \data_in_reg_n_0_[8]\,
      I4 => diff(3),
      O => \bitmask_and[8]_i_1_n_0\
    );
\bitmask_and[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => diff(2),
      I1 => diff(1),
      I2 => \data_in_reg_n_0_[9]\,
      I3 => diff(3),
      O => \bitmask_and[9]_i_1_n_0\
    );
\bitmask_and_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => \bitmask_and[0]_i_1_n_0\,
      Q => bitmask_and(0),
      R => \bitmask[13]_i_1_n_0\
    );
\bitmask_and_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => \bitmask_and[10]_i_1_n_0\,
      Q => bitmask_and(10),
      R => \bitmask[13]_i_1_n_0\
    );
\bitmask_and_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => \bitmask_and[11]_i_1_n_0\,
      Q => bitmask_and(11),
      R => \bitmask[13]_i_1_n_0\
    );
\bitmask_and_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => \bitmask_and[12]_i_1_n_0\,
      Q => bitmask_and(12),
      R => \bitmask[13]_i_1_n_0\
    );
\bitmask_and_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => \bitmask_and[13]_i_1_n_0\,
      Q => bitmask_and(13),
      R => \bitmask[13]_i_1_n_0\
    );
\bitmask_and_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => \bitmask_and[14]_i_1_n_0\,
      Q => bitmask_and(14),
      R => \bitmask[13]_i_1_n_0\
    );
\bitmask_and_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => p_0_in,
      Q => bitmask_and(15),
      R => \bitmask[13]_i_1_n_0\
    );
\bitmask_and_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => \bitmask_and[1]_i_1_n_0\,
      Q => bitmask_and(1),
      R => \bitmask[13]_i_1_n_0\
    );
\bitmask_and_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => \bitmask_and[2]_i_1_n_0\,
      Q => bitmask_and(2),
      R => \bitmask[13]_i_1_n_0\
    );
\bitmask_and_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => \bitmask_and[3]_i_1_n_0\,
      Q => bitmask_and(3),
      R => \bitmask[13]_i_1_n_0\
    );
\bitmask_and_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => \bitmask_and[4]_i_1_n_0\,
      Q => bitmask_and(4),
      R => \bitmask[13]_i_1_n_0\
    );
\bitmask_and_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => \bitmask_and[5]_i_1_n_0\,
      Q => bitmask_and(5),
      R => \bitmask[13]_i_1_n_0\
    );
\bitmask_and_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => \bitmask_and[6]_i_1_n_0\,
      Q => bitmask_and(6),
      R => \bitmask[13]_i_1_n_0\
    );
\bitmask_and_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => \bitmask_and[7]_i_1_n_0\,
      Q => bitmask_and(7),
      R => \bitmask[13]_i_1_n_0\
    );
\bitmask_and_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => \bitmask_and[8]_i_1_n_0\,
      Q => bitmask_and(8),
      R => \bitmask[13]_i_1_n_0\
    );
\bitmask_and_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => \bitmask_and[9]_i_1_n_0\,
      Q => bitmask_and(9),
      R => \bitmask[13]_i_1_n_0\
    );
\bitmask_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => \bitmask[0]_i_1_n_0\,
      Q => bitmask(0),
      R => \bitmask[13]_i_1_n_0\
    );
\bitmask_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => \bitmask[10]_i_1_n_0\,
      Q => bitmask(10),
      R => \bitmask[13]_i_1_n_0\
    );
\bitmask_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => \bitmask[11]_i_1_n_0\,
      Q => bitmask(11),
      R => \bitmask[13]_i_1_n_0\
    );
\bitmask_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => \bitmask[12]_i_1_n_0\,
      Q => bitmask(12),
      R => \bitmask[13]_i_1_n_0\
    );
\bitmask_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => \bitmask[13]_i_3_n_0\,
      Q => bitmask(13),
      R => \bitmask[13]_i_1_n_0\
    );
\bitmask_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \bitmask[14]_i_1_n_0\,
      Q => bitmask(14),
      R => '0'
    );
\bitmask_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \bitmask[15]_i_1_n_0\,
      Q => bitmask(15),
      R => '0'
    );
\bitmask_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => \bitmask[1]_i_1_n_0\,
      Q => bitmask(1),
      R => \bitmask[13]_i_1_n_0\
    );
\bitmask_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => \bitmask[2]_i_1_n_0\,
      Q => bitmask(2),
      R => \bitmask[13]_i_1_n_0\
    );
\bitmask_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => \bitmask[3]_i_1_n_0\,
      Q => bitmask(3),
      R => \bitmask[13]_i_1_n_0\
    );
\bitmask_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => \bitmask[4]_i_1_n_0\,
      Q => bitmask(4),
      R => \bitmask[13]_i_1_n_0\
    );
\bitmask_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => \bitmask[5]_i_1_n_0\,
      Q => bitmask(5),
      R => \bitmask[13]_i_1_n_0\
    );
\bitmask_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => \bitmask[6]_i_1_n_0\,
      Q => bitmask(6),
      R => \bitmask[13]_i_1_n_0\
    );
\bitmask_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => diff(3),
      Q => bitmask(7),
      R => \bitmask[13]_i_1_n_0\
    );
\bitmask_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => \bitmask[8]_i_1_n_0\,
      Q => bitmask(8),
      R => \bitmask[13]_i_1_n_0\
    );
\bitmask_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bitmask0,
      D => \bitmask[9]_i_1_n_0\,
      Q => bitmask(9),
      R => \bitmask[13]_i_1_n_0\
    );
\data_in[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => s_axis_tvalid,
      I3 => \state__0\(1),
      I4 => aresetn,
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
      Q => p_0_in,
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
data_out0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => data_out0_carry_n_0,
      CO(2) => data_out0_carry_n_1,
      CO(1) => data_out0_carry_n_2,
      CO(0) => data_out0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_data_out0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => data_out0_carry_i_1_n_0,
      S(2) => data_out0_carry_i_2_n_0,
      S(1) => data_out0_carry_i_3_n_0,
      S(0) => data_out0_carry_i_4_n_0
    );
\data_out0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => data_out0_carry_n_0,
      CO(3 downto 2) => \NLW_data_out0_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => data_out0,
      CO(0) => \data_out0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0011",
      O(3 downto 0) => \NLW_data_out0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \data_out0_carry__0_i_1_n_0\,
      S(0) => \data_out0_carry__0_i_2_n_0\
    );
\data_out0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => bitmask(15),
      I1 => bitmask_and(15),
      O => \data_out0_carry__0_i_1_n_0\
    );
\data_out0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8008200240041001"
    )
        port map (
      I0 => bitmask_and(14),
      I1 => bitmask_and(13),
      I2 => bitmask_and(12),
      I3 => bitmask(12),
      I4 => bitmask(13),
      I5 => bitmask(14),
      O => \data_out0_carry__0_i_2_n_0\
    );
data_out0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8008200240041001"
    )
        port map (
      I0 => bitmask_and(11),
      I1 => bitmask_and(10),
      I2 => bitmask_and(9),
      I3 => bitmask(9),
      I4 => bitmask(10),
      I5 => bitmask(11),
      O => data_out0_carry_i_1_n_0
    );
data_out0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8008200240041001"
    )
        port map (
      I0 => bitmask_and(8),
      I1 => bitmask_and(7),
      I2 => bitmask_and(6),
      I3 => bitmask(6),
      I4 => bitmask(7),
      I5 => bitmask(8),
      O => data_out0_carry_i_2_n_0
    );
data_out0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8008200240041001"
    )
        port map (
      I0 => bitmask_and(5),
      I1 => bitmask_and(4),
      I2 => bitmask_and(3),
      I3 => bitmask(3),
      I4 => bitmask(4),
      I5 => bitmask(5),
      O => data_out0_carry_i_3_n_0
    );
data_out0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8008200240041001"
    )
        port map (
      I0 => bitmask(2),
      I1 => bitmask_and(1),
      I2 => bitmask_and(0),
      I3 => bitmask(0),
      I4 => bitmask(1),
      I5 => bitmask_and(2),
      O => data_out0_carry_i_4_n_0
    );
\data_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(0),
      I2 => \data_out[0]_i_2_n_0\,
      I3 => \state__0\(1),
      I4 => s_axis_tdata(0),
      O => \data_out[0]_i_1_n_0\
    );
\data_out[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \data_out[0]_i_3_n_0\,
      I1 => \data_out[1]_i_3_n_0\,
      I2 => diff(4),
      I3 => \data_out[0]_i_4_n_0\,
      I4 => diff(0),
      O => \data_out[0]_i_2_n_0\
    );
\data_out[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out[15]_i_9_n_0\,
      I1 => diff(1),
      I2 => \data_out[15]_i_10_n_0\,
      O => \data_out[0]_i_3_n_0\
    );
\data_out[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => diff(2),
      I1 => \data_in_reg_n_0_[0]\,
      I2 => diff(3),
      I3 => diff(1),
      O => \data_out[0]_i_4_n_0\
    );
\data_out[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(0),
      I2 => \data_out[10]_i_2_n_0\,
      I3 => \state__0\(1),
      I4 => s_axis_tdata(10),
      O => \data_out[10]_i_1_n_0\
    );
\data_out[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[10]_i_3_n_0\,
      I1 => \data_out[11]_i_3_n_0\,
      I2 => diff(4),
      I3 => \data_out[10]_i_4_n_0\,
      I4 => diff(0),
      I5 => \data_out[11]_i_4_n_0\,
      O => \data_out[10]_i_2_n_0\
    );
\data_out[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => \data_in_reg_n_0_[11]\,
      I1 => diff(1),
      I2 => \data_in_reg_n_0_[13]\,
      I3 => diff(3),
      I4 => diff(2),
      I5 => p_0_in,
      O => \data_out[10]_i_3_n_0\
    );
\data_out[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \data_in_reg_n_0_[3]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[7]\,
      I3 => diff(3),
      I4 => diff(1),
      I5 => \data_out[12]_i_5_n_0\,
      O => \data_out[10]_i_4_n_0\
    );
\data_out[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(0),
      I2 => \data_out[11]_i_2_n_0\,
      I3 => \state__0\(1),
      I4 => s_axis_tdata(11),
      O => \data_out[11]_i_1_n_0\
    );
\data_out[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[11]_i_3_n_0\,
      I1 => \data_out[12]_i_3_n_0\,
      I2 => diff(4),
      I3 => \data_out[11]_i_4_n_0\,
      I4 => diff(0),
      I5 => \data_out[12]_i_4_n_0\,
      O => \data_out[11]_i_2_n_0\
    );
\data_out[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => \data_in_reg_n_0_[12]\,
      I1 => diff(1),
      I2 => \data_in_reg_n_0_[14]\,
      I3 => diff(3),
      I4 => diff(2),
      I5 => p_0_in,
      O => \data_out[11]_i_3_n_0\
    );
\data_out[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out[11]_i_5_n_0\,
      I1 => diff(1),
      I2 => \data_out[13]_i_6_n_0\,
      O => \data_out[11]_i_4_n_0\
    );
\data_out[11]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \data_in_reg_n_0_[4]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[0]\,
      I3 => diff(3),
      I4 => \data_in_reg_n_0_[8]\,
      O => \data_out[11]_i_5_n_0\
    );
\data_out[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(0),
      I2 => \data_out[12]_i_2_n_0\,
      I3 => \state__0\(1),
      I4 => s_axis_tdata(12),
      O => \data_out[12]_i_1_n_0\
    );
\data_out[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[12]_i_3_n_0\,
      I1 => \data_out[13]_i_3_n_0\,
      I2 => diff(4),
      I3 => \data_out[12]_i_4_n_0\,
      I4 => diff(0),
      I5 => \data_out[13]_i_4_n_0\,
      O => \data_out[12]_i_2_n_0\
    );
\data_out[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \data_in_reg_n_0_[13]\,
      I1 => diff(3),
      I2 => diff(2),
      I3 => diff(1),
      I4 => p_0_in,
      O => \data_out[12]_i_3_n_0\
    );
\data_out[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out[12]_i_5_n_0\,
      I1 => diff(1),
      I2 => \data_out[14]_i_3_n_0\,
      O => \data_out[12]_i_4_n_0\
    );
\data_out[12]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \data_in_reg_n_0_[5]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[1]\,
      I3 => diff(3),
      I4 => \data_in_reg_n_0_[9]\,
      O => \data_out[12]_i_5_n_0\
    );
\data_out[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(0),
      I2 => \data_out[13]_i_2_n_0\,
      I3 => \state__0\(1),
      I4 => s_axis_tdata(13),
      O => \data_out[13]_i_1_n_0\
    );
\data_out[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[13]_i_3_n_0\,
      I1 => p_0_in,
      I2 => diff(4),
      I3 => \data_out[13]_i_4_n_0\,
      I4 => diff(0),
      I5 => \data_out[13]_i_5_n_0\,
      O => \data_out[13]_i_2_n_0\
    );
\data_out[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \data_in_reg_n_0_[14]\,
      I1 => diff(3),
      I2 => diff(2),
      I3 => diff(1),
      I4 => p_0_in,
      O => \data_out[13]_i_3_n_0\
    );
\data_out[13]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out[13]_i_6_n_0\,
      I1 => diff(1),
      I2 => \data_out[15]_i_7_n_0\,
      O => \data_out[13]_i_4_n_0\
    );
\data_out[13]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out[14]_i_3_n_0\,
      I1 => diff(1),
      I2 => \data_out[15]_i_9_n_0\,
      O => \data_out[13]_i_5_n_0\
    );
\data_out[13]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \data_in_reg_n_0_[6]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[2]\,
      I3 => diff(3),
      I4 => \data_in_reg_n_0_[10]\,
      O => \data_out[13]_i_6_n_0\
    );
\data_out[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6762FFFF67620000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => p_0_in,
      I2 => diff(4),
      I3 => \data_out[14]_i_2_n_0\,
      I4 => \state__0\(1),
      I5 => s_axis_tdata(14),
      O => \data_out[14]_i_1_n_0\
    );
\data_out[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[14]_i_3_n_0\,
      I1 => \data_out[15]_i_9_n_0\,
      I2 => diff(0),
      I3 => \data_out[15]_i_7_n_0\,
      I4 => diff(1),
      I5 => \data_out[15]_i_8_n_0\,
      O => \data_out[14]_i_2_n_0\
    );
\data_out[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \data_in_reg_n_0_[7]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[3]\,
      I3 => diff(3),
      I4 => \data_in_reg_n_0_[11]\,
      O => \data_out[14]_i_3_n_0\
    );
\data_out[15]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_in_reg_n_0_[3]\,
      I1 => \data_in_reg_n_0_[11]\,
      I2 => diff(2),
      I3 => \data_in_reg_n_0_[7]\,
      I4 => diff(3),
      I5 => p_0_in,
      O => \data_out[15]_i_10_n_0\
    );
\data_out[15]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => bitmask_and(13),
      I1 => bitmask_and(1),
      I2 => \data_out[15]_i_12_n_0\,
      I3 => bitmask_and(12),
      I4 => bitmask_and(10),
      O => \data_out[15]_i_11_n_0\
    );
\data_out[15]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => bitmask_and(4),
      I1 => bitmask_and(9),
      I2 => bitmask_and(6),
      I3 => bitmask_and(7),
      I4 => bitmask_and(3),
      I5 => bitmask_and(0),
      O => \data_out[15]_i_12_n_0\
    );
\data_out[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8FFFFCDC80000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => p_0_in,
      I2 => diff(4),
      I3 => \data_out[15]_i_5_n_0\,
      I4 => \state__0\(1),
      I5 => s_axis_tdata(15),
      O => \data_out[15]_i_2_n_0\
    );
\data_out[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF1FFF0FFE0EE"
    )
        port map (
      I0 => bitmask_and(14),
      I1 => bitmask_and(15),
      I2 => data_out0,
      I3 => p_0_in,
      I4 => bitmask_and(11),
      I5 => \data_out[15]_i_6_n_0\,
      O => \data_out[15]_i_3_n_0\
    );
\data_out[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[15]_i_7_n_0\,
      I1 => \data_out[15]_i_8_n_0\,
      I2 => diff(0),
      I3 => \data_out[15]_i_9_n_0\,
      I4 => diff(1),
      I5 => \data_out[15]_i_10_n_0\,
      O => \data_out[15]_i_5_n_0\
    );
\data_out[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFFFF00FEFE"
    )
        port map (
      I0 => bitmask_and(8),
      I1 => bitmask_and(5),
      I2 => bitmask_and(2),
      I3 => data_out0,
      I4 => p_0_in,
      I5 => \data_out[15]_i_11_n_0\,
      O => \data_out[15]_i_6_n_0\
    );
\data_out[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_in_reg_n_0_[0]\,
      I1 => \data_in_reg_n_0_[8]\,
      I2 => diff(2),
      I3 => \data_in_reg_n_0_[4]\,
      I4 => diff(3),
      I5 => \data_in_reg_n_0_[12]\,
      O => \data_out[15]_i_7_n_0\
    );
\data_out[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_in_reg_n_0_[2]\,
      I1 => \data_in_reg_n_0_[10]\,
      I2 => diff(2),
      I3 => \data_in_reg_n_0_[6]\,
      I4 => diff(3),
      I5 => \data_in_reg_n_0_[14]\,
      O => \data_out[15]_i_8_n_0\
    );
\data_out[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_in_reg_n_0_[1]\,
      I1 => \data_in_reg_n_0_[9]\,
      I2 => diff(2),
      I3 => \data_in_reg_n_0_[5]\,
      I4 => diff(3),
      I5 => \data_in_reg_n_0_[13]\,
      O => \data_out[15]_i_9_n_0\
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(0),
      I2 => \data_out[1]_i_2_n_0\,
      I3 => \state__0\(1),
      I4 => s_axis_tdata(1),
      O => \data_out[1]_i_1_n_0\
    );
\data_out[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out[1]_i_3_n_0\,
      I1 => diff(0),
      I2 => \data_out[2]_i_3_n_0\,
      I3 => diff(4),
      I4 => \data_out[1]_i_4_n_0\,
      O => \data_out[1]_i_2_n_0\
    );
\data_out[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out[15]_i_8_n_0\,
      I1 => diff(1),
      I2 => \data_out[3]_i_5_n_0\,
      O => \data_out[1]_i_3_n_0\
    );
\data_out[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => \data_in_reg_n_0_[0]\,
      I1 => diff(0),
      I2 => diff(2),
      I3 => \data_in_reg_n_0_[1]\,
      I4 => diff(3),
      I5 => diff(1),
      O => \data_out[1]_i_4_n_0\
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(0),
      I2 => \data_out[2]_i_2_n_0\,
      I3 => \state__0\(1),
      I4 => s_axis_tdata(2),
      O => \data_out[2]_i_1_n_0\
    );
\data_out[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[2]_i_3_n_0\,
      I1 => \data_out[3]_i_3_n_0\,
      I2 => diff(4),
      I3 => \data_out[2]_i_4_n_0\,
      I4 => diff(0),
      I5 => \data_out[3]_i_4_n_0\,
      O => \data_out[2]_i_2_n_0\
    );
\data_out[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out[15]_i_10_n_0\,
      I1 => diff(1),
      I2 => \data_out[4]_i_5_n_0\,
      O => \data_out[2]_i_3_n_0\
    );
\data_out[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => diff(2),
      I1 => \data_in_reg_n_0_[1]\,
      I2 => diff(3),
      I3 => diff(1),
      O => \data_out[2]_i_4_n_0\
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(0),
      I2 => \data_out[3]_i_2_n_0\,
      I3 => \state__0\(1),
      I4 => s_axis_tdata(3),
      O => \data_out[3]_i_1_n_0\
    );
\data_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[3]_i_3_n_0\,
      I1 => \data_out[4]_i_3_n_0\,
      I2 => diff(4),
      I3 => \data_out[3]_i_4_n_0\,
      I4 => diff(0),
      I5 => \data_out[4]_i_4_n_0\,
      O => \data_out[3]_i_2_n_0\
    );
\data_out[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out[3]_i_5_n_0\,
      I1 => diff(1),
      I2 => \data_out[5]_i_5_n_0\,
      O => \data_out[3]_i_3_n_0\
    );
\data_out[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \data_in_reg_n_0_[0]\,
      I1 => diff(1),
      I2 => diff(3),
      I3 => \data_in_reg_n_0_[2]\,
      I4 => diff(2),
      O => \data_out[3]_i_4_n_0\
    );
\data_out[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_in_reg_n_0_[4]\,
      I1 => \data_in_reg_n_0_[12]\,
      I2 => diff(2),
      I3 => \data_in_reg_n_0_[8]\,
      I4 => diff(3),
      I5 => p_0_in,
      O => \data_out[3]_i_5_n_0\
    );
\data_out[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(0),
      I2 => \data_out[4]_i_2_n_0\,
      I3 => \state__0\(1),
      I4 => s_axis_tdata(4),
      O => \data_out[4]_i_1_n_0\
    );
\data_out[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[4]_i_3_n_0\,
      I1 => \data_out[5]_i_3_n_0\,
      I2 => diff(4),
      I3 => \data_out[4]_i_4_n_0\,
      I4 => diff(0),
      I5 => \data_out[5]_i_4_n_0\,
      O => \data_out[4]_i_2_n_0\
    );
\data_out[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out[4]_i_5_n_0\,
      I1 => diff(1),
      I2 => \data_out[6]_i_5_n_0\,
      O => \data_out[4]_i_3_n_0\
    );
\data_out[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \data_in_reg_n_0_[1]\,
      I1 => diff(1),
      I2 => diff(3),
      I3 => \data_in_reg_n_0_[3]\,
      I4 => diff(2),
      O => \data_out[4]_i_4_n_0\
    );
\data_out[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_in_reg_n_0_[5]\,
      I1 => \data_in_reg_n_0_[13]\,
      I2 => diff(2),
      I3 => \data_in_reg_n_0_[9]\,
      I4 => diff(3),
      I5 => p_0_in,
      O => \data_out[4]_i_5_n_0\
    );
\data_out[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(0),
      I2 => \data_out[5]_i_2_n_0\,
      I3 => \state__0\(1),
      I4 => s_axis_tdata(5),
      O => \data_out[5]_i_1_n_0\
    );
\data_out[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[5]_i_3_n_0\,
      I1 => \data_out[6]_i_3_n_0\,
      I2 => diff(4),
      I3 => \data_out[5]_i_4_n_0\,
      I4 => diff(0),
      I5 => \data_out[6]_i_4_n_0\,
      O => \data_out[5]_i_2_n_0\
    );
\data_out[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out[5]_i_5_n_0\,
      I1 => diff(1),
      I2 => \data_out[7]_i_5_n_0\,
      O => \data_out[5]_i_3_n_0\
    );
\data_out[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \data_in_reg_n_0_[2]\,
      I1 => diff(1),
      I2 => \data_in_reg_n_0_[0]\,
      I3 => diff(2),
      I4 => \data_in_reg_n_0_[4]\,
      I5 => diff(3),
      O => \data_out[5]_i_4_n_0\
    );
\data_out[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_in_reg_n_0_[6]\,
      I1 => \data_in_reg_n_0_[14]\,
      I2 => diff(2),
      I3 => \data_in_reg_n_0_[10]\,
      I4 => diff(3),
      I5 => p_0_in,
      O => \data_out[5]_i_5_n_0\
    );
\data_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(0),
      I2 => \data_out[6]_i_2_n_0\,
      I3 => \state__0\(1),
      I4 => s_axis_tdata(6),
      O => \data_out[6]_i_1_n_0\
    );
\data_out[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[6]_i_3_n_0\,
      I1 => \data_out[7]_i_3_n_0\,
      I2 => diff(4),
      I3 => \data_out[6]_i_4_n_0\,
      I4 => diff(0),
      I5 => \data_out[7]_i_4_n_0\,
      O => \data_out[6]_i_2_n_0\
    );
\data_out[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out[6]_i_5_n_0\,
      I1 => diff(1),
      I2 => \data_out[8]_i_5_n_0\,
      O => \data_out[6]_i_3_n_0\
    );
\data_out[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \data_in_reg_n_0_[3]\,
      I1 => diff(1),
      I2 => \data_in_reg_n_0_[1]\,
      I3 => diff(2),
      I4 => \data_in_reg_n_0_[5]\,
      I5 => diff(3),
      O => \data_out[6]_i_4_n_0\
    );
\data_out[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_in_reg_n_0_[7]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[11]\,
      I3 => diff(3),
      I4 => p_0_in,
      O => \data_out[6]_i_5_n_0\
    );
\data_out[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(0),
      I2 => \data_out[7]_i_2_n_0\,
      I3 => \state__0\(1),
      I4 => s_axis_tdata(7),
      O => \data_out[7]_i_1_n_0\
    );
\data_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[7]_i_3_n_0\,
      I1 => \data_out[8]_i_3_n_0\,
      I2 => diff(4),
      I3 => \data_out[7]_i_4_n_0\,
      I4 => diff(0),
      I5 => \data_out[8]_i_4_n_0\,
      O => \data_out[7]_i_2_n_0\
    );
\data_out[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out[7]_i_5_n_0\,
      I1 => diff(1),
      I2 => \data_out[9]_i_5_n_0\,
      O => \data_out[7]_i_3_n_0\
    );
\data_out[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \data_in_reg_n_0_[0]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[4]\,
      I3 => diff(3),
      I4 => diff(1),
      I5 => \data_out[7]_i_6_n_0\,
      O => \data_out[7]_i_4_n_0\
    );
\data_out[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_in_reg_n_0_[8]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[12]\,
      I3 => diff(3),
      I4 => p_0_in,
      O => \data_out[7]_i_5_n_0\
    );
\data_out[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \data_in_reg_n_0_[2]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[6]\,
      I3 => diff(3),
      O => \data_out[7]_i_6_n_0\
    );
\data_out[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(0),
      I2 => \data_out[8]_i_2_n_0\,
      I3 => \state__0\(1),
      I4 => s_axis_tdata(8),
      O => \data_out[8]_i_1_n_0\
    );
\data_out[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[8]_i_3_n_0\,
      I1 => \data_out[9]_i_3_n_0\,
      I2 => diff(4),
      I3 => \data_out[8]_i_4_n_0\,
      I4 => diff(0),
      I5 => \data_out[9]_i_4_n_0\,
      O => \data_out[8]_i_2_n_0\
    );
\data_out[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \data_out[8]_i_5_n_0\,
      I1 => diff(1),
      I2 => \data_in_reg_n_0_[11]\,
      I3 => diff(3),
      I4 => diff(2),
      I5 => p_0_in,
      O => \data_out[8]_i_3_n_0\
    );
\data_out[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \data_in_reg_n_0_[1]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[5]\,
      I3 => diff(3),
      I4 => diff(1),
      I5 => \data_out[8]_i_6_n_0\,
      O => \data_out[8]_i_4_n_0\
    );
\data_out[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_in_reg_n_0_[9]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[13]\,
      I3 => diff(3),
      I4 => p_0_in,
      O => \data_out[8]_i_5_n_0\
    );
\data_out[8]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \data_in_reg_n_0_[3]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[7]\,
      I3 => diff(3),
      O => \data_out[8]_i_6_n_0\
    );
\data_out[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(0),
      I2 => \data_out[9]_i_2_n_0\,
      I3 => \state__0\(1),
      I4 => s_axis_tdata(9),
      O => \data_out[9]_i_1_n_0\
    );
\data_out[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out[9]_i_3_n_0\,
      I1 => \data_out[10]_i_3_n_0\,
      I2 => diff(4),
      I3 => \data_out[9]_i_4_n_0\,
      I4 => diff(0),
      I5 => \data_out[10]_i_4_n_0\,
      O => \data_out[9]_i_2_n_0\
    );
\data_out[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \data_out[9]_i_5_n_0\,
      I1 => diff(1),
      I2 => \data_in_reg_n_0_[12]\,
      I3 => diff(3),
      I4 => diff(2),
      I5 => p_0_in,
      O => \data_out[9]_i_3_n_0\
    );
\data_out[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \data_in_reg_n_0_[2]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[6]\,
      I3 => diff(3),
      I4 => diff(1),
      I5 => \data_out[11]_i_5_n_0\,
      O => \data_out[9]_i_4_n_0\
    );
\data_out[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_in_reg_n_0_[10]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[14]\,
      I3 => diff(3),
      I4 => p_0_in,
      O => \data_out[9]_i_5_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out0_1,
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
      CE => data_out0_1,
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
      CE => data_out0_1,
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
      CE => data_out0_1,
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
      CE => data_out0_1,
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
      CE => data_out0_1,
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
      CE => data_out0_1,
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
      CE => data_out0_1,
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
      CE => data_out0_1,
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
      CE => data_out0_1,
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
      CE => data_out0_1,
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
      CE => data_out0_1,
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
      CE => data_out0_1,
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
      CE => data_out0_1,
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
      CE => data_out0_1,
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
      CE => data_out0_1,
      D => \data_out[9]_i_1_n_0\,
      Q => m_axis_tdata(9),
      R => '0'
    );
\diff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlast_expected_0,
      I1 => aresetn,
      O => tlast_sampled0
    );
\diff[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040040000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => s_axis_tvalid,
      I2 => tlast_expected,
      I3 => s_axis_tlast,
      I4 => \state__0\(0),
      I5 => \state__0\(2),
      O => tlast_expected_0
    );
\diff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => tlast_sampled0,
      D => state1(0),
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
      D => state1(1),
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
      D => state1(2),
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
      D => state1(3),
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
      D => state1(4),
      Q => diff(4),
      R => '0'
    );
m_axis_tlast_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => tlast_sampled,
      O => m_axis_tlast
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \state__0\(2),
      O => m_axis_tvalid
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \state__0\(2),
      O => s_axis_tready
    );
tlast_expected_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00000400"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => s_axis_tlast,
      I3 => s_axis_tvalid,
      I4 => \state__0\(1),
      I5 => tlast_expected,
      O => tlast_expected_i_1_n_0
    );
tlast_expected_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => vol_led_ctrl_n_8,
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
vol_led_ctrl: entity work.bd_try_volume_controller_0_0_volume_led_ctrl_v2
     port map (
      D(4 downto 0) => state1(4 downto 0),
      \FSM_sequential_state_reg[0]\ => vol_led_ctrl_n_0,
      \FSM_sequential_state_reg[1]\ => \FSM_sequential_state[1]_i_3_n_0\,
      \FSM_sequential_state_reg[2]\ => vol_led_ctrl_n_1,
      \FSM_sequential_state_reg[2]_0\ => \FSM_sequential_state[2]_i_4_n_0\,
      \FSM_sequential_state_reg[2]_1\ => \FSM_sequential_state[2]_i_5_n_0\,
      aclk => aclk,
      aresetn => aresetn,
      aresetn_0 => vol_led_ctrl_n_8,
      data_out0_1 => data_out0_1,
      \data_out_reg[0]\ => \data_out[15]_i_3_n_0\,
      s_axis_tlast => s_axis_tlast,
      s_axis_tvalid => s_axis_tvalid,
      \state__0\(2 downto 0) => \state__0\(2 downto 0),
      tlast_expected => tlast_expected,
      volume_down => volume_down,
      volume_level(14 downto 0) => volume_level(14 downto 0),
      volume_up => volume_up
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_try_volume_controller_0_0 is
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
  attribute NotValidForBitStream of bd_try_volume_controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_try_volume_controller_0_0 : entity is "bd_try_volume_controller_0_0,volume_controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of bd_try_volume_controller_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of bd_try_volume_controller_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of bd_try_volume_controller_0_0 : entity is "volume_controller,Vivado 2019.2";
end bd_try_volume_controller_0_0;

architecture STRUCTURE of bd_try_volume_controller_0_0 is
  signal \<const1>\ : STD_LOGIC;
  signal \^volume_level\ : STD_LOGIC_VECTOR ( 15 downto 1 );
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 225000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
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
  volume_level(15 downto 1) <= \^volume_level\(15 downto 1);
  volume_level(0) <= \<const1>\;
U0: entity work.bd_try_volume_controller_0_0_volume_controller
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
      volume_level(14 downto 0) => \^volume_level\(15 downto 1),
      volume_up => volume_up
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;

-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sat May 23 21:04:45 2020
-- Host        : DESKTOP-O39JAIK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Vivado_DESD_Project/Project/Personal/Lab3_A4/LAB3A4/Sources/BD/bd_mov_av_v2/ip/bd_mov_av_v2_volume_controller_0_0/bd_mov_av_v2_volume_controller_0_0_sim_netlist.vhdl
-- Design      : bd_mov_av_v2_volume_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_mov_av_v2_volume_controller_0_0_volume_led_ctrl is
  port (
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    aresetn_0 : out STD_LOGIC;
    volume_level : out STD_LOGIC_VECTOR ( 14 downto 0 );
    volume_down : in STD_LOGIC;
    volume_up : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_mov_av_v2_volume_controller_0_0_volume_led_ctrl : entity is "volume_led_ctrl";
end bd_mov_av_v2_volume_controller_0_0_volume_led_ctrl;

architecture STRUCTURE of bd_mov_av_v2_volume_controller_0_0_volume_led_ctrl is
  signal \^d\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal L : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^aresetn_0\ : STD_LOGIC;
  signal diff2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal diff20 : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \led_out[15]_i_10_n_0\ : STD_LOGIC;
  signal \led_out[15]_i_11_n_0\ : STD_LOGIC;
  signal \led_out[15]_i_12_n_0\ : STD_LOGIC;
  signal \led_out[15]_i_13_n_0\ : STD_LOGIC;
  signal \led_out[15]_i_7_n_0\ : STD_LOGIC;
  signal \led_out[15]_i_8_n_0\ : STD_LOGIC;
  signal \led_out[15]_i_9_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal volume : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \volume__0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \^volume_level\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \volume_uns[1]_i_1_n_0\ : STD_LOGIC;
  signal \volume_uns[2]_i_1_n_0\ : STD_LOGIC;
  signal \volume_uns[3]_i_1_n_0\ : STD_LOGIC;
  signal \volume_uns[3]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \diff2[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \diff2[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \diff2[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \diff2[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \diff2[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \diff2[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \diff2[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \diff[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \diff[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \diff[4]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \led_out[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \led_out[15]_i_11\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \led_out[15]_i_12\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \led_out[15]_i_13\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \led_out[15]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \led_out[4]_i_1\ : label is "soft_lutpair6";
begin
  D(4 downto 0) <= \^d\(4 downto 0);
  aresetn_0 <= \^aresetn_0\;
  volume_level(14 downto 0) <= \^volume_level\(14 downto 0);
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^aresetn_0\
    );
\diff2[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => volume(0),
      I1 => \volume__0\(1),
      O => \^d\(1)
    );
\diff2[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => \volume__0\(2),
      I1 => volume(0),
      I2 => \volume__0\(1),
      O => diff20(2)
    );
\diff2[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5556"
    )
        port map (
      I0 => \volume__0\(3),
      I1 => volume(0),
      I2 => \volume__0\(1),
      I3 => \volume__0\(2),
      O => diff20(3)
    );
\diff2[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \volume__0\(3),
      I1 => \volume__0\(2),
      I2 => \volume__0\(1),
      I3 => volume(0),
      O => diff20(4)
    );
\diff2[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F00E"
    )
        port map (
      I0 => \volume__0\(3),
      I1 => \volume__0\(2),
      I2 => volume(0),
      I3 => \volume__0\(1),
      O => diff20(5)
    );
\diff2[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC02"
    )
        port map (
      I0 => \volume__0\(3),
      I1 => volume(0),
      I2 => \volume__0\(1),
      I3 => \volume__0\(2),
      O => diff20(6)
    );
\diff2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \volume__0\(2),
      I1 => \volume__0\(1),
      I2 => volume(0),
      I3 => \volume__0\(3),
      O => diff20(7)
    );
\diff2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => volume(0),
      Q => diff2(0),
      R => '0'
    );
\diff2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => \^d\(1),
      Q => diff2(1),
      R => '0'
    );
\diff2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => diff20(2),
      Q => diff2(2),
      R => '0'
    );
\diff2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => diff20(3),
      Q => diff2(3),
      R => '0'
    );
\diff2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => diff20(4),
      Q => diff2(4),
      R => '0'
    );
\diff2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => diff20(5),
      Q => diff2(5),
      R => '0'
    );
\diff2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => diff20(6),
      Q => diff2(6),
      R => '0'
    );
\diff2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => diff20(7),
      Q => diff2(7),
      R => '0'
    );
\diff[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => volume(0),
      O => \^d\(0)
    );
\diff[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \volume__0\(2),
      I1 => \volume__0\(1),
      I2 => volume(0),
      O => \^d\(2)
    );
\diff[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9555"
    )
        port map (
      I0 => \volume__0\(3),
      I1 => volume(0),
      I2 => \volume__0\(1),
      I3 => \volume__0\(2),
      O => \^d\(3)
    );
\diff[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"007F"
    )
        port map (
      I0 => \volume__0\(2),
      I1 => \volume__0\(1),
      I2 => volume(0),
      I3 => \volume__0\(3),
      O => \^d\(4)
    );
\led_out[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA8A8A8"
    )
        port map (
      I0 => L(3),
      I1 => L(1),
      I2 => L(2),
      I3 => L(4),
      I4 => \^volume_level\(9),
      O => p_1_in(10)
    );
\led_out[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F8F8888888"
    )
        port map (
      I0 => L(4),
      I1 => \^volume_level\(10),
      I2 => L(3),
      I3 => L(1),
      I4 => L(0),
      I5 => L(2),
      O => p_1_in(11)
    );
\led_out[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAC0"
    )
        port map (
      I0 => L(4),
      I1 => L(2),
      I2 => L(3),
      I3 => \^volume_level\(11),
      O => p_1_in(12)
    );
\led_out[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEAAAAACCC00000"
    )
        port map (
      I0 => L(4),
      I1 => L(2),
      I2 => L(0),
      I3 => L(1),
      I4 => L(3),
      I5 => \^volume_level\(12),
      O => p_1_in(13)
    );
\led_out[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAC000"
    )
        port map (
      I0 => L(4),
      I1 => L(2),
      I2 => L(1),
      I3 => L(3),
      I4 => \^volume_level\(13),
      O => p_1_in(14)
    );
\led_out[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800080008000"
    )
        port map (
      I0 => L(3),
      I1 => L(1),
      I2 => L(0),
      I3 => L(2),
      I4 => L(4),
      I5 => \^volume_level\(14),
      O => p_1_in(15)
    );
\led_out[15]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE1FF87F01E00780"
    )
        port map (
      I0 => L(2),
      I1 => diff2(1),
      I2 => L(3),
      I3 => diff2(3),
      I4 => diff2(2),
      I5 => \led_out[15]_i_13_n_0\,
      O => \led_out[15]_i_10_n_0\
    );
\led_out[15]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => diff2(2),
      I1 => diff2(1),
      I2 => L(2),
      O => \led_out[15]_i_11_n_0\
    );
\led_out[15]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => diff2(3),
      I1 => L(3),
      I2 => diff2(1),
      I3 => diff2(2),
      I4 => L(2),
      O => \led_out[15]_i_12_n_0\
    );
\led_out[15]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9555AAAA"
    )
        port map (
      I0 => diff2(3),
      I1 => diff2(6),
      I2 => diff2(7),
      I3 => diff2(5),
      I4 => diff2(4),
      O => \led_out[15]_i_13_n_0\
    );
\led_out[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA2AAA"
    )
        port map (
      I0 => diff2(7),
      I1 => diff2(4),
      I2 => diff2(6),
      I3 => diff2(5),
      I4 => diff2(3),
      O => L(3)
    );
\led_out[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAEAAAAAA8AAAA"
    )
        port map (
      I0 => \led_out[15]_i_7_n_0\,
      I1 => L(2),
      I2 => \led_out[15]_i_8_n_0\,
      I3 => diff2(1),
      I4 => diff2(2),
      I5 => \led_out[15]_i_9_n_0\,
      O => L(1)
    );
\led_out[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAAAAAAAAAAAA8A"
    )
        port map (
      I0 => \led_out[15]_i_10_n_0\,
      I1 => diff2(0),
      I2 => diff2(1),
      I3 => L(1),
      I4 => \led_out[15]_i_11_n_0\,
      I5 => \led_out[15]_i_12_n_0\,
      O => L(0)
    );
\led_out[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"36CCCCCC24CCCCCC"
    )
        port map (
      I0 => diff2(3),
      I1 => diff2(6),
      I2 => diff2(7),
      I3 => diff2(5),
      I4 => diff2(4),
      I5 => diff2(2),
      O => L(2)
    );
\led_out[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => diff2(4),
      I1 => diff2(5),
      I2 => diff2(7),
      I3 => diff2(6),
      O => L(4)
    );
\led_out[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3236CCCC2C6CCCCC"
    )
        port map (
      I0 => diff2(2),
      I1 => diff2(5),
      I2 => diff2(7),
      I3 => diff2(6),
      I4 => diff2(4),
      I5 => diff2(3),
      O => \led_out[15]_i_7_n_0\
    );
\led_out[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"69999999A6666666"
    )
        port map (
      I0 => diff2(2),
      I1 => diff2(3),
      I2 => diff2(5),
      I3 => diff2(6),
      I4 => diff2(4),
      I5 => diff2(7),
      O => \led_out[15]_i_8_n_0\
    );
\led_out[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8111EEEE37778888"
    )
        port map (
      I0 => diff2(2),
      I1 => diff2(3),
      I2 => diff2(5),
      I3 => diff2(6),
      I4 => diff2(4),
      I5 => diff2(7),
      O => \led_out[15]_i_9_n_0\
    );
\led_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => L(4),
      I1 => \^volume_level\(0),
      I2 => L(2),
      I3 => L(0),
      I4 => L(1),
      I5 => L(3),
      O => p_1_in(1)
    );
\led_out[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
        port map (
      I0 => L(4),
      I1 => \^volume_level\(1),
      I2 => L(2),
      I3 => L(1),
      I4 => L(3),
      O => p_1_in(2)
    );
\led_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFECFFECFFEC"
    )
        port map (
      I0 => \^volume_level\(2),
      I1 => L(3),
      I2 => L(4),
      I3 => L(2),
      I4 => L(0),
      I5 => L(1),
      O => p_1_in(3)
    );
\led_out[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \^volume_level\(3),
      I1 => L(4),
      I2 => L(3),
      I3 => L(2),
      O => p_1_in(4)
    );
\led_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEEAFFFFCCC0"
    )
        port map (
      I0 => L(4),
      I1 => L(2),
      I2 => L(0),
      I3 => L(1),
      I4 => L(3),
      I5 => \^volume_level\(4),
      O => p_1_in(5)
    );
\led_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAFFC0"
    )
        port map (
      I0 => L(4),
      I1 => L(2),
      I2 => L(1),
      I3 => L(3),
      I4 => \^volume_level\(5),
      O => p_1_in(6)
    );
\led_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8888888"
    )
        port map (
      I0 => L(4),
      I1 => \^volume_level\(6),
      I2 => L(2),
      I3 => L(0),
      I4 => L(1),
      I5 => L(3),
      O => p_1_in(7)
    );
\led_out[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^volume_level\(7),
      I1 => L(4),
      I2 => L(3),
      O => p_1_in(8)
    );
\led_out[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAA8AAA8AAA8"
    )
        port map (
      I0 => L(3),
      I1 => L(1),
      I2 => L(0),
      I3 => L(2),
      I4 => L(4),
      I5 => \^volume_level\(8),
      O => p_1_in(9)
    );
\led_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(10),
      Q => \^volume_level\(9),
      R => '0'
    );
\led_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(11),
      Q => \^volume_level\(10),
      R => '0'
    );
\led_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(12),
      Q => \^volume_level\(11),
      R => '0'
    );
\led_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(13),
      Q => \^volume_level\(12),
      R => '0'
    );
\led_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(14),
      Q => \^volume_level\(13),
      R => '0'
    );
\led_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(15),
      Q => \^volume_level\(14),
      R => '0'
    );
\led_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(1),
      Q => \^volume_level\(0),
      R => '0'
    );
\led_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(2),
      Q => \^volume_level\(1),
      R => '0'
    );
\led_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(3),
      Q => \^volume_level\(2),
      R => '0'
    );
\led_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(4),
      Q => \^volume_level\(3),
      R => '0'
    );
\led_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(5),
      Q => \^volume_level\(4),
      R => '0'
    );
\led_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(6),
      Q => \^volume_level\(5),
      R => '0'
    );
\led_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(7),
      Q => \^volume_level\(6),
      R => '0'
    );
\led_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(8),
      Q => \^volume_level\(7),
      R => '0'
    );
\led_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(9),
      Q => \^volume_level\(8),
      R => '0'
    );
\volume_uns[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFF55005500AAFF"
    )
        port map (
      I0 => volume_down,
      I1 => \volume__0\(2),
      I2 => \volume__0\(3),
      I3 => volume_up,
      I4 => volume(0),
      I5 => \volume__0\(1),
      O => \volume_uns[1]_i_1_n_0\
    );
\volume_uns[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF50FF00FF0050AF"
    )
        port map (
      I0 => volume_down,
      I1 => \volume__0\(3),
      I2 => volume_up,
      I3 => \volume__0\(2),
      I4 => \volume__0\(1),
      I5 => volume(0),
      O => \volume_uns[2]_i_1_n_0\
    );
\volume_uns[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555542AAAAAAA"
    )
        port map (
      I0 => volume_up,
      I1 => \volume__0\(3),
      I2 => volume(0),
      I3 => \volume__0\(1),
      I4 => \volume__0\(2),
      I5 => volume_down,
      O => \volume_uns[3]_i_1_n_0\
    );
\volume_uns[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F0F0F0F0F0F04B"
    )
        port map (
      I0 => volume_down,
      I1 => volume_up,
      I2 => \volume__0\(3),
      I3 => \volume__0\(1),
      I4 => volume(0),
      I5 => \volume__0\(2),
      O => \volume_uns[3]_i_2_n_0\
    );
\volume_uns_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \volume_uns[3]_i_1_n_0\,
      D => \^d\(0),
      PRE => \^aresetn_0\,
      Q => volume(0)
    );
\volume_uns_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \volume_uns[3]_i_1_n_0\,
      D => \volume_uns[1]_i_1_n_0\,
      PRE => \^aresetn_0\,
      Q => \volume__0\(1)
    );
\volume_uns_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \volume_uns[3]_i_1_n_0\,
      D => \volume_uns[2]_i_1_n_0\,
      PRE => \^aresetn_0\,
      Q => \volume__0\(2)
    );
\volume_uns_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \volume_uns[3]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \volume_uns[3]_i_2_n_0\,
      Q => \volume__0\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_mov_av_v2_volume_controller_0_0_volume_controller is
  port (
    volume_level : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tready : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    volume_down : in STD_LOGIC;
    volume_up : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_mov_av_v2_volume_controller_0_0_volume_controller : entity is "volume_controller";
end bd_mov_av_v2_volume_controller_0_0_volume_controller;

architecture STRUCTURE of bd_mov_av_v2_volume_controller_0_0_volume_controller is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal SHIFT_LEFT : STD_LOGIC_VECTOR ( 15 downto 0 );
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
  signal \data_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_3_n_0\ : STD_LOGIC;
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
  signal \data_out[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[8]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[8]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[8]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_4_n_0\ : STD_LOGIC;
  signal data_out_temp : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_out_temp0 : STD_LOGIC;
  signal \data_out_temp[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_temp[10]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_temp[10]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_temp[11]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_temp[11]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_temp[11]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_temp[12]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_temp[12]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_temp[12]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_temp[12]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_temp[13]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_temp[13]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_temp[13]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_temp[14]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_temp[14]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_temp[14]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_temp[14]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_temp[15]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_temp[15]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_temp[15]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_temp[15]_i_6_n_0\ : STD_LOGIC;
  signal \data_out_temp[15]_i_7_n_0\ : STD_LOGIC;
  signal \data_out_temp[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_temp[1]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_temp[2]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_temp[2]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_temp[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_temp[3]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_temp[3]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_temp[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_temp[4]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_temp[4]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_temp[5]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_temp[5]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_temp[5]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_temp[6]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_temp[6]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_temp[6]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_temp[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_temp[7]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_temp[7]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_temp[7]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_temp[8]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_temp[8]_i_3_n_0\ : STD_LOGIC;
  signal \data_out_temp[8]_i_4_n_0\ : STD_LOGIC;
  signal \data_out_temp[8]_i_5_n_0\ : STD_LOGIC;
  signal \data_out_temp[9]_i_2_n_0\ : STD_LOGIC;
  signal \data_out_temp[9]_i_3_n_0\ : STD_LOGIC;
  signal diff : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal diff00_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_0_in0 : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal tlast_expected : STD_LOGIC;
  signal tlast_expected_0 : STD_LOGIC;
  signal tlast_expected_i_1_n_0 : STD_LOGIC;
  signal tlast_sampled : STD_LOGIC;
  signal tlast_sampled0 : STD_LOGIC;
  signal vol_led_ctrl_n_5 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair17";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "idle:000,receive_data:001,multiply:010,compute_out:011,send_data:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "idle:000,receive_data:001,multiply:010,compute_out:011,send_data:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "idle:000,receive_data:001,multiply:010,compute_out:011,send_data:100,";
  attribute SOFT_HLUTNM of \data_out[12]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_out[13]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_out[1]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data_out[2]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data_out[3]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data_out[4]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data_out[5]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data_out[6]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_out[7]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data_out_temp[0]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_out_temp[11]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data_out_temp[12]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_out_temp[12]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_out_temp[12]_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data_out_temp[13]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \data_out_temp[13]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_out_temp[14]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_out_temp[14]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data_out_temp[14]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data_out_temp[14]_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_out_temp[15]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \data_out_temp[2]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_out_temp[3]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_out_temp[3]_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data_out_temp[4]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_out_temp[4]_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data_out_temp[5]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_out_temp[6]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_out_temp[7]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_out_temp[7]_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_out_temp[8]_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_out_temp[8]_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of m_axis_tlast_INST_0 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of m_axis_tvalid_INST_0 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0 : label is "soft_lutpair17";
begin
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF6F00FF00FF"
    )
        port map (
      I0 => tlast_expected,
      I1 => s_axis_tlast,
      I2 => s_axis_tvalid,
      I3 => \state__0\(2),
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000090FFFF0000"
    )
        port map (
      I0 => tlast_expected,
      I1 => s_axis_tlast,
      I2 => s_axis_tvalid,
      I3 => \state__0\(2),
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCC4"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => vol_led_ctrl_n_5,
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
      CLR => vol_led_ctrl_n_5,
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \state__0\(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => vol_led_ctrl_n_5,
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => \state__0\(2)
    );
\data_in[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      I2 => s_axis_tvalid,
      I3 => \state__0\(0),
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
      Q => p_0_in0,
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
\data_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => data_out_temp(0),
      I1 => data_out_temp(15),
      I2 => p_0_in0,
      I3 => \state__0\(0),
      I4 => \data_out[0]_i_2_n_0\,
      O => \data_out[0]_i_1_n_0\
    );
\data_out[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out_temp[15]_i_3_n_0\,
      I1 => diff(0),
      I2 => \data_out[1]_i_3_n_0\,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[0]\,
      O => \data_out[0]_i_2_n_0\
    );
\data_out[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => data_out_temp(10),
      I1 => data_out_temp(15),
      I2 => p_0_in0,
      I3 => \state__0\(0),
      I4 => \data_out[10]_i_2_n_0\,
      O => \data_out[10]_i_1_n_0\
    );
\data_out[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out[10]_i_3_n_0\,
      I1 => diff(0),
      I2 => \data_out[11]_i_3_n_0\,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[10]\,
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
      I5 => p_0_in0,
      O => \data_out[10]_i_3_n_0\
    );
\data_out[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => data_out_temp(11),
      I1 => data_out_temp(15),
      I2 => p_0_in0,
      I3 => \state__0\(0),
      I4 => \data_out[11]_i_2_n_0\,
      O => \data_out[11]_i_1_n_0\
    );
\data_out[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out[11]_i_3_n_0\,
      I1 => diff(0),
      I2 => \data_out[12]_i_3_n_0\,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[11]\,
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
      I5 => p_0_in0,
      O => \data_out[11]_i_3_n_0\
    );
\data_out[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => data_out_temp(12),
      I1 => data_out_temp(15),
      I2 => p_0_in0,
      I3 => \state__0\(0),
      I4 => \data_out[12]_i_2_n_0\,
      O => \data_out[12]_i_1_n_0\
    );
\data_out[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out[12]_i_3_n_0\,
      I1 => diff(0),
      I2 => \data_out[13]_i_3_n_0\,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[12]\,
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
      I4 => p_0_in0,
      O => \data_out[12]_i_3_n_0\
    );
\data_out[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => data_out_temp(13),
      I1 => data_out_temp(15),
      I2 => p_0_in0,
      I3 => \state__0\(0),
      I4 => \data_out[13]_i_2_n_0\,
      O => \data_out[13]_i_1_n_0\
    );
\data_out[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out[13]_i_3_n_0\,
      I1 => diff(0),
      I2 => p_0_in0,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[13]\,
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
      I4 => p_0_in0,
      O => \data_out[13]_i_3_n_0\
    );
\data_out[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FE08FEF8FE080E0"
    )
        port map (
      I0 => data_out_temp(14),
      I1 => data_out_temp(15),
      I2 => \state__0\(0),
      I3 => p_0_in0,
      I4 => diff(4),
      I5 => \data_in_reg_n_0_[14]\,
      O => \data_out[14]_i_1_n_0\
    );
\data_out[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45400000"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \data_out[15]_i_2_n_0\,
      I2 => \state__0\(0),
      I3 => \data_out[15]_i_3_n_0\,
      I4 => aresetn,
      O => data_out0
    );
\data_out[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => diff(4),
      I1 => diff(1),
      I2 => diff(2),
      I3 => diff(3),
      I4 => diff(0),
      I5 => \state__0\(1),
      O => \data_out[15]_i_2_n_0\
    );
\data_out[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAB00000000"
    )
        port map (
      I0 => diff(4),
      I1 => diff(1),
      I2 => diff(3),
      I3 => diff(2),
      I4 => diff(0),
      I5 => \state__0\(1),
      O => \data_out[15]_i_3_n_0\
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => data_out_temp(1),
      I1 => data_out_temp(15),
      I2 => p_0_in0,
      I3 => \state__0\(0),
      I4 => \data_out[1]_i_2_n_0\,
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
      I4 => \data_in_reg_n_0_[1]\,
      O => \data_out[1]_i_2_n_0\
    );
\data_out[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_temp[15]_i_4_n_0\,
      I1 => diff(1),
      I2 => \data_out[3]_i_4_n_0\,
      O => \data_out[1]_i_3_n_0\
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => data_out_temp(2),
      I1 => data_out_temp(15),
      I2 => p_0_in0,
      I3 => \state__0\(0),
      I4 => \data_out[2]_i_2_n_0\,
      O => \data_out[2]_i_1_n_0\
    );
\data_out[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out[2]_i_3_n_0\,
      I1 => diff(0),
      I2 => \data_out[3]_i_3_n_0\,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[2]\,
      O => \data_out[2]_i_2_n_0\
    );
\data_out[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_temp[15]_i_7_n_0\,
      I1 => diff(1),
      I2 => \data_out[4]_i_4_n_0\,
      O => \data_out[2]_i_3_n_0\
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => data_out_temp(3),
      I1 => data_out_temp(15),
      I2 => p_0_in0,
      I3 => \state__0\(0),
      I4 => \data_out[3]_i_2_n_0\,
      O => \data_out[3]_i_1_n_0\
    );
\data_out[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out[3]_i_3_n_0\,
      I1 => diff(0),
      I2 => \data_out[4]_i_3_n_0\,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[3]\,
      O => \data_out[3]_i_2_n_0\
    );
\data_out[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out[3]_i_4_n_0\,
      I1 => diff(1),
      I2 => \data_out[5]_i_4_n_0\,
      O => \data_out[3]_i_3_n_0\
    );
\data_out[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_in_reg_n_0_[4]\,
      I1 => \data_in_reg_n_0_[12]\,
      I2 => diff(2),
      I3 => \data_in_reg_n_0_[8]\,
      I4 => diff(3),
      I5 => p_0_in0,
      O => \data_out[3]_i_4_n_0\
    );
\data_out[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => data_out_temp(4),
      I1 => data_out_temp(15),
      I2 => p_0_in0,
      I3 => \state__0\(0),
      I4 => \data_out[4]_i_2_n_0\,
      O => \data_out[4]_i_1_n_0\
    );
\data_out[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out[4]_i_3_n_0\,
      I1 => diff(0),
      I2 => \data_out[5]_i_3_n_0\,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[4]\,
      O => \data_out[4]_i_2_n_0\
    );
\data_out[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out[4]_i_4_n_0\,
      I1 => diff(1),
      I2 => \data_out[6]_i_4_n_0\,
      O => \data_out[4]_i_3_n_0\
    );
\data_out[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_in_reg_n_0_[5]\,
      I1 => \data_in_reg_n_0_[13]\,
      I2 => diff(2),
      I3 => \data_in_reg_n_0_[9]\,
      I4 => diff(3),
      I5 => p_0_in0,
      O => \data_out[4]_i_4_n_0\
    );
\data_out[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => data_out_temp(5),
      I1 => data_out_temp(15),
      I2 => p_0_in0,
      I3 => \state__0\(0),
      I4 => \data_out[5]_i_2_n_0\,
      O => \data_out[5]_i_1_n_0\
    );
\data_out[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out[5]_i_3_n_0\,
      I1 => diff(0),
      I2 => \data_out[6]_i_3_n_0\,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[5]\,
      O => \data_out[5]_i_2_n_0\
    );
\data_out[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out[5]_i_4_n_0\,
      I1 => diff(1),
      I2 => \data_out[7]_i_4_n_0\,
      O => \data_out[5]_i_3_n_0\
    );
\data_out[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_in_reg_n_0_[6]\,
      I1 => \data_in_reg_n_0_[14]\,
      I2 => diff(2),
      I3 => \data_in_reg_n_0_[10]\,
      I4 => diff(3),
      I5 => p_0_in0,
      O => \data_out[5]_i_4_n_0\
    );
\data_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => data_out_temp(6),
      I1 => data_out_temp(15),
      I2 => p_0_in0,
      I3 => \state__0\(0),
      I4 => \data_out[6]_i_2_n_0\,
      O => \data_out[6]_i_1_n_0\
    );
\data_out[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out[6]_i_3_n_0\,
      I1 => diff(0),
      I2 => \data_out[7]_i_3_n_0\,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[6]\,
      O => \data_out[6]_i_2_n_0\
    );
\data_out[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out[6]_i_4_n_0\,
      I1 => diff(1),
      I2 => \data_out[8]_i_4_n_0\,
      O => \data_out[6]_i_3_n_0\
    );
\data_out[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_in_reg_n_0_[7]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[11]\,
      I3 => diff(3),
      I4 => p_0_in0,
      O => \data_out[6]_i_4_n_0\
    );
\data_out[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => data_out_temp(7),
      I1 => data_out_temp(15),
      I2 => p_0_in0,
      I3 => \state__0\(0),
      I4 => \data_out[7]_i_2_n_0\,
      O => \data_out[7]_i_1_n_0\
    );
\data_out[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out[7]_i_3_n_0\,
      I1 => diff(0),
      I2 => \data_out[8]_i_3_n_0\,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[7]\,
      O => \data_out[7]_i_2_n_0\
    );
\data_out[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out[7]_i_4_n_0\,
      I1 => diff(1),
      I2 => \data_out[9]_i_4_n_0\,
      O => \data_out[7]_i_3_n_0\
    );
\data_out[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_in_reg_n_0_[8]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[12]\,
      I3 => diff(3),
      I4 => p_0_in0,
      O => \data_out[7]_i_4_n_0\
    );
\data_out[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => data_out_temp(8),
      I1 => data_out_temp(15),
      I2 => p_0_in0,
      I3 => \state__0\(0),
      I4 => \data_out[8]_i_2_n_0\,
      O => \data_out[8]_i_1_n_0\
    );
\data_out[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out[8]_i_3_n_0\,
      I1 => diff(0),
      I2 => \data_out[9]_i_3_n_0\,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[8]\,
      O => \data_out[8]_i_2_n_0\
    );
\data_out[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \data_out[8]_i_4_n_0\,
      I1 => diff(1),
      I2 => \data_in_reg_n_0_[11]\,
      I3 => diff(3),
      I4 => diff(2),
      I5 => p_0_in0,
      O => \data_out[8]_i_3_n_0\
    );
\data_out[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_in_reg_n_0_[9]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[13]\,
      I3 => diff(3),
      I4 => p_0_in0,
      O => \data_out[8]_i_4_n_0\
    );
\data_out[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => data_out_temp(9),
      I1 => data_out_temp(15),
      I2 => p_0_in0,
      I3 => \state__0\(0),
      I4 => \data_out[9]_i_2_n_0\,
      O => \data_out[9]_i_1_n_0\
    );
\data_out[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out[9]_i_3_n_0\,
      I1 => diff(0),
      I2 => \data_out[10]_i_3_n_0\,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[9]\,
      O => \data_out[9]_i_2_n_0\
    );
\data_out[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \data_out[9]_i_4_n_0\,
      I1 => diff(1),
      I2 => \data_in_reg_n_0_[12]\,
      I3 => diff(3),
      I4 => diff(2),
      I5 => p_0_in0,
      O => \data_out[9]_i_3_n_0\
    );
\data_out[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_in_reg_n_0_[10]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[14]\,
      I3 => diff(3),
      I4 => p_0_in0,
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
      D => p_0_in0,
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
\data_out_temp[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \data_out_temp[15]_i_3_n_0\,
      I1 => \data_out_temp[1]_i_2_n_0\,
      I2 => diff(4),
      I3 => \data_out_temp[0]_i_2_n_0\,
      I4 => diff(0),
      O => SHIFT_LEFT(0)
    );
\data_out_temp[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => diff(2),
      I1 => \data_in_reg_n_0_[0]\,
      I2 => diff(3),
      I3 => diff(1),
      O => \data_out_temp[0]_i_2_n_0\
    );
\data_out_temp[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_temp[10]_i_2_n_0\,
      I1 => \data_out_temp[11]_i_2_n_0\,
      I2 => diff(4),
      I3 => \data_out_temp[10]_i_3_n_0\,
      I4 => diff(0),
      I5 => \data_out_temp[11]_i_3_n_0\,
      O => SHIFT_LEFT(10)
    );
\data_out_temp[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF00A000C000C000"
    )
        port map (
      I0 => \data_in_reg_n_0_[11]\,
      I1 => p_0_in0,
      I2 => diff(1),
      I3 => diff(3),
      I4 => \data_in_reg_n_0_[13]\,
      I5 => diff(2),
      O => \data_out_temp[10]_i_2_n_0\
    );
\data_out_temp[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \data_in_reg_n_0_[3]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[7]\,
      I3 => diff(3),
      I4 => diff(1),
      I5 => \data_out_temp[12]_i_5_n_0\,
      O => \data_out_temp[10]_i_3_n_0\
    );
\data_out_temp[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_temp[11]_i_2_n_0\,
      I1 => \data_out_temp[12]_i_2_n_0\,
      I2 => diff(4),
      I3 => \data_out_temp[11]_i_3_n_0\,
      I4 => diff(0),
      I5 => \data_out_temp[12]_i_4_n_0\,
      O => SHIFT_LEFT(11)
    );
\data_out_temp[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0800000"
    )
        port map (
      I0 => \data_in_reg_n_0_[12]\,
      I1 => diff(1),
      I2 => diff(3),
      I3 => \data_in_reg_n_0_[14]\,
      I4 => diff(2),
      O => \data_out_temp[11]_i_2_n_0\
    );
\data_out_temp[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_temp[11]_i_4_n_0\,
      I1 => diff(1),
      I2 => \data_out_temp[13]_i_4_n_0\,
      O => \data_out_temp[11]_i_3_n_0\
    );
\data_out_temp[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \data_in_reg_n_0_[4]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[0]\,
      I3 => diff(3),
      I4 => \data_in_reg_n_0_[8]\,
      O => \data_out_temp[11]_i_4_n_0\
    );
\data_out_temp[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_temp[12]_i_2_n_0\,
      I1 => \data_out_temp[12]_i_3_n_0\,
      I2 => diff(4),
      I3 => \data_out_temp[12]_i_4_n_0\,
      I4 => diff(0),
      I5 => \data_out_temp[13]_i_3_n_0\,
      O => SHIFT_LEFT(12)
    );
\data_out_temp[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0800000"
    )
        port map (
      I0 => \data_in_reg_n_0_[13]\,
      I1 => diff(1),
      I2 => diff(3),
      I3 => p_0_in0,
      I4 => diff(2),
      O => \data_out_temp[12]_i_2_n_0\
    );
\data_out_temp[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => diff(2),
      I1 => \data_in_reg_n_0_[14]\,
      I2 => diff(3),
      I3 => diff(1),
      O => \data_out_temp[12]_i_3_n_0\
    );
\data_out_temp[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_temp[12]_i_5_n_0\,
      I1 => diff(1),
      I2 => \data_out_temp[14]_i_5_n_0\,
      O => \data_out_temp[12]_i_4_n_0\
    );
\data_out_temp[12]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \data_in_reg_n_0_[5]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[1]\,
      I3 => diff(3),
      I4 => \data_in_reg_n_0_[9]\,
      O => \data_out_temp[12]_i_5_n_0\
    );
\data_out_temp[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \data_out_temp[13]_i_2_n_0\,
      I1 => diff(4),
      I2 => \data_out_temp[13]_i_3_n_0\,
      I3 => diff(0),
      I4 => \data_out_temp[14]_i_3_n_0\,
      O => SHIFT_LEFT(13)
    );
\data_out_temp[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080000000000000"
    )
        port map (
      I0 => \data_in_reg_n_0_[14]\,
      I1 => diff(0),
      I2 => diff(2),
      I3 => p_0_in0,
      I4 => diff(3),
      I5 => diff(1),
      O => \data_out_temp[13]_i_2_n_0\
    );
\data_out_temp[13]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_temp[13]_i_4_n_0\,
      I1 => diff(1),
      I2 => \data_out_temp[15]_i_5_n_0\,
      O => \data_out_temp[13]_i_3_n_0\
    );
\data_out_temp[13]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \data_in_reg_n_0_[6]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[2]\,
      I3 => diff(3),
      I4 => \data_in_reg_n_0_[10]\,
      O => \data_out_temp[13]_i_4_n_0\
    );
\data_out_temp[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \data_out_temp[14]_i_2_n_0\,
      I1 => diff(4),
      I2 => \data_out_temp[14]_i_3_n_0\,
      I3 => diff(0),
      I4 => \data_out_temp[14]_i_4_n_0\,
      O => SHIFT_LEFT(14)
    );
\data_out_temp[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => diff(2),
      I1 => p_0_in0,
      I2 => diff(3),
      I3 => diff(1),
      O => \data_out_temp[14]_i_2_n_0\
    );
\data_out_temp[14]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_temp[14]_i_5_n_0\,
      I1 => diff(1),
      I2 => \data_out_temp[15]_i_6_n_0\,
      O => \data_out_temp[14]_i_3_n_0\
    );
\data_out_temp[14]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_temp[15]_i_5_n_0\,
      I1 => diff(1),
      I2 => \data_out_temp[15]_i_4_n_0\,
      O => \data_out_temp[14]_i_4_n_0\
    );
\data_out_temp[14]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \data_in_reg_n_0_[7]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[3]\,
      I3 => diff(3),
      I4 => \data_in_reg_n_0_[11]\,
      O => \data_out_temp[14]_i_5_n_0\
    );
\data_out_temp[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \data_out[15]_i_2_n_0\,
      I2 => \state__0\(0),
      I3 => aresetn,
      O => data_out_temp0
    );
\data_out_temp[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \data_out_temp[15]_i_3_n_0\,
      I1 => diff(0),
      I2 => \data_out_temp[15]_i_4_n_0\,
      I3 => diff(1),
      I4 => \data_out_temp[15]_i_5_n_0\,
      I5 => diff(4),
      O => SHIFT_LEFT(15)
    );
\data_out_temp[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out_temp[15]_i_6_n_0\,
      I1 => diff(1),
      I2 => \data_out_temp[15]_i_7_n_0\,
      O => \data_out_temp[15]_i_3_n_0\
    );
\data_out_temp[15]_i_4\: unisim.vcomponents.LUT6
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
      O => \data_out_temp[15]_i_4_n_0\
    );
\data_out_temp[15]_i_5\: unisim.vcomponents.LUT6
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
      O => \data_out_temp[15]_i_5_n_0\
    );
\data_out_temp[15]_i_6\: unisim.vcomponents.LUT6
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
      O => \data_out_temp[15]_i_6_n_0\
    );
\data_out_temp[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_in_reg_n_0_[3]\,
      I1 => \data_in_reg_n_0_[11]\,
      I2 => diff(2),
      I3 => \data_in_reg_n_0_[7]\,
      I4 => diff(3),
      I5 => p_0_in0,
      O => \data_out_temp[15]_i_7_n_0\
    );
\data_out_temp[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_out_temp[1]_i_2_n_0\,
      I1 => diff(0),
      I2 => \data_out_temp[2]_i_2_n_0\,
      I3 => diff(4),
      I4 => \data_out_temp[1]_i_3_n_0\,
      O => SHIFT_LEFT(1)
    );
\data_out_temp[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => \data_out_temp[15]_i_4_n_0\,
      I1 => diff(1),
      I2 => \data_out_temp[3]_i_4_n_0\,
      I3 => diff(2),
      I4 => \data_in_reg_n_0_[8]\,
      I5 => diff(3),
      O => \data_out_temp[1]_i_2_n_0\
    );
\data_out_temp[1]_i_3\: unisim.vcomponents.LUT6
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
      O => \data_out_temp[1]_i_3_n_0\
    );
\data_out_temp[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_temp[2]_i_2_n_0\,
      I1 => \data_out_temp[3]_i_2_n_0\,
      I2 => diff(4),
      I3 => \data_out_temp[2]_i_3_n_0\,
      I4 => diff(0),
      I5 => \data_out_temp[3]_i_3_n_0\,
      O => SHIFT_LEFT(2)
    );
\data_out_temp[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => \data_out_temp[15]_i_7_n_0\,
      I1 => diff(1),
      I2 => \data_out_temp[4]_i_4_n_0\,
      I3 => diff(2),
      I4 => \data_in_reg_n_0_[9]\,
      I5 => diff(3),
      O => \data_out_temp[2]_i_2_n_0\
    );
\data_out_temp[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => diff(2),
      I1 => \data_in_reg_n_0_[1]\,
      I2 => diff(3),
      I3 => diff(1),
      O => \data_out_temp[2]_i_3_n_0\
    );
\data_out_temp[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_temp[3]_i_2_n_0\,
      I1 => \data_out_temp[4]_i_2_n_0\,
      I2 => diff(4),
      I3 => \data_out_temp[3]_i_3_n_0\,
      I4 => diff(0),
      I5 => \data_out_temp[4]_i_3_n_0\,
      O => SHIFT_LEFT(3)
    );
\data_out_temp[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => \data_out_temp[3]_i_4_n_0\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[8]\,
      I3 => diff(3),
      I4 => diff(1),
      I5 => \data_out_temp[5]_i_4_n_0\,
      O => \data_out_temp[3]_i_2_n_0\
    );
\data_out_temp[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \data_in_reg_n_0_[0]\,
      I1 => diff(1),
      I2 => diff(3),
      I3 => \data_in_reg_n_0_[2]\,
      I4 => diff(2),
      O => \data_out_temp[3]_i_3_n_0\
    );
\data_out_temp[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_in_reg_n_0_[4]\,
      I1 => diff(3),
      I2 => \data_in_reg_n_0_[12]\,
      O => \data_out_temp[3]_i_4_n_0\
    );
\data_out_temp[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_temp[4]_i_2_n_0\,
      I1 => \data_out_temp[5]_i_2_n_0\,
      I2 => diff(4),
      I3 => \data_out_temp[4]_i_3_n_0\,
      I4 => diff(0),
      I5 => \data_out_temp[5]_i_3_n_0\,
      O => SHIFT_LEFT(4)
    );
\data_out_temp[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => \data_out_temp[4]_i_4_n_0\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[9]\,
      I3 => diff(3),
      I4 => diff(1),
      I5 => \data_out_temp[6]_i_4_n_0\,
      O => \data_out_temp[4]_i_2_n_0\
    );
\data_out_temp[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \data_in_reg_n_0_[1]\,
      I1 => diff(1),
      I2 => diff(3),
      I3 => \data_in_reg_n_0_[3]\,
      I4 => diff(2),
      O => \data_out_temp[4]_i_3_n_0\
    );
\data_out_temp[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_in_reg_n_0_[5]\,
      I1 => diff(3),
      I2 => \data_in_reg_n_0_[13]\,
      O => \data_out_temp[4]_i_4_n_0\
    );
\data_out_temp[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_temp[5]_i_2_n_0\,
      I1 => \data_out_temp[6]_i_2_n_0\,
      I2 => diff(4),
      I3 => \data_out_temp[5]_i_3_n_0\,
      I4 => diff(0),
      I5 => \data_out_temp[6]_i_3_n_0\,
      O => SHIFT_LEFT(5)
    );
\data_out_temp[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB88888888888"
    )
        port map (
      I0 => \data_out_temp[5]_i_4_n_0\,
      I1 => diff(1),
      I2 => \data_in_reg_n_0_[8]\,
      I3 => diff(2),
      I4 => \data_in_reg_n_0_[12]\,
      I5 => diff(3),
      O => \data_out_temp[5]_i_2_n_0\
    );
\data_out_temp[5]_i_3\: unisim.vcomponents.LUT6
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
      O => \data_out_temp[5]_i_3_n_0\
    );
\data_out_temp[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \data_in_reg_n_0_[6]\,
      I1 => \data_in_reg_n_0_[14]\,
      I2 => diff(2),
      I3 => \data_in_reg_n_0_[10]\,
      I4 => diff(3),
      O => \data_out_temp[5]_i_4_n_0\
    );
\data_out_temp[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_temp[6]_i_2_n_0\,
      I1 => \data_out_temp[7]_i_2_n_0\,
      I2 => diff(4),
      I3 => \data_out_temp[6]_i_3_n_0\,
      I4 => diff(0),
      I5 => \data_out_temp[7]_i_3_n_0\,
      O => SHIFT_LEFT(6)
    );
\data_out_temp[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB88888888888"
    )
        port map (
      I0 => \data_out_temp[6]_i_4_n_0\,
      I1 => diff(1),
      I2 => \data_in_reg_n_0_[9]\,
      I3 => diff(2),
      I4 => \data_in_reg_n_0_[13]\,
      I5 => diff(3),
      O => \data_out_temp[6]_i_2_n_0\
    );
\data_out_temp[6]_i_3\: unisim.vcomponents.LUT6
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
      O => \data_out_temp[6]_i_3_n_0\
    );
\data_out_temp[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \data_in_reg_n_0_[7]\,
      I1 => p_0_in0,
      I2 => diff(2),
      I3 => \data_in_reg_n_0_[11]\,
      I4 => diff(3),
      O => \data_out_temp[6]_i_4_n_0\
    );
\data_out_temp[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_temp[7]_i_2_n_0\,
      I1 => \data_out_temp[8]_i_2_n_0\,
      I2 => diff(4),
      I3 => \data_out_temp[7]_i_3_n_0\,
      I4 => diff(0),
      I5 => \data_out_temp[8]_i_3_n_0\,
      O => SHIFT_LEFT(7)
    );
\data_out_temp[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800FFFFB8000000"
    )
        port map (
      I0 => \data_in_reg_n_0_[8]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[12]\,
      I3 => diff(3),
      I4 => diff(1),
      I5 => \data_out_temp[7]_i_4_n_0\,
      O => \data_out_temp[7]_i_2_n_0\
    );
\data_out_temp[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \data_in_reg_n_0_[0]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[4]\,
      I3 => diff(3),
      I4 => diff(1),
      I5 => \data_out_temp[7]_i_5_n_0\,
      O => \data_out_temp[7]_i_3_n_0\
    );
\data_out_temp[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \data_in_reg_n_0_[10]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[14]\,
      I3 => diff(3),
      O => \data_out_temp[7]_i_4_n_0\
    );
\data_out_temp[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \data_in_reg_n_0_[2]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[6]\,
      I3 => diff(3),
      O => \data_out_temp[7]_i_5_n_0\
    );
\data_out_temp[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_temp[8]_i_2_n_0\,
      I1 => \data_out_temp[9]_i_2_n_0\,
      I2 => diff(4),
      I3 => \data_out_temp[8]_i_3_n_0\,
      I4 => diff(0),
      I5 => \data_out_temp[9]_i_3_n_0\,
      O => SHIFT_LEFT(8)
    );
\data_out_temp[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800FFFFB8000000"
    )
        port map (
      I0 => \data_in_reg_n_0_[9]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[13]\,
      I3 => diff(3),
      I4 => diff(1),
      I5 => \data_out_temp[8]_i_4_n_0\,
      O => \data_out_temp[8]_i_2_n_0\
    );
\data_out_temp[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \data_in_reg_n_0_[1]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[5]\,
      I3 => diff(3),
      I4 => diff(1),
      I5 => \data_out_temp[8]_i_5_n_0\,
      O => \data_out_temp[8]_i_3_n_0\
    );
\data_out_temp[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \data_in_reg_n_0_[11]\,
      I1 => diff(2),
      I2 => p_0_in0,
      I3 => diff(3),
      O => \data_out_temp[8]_i_4_n_0\
    );
\data_out_temp[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \data_in_reg_n_0_[3]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[7]\,
      I3 => diff(3),
      O => \data_out_temp[8]_i_5_n_0\
    );
\data_out_temp[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_out_temp[9]_i_2_n_0\,
      I1 => \data_out_temp[10]_i_2_n_0\,
      I2 => diff(4),
      I3 => \data_out_temp[9]_i_3_n_0\,
      I4 => diff(0),
      I5 => \data_out_temp[10]_i_3_n_0\,
      O => SHIFT_LEFT(9)
    );
\data_out_temp[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF00A000C000C000"
    )
        port map (
      I0 => \data_in_reg_n_0_[10]\,
      I1 => \data_in_reg_n_0_[14]\,
      I2 => diff(1),
      I3 => diff(3),
      I4 => \data_in_reg_n_0_[12]\,
      I5 => diff(2),
      O => \data_out_temp[9]_i_2_n_0\
    );
\data_out_temp[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \data_in_reg_n_0_[2]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[6]\,
      I3 => diff(3),
      I4 => diff(1),
      I5 => \data_out_temp[11]_i_4_n_0\,
      O => \data_out_temp[9]_i_3_n_0\
    );
\data_out_temp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out_temp0,
      D => SHIFT_LEFT(0),
      Q => data_out_temp(0),
      R => '0'
    );
\data_out_temp_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out_temp0,
      D => SHIFT_LEFT(10),
      Q => data_out_temp(10),
      R => '0'
    );
\data_out_temp_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out_temp0,
      D => SHIFT_LEFT(11),
      Q => data_out_temp(11),
      R => '0'
    );
\data_out_temp_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out_temp0,
      D => SHIFT_LEFT(12),
      Q => data_out_temp(12),
      R => '0'
    );
\data_out_temp_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out_temp0,
      D => SHIFT_LEFT(13),
      Q => data_out_temp(13),
      R => '0'
    );
\data_out_temp_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out_temp0,
      D => SHIFT_LEFT(14),
      Q => data_out_temp(14),
      R => '0'
    );
\data_out_temp_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out_temp0,
      D => SHIFT_LEFT(15),
      Q => data_out_temp(15),
      R => '0'
    );
\data_out_temp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out_temp0,
      D => SHIFT_LEFT(1),
      Q => data_out_temp(1),
      R => '0'
    );
\data_out_temp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out_temp0,
      D => SHIFT_LEFT(2),
      Q => data_out_temp(2),
      R => '0'
    );
\data_out_temp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out_temp0,
      D => SHIFT_LEFT(3),
      Q => data_out_temp(3),
      R => '0'
    );
\data_out_temp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out_temp0,
      D => SHIFT_LEFT(4),
      Q => data_out_temp(4),
      R => '0'
    );
\data_out_temp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out_temp0,
      D => SHIFT_LEFT(5),
      Q => data_out_temp(5),
      R => '0'
    );
\data_out_temp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out_temp0,
      D => SHIFT_LEFT(6),
      Q => data_out_temp(6),
      R => '0'
    );
\data_out_temp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out_temp0,
      D => SHIFT_LEFT(7),
      Q => data_out_temp(7),
      R => '0'
    );
\data_out_temp_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out_temp0,
      D => SHIFT_LEFT(8),
      Q => data_out_temp(8),
      R => '0'
    );
\data_out_temp_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out_temp0,
      D => SHIFT_LEFT(9),
      Q => data_out_temp(9),
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
      INIT => X"0000000000008008"
    )
        port map (
      I0 => \state__0\(0),
      I1 => s_axis_tvalid,
      I2 => s_axis_tlast,
      I3 => tlast_expected,
      I4 => \state__0\(1),
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
      D => diff00_in(0),
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
      D => diff00_in(1),
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
      D => diff00_in(2),
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
      D => diff00_in(3),
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
      D => diff00_in(4),
      Q => diff(4),
      R => '0'
    );
m_axis_tlast_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => tlast_sampled,
      O => m_axis_tlast
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
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
      INIT => X"EFFFFFFF01000000"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      I2 => s_axis_tlast,
      I3 => s_axis_tvalid,
      I4 => \state__0\(0),
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
      CLR => vol_led_ctrl_n_5,
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
vol_led_ctrl: entity work.bd_mov_av_v2_volume_controller_0_0_volume_led_ctrl
     port map (
      D(4 downto 0) => diff00_in(4 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      aresetn_0 => vol_led_ctrl_n_5,
      volume_down => volume_down,
      volume_level(14 downto 0) => volume_level(14 downto 0),
      volume_up => volume_up
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
  signal \<const1>\ : STD_LOGIC;
  signal \^volume_level\ : STD_LOGIC_VECTOR ( 15 downto 1 );
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_parameter of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_parameter of s_axis_tvalid : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
  volume_level(15 downto 1) <= \^volume_level\(15 downto 1);
  volume_level(0) <= \<const1>\;
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
      volume_level(14 downto 0) => \^volume_level\(15 downto 1),
      volume_up => volume_up
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
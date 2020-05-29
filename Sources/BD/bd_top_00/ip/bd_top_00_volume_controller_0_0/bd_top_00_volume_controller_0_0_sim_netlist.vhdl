-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sat May 30 00:30:02 2020
-- Host        : DESKTOP-O39JAIK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Vivado_DESD_Project/Project/Personal/Lab3_A4/LAB3A4/Sources/BD/bd_top_00/ip/bd_top_00_volume_controller_0_0/bd_top_00_volume_controller_0_0_sim_netlist.vhdl
-- Design      : bd_top_00_volume_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_top_00_volume_controller_0_0_volume_led_ctrl is
  port (
    volume_level : out STD_LOGIC_VECTOR ( 14 downto 0 );
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    volume_up : in STD_LOGIC;
    volume_down : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \data_out_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_out_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_out_reg[0]_1\ : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_top_00_volume_controller_0_0_volume_led_ctrl : entity is "volume_led_ctrl";
end bd_top_00_volume_controller_0_0_volume_led_ctrl;

architecture STRUCTURE of bd_top_00_volume_controller_0_0_volume_led_ctrl is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^d\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal SHIFT_LEFT : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \led_out[11]_i_2_n_0\ : STD_LOGIC;
  signal \led_out[11]_i_3_n_0\ : STD_LOGIC;
  signal \led_out[11]_i_4_n_0\ : STD_LOGIC;
  signal \led_out[11]_i_5_n_0\ : STD_LOGIC;
  signal \led_out[11]_i_6_n_0\ : STD_LOGIC;
  signal \led_out[13]_i_2_n_0\ : STD_LOGIC;
  signal \led_out[13]_i_3_n_0\ : STD_LOGIC;
  signal \led_out[13]_i_4_n_0\ : STD_LOGIC;
  signal \led_out[13]_i_5_n_0\ : STD_LOGIC;
  signal \led_out[15]_i_2_n_0\ : STD_LOGIC;
  signal \led_out[15]_i_3_n_0\ : STD_LOGIC;
  signal \led_out[15]_i_4_n_0\ : STD_LOGIC;
  signal \led_out[15]_i_5_n_0\ : STD_LOGIC;
  signal \led_out[15]_i_6_n_0\ : STD_LOGIC;
  signal \led_out[15]_i_7_n_0\ : STD_LOGIC;
  signal \led_out[15]_i_8_n_0\ : STD_LOGIC;
  signal \led_out[15]_i_9_n_0\ : STD_LOGIC;
  signal \led_out[7]_i_2_n_0\ : STD_LOGIC;
  signal mult2 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal mult20 : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal \mult20_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \mult20_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \mult20_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \mult20_carry__0_n_1\ : STD_LOGIC;
  signal \mult20_carry__0_n_2\ : STD_LOGIC;
  signal \mult20_carry__0_n_3\ : STD_LOGIC;
  signal mult20_carry_i_1_n_0 : STD_LOGIC;
  signal mult20_carry_i_2_n_0 : STD_LOGIC;
  signal mult20_carry_i_3_n_0 : STD_LOGIC;
  signal mult20_carry_i_4_n_0 : STD_LOGIC;
  signal mult20_carry_i_5_n_0 : STD_LOGIC;
  signal mult20_carry_n_0 : STD_LOGIC;
  signal mult20_carry_n_1 : STD_LOGIC;
  signal mult20_carry_n_2 : STD_LOGIC;
  signal mult20_carry_n_3 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal volume : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^volume_level\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \volume_uns[1]_i_1_n_0\ : STD_LOGIC;
  signal \volume_uns[2]_i_1_n_0\ : STD_LOGIC;
  signal \volume_uns[3]_i_1_n_0\ : STD_LOGIC;
  signal \volume_uns[3]_i_2_n_0\ : STD_LOGIC;
  signal \NLW_mult20_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \diff[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \diff[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \diff[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \diff[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \diff[4]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \led_out[10]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \led_out[11]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \led_out[12]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \led_out[13]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \led_out[13]_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \led_out[14]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \led_out[15]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \led_out[15]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \led_out[15]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \led_out[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \led_out[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \led_out[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \led_out[7]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \led_out[8]_i_1\ : label is "soft_lutpair8";
begin
  AR(0) <= \^ar\(0);
  D(4 downto 0) <= \^d\(4 downto 0);
  volume_level(14 downto 0) <= \^volume_level\(14 downto 0);
\FSM_onehot_state[1]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^ar\(0)
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4044444444444444"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => volume(3),
      I3 => volume(1),
      I4 => volume(0),
      I5 => volume(2),
      O => \FSM_onehot_state_reg[0]\(0)
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1130"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_2_n_0\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      O => \FSM_onehot_state_reg[0]\(1)
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => volume(2),
      I1 => volume(0),
      I2 => volume(1),
      I3 => volume(3),
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\data_out[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF2222222222222"
    )
        port map (
      I0 => \data_out_reg[0]\(0),
      I1 => \FSM_onehot_state[3]_i_2_n_0\,
      I2 => \data_out_reg[0]_0\(0),
      I3 => \data_out_reg[0]_1\,
      I4 => aresetn,
      I5 => Q(2),
      O => E(0)
    );
\diff2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => volume(0),
      Q => SHIFT_LEFT(4),
      R => '0'
    );
\diff2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => volume(1),
      Q => SHIFT_LEFT(5),
      R => '0'
    );
\diff2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => volume(2),
      Q => SHIFT_LEFT(6),
      R => '0'
    );
\diff2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => volume(3),
      Q => SHIFT_LEFT(7),
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
\diff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => volume(0),
      I1 => volume(1),
      O => \^d\(1)
    );
\diff[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => volume(1),
      I1 => volume(0),
      I2 => volume(2),
      O => \^d\(2)
    );
\diff[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"807F"
    )
        port map (
      I0 => volume(1),
      I1 => volume(0),
      I2 => volume(2),
      I3 => volume(3),
      O => \^d\(3)
    );
\diff[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"007F"
    )
        port map (
      I0 => volume(1),
      I1 => volume(0),
      I2 => volume(2),
      I3 => volume(3),
      O => \^d\(4)
    );
\led_out[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE0E0E0"
    )
        port map (
      I0 => \led_out[13]_i_2_n_0\,
      I1 => \led_out[11]_i_2_n_0\,
      I2 => \led_out[13]_i_3_n_0\,
      I3 => \led_out[15]_i_2_n_0\,
      I4 => \^volume_level\(9),
      O => p_1_in(10)
    );
\led_out[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE0E0E0FFA0A0A0"
    )
        port map (
      I0 => \led_out[13]_i_2_n_0\,
      I1 => \led_out[11]_i_2_n_0\,
      I2 => \led_out[13]_i_3_n_0\,
      I3 => \led_out[15]_i_2_n_0\,
      I4 => \^volume_level\(10),
      I5 => \led_out[15]_i_4_n_0\,
      O => p_1_in(11)
    );
\led_out[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0AAC0AACFAAC0AAC"
    )
        port map (
      I0 => \led_out[11]_i_3_n_0\,
      I1 => \led_out[11]_i_4_n_0\,
      I2 => mult2(3),
      I3 => mult2(7),
      I4 => \led_out[11]_i_5_n_0\,
      I5 => \led_out[11]_i_6_n_0\,
      O => \led_out[11]_i_2_n_0\
    );
\led_out[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000505FFFFE8E800"
    )
        port map (
      I0 => mult2(2),
      I1 => mult2(1),
      I2 => mult2(6),
      I3 => mult2(4),
      I4 => mult2(8),
      I5 => mult2(5),
      O => \led_out[11]_i_3_n_0\
    );
\led_out[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mult2(4),
      I1 => mult2(8),
      I2 => mult2(5),
      O => \led_out[11]_i_4_n_0\
    );
\led_out[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF1E1E1E1E1E1E1E"
    )
        port map (
      I0 => mult2(8),
      I1 => mult2(4),
      I2 => mult2(5),
      I3 => mult2(6),
      I4 => mult2(2),
      I5 => mult2(1),
      O => \led_out[11]_i_5_n_0\
    );
\led_out[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6100000000000000"
    )
        port map (
      I0 => mult2(4),
      I1 => mult2(8),
      I2 => mult2(5),
      I3 => mult2(6),
      I4 => mult2(2),
      I5 => mult2(1),
      O => \led_out[11]_i_6_n_0\
    );
\led_out[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \led_out[13]_i_2_n_0\,
      I1 => \led_out[13]_i_3_n_0\,
      I2 => \led_out[15]_i_2_n_0\,
      I3 => \^volume_level\(11),
      O => p_1_in(12)
    );
\led_out[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF888F000"
    )
        port map (
      I0 => \led_out[13]_i_2_n_0\,
      I1 => \led_out[13]_i_3_n_0\,
      I2 => \led_out[15]_i_2_n_0\,
      I3 => \^volume_level\(12),
      I4 => \led_out[15]_i_4_n_0\,
      I5 => \led_out[15]_i_3_n_0\,
      O => p_1_in(13)
    );
\led_out[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA544AABB55555"
    )
        port map (
      I0 => mult2(6),
      I1 => mult2(2),
      I2 => mult2(3),
      I3 => mult2(7),
      I4 => \led_out[13]_i_4_n_0\,
      I5 => \led_out[13]_i_5_n_0\,
      O => \led_out[13]_i_2_n_0\
    );
\led_out[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777F8880777F8000"
    )
        port map (
      I0 => mult2(6),
      I1 => mult2(5),
      I2 => mult2(4),
      I3 => mult2(8),
      I4 => mult2(7),
      I5 => mult2(3),
      O => \led_out[13]_i_3_n_0\
    );
\led_out[13]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => mult2(8),
      I1 => mult2(4),
      I2 => mult2(5),
      O => \led_out[13]_i_4_n_0\
    );
\led_out[13]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => mult2(8),
      I1 => mult2(4),
      I2 => mult2(5),
      O => \led_out[13]_i_5_n_0\
    );
\led_out[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \led_out[15]_i_2_n_0\,
      I1 => \^volume_level\(13),
      I2 => \led_out[15]_i_3_n_0\,
      O => p_1_in(14)
    );
\led_out[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \led_out[15]_i_2_n_0\,
      I1 => \^volume_level\(14),
      I2 => \led_out[15]_i_3_n_0\,
      I3 => \led_out[15]_i_4_n_0\,
      O => p_1_in(15)
    );
\led_out[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2CCCCCCC"
    )
        port map (
      I0 => mult2(4),
      I1 => mult2(8),
      I2 => mult2(5),
      I3 => mult2(7),
      I4 => mult2(6),
      O => \led_out[15]_i_2_n_0\
    );
\led_out[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \led_out[13]_i_2_n_0\,
      I1 => \led_out[11]_i_2_n_0\,
      I2 => \led_out[13]_i_3_n_0\,
      O => \led_out[15]_i_3_n_0\
    );
\led_out[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00474700"
    )
        port map (
      I0 => \led_out[15]_i_5_n_0\,
      I1 => mult2(2),
      I2 => \led_out[15]_i_6_n_0\,
      I3 => mult2(7),
      I4 => mult2(3),
      I5 => \led_out[15]_i_7_n_0\,
      O => \led_out[15]_i_4_n_0\
    );
\led_out[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF01EEFF01EE15"
    )
        port map (
      I0 => mult2(6),
      I1 => mult2(1),
      I2 => mult2(0),
      I3 => mult2(8),
      I4 => mult2(5),
      I5 => mult2(4),
      O => \led_out[15]_i_5_n_0\
    );
\led_out[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"26996493669B6CB3"
    )
        port map (
      I0 => mult2(6),
      I1 => mult2(4),
      I2 => mult2(5),
      I3 => mult2(8),
      I4 => mult2(1),
      I5 => mult2(0),
      O => \led_out[15]_i_6_n_0\
    );
\led_out[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA0000FC8200003C"
    )
        port map (
      I0 => \led_out[15]_i_8_n_0\,
      I1 => mult2(4),
      I2 => mult2(8),
      I3 => mult2(3),
      I4 => mult2(7),
      I5 => \led_out[15]_i_9_n_0\,
      O => \led_out[15]_i_7_n_0\
    );
\led_out[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => mult2(5),
      I1 => mult2(4),
      I2 => mult2(8),
      I3 => mult2(6),
      I4 => mult2(2),
      I5 => mult2(1),
      O => \led_out[15]_i_8_n_0\
    );
\led_out[15]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => mult2(6),
      I1 => mult2(2),
      I2 => mult2(1),
      I3 => mult2(0),
      I4 => mult2(5),
      O => \led_out[15]_i_9_n_0\
    );
\led_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFEFE"
    )
        port map (
      I0 => \led_out[13]_i_2_n_0\,
      I1 => \led_out[11]_i_2_n_0\,
      I2 => \led_out[13]_i_3_n_0\,
      I3 => \led_out[15]_i_2_n_0\,
      I4 => \^volume_level\(0),
      I5 => \led_out[15]_i_4_n_0\,
      O => p_1_in(1)
    );
\led_out[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEFE"
    )
        port map (
      I0 => \led_out[13]_i_2_n_0\,
      I1 => \led_out[11]_i_2_n_0\,
      I2 => \led_out[13]_i_3_n_0\,
      I3 => \led_out[15]_i_2_n_0\,
      I4 => \^volume_level\(1),
      O => p_1_in(2)
    );
\led_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFFFAFAFA"
    )
        port map (
      I0 => \led_out[13]_i_2_n_0\,
      I1 => \led_out[11]_i_2_n_0\,
      I2 => \led_out[13]_i_3_n_0\,
      I3 => \led_out[15]_i_2_n_0\,
      I4 => \^volume_level\(2),
      I5 => \led_out[15]_i_4_n_0\,
      O => p_1_in(3)
    );
\led_out[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => \led_out[13]_i_2_n_0\,
      I1 => \led_out[13]_i_3_n_0\,
      I2 => \led_out[15]_i_2_n_0\,
      I3 => \^volume_level\(3),
      O => p_1_in(4)
    );
\led_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEFFFFFEEEF000"
    )
        port map (
      I0 => \led_out[13]_i_2_n_0\,
      I1 => \led_out[13]_i_3_n_0\,
      I2 => \led_out[15]_i_2_n_0\,
      I3 => \^volume_level\(4),
      I4 => \led_out[15]_i_4_n_0\,
      I5 => \led_out[7]_i_2_n_0\,
      O => p_1_in(5)
    );
\led_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \led_out[15]_i_2_n_0\,
      I1 => \^volume_level\(5),
      I2 => \led_out[7]_i_2_n_0\,
      O => p_1_in(6)
    );
\led_out[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF888"
    )
        port map (
      I0 => \led_out[15]_i_2_n_0\,
      I1 => \^volume_level\(6),
      I2 => \led_out[7]_i_2_n_0\,
      I3 => \led_out[15]_i_4_n_0\,
      I4 => \led_out[13]_i_3_n_0\,
      O => p_1_in(7)
    );
\led_out[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \led_out[13]_i_2_n_0\,
      I1 => \led_out[11]_i_2_n_0\,
      I2 => \led_out[13]_i_3_n_0\,
      O => \led_out[7]_i_2_n_0\
    );
\led_out[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \led_out[15]_i_2_n_0\,
      I1 => \^volume_level\(7),
      I2 => \led_out[13]_i_3_n_0\,
      O => p_1_in(8)
    );
\led_out[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0F0F0FFE0E0E0"
    )
        port map (
      I0 => \led_out[13]_i_2_n_0\,
      I1 => \led_out[11]_i_2_n_0\,
      I2 => \led_out[13]_i_3_n_0\,
      I3 => \led_out[15]_i_2_n_0\,
      I4 => \^volume_level\(8),
      I5 => \led_out[15]_i_4_n_0\,
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
mult20_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => mult20_carry_n_0,
      CO(2) => mult20_carry_n_1,
      CO(1) => mult20_carry_n_2,
      CO(0) => mult20_carry_n_3,
      CYINIT => mult20_carry_i_1_n_0,
      DI(3) => SHIFT_LEFT(4),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => mult20(4 downto 1),
      S(3) => mult20_carry_i_2_n_0,
      S(2) => mult20_carry_i_3_n_0,
      S(1) => mult20_carry_i_4_n_0,
      S(0) => mult20_carry_i_5_n_0
    );
\mult20_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => mult20_carry_n_0,
      CO(3) => \NLW_mult20_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \mult20_carry__0_n_1\,
      CO(1) => \mult20_carry__0_n_2\,
      CO(0) => \mult20_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => SHIFT_LEFT(7 downto 5),
      O(3 downto 0) => mult20(8 downto 5),
      S(3) => '1',
      S(2) => \mult20_carry__0_i_1_n_0\,
      S(1) => \mult20_carry__0_i_2_n_0\,
      S(0) => \mult20_carry__0_i_3_n_0\
    );
\mult20_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SHIFT_LEFT(7),
      O => \mult20_carry__0_i_1_n_0\
    );
\mult20_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SHIFT_LEFT(6),
      O => \mult20_carry__0_i_2_n_0\
    );
\mult20_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SHIFT_LEFT(5),
      O => \mult20_carry__0_i_3_n_0\
    );
mult20_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SHIFT_LEFT(4),
      O => mult20_carry_i_1_n_0
    );
mult20_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SHIFT_LEFT(4),
      O => mult20_carry_i_2_n_0
    );
mult20_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SHIFT_LEFT(7),
      O => mult20_carry_i_3_n_0
    );
mult20_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SHIFT_LEFT(6),
      O => mult20_carry_i_4_n_0
    );
mult20_carry_i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SHIFT_LEFT(5),
      O => mult20_carry_i_5_n_0
    );
\mult2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => SHIFT_LEFT(4),
      Q => mult2(0),
      R => '0'
    );
\mult2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => mult20(1),
      Q => mult2(1),
      R => '0'
    );
\mult2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => mult20(2),
      Q => mult2(2),
      R => '0'
    );
\mult2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => mult20(3),
      Q => mult2(3),
      R => '0'
    );
\mult2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => mult20(4),
      Q => mult2(4),
      R => '0'
    );
\mult2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => mult20(5),
      Q => mult2(5),
      R => '0'
    );
\mult2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => mult20(6),
      Q => mult2(6),
      R => '0'
    );
\mult2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => mult20(7),
      Q => mult2(7),
      R => '0'
    );
\mult2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => mult20(8),
      Q => mult2(8),
      R => '0'
    );
\volume_uns[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99E9996999699969"
    )
        port map (
      I0 => volume(1),
      I1 => volume(0),
      I2 => volume_up,
      I3 => volume_down,
      I4 => volume(2),
      I5 => volume(3),
      O => \volume_uns[1]_i_1_n_0\
    );
\volume_uns[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F0F02DD2F0F02D"
    )
        port map (
      I0 => volume_up,
      I1 => volume_down,
      I2 => volume(2),
      I3 => volume(0),
      I4 => volume(1),
      I5 => volume(3),
      O => \volume_uns[2]_i_1_n_0\
    );
\volume_uns[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2666666666666664"
    )
        port map (
      I0 => volume_down,
      I1 => volume_up,
      I2 => volume(2),
      I3 => volume(0),
      I4 => volume(1),
      I5 => volume(3),
      O => \volume_uns[3]_i_1_n_0\
    );
\volume_uns[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F0F0F0F0F0F04B"
    )
        port map (
      I0 => volume_down,
      I1 => volume_up,
      I2 => volume(3),
      I3 => volume(2),
      I4 => volume(0),
      I5 => volume(1),
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
      PRE => \^ar\(0),
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
      PRE => \^ar\(0),
      Q => volume(1)
    );
\volume_uns_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \volume_uns[3]_i_1_n_0\,
      D => \volume_uns[2]_i_1_n_0\,
      PRE => \^ar\(0),
      Q => volume(2)
    );
\volume_uns_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \volume_uns[3]_i_1_n_0\,
      CLR => \^ar\(0),
      D => \volume_uns[3]_i_2_n_0\,
      Q => volume(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_top_00_volume_controller_0_0_volume_controller is
  port (
    volume_level : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    volume_up : in STD_LOGIC;
    volume_down : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_top_00_volume_controller_0_0_volume_controller : entity is "volume_controller";
end bd_top_00_volume_controller_0_0_volume_controller;

architecture STRUCTURE of bd_top_00_volume_controller_0_0_volume_controller is
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
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
  signal data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_out0 : STD_LOGIC;
  signal \data_out[0]_i_10_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_11_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_12_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_13_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_14_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_15_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_9_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_10_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_11_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_12_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_13_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_14_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_15_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_16_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_17_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_18_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_9_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_10_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_9_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_10_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_11_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_12_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_9_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_10_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_11_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_12_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_13_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_14_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_15_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_16_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_17_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_18_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_19_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_20_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_9_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_10_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_11_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_12_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_13_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_14_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_15_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_16_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_17_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_18_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_19_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_20_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_21_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_9_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_10_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_11_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_9_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_10_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_11_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_12_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_13_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_9_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_10_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_11_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_9_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_10_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_11_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_12_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_13_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_14_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_15_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_9_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_10_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_11_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_12_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_13_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_14_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_15_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_16_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_9_n_0\ : STD_LOGIC;
  signal \data_out[8]_i_10_n_0\ : STD_LOGIC;
  signal \data_out[8]_i_11_n_0\ : STD_LOGIC;
  signal \data_out[8]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[8]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[8]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[8]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[8]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[8]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[8]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[8]_i_9_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_10_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_11_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_12_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[9]_i_9_n_0\ : STD_LOGIC;
  signal diff : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal \^s_axis_tready\ : STD_LOGIC;
  signal state1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal tlast_expected : STD_LOGIC;
  signal tlast_expected_0 : STD_LOGIC;
  signal tlast_expected_i_1_n_0 : STD_LOGIC;
  signal tlast_sampled : STD_LOGIC;
  signal tlast_sampled0 : STD_LOGIC;
  signal vol_led_ctrl_n_20 : STD_LOGIC;
  signal vol_led_ctrl_n_21 : STD_LOGIC;
  signal vol_led_ctrl_n_23 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_4\ : label is "soft_lutpair33";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "idle:0001,receive_data:0010,multiply:0100,send_data:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "idle:0001,receive_data:0010,multiply:0100,send_data:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "idle:0001,receive_data:0010,multiply:0100,send_data:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "idle:0001,receive_data:0010,multiply:0100,send_data:1000";
  attribute SOFT_HLUTNM of \data_out[0]_i_11\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \data_out[0]_i_12\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \data_out[0]_i_13\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_out[0]_i_14\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_out[10]_i_10\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data_out[10]_i_12\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data_out[10]_i_13\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_out[10]_i_14\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data_out[10]_i_17\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_out[10]_i_18\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_out[10]_i_4\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data_out[10]_i_8\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \data_out[10]_i_9\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data_out[12]_i_10\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \data_out[12]_i_12\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \data_out[12]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \data_out[12]_i_9\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data_out[13]_i_10\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \data_out[13]_i_11\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data_out[13]_i_15\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_out[13]_i_18\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_out[13]_i_20\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \data_out[14]_i_12\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \data_out[14]_i_13\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \data_out[14]_i_14\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_out[14]_i_15\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \data_out[14]_i_18\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \data_out[14]_i_19\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \data_out[14]_i_8\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \data_out[15]_i_3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \data_out[1]_i_11\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \data_out[1]_i_5\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data_out[1]_i_6\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_out[2]_i_10\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data_out[2]_i_11\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data_out[2]_i_5\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_out[3]_i_7\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data_out[5]_i_11\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_out[6]_i_10\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \data_out[6]_i_12\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data_out[6]_i_5\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data_out[7]_i_12\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data_out[7]_i_13\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_out[7]_i_14\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_out[7]_i_15\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_out[7]_i_16\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \data_out[7]_i_7\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data_out[8]_i_9\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data_out[9]_i_10\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \data_out[9]_i_12\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \data_out[9]_i_8\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \data_out[9]_i_9\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of m_axis_tlast_INST_0 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of tlast_expected_i_1 : label is "soft_lutpair33";
begin
  m_axis_tvalid <= \^m_axis_tvalid\;
  s_axis_tready <= \^s_axis_tready\;
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => m_axis_tready,
      I2 => \^m_axis_tvalid\,
      I3 => tlast_expected_0,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF04"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => \^m_axis_tvalid\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[1]_i_2_n_0\
    );
\FSM_onehot_state[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8008"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \^s_axis_tready\,
      I2 => s_axis_tlast,
      I3 => tlast_expected,
      O => tlast_expected_0
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \FSM_onehot_state[1]_i_1_n_0\,
      D => '0',
      PRE => vol_led_ctrl_n_23,
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \FSM_onehot_state[1]_i_1_n_0\,
      CLR => vol_led_ctrl_n_23,
      D => \FSM_onehot_state[1]_i_2_n_0\,
      Q => \^s_axis_tready\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \FSM_onehot_state[1]_i_1_n_0\,
      CLR => vol_led_ctrl_n_23,
      D => vol_led_ctrl_n_21,
      Q => \FSM_onehot_state_reg_n_0_[2]\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \FSM_onehot_state[1]_i_1_n_0\,
      CLR => vol_led_ctrl_n_23,
      D => vol_led_ctrl_n_20,
      Q => \^m_axis_tvalid\
    );
\data_in[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \^s_axis_tready\,
      I2 => aresetn,
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
      Q => p_0_in1_in,
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
\data_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \data_out[0]_i_2_n_0\,
      I1 => \data_out[0]_i_3_n_0\,
      I2 => \data_out[6]_i_5_n_0\,
      I3 => \data_out[0]_i_4_n_0\,
      I4 => \data_out[0]_i_5_n_0\,
      I5 => \data_out[0]_i_6_n_0\,
      O => data_out(0)
    );
\data_out[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08080808FF080808"
    )
        port map (
      I0 => \data_out[1]_i_11_n_0\,
      I1 => \data_out[8]_i_9_n_0\,
      I2 => diff(3),
      I3 => \data_out[2]_i_10_n_0\,
      I4 => \data_in_reg_n_0_[1]\,
      I5 => \data_out[10]_i_10_n_0\,
      O => \data_out[0]_i_10_n_0\
    );
\data_out[0]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => diff(4),
      I1 => p_0_in1_in,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \data_out[0]_i_11_n_0\
    );
\data_out[0]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => diff(1),
      I1 => diff(2),
      O => \data_out[0]_i_12_n_0\
    );
\data_out[0]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A000C0"
    )
        port map (
      I0 => \data_in_reg_n_0_[3]\,
      I1 => \data_in_reg_n_0_[4]\,
      I2 => diff(2),
      I3 => diff(1),
      I4 => diff(0),
      O => \data_out[0]_i_13_n_0\
    );
\data_out[0]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => diff(4),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => diff(3),
      O => \data_out[0]_i_14_n_0\
    );
\data_out[0]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => diff(4),
      O => \data_out[0]_i_15_n_0\
    );
\data_out[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \data_out[12]_i_11_n_0\,
      I1 => \data_out[8]_i_3_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \data_out[13]_i_13_n_0\,
      I4 => \data_out[0]_i_7_n_0\,
      I5 => \data_out[0]_i_8_n_0\,
      O => \data_out[0]_i_2_n_0\
    );
\data_out[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => \^s_axis_tready\,
      I2 => \data_out[0]_i_9_n_0\,
      I3 => \data_out[0]_i_10_n_0\,
      O => \data_out[0]_i_3_n_0\
    );
\data_out[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \data_in_reg_n_0_[6]\,
      I1 => diff(3),
      I2 => \data_in_reg_n_0_[14]\,
      I3 => \data_out[6]_i_10_n_0\,
      I4 => \data_out[0]_i_11_n_0\,
      O => \data_out[0]_i_4_n_0\
    );
\data_out[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \data_in_reg_n_0_[2]\,
      I1 => diff(3),
      I2 => \data_in_reg_n_0_[10]\,
      I3 => \data_out[10]_i_12_n_0\,
      I4 => \data_out[0]_i_11_n_0\,
      O => \data_out[0]_i_5_n_0\
    );
\data_out[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \data_out[5]_i_9_n_0\,
      I1 => \data_in_reg_n_0_[0]\,
      I2 => \data_out[12]_i_3_n_0\,
      I3 => \data_out[0]_i_12_n_0\,
      I4 => \data_out[2]_i_10_n_0\,
      I5 => \data_out[0]_i_13_n_0\,
      O => \data_out[0]_i_6_n_0\
    );
\data_out[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => \data_out[0]_i_14_n_0\,
      I1 => \data_out[10]_i_8_n_0\,
      I2 => \data_in_reg_n_0_[13]\,
      I3 => \data_out[14]_i_8_n_0\,
      I4 => \data_in_reg_n_0_[14]\,
      I5 => diff(0),
      O => \data_out[0]_i_7_n_0\
    );
\data_out[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000800080F08000"
    )
        port map (
      I0 => \data_out[10]_i_8_n_0\,
      I1 => \data_in_reg_n_0_[5]\,
      I2 => \data_out[0]_i_15_n_0\,
      I3 => diff(3),
      I4 => \data_in_reg_n_0_[9]\,
      I5 => \data_out[10]_i_10_n_0\,
      O => \data_out[0]_i_8_n_0\
    );
\data_out[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000A000C0"
    )
        port map (
      I0 => \data_in_reg_n_0_[7]\,
      I1 => \data_in_reg_n_0_[8]\,
      I2 => \data_out[7]_i_14_n_0\,
      I3 => diff(2),
      I4 => diff(0),
      I5 => diff(1),
      O => \data_out[0]_i_9_n_0\
    );
\data_out[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \data_out[10]_i_2_n_0\,
      I1 => \data_out[10]_i_3_n_0\,
      I2 => \data_out[10]_i_4_n_0\,
      I3 => \data_out[10]_i_5_n_0\,
      I4 => \data_out[10]_i_6_n_0\,
      I5 => \data_out[10]_i_7_n_0\,
      O => data_out(10)
    );
\data_out[10]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => diff(2),
      I1 => diff(1),
      I2 => diff(0),
      O => \data_out[10]_i_10_n_0\
    );
\data_out[10]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2000000220000"
    )
        port map (
      I0 => \data_in_reg_n_0_[3]\,
      I1 => diff(4),
      I2 => \data_in_reg_n_0_[11]\,
      I3 => p_0_in1_in,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => diff(3),
      O => \data_out[10]_i_11_n_0\
    );
\data_out[10]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => diff(2),
      I1 => diff(1),
      I2 => diff(0),
      O => \data_out[10]_i_12_n_0\
    );
\data_out[10]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \data_in_reg_n_0_[6]\,
      I1 => diff(2),
      I2 => diff(1),
      I3 => diff(0),
      I4 => \data_out[14]_i_8_n_0\,
      O => \data_out[10]_i_13_n_0\
    );
\data_out[10]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \data_in_reg_n_0_[5]\,
      I1 => diff(1),
      I2 => diff(0),
      I3 => diff(2),
      I4 => \data_out[14]_i_8_n_0\,
      O => \data_out[10]_i_14_n_0\
    );
\data_out[10]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000CC0000F0AA"
    )
        port map (
      I0 => \data_out[13]_i_8_n_0\,
      I1 => \data_out[12]_i_8_n_0\,
      I2 => \data_out[14]_i_16_n_0\,
      I3 => diff(1),
      I4 => diff(2),
      I5 => diff(0),
      O => \data_out[10]_i_15_n_0\
    );
\data_out[10]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAEAEAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \data_in_reg_n_0_[6]\,
      I2 => \data_out[14]_i_19_n_0\,
      I3 => diff(1),
      I4 => diff(0),
      I5 => \data_out[12]_i_3_n_0\,
      O => \data_out[10]_i_16_n_0\
    );
\data_out[10]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => \data_in_reg_n_0_[13]\,
      I1 => diff(0),
      I2 => diff(1),
      I3 => \data_in_reg_n_0_[14]\,
      O => \data_out[10]_i_17_n_0\
    );
\data_out[10]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8000800"
    )
        port map (
      I0 => diff(2),
      I1 => diff(3),
      I2 => p_0_in1_in,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => diff(4),
      O => \data_out[10]_i_18_n_0\
    );
\data_out[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF888F888"
    )
        port map (
      I0 => \data_out[14]_i_13_n_0\,
      I1 => \data_out[10]_i_8_n_0\,
      I2 => \data_out[10]_i_9_n_0\,
      I3 => \data_out[13]_i_10_n_0\,
      I4 => \data_out[10]_i_10_n_0\,
      I5 => \data_out[10]_i_11_n_0\,
      O => \data_out[10]_i_2_n_0\
    );
\data_out[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \data_in_reg_n_0_[12]\,
      I1 => p_0_in1_in,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => diff(3),
      I4 => \data_out[10]_i_12_n_0\,
      O => \data_out[10]_i_3_n_0\
    );
\data_out[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \data_in_reg_n_0_[4]\,
      I1 => \data_out[14]_i_8_n_0\,
      I2 => diff(0),
      I3 => diff(1),
      I4 => diff(2),
      O => \data_out[10]_i_4_n_0\
    );
\data_out[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFFFE"
    )
        port map (
      I0 => \data_out[13]_i_16_n_0\,
      I1 => \data_out[13]_i_15_n_0\,
      I2 => \data_out[13]_i_14_n_0\,
      I3 => \data_out[14]_i_11_n_0\,
      I4 => \data_out[14]_i_14_n_0\,
      I5 => \data_in_reg_n_0_[14]\,
      O => \data_out[10]_i_5_n_0\
    );
\data_out[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \data_out[13]_i_7_n_0\,
      I1 => \data_out[12]_i_10_n_0\,
      I2 => \data_out[10]_i_13_n_0\,
      I3 => \data_out[10]_i_14_n_0\,
      I4 => \data_out[10]_i_15_n_0\,
      I5 => \data_out[10]_i_16_n_0\,
      O => \data_out[10]_i_6_n_0\
    );
\data_out[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_out[14]_i_10_n_0\,
      I1 => \data_in_reg_n_0_[10]\,
      I2 => \data_out[10]_i_17_n_0\,
      I3 => \data_out[10]_i_18_n_0\,
      I4 => \^s_axis_tready\,
      I5 => s_axis_tdata(10),
      O => \data_out[10]_i_7_n_0\
    );
\data_out[10]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => diff(1),
      I1 => diff(0),
      I2 => diff(2),
      O => \data_out[10]_i_8_n_0\
    );
\data_out[10]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C840FFFF"
    )
        port map (
      I0 => diff(0),
      I1 => diff(1),
      I2 => \data_in_reg_n_0_[12]\,
      I3 => \data_in_reg_n_0_[11]\,
      I4 => diff(2),
      O => \data_out[10]_i_9_n_0\
    );
\data_out[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \data_out[13]_i_5_n_0\,
      I1 => \data_out[11]_i_2_n_0\,
      I2 => \data_out[11]_i_3_n_0\,
      I3 => \data_out[11]_i_4_n_0\,
      I4 => \data_out[11]_i_5_n_0\,
      I5 => \data_out[11]_i_6_n_0\,
      O => data_out(11)
    );
\data_out[11]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAAFFCCFFFFFF"
    )
        port map (
      I0 => \data_in_reg_n_0_[13]\,
      I1 => \data_in_reg_n_0_[14]\,
      I2 => \data_in_reg_n_0_[12]\,
      I3 => diff(2),
      I4 => diff(0),
      I5 => diff(1),
      O => \data_out[11]_i_10_n_0\
    );
\data_out[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => p_0_in1_in,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => diff(3),
      I3 => \data_out[14]_i_18_n_0\,
      I4 => diff(2),
      I5 => \data_in_reg_n_0_[11]\,
      O => \data_out[11]_i_2_n_0\
    );
\data_out[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8F8F8F8F8F8"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tdata(11),
      I2 => \data_out[12]_i_3_n_0\,
      I3 => \data_in_reg_n_0_[12]\,
      I4 => \data_out[11]_i_7_n_0\,
      I5 => \data_out[14]_i_8_n_0\,
      O => \data_out[11]_i_3_n_0\
    );
\data_out[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAAAAAAA"
    )
        port map (
      I0 => \data_out[11]_i_8_n_0\,
      I1 => \data_in_reg_n_0_[4]\,
      I2 => diff(0),
      I3 => diff(1),
      I4 => \data_out[14]_i_14_n_0\,
      I5 => \data_out[11]_i_9_n_0\,
      O => \data_out[11]_i_4_n_0\
    );
\data_out[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0F0F0FEF2FEF2"
    )
        port map (
      I0 => \data_out[14]_i_7_n_0\,
      I1 => diff(0),
      I2 => \data_out[14]_i_17_n_0\,
      I3 => \data_out[13]_i_8_n_0\,
      I4 => diff(2),
      I5 => diff(1),
      O => \data_out[11]_i_5_n_0\
    );
\data_out[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFC840C840C840"
    )
        port map (
      I0 => diff(0),
      I1 => diff(1),
      I2 => \data_out[12]_i_8_n_0\,
      I3 => \data_out[14]_i_16_n_0\,
      I4 => \data_out[13]_i_10_n_0\,
      I5 => \data_out[11]_i_10_n_0\,
      O => \data_out[11]_i_6_n_0\
    );
\data_out[11]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => diff(0),
      I1 => diff(1),
      O => \data_out[11]_i_7_n_0\
    );
\data_out[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C0F0A000C000A0"
    )
        port map (
      I0 => \data_out[14]_i_13_n_0\,
      I1 => \data_out[13]_i_12_n_0\,
      I2 => diff(2),
      I3 => diff(1),
      I4 => diff(0),
      I5 => \data_out[12]_i_7_n_0\,
      O => \data_out[11]_i_8_n_0\
    );
\data_out[11]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \data_out[10]_i_10_n_0\,
      I1 => \data_in_reg_n_0_[12]\,
      I2 => diff(3),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => p_0_in1_in,
      O => \data_out[11]_i_9_n_0\
    );
\data_out[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \data_out[12]_i_2_n_0\,
      I1 => \data_out[12]_i_3_n_0\,
      I2 => \data_out[12]_i_4_n_0\,
      I3 => \data_out[13]_i_5_n_0\,
      I4 => \data_out[12]_i_5_n_0\,
      I5 => \data_out[12]_i_6_n_0\,
      O => data_out(12)
    );
\data_out[12]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E000A000"
    )
        port map (
      I0 => \data_out[13]_i_9_n_0\,
      I1 => diff(2),
      I2 => diff(1),
      I3 => diff(0),
      I4 => \data_out[14]_i_16_n_0\,
      O => \data_out[12]_i_10_n_0\
    );
\data_out[12]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_out[13]_i_8_n_0\,
      I1 => \data_out[12]_i_12_n_0\,
      I2 => \data_out[14]_i_14_n_0\,
      I3 => \data_in_reg_n_0_[13]\,
      I4 => \data_out[14]_i_19_n_0\,
      I5 => \data_in_reg_n_0_[8]\,
      O => \data_out[12]_i_11_n_0\
    );
\data_out[12]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => diff(0),
      I1 => diff(2),
      O => \data_out[12]_i_12_n_0\
    );
\data_out[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C0F0A000C000A0"
    )
        port map (
      I0 => \data_out[14]_i_16_n_0\,
      I1 => \data_out[14]_i_13_n_0\,
      I2 => diff(2),
      I3 => diff(1),
      I4 => diff(0),
      I5 => \data_out[13]_i_12_n_0\,
      O => \data_out[12]_i_2_n_0\
    );
\data_out[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => p_0_in1_in,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => diff(4),
      I3 => diff(3),
      O => \data_out[12]_i_3_n_0\
    );
\data_out[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8800FFF0880000F0"
    )
        port map (
      I0 => \data_out[12]_i_7_n_0\,
      I1 => diff(2),
      I2 => \data_out[13]_i_9_n_0\,
      I3 => diff(0),
      I4 => diff(1),
      I5 => \data_out[14]_i_7_n_0\,
      O => \data_out[12]_i_4_n_0\
    );
\data_out[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFC840C840C840"
    )
        port map (
      I0 => diff(0),
      I1 => diff(1),
      I2 => \data_out[13]_i_8_n_0\,
      I3 => \data_out[12]_i_8_n_0\,
      I4 => \data_out[13]_i_10_n_0\,
      I5 => \data_out[12]_i_9_n_0\,
      O => \data_out[12]_i_5_n_0\
    );
\data_out[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \data_out[14]_i_10_n_0\,
      I1 => \data_in_reg_n_0_[12]\,
      I2 => s_axis_tdata(12),
      I3 => \^s_axis_tready\,
      I4 => \data_out[12]_i_10_n_0\,
      I5 => \data_out[12]_i_11_n_0\,
      O => \data_out[12]_i_6_n_0\
    );
\data_out[12]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2000000220000"
    )
        port map (
      I0 => \data_in_reg_n_0_[5]\,
      I1 => diff(4),
      I2 => \data_in_reg_n_0_[13]\,
      I3 => p_0_in1_in,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => diff(3),
      O => \data_out[12]_i_7_n_0\
    );
\data_out[12]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F80000"
    )
        port map (
      I0 => \data_in_reg_n_0_[1]\,
      I1 => diff(3),
      I2 => \data_in_reg_n_0_[9]\,
      I3 => p_0_in1_in,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => diff(4),
      O => \data_out[12]_i_8_n_0\
    );
\data_out[12]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFFFFF"
    )
        port map (
      I0 => \data_in_reg_n_0_[14]\,
      I1 => diff(0),
      I2 => \data_in_reg_n_0_[13]\,
      I3 => diff(2),
      I4 => diff(1),
      O => \data_out[12]_i_9_n_0\
    );
\data_out[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \data_out[13]_i_2_n_0\,
      I1 => \data_out[13]_i_3_n_0\,
      I2 => \data_out[13]_i_4_n_0\,
      I3 => \data_out[13]_i_5_n_0\,
      I4 => \data_out[13]_i_6_n_0\,
      O => data_out(13)
    );
\data_out[13]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => diff(4),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => p_0_in1_in,
      O => \data_out[13]_i_10_n_0\
    );
\data_out[13]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => diff(0),
      I1 => diff(1),
      I2 => diff(2),
      I3 => \data_in_reg_n_0_[14]\,
      O => \data_out[13]_i_11_n_0\
    );
\data_out[13]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2000000220000"
    )
        port map (
      I0 => \data_in_reg_n_0_[6]\,
      I1 => diff(4),
      I2 => \data_in_reg_n_0_[14]\,
      I3 => p_0_in1_in,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => diff(3),
      O => \data_out[13]_i_12_n_0\
    );
\data_out[13]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC0C8C0CCC08880"
    )
        port map (
      I0 => \data_in_reg_n_0_[14]\,
      I1 => \data_out[14]_i_8_n_0\,
      I2 => diff(3),
      I3 => diff(2),
      I4 => \data_in_reg_n_0_[12]\,
      I5 => \data_in_reg_n_0_[7]\,
      O => \data_out[13]_i_13_n_0\
    );
\data_out[13]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFAEFF0CFF0C"
    )
        port map (
      I0 => \data_in_reg_n_0_[10]\,
      I1 => \data_out[12]_i_8_n_0\,
      I2 => \data_out[14]_i_15_n_0\,
      I3 => \data_out[13]_i_19_n_0\,
      I4 => \data_out[13]_i_20_n_0\,
      I5 => \data_out[14]_i_19_n_0\,
      O => \data_out[13]_i_14_n_0\
    );
\data_out[13]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC880000"
    )
        port map (
      I0 => \data_in_reg_n_0_[13]\,
      I1 => diff(1),
      I2 => diff(0),
      I3 => \data_in_reg_n_0_[14]\,
      I4 => \data_out[14]_i_8_n_0\,
      O => \data_out[13]_i_15_n_0\
    );
\data_out[13]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC88000000000000"
    )
        port map (
      I0 => \data_in_reg_n_0_[4]\,
      I1 => diff(2),
      I2 => diff(1),
      I3 => \data_in_reg_n_0_[5]\,
      I4 => diff(3),
      I5 => \data_out[14]_i_8_n_0\,
      O => \data_out[13]_i_16_n_0\
    );
\data_out[13]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA80000"
    )
        port map (
      I0 => \data_out[14]_i_19_n_0\,
      I1 => diff(2),
      I2 => diff(0),
      I3 => diff(1),
      I4 => \data_in_reg_n_0_[6]\,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \data_out[13]_i_17_n_0\
    );
\data_out[13]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => diff(1),
      I1 => diff(0),
      I2 => diff(2),
      O => \data_out[13]_i_18_n_0\
    );
\data_out[13]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040000000000"
    )
        port map (
      I0 => diff(4),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => p_0_in1_in,
      I3 => diff(3),
      I4 => diff(2),
      I5 => \data_in_reg_n_0_[11]\,
      O => \data_out[13]_i_19_n_0\
    );
\data_out[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \data_out[14]_i_10_n_0\,
      I1 => \data_in_reg_n_0_[13]\,
      I2 => s_axis_tdata(13),
      I3 => \^s_axis_tready\,
      I4 => \data_out[13]_i_7_n_0\,
      I5 => \data_out[12]_i_3_n_0\,
      O => \data_out[13]_i_2_n_0\
    );
\data_out[13]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => diff(2),
      I1 => \data_in_reg_n_0_[3]\,
      I2 => \data_in_reg_n_0_[9]\,
      O => \data_out[13]_i_20_n_0\
    );
\data_out[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCC80CC80CC80"
    )
        port map (
      I0 => diff(1),
      I1 => diff(0),
      I2 => \data_out[13]_i_8_n_0\,
      I3 => \data_out[13]_i_9_n_0\,
      I4 => \data_out[13]_i_10_n_0\,
      I5 => \data_out[13]_i_11_n_0\,
      O => \data_out[13]_i_3_n_0\
    );
\data_out[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C00000FF880000"
    )
        port map (
      I0 => \data_out[14]_i_13_n_0\,
      I1 => diff(2),
      I2 => \data_out[13]_i_12_n_0\,
      I3 => \data_out[14]_i_7_n_0\,
      I4 => diff(1),
      I5 => diff(0),
      O => \data_out[13]_i_4_n_0\
    );
\data_out[13]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \data_out[13]_i_13_n_0\,
      I1 => \data_out[13]_i_14_n_0\,
      I2 => \data_out[13]_i_15_n_0\,
      I3 => \data_out[13]_i_16_n_0\,
      I4 => \data_out[13]_i_17_n_0\,
      O => \data_out[13]_i_5_n_0\
    );
\data_out[13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000FFFFF0008888"
    )
        port map (
      I0 => \data_in_reg_n_0_[5]\,
      I1 => \data_out[14]_i_19_n_0\,
      I2 => diff(2),
      I3 => \data_out[14]_i_16_n_0\,
      I4 => diff(0),
      I5 => \data_out[14]_i_9_n_0\,
      O => \data_out[13]_i_6_n_0\
    );
\data_out[13]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_out[13]_i_8_n_0\,
      I1 => \data_out[13]_i_18_n_0\,
      I2 => \data_out[14]_i_14_n_0\,
      I3 => \data_in_reg_n_0_[13]\,
      I4 => \data_out[14]_i_19_n_0\,
      I5 => \data_in_reg_n_0_[8]\,
      O => \data_out[13]_i_7_n_0\
    );
\data_out[13]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F80000"
    )
        port map (
      I0 => \data_in_reg_n_0_[2]\,
      I1 => diff(3),
      I2 => \data_in_reg_n_0_[10]\,
      I3 => p_0_in1_in,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => diff(4),
      O => \data_out[13]_i_8_n_0\
    );
\data_out[13]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F80000"
    )
        port map (
      I0 => \data_in_reg_n_0_[4]\,
      I1 => diff(3),
      I2 => \data_in_reg_n_0_[12]\,
      I3 => p_0_in1_in,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => diff(4),
      O => \data_out[13]_i_9_n_0\
    );
\data_out[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \data_out[14]_i_2_n_0\,
      I1 => \data_out[14]_i_3_n_0\,
      I2 => \data_out[14]_i_4_n_0\,
      I3 => \data_out[14]_i_5_n_0\,
      I4 => \data_out[14]_i_6_n_0\,
      O => data_out(14)
    );
\data_out[14]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => diff(2),
      I1 => diff(0),
      I2 => diff(1),
      I3 => diff(3),
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => p_0_in1_in,
      O => \data_out[14]_i_10_n_0\
    );
\data_out[14]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEC00000"
    )
        port map (
      I0 => \data_in_reg_n_0_[7]\,
      I1 => \data_in_reg_n_0_[12]\,
      I2 => diff(2),
      I3 => diff(3),
      I4 => \data_out[14]_i_8_n_0\,
      O => \data_out[14]_i_11_n_0\
    );
\data_out[14]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => diff(3),
      I1 => p_0_in1_in,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[6]\,
      O => \data_out[14]_i_12_n_0\
    );
\data_out[14]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => diff(4),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => p_0_in1_in,
      I3 => \data_in_reg_n_0_[7]\,
      O => \data_out[14]_i_13_n_0\
    );
\data_out[14]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000E00"
    )
        port map (
      I0 => diff(2),
      I1 => diff(3),
      I2 => p_0_in1_in,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => diff(4),
      O => \data_out[14]_i_14_n_0\
    );
\data_out[14]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => diff(1),
      I1 => diff(2),
      O => \data_out[14]_i_15_n_0\
    );
\data_out[14]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F80000"
    )
        port map (
      I0 => \data_in_reg_n_0_[0]\,
      I1 => diff(3),
      I2 => \data_in_reg_n_0_[8]\,
      I3 => p_0_in1_in,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => diff(4),
      O => \data_out[14]_i_16_n_0\
    );
\data_out[14]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEC00000"
    )
        port map (
      I0 => \data_in_reg_n_0_[8]\,
      I1 => \data_in_reg_n_0_[13]\,
      I2 => diff(2),
      I3 => diff(3),
      I4 => \data_out[14]_i_8_n_0\,
      O => \data_out[14]_i_17_n_0\
    );
\data_out[14]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => diff(0),
      I1 => diff(1),
      O => \data_out[14]_i_18_n_0\
    );
\data_out[14]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => diff(4),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => p_0_in1_in,
      I3 => diff(3),
      O => \data_out[14]_i_19_n_0\
    );
\data_out[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFC0EAC0C0C0"
    )
        port map (
      I0 => \data_out[14]_i_7_n_0\,
      I1 => \data_out[14]_i_8_n_0\,
      I2 => \data_in_reg_n_0_[14]\,
      I3 => diff(0),
      I4 => diff(1),
      I5 => \data_out[14]_i_9_n_0\,
      O => \data_out[14]_i_2_n_0\
    );
\data_out[14]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8C8C00088880000"
    )
        port map (
      I0 => \data_in_reg_n_0_[12]\,
      I1 => \data_out[14]_i_8_n_0\,
      I2 => diff(3),
      I3 => diff(2),
      I4 => diff(1),
      I5 => \data_in_reg_n_0_[4]\,
      O => \data_out[14]_i_20_n_0\
    );
\data_out[14]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFCF00000000000"
    )
        port map (
      I0 => \data_in_reg_n_0_[3]\,
      I1 => \data_in_reg_n_0_[9]\,
      I2 => \data_in_reg_n_0_[11]\,
      I3 => diff(2),
      I4 => diff(3),
      I5 => \data_out[14]_i_8_n_0\,
      O => \data_out[14]_i_21_n_0\
    );
\data_out[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \data_out[14]_i_10_n_0\,
      I1 => \data_in_reg_n_0_[14]\,
      I2 => s_axis_tdata(14),
      I3 => \^s_axis_tready\,
      I4 => \data_out[14]_i_11_n_0\,
      I5 => \data_out[14]_i_12_n_0\,
      O => \data_out[14]_i_3_n_0\
    );
\data_out[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000FFFFF000F888"
    )
        port map (
      I0 => \data_out[14]_i_13_n_0\,
      I1 => diff(0),
      I2 => \data_out[14]_i_14_n_0\,
      I3 => \data_in_reg_n_0_[10]\,
      I4 => \data_out[14]_i_15_n_0\,
      I5 => \data_out[14]_i_16_n_0\,
      O => \data_out[14]_i_4_n_0\
    );
\data_out[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAEEAAEAAAEAAA"
    )
        port map (
      I0 => \data_out[14]_i_17_n_0\,
      I1 => \data_in_reg_n_0_[5]\,
      I2 => \data_out[14]_i_18_n_0\,
      I3 => \data_out[14]_i_19_n_0\,
      I4 => \data_in_reg_n_0_[2]\,
      I5 => diff(2),
      O => \data_out[14]_i_5_n_0\
    );
\data_out[14]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFEFEFEFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \data_out[14]_i_20_n_0\,
      I2 => \data_out[14]_i_21_n_0\,
      I3 => diff(4),
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => p_0_in1_in,
      O => \data_out[14]_i_6_n_0\
    );
\data_out[14]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F80000"
    )
        port map (
      I0 => \data_in_reg_n_0_[3]\,
      I1 => diff(3),
      I2 => \data_in_reg_n_0_[11]\,
      I3 => p_0_in1_in,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => diff(4),
      O => \data_out[14]_i_7_n_0\
    );
\data_out[14]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in1_in,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => diff(4),
      O => \data_out[14]_i_8_n_0\
    );
\data_out[14]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEAAA00000000"
    )
        port map (
      I0 => \data_in_reg_n_0_[13]\,
      I1 => diff(2),
      I2 => \data_in_reg_n_0_[1]\,
      I3 => diff(3),
      I4 => \data_in_reg_n_0_[9]\,
      I5 => \data_out[14]_i_8_n_0\,
      O => \data_out[14]_i_9_n_0\
    );
\data_out[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_0_in1_in,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \^s_axis_tready\,
      I4 => s_axis_tdata(15),
      O => data_out(15)
    );
\data_out[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => diff(2),
      I1 => diff(0),
      I2 => diff(1),
      I3 => diff(3),
      O => \data_out[15]_i_3_n_0\
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \data_out[1]_i_2_n_0\,
      I1 => \data_out[1]_i_3_n_0\,
      I2 => \data_out[1]_i_4_n_0\,
      I3 => \data_out[1]_i_5_n_0\,
      I4 => \data_out[1]_i_6_n_0\,
      I5 => \data_out[9]_i_2_n_0\,
      O => data_out(1)
    );
\data_out[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_out[6]_i_12_n_0\,
      I1 => \data_out[5]_i_8_n_0\,
      I2 => \data_out[5]_i_11_n_0\,
      I3 => \data_out[6]_i_10_n_0\,
      I4 => \^s_axis_tready\,
      I5 => s_axis_tdata(1),
      O => \data_out[1]_i_10_n_0\
    );
\data_out[1]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E020"
    )
        port map (
      I0 => diff(2),
      I1 => p_0_in1_in,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => diff(4),
      O => \data_out[1]_i_11_n_0\
    );
\data_out[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEEE"
    )
        port map (
      I0 => \data_out[1]_i_7_n_0\,
      I1 => \data_out[1]_i_8_n_0\,
      I2 => \data_out[10]_i_12_n_0\,
      I3 => \data_out[1]_i_9_n_0\,
      I4 => \data_out[1]_i_10_n_0\,
      O => \data_out[1]_i_2_n_0\
    );
\data_out[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => diff(4),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => diff(3),
      I3 => \data_out[14]_i_18_n_0\,
      I4 => diff(2),
      I5 => \data_in_reg_n_0_[1]\,
      O => \data_out[1]_i_3_n_0\
    );
\data_out[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0045004000000000"
    )
        port map (
      I0 => diff(3),
      I1 => \data_in_reg_n_0_[12]\,
      I2 => diff(0),
      I3 => diff(1),
      I4 => \data_in_reg_n_0_[13]\,
      I5 => \data_out[1]_i_11_n_0\,
      O => \data_out[1]_i_4_n_0\
    );
\data_out[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \data_out[10]_i_10_n_0\,
      I1 => \data_in_reg_n_0_[10]\,
      I2 => diff(3),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => diff(4),
      O => \data_out[1]_i_5_n_0\
    );
\data_out[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \data_in_reg_n_0_[14]\,
      I1 => \data_out[10]_i_8_n_0\,
      I2 => diff(3),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => diff(4),
      O => \data_out[1]_i_6_n_0\
    );
\data_out[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00008F880000"
    )
        port map (
      I0 => \data_in_reg_n_0_[6]\,
      I1 => \data_out[10]_i_8_n_0\,
      I2 => \data_out[10]_i_10_n_0\,
      I3 => \data_in_reg_n_0_[2]\,
      I4 => \data_out[2]_i_10_n_0\,
      I5 => \data_out[9]_i_8_n_0\,
      O => \data_out[1]_i_7_n_0\
    );
\data_out[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808FF0808080808"
    )
        port map (
      I0 => \data_in_reg_n_0_[9]\,
      I1 => \data_out[7]_i_14_n_0\,
      I2 => \data_out[7]_i_15_n_0\,
      I3 => \data_out[13]_i_10_n_0\,
      I4 => diff(3),
      I5 => \data_out[9]_i_9_n_0\,
      O => \data_out[1]_i_8_n_0\
    );
\data_out[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888000000F00000"
    )
        port map (
      I0 => \data_in_reg_n_0_[3]\,
      I1 => diff(4),
      I2 => \data_in_reg_n_0_[11]\,
      I3 => p_0_in1_in,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => diff(3),
      O => \data_out[1]_i_9_n_0\
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \data_out[2]_i_2_n_0\,
      I1 => \data_out[2]_i_3_n_0\,
      I2 => \data_out[2]_i_4_n_0\,
      I3 => \data_out[2]_i_5_n_0\,
      I4 => \data_out[2]_i_6_n_0\,
      I5 => \data_out[2]_i_7_n_0\,
      O => data_out(2)
    );
\data_out[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => diff(4),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => diff(3),
      O => \data_out[2]_i_10_n_0\
    );
\data_out[2]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_in_reg_n_0_[13]\,
      I1 => diff(1),
      O => \data_out[2]_i_11_n_0\
    );
\data_out[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000888800008888"
    )
        port map (
      I0 => \data_out[1]_i_11_n_0\,
      I1 => \data_out[10]_i_17_n_0\,
      I2 => \data_out[0]_i_11_n_0\,
      I3 => \data_in_reg_n_0_[6]\,
      I4 => diff(3),
      I5 => \data_out[7]_i_13_n_0\,
      O => \data_out[2]_i_12_n_0\
    );
\data_out[2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFE0000000"
    )
        port map (
      I0 => diff(0),
      I1 => diff(1),
      I2 => diff(3),
      I3 => \data_out[14]_i_8_n_0\,
      I4 => \data_in_reg_n_0_[6]\,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \data_out[2]_i_13_n_0\
    );
\data_out[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => s_axis_tdata(2),
      I1 => \^s_axis_tready\,
      I2 => \data_out[2]_i_8_n_0\,
      I3 => \data_out[6]_i_12_n_0\,
      I4 => \data_out[5]_i_7_n_0\,
      I5 => \data_out[2]_i_9_n_0\,
      O => \data_out[2]_i_2_n_0\
    );
\data_out[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_out[14]_i_19_n_0\,
      I1 => \data_in_reg_n_0_[14]\,
      I2 => \data_out[10]_i_9_n_0\,
      I3 => \data_out[12]_i_3_n_0\,
      I4 => \data_out[10]_i_12_n_0\,
      I5 => \data_out[3]_i_6_n_0\,
      O => \data_out[2]_i_3_n_0\
    );
\data_out[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => diff(4),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => diff(3),
      I3 => \data_out[14]_i_18_n_0\,
      I4 => diff(2),
      I5 => \data_in_reg_n_0_[2]\,
      O => \data_out[2]_i_4_n_0\
    );
\data_out[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \data_in_reg_n_0_[5]\,
      I1 => diff(1),
      I2 => diff(0),
      I3 => diff(2),
      I4 => \data_out[2]_i_10_n_0\,
      O => \data_out[2]_i_5_n_0\
    );
\data_out[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEEEAAAA"
    )
        port map (
      I0 => \data_out[13]_i_14_n_0\,
      I1 => \data_out[2]_i_11_n_0\,
      I2 => \data_out[14]_i_18_n_0\,
      I3 => \data_in_reg_n_0_[14]\,
      I4 => \data_out[14]_i_8_n_0\,
      I5 => \data_out[13]_i_16_n_0\,
      O => \data_out[2]_i_6_n_0\
    );
\data_out[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \data_out[13]_i_7_n_0\,
      I1 => \data_out[12]_i_10_n_0\,
      I2 => \data_out[2]_i_12_n_0\,
      I3 => \data_out[14]_i_11_n_0\,
      I4 => \data_out[2]_i_13_n_0\,
      O => \data_out[2]_i_7_n_0\
    );
\data_out[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008000F000800000"
    )
        port map (
      I0 => \data_out[7]_i_14_n_0\,
      I1 => \data_in_reg_n_0_[7]\,
      I2 => diff(1),
      I3 => diff(2),
      I4 => diff(0),
      I5 => \data_out[5]_i_8_n_0\,
      O => \data_out[2]_i_8_n_0\
    );
\data_out[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000800000008"
    )
        port map (
      I0 => \data_in_reg_n_0_[10]\,
      I1 => \data_out[7]_i_14_n_0\,
      I2 => diff(2),
      I3 => diff(1),
      I4 => diff(0),
      I5 => \data_out[1]_i_9_n_0\,
      O => \data_out[2]_i_9_n_0\
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \data_out[3]_i_2_n_0\,
      I1 => \data_out[3]_i_3_n_0\,
      I2 => \data_out[3]_i_4_n_0\,
      I3 => \data_out[9]_i_2_n_0\,
      I4 => \data_out[3]_i_5_n_0\,
      O => data_out(3)
    );
\data_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \data_out[4]_i_6_n_0\,
      I1 => \data_out[10]_i_12_n_0\,
      I2 => \data_out[3]_i_6_n_0\,
      I3 => \data_out[10]_i_10_n_0\,
      I4 => \data_in_reg_n_0_[11]\,
      I5 => \data_out[6]_i_8_n_0\,
      O => \data_out[3]_i_2_n_0\
    );
\data_out[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FAC000000AC0"
    )
        port map (
      I0 => \data_out[5]_i_6_n_0\,
      I1 => \data_out[5]_i_7_n_0\,
      I2 => diff(1),
      I3 => diff(0),
      I4 => diff(2),
      I5 => \data_out[5]_i_8_n_0\,
      O => \data_out[3]_i_3_n_0\
    );
\data_out[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_out[5]_i_9_n_0\,
      I1 => \data_in_reg_n_0_[3]\,
      I2 => \data_out[11]_i_10_n_0\,
      I3 => \data_out[12]_i_3_n_0\,
      I4 => \data_out[3]_i_7_n_0\,
      I5 => \data_out[5]_i_10_n_0\,
      O => \data_out[3]_i_4_n_0\
    );
\data_out[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888F888888888"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tdata(3),
      I2 => diff(2),
      I3 => diff(1),
      I4 => diff(0),
      I5 => \data_out[5]_i_11_n_0\,
      O => \data_out[3]_i_5_n_0\
    );
\data_out[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888000000F00000"
    )
        port map (
      I0 => \data_in_reg_n_0_[4]\,
      I1 => diff(4),
      I2 => \data_in_reg_n_0_[12]\,
      I3 => p_0_in1_in,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => diff(3),
      O => \data_out[3]_i_6_n_0\
    );
\data_out[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => diff(1),
      I1 => diff(0),
      I2 => diff(2),
      O => \data_out[3]_i_7_n_0\
    );
\data_out[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \data_out[4]_i_2_n_0\,
      I1 => \data_out[4]_i_3_n_0\,
      I2 => \data_out[4]_i_4_n_0\,
      I3 => \data_out[9]_i_2_n_0\,
      I4 => \data_out[4]_i_5_n_0\,
      O => data_out(4)
    );
\data_out[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \data_out[4]_i_6_n_0\,
      I1 => \data_out[10]_i_10_n_0\,
      I2 => \data_out[6]_i_8_n_0\,
      I3 => \data_in_reg_n_0_[12]\,
      I4 => \data_out[6]_i_12_n_0\,
      I5 => \data_out[6]_i_11_n_0\,
      O => \data_out[4]_i_2_n_0\
    );
\data_out[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CC000000AAF000"
    )
        port map (
      I0 => \data_out[5]_i_6_n_0\,
      I1 => \data_out[5]_i_7_n_0\,
      I2 => \data_out[5]_i_8_n_0\,
      I3 => diff(2),
      I4 => diff(1),
      I5 => diff(0),
      O => \data_out[4]_i_3_n_0\
    );
\data_out[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_out[5]_i_9_n_0\,
      I1 => \data_in_reg_n_0_[4]\,
      I2 => \data_out[12]_i_9_n_0\,
      I3 => \data_out[12]_i_3_n_0\,
      I4 => \data_out[10]_i_12_n_0\,
      I5 => \data_out[5]_i_10_n_0\,
      O => \data_out[4]_i_4_n_0\
    );
\data_out[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88888888888888"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tdata(4),
      I2 => diff(1),
      I3 => diff(0),
      I4 => diff(2),
      I5 => \data_out[5]_i_11_n_0\,
      O => \data_out[4]_i_5_n_0\
    );
\data_out[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888000000F00000"
    )
        port map (
      I0 => \data_in_reg_n_0_[5]\,
      I1 => diff(4),
      I2 => \data_in_reg_n_0_[13]\,
      I3 => p_0_in1_in,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => diff(3),
      O => \data_out[4]_i_6_n_0\
    );
\data_out[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \data_out[5]_i_2_n_0\,
      I1 => \data_out[5]_i_3_n_0\,
      I2 => \data_out[5]_i_4_n_0\,
      I3 => \data_out[9]_i_2_n_0\,
      I4 => \data_out[5]_i_5_n_0\,
      O => data_out(5)
    );
\data_out[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888000000F00000"
    )
        port map (
      I0 => \data_in_reg_n_0_[6]\,
      I1 => diff(4),
      I2 => \data_in_reg_n_0_[14]\,
      I3 => p_0_in1_in,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => diff(3),
      O => \data_out[5]_i_10_n_0\
    );
\data_out[5]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C8400000"
    )
        port map (
      I0 => p_0_in1_in,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => diff(3),
      I3 => diff(4),
      I4 => \data_in_reg_n_0_[7]\,
      O => \data_out[5]_i_11_n_0\
    );
\data_out[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_out[6]_i_8_n_0\,
      I1 => \data_in_reg_n_0_[13]\,
      I2 => \data_out[6]_i_9_n_0\,
      I3 => \data_out[6]_i_12_n_0\,
      I4 => \data_out[6]_i_10_n_0\,
      I5 => \data_out[6]_i_11_n_0\,
      O => \data_out[5]_i_2_n_0\
    );
\data_out[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \data_out[5]_i_6_n_0\,
      I1 => \data_out[5]_i_7_n_0\,
      I2 => \data_out[5]_i_8_n_0\,
      I3 => diff(1),
      I4 => diff(0),
      I5 => diff(2),
      O => \data_out[5]_i_3_n_0\
    );
\data_out[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF88FFFFFF88F888"
    )
        port map (
      I0 => \data_out[5]_i_9_n_0\,
      I1 => \data_in_reg_n_0_[5]\,
      I2 => \data_in_reg_n_0_[14]\,
      I3 => \data_out[12]_i_3_n_0\,
      I4 => \data_out[10]_i_10_n_0\,
      I5 => \data_out[5]_i_10_n_0\,
      O => \data_out[5]_i_4_n_0\
    );
\data_out[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888F88888888888"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tdata(5),
      I2 => diff(2),
      I3 => diff(1),
      I4 => diff(0),
      I5 => \data_out[5]_i_11_n_0\,
      O => \data_out[5]_i_5_n_0\
    );
\data_out[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C00000CC0A0000"
    )
        port map (
      I0 => \data_in_reg_n_0_[2]\,
      I1 => \data_in_reg_n_0_[10]\,
      I2 => diff(4),
      I3 => diff(3),
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => p_0_in1_in,
      O => \data_out[5]_i_6_n_0\
    );
\data_out[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C00000CC0A0000"
    )
        port map (
      I0 => \data_in_reg_n_0_[1]\,
      I1 => \data_in_reg_n_0_[9]\,
      I2 => diff(4),
      I3 => diff(3),
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => p_0_in1_in,
      O => \data_out[5]_i_7_n_0\
    );
\data_out[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C00000CC0A0000"
    )
        port map (
      I0 => \data_in_reg_n_0_[0]\,
      I1 => \data_in_reg_n_0_[8]\,
      I2 => diff(4),
      I3 => diff(3),
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => p_0_in1_in,
      O => \data_out[5]_i_8_n_0\
    );
\data_out[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => diff(2),
      I1 => diff(0),
      I2 => diff(1),
      I3 => diff(3),
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => diff(4),
      O => \data_out[5]_i_9_n_0\
    );
\data_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \data_out[6]_i_2_n_0\,
      I1 => \data_out[6]_i_3_n_0\,
      I2 => \data_out[6]_i_4_n_0\,
      I3 => \data_out[6]_i_5_n_0\,
      I4 => \data_out[6]_i_6_n_0\,
      I5 => \data_out[6]_i_7_n_0\,
      O => data_out(6)
    );
\data_out[6]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => diff(1),
      I1 => diff(2),
      I2 => diff(0),
      O => \data_out[6]_i_10_n_0\
    );
\data_out[6]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C00000CC0A0000"
    )
        port map (
      I0 => \data_in_reg_n_0_[3]\,
      I1 => \data_in_reg_n_0_[11]\,
      I2 => diff(4),
      I3 => diff(3),
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => p_0_in1_in,
      O => \data_out[6]_i_11_n_0\
    );
\data_out[6]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => diff(0),
      I1 => diff(2),
      I2 => diff(1),
      O => \data_out[6]_i_12_n_0\
    );
\data_out[6]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80F0808080808080"
    )
        port map (
      I0 => \data_out[7]_i_15_n_0\,
      I1 => \data_in_reg_n_0_[14]\,
      I2 => \data_out[14]_i_8_n_0\,
      I3 => diff(3),
      I4 => \data_out[6]_i_12_n_0\,
      I5 => \data_in_reg_n_0_[5]\,
      O => \data_out[6]_i_13_n_0\
    );
\data_out[6]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C0F0A000C000A0"
    )
        port map (
      I0 => \data_out[5]_i_6_n_0\,
      I1 => \data_out[5]_i_7_n_0\,
      I2 => diff(2),
      I3 => diff(1),
      I4 => diff(0),
      I5 => \data_out[5]_i_8_n_0\,
      O => \data_out[6]_i_14_n_0\
    );
\data_out[6]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008800A000"
    )
        port map (
      I0 => \data_in_reg_n_0_[7]\,
      I1 => diff(4),
      I2 => diff(3),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => p_0_in1_in,
      I5 => \data_out[10]_i_10_n_0\,
      O => \data_out[6]_i_15_n_0\
    );
\data_out[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_out[6]_i_8_n_0\,
      I1 => \data_in_reg_n_0_[14]\,
      I2 => \data_out[6]_i_9_n_0\,
      I3 => \data_out[6]_i_10_n_0\,
      I4 => \data_out[10]_i_8_n_0\,
      I5 => \data_out[6]_i_11_n_0\,
      O => \data_out[6]_i_2_n_0\
    );
\data_out[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => diff(4),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => diff(3),
      I3 => \data_out[14]_i_18_n_0\,
      I4 => diff(2),
      I5 => \data_in_reg_n_0_[6]\,
      O => \data_out[6]_i_3_n_0\
    );
\data_out[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8800800008000000"
    )
        port map (
      I0 => \data_in_reg_n_0_[13]\,
      I1 => \data_out[6]_i_12_n_0\,
      I2 => p_0_in1_in,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => diff(3),
      I5 => diff(4),
      O => \data_out[6]_i_4_n_0\
    );
\data_out[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEEEEEE"
    )
        port map (
      I0 => \data_out[13]_i_16_n_0\,
      I1 => \data_out[13]_i_14_n_0\,
      I2 => diff(1),
      I3 => \data_in_reg_n_0_[13]\,
      I4 => \data_out[14]_i_8_n_0\,
      O => \data_out[6]_i_5_n_0\
    );
\data_out[6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFEE"
    )
        port map (
      I0 => \data_out[6]_i_13_n_0\,
      I1 => \data_out[13]_i_17_n_0\,
      I2 => diff(3),
      I3 => \data_out[13]_i_10_n_0\,
      I4 => \data_out[6]_i_14_n_0\,
      O => \data_out[6]_i_6_n_0\
    );
\data_out[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \data_out[13]_i_7_n_0\,
      I1 => \data_out[12]_i_10_n_0\,
      I2 => s_axis_tdata(6),
      I3 => \^s_axis_tready\,
      I4 => \data_out[14]_i_11_n_0\,
      I5 => \data_out[6]_i_15_n_0\,
      O => \data_out[6]_i_7_n_0\
    );
\data_out[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000C840"
    )
        port map (
      I0 => p_0_in1_in,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => diff(3),
      I3 => diff(4),
      I4 => diff(2),
      I5 => \data_out[14]_i_18_n_0\,
      O => \data_out[6]_i_8_n_0\
    );
\data_out[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C00000CC0A0000"
    )
        port map (
      I0 => \data_in_reg_n_0_[4]\,
      I1 => \data_in_reg_n_0_[12]\,
      I2 => diff(4),
      I3 => diff(3),
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => p_0_in1_in,
      O => \data_out[6]_i_9_n_0\
    );
\data_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \data_out[7]_i_2_n_0\,
      I1 => \data_out[7]_i_3_n_0\,
      I2 => \data_out[7]_i_4_n_0\,
      I3 => \data_out[7]_i_5_n_0\,
      I4 => \data_out[10]_i_5_n_0\,
      I5 => \data_out[7]_i_6_n_0\,
      O => data_out(7)
    );
\data_out[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_out[9]_i_11_n_0\,
      I1 => \data_out[3]_i_7_n_0\,
      I2 => \data_out[8]_i_11_n_0\,
      I3 => \data_out[10]_i_12_n_0\,
      I4 => \^s_axis_tready\,
      I5 => s_axis_tdata(7),
      O => \data_out[7]_i_10_n_0\
    );
\data_out[7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8C880C008C88"
    )
        port map (
      I0 => \data_in_reg_n_0_[14]\,
      I1 => \data_out[13]_i_10_n_0\,
      I2 => \data_out[7]_i_16_n_0\,
      I3 => \data_in_reg_n_0_[13]\,
      I4 => \data_out[0]_i_12_n_0\,
      I5 => \data_out[14]_i_12_n_0\,
      O => \data_out[7]_i_11_n_0\
    );
\data_out[7]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0000000"
    )
        port map (
      I0 => \data_in_reg_n_0_[8]\,
      I1 => \data_in_reg_n_0_[0]\,
      I2 => diff(0),
      I3 => diff(1),
      I4 => diff(2),
      O => \data_out[7]_i_12_n_0\
    );
\data_out[7]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => diff(2),
      I1 => diff(1),
      I2 => diff(0),
      O => \data_out[7]_i_13_n_0\
    );
\data_out[7]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => diff(4),
      I1 => diff(3),
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => p_0_in1_in,
      O => \data_out[7]_i_14_n_0\
    );
\data_out[7]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => diff(1),
      I1 => diff(0),
      I2 => diff(2),
      O => \data_out[7]_i_15_n_0\
    );
\data_out[7]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => diff(0),
      I1 => diff(2),
      O => \data_out[7]_i_16_n_0\
    );
\data_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEA"
    )
        port map (
      I0 => \data_out[7]_i_7_n_0\,
      I1 => \data_in_reg_n_0_[7]\,
      I2 => \data_out[14]_i_10_n_0\,
      I3 => \data_out[7]_i_8_n_0\,
      I4 => \data_out[7]_i_9_n_0\,
      I5 => \data_out[7]_i_10_n_0\,
      O => \data_out[7]_i_2_n_0\
    );
\data_out[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFAEAEAEA"
    )
        port map (
      I0 => \data_out[7]_i_11_n_0\,
      I1 => \data_out[7]_i_12_n_0\,
      I2 => \data_out[14]_i_8_n_0\,
      I3 => \data_out[7]_i_13_n_0\,
      I4 => \data_in_reg_n_0_[3]\,
      I5 => \data_out[14]_i_17_n_0\,
      O => \data_out[7]_i_3_n_0\
    );
\data_out[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFE0000000"
    )
        port map (
      I0 => diff(1),
      I1 => diff(0),
      I2 => diff(2),
      I3 => \data_out[14]_i_8_n_0\,
      I4 => \data_in_reg_n_0_[10]\,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \data_out[7]_i_4_n_0\
    );
\data_out[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80808080F0808080"
    )
        port map (
      I0 => \data_out[10]_i_8_n_0\,
      I1 => \data_in_reg_n_0_[4]\,
      I2 => \data_out[14]_i_8_n_0\,
      I3 => diff(3),
      I4 => \data_in_reg_n_0_[2]\,
      I5 => \data_out[14]_i_15_n_0\,
      O => \data_out[7]_i_5_n_0\
    );
\data_out[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFF80008000"
    )
        port map (
      I0 => \data_out[14]_i_8_n_0\,
      I1 => diff(1),
      I2 => diff(0),
      I3 => \data_in_reg_n_0_[12]\,
      I4 => diff(3),
      I5 => \data_out[13]_i_10_n_0\,
      O => \data_out[7]_i_6_n_0\
    );
\data_out[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"020C0200"
    )
        port map (
      I0 => \data_out[12]_i_7_n_0\,
      I1 => diff(0),
      I2 => diff(2),
      I3 => diff(1),
      I4 => \data_out[13]_i_12_n_0\,
      O => \data_out[7]_i_7_n_0\
    );
\data_out[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040FFFF4040FF40"
    )
        port map (
      I0 => \data_out[10]_i_10_n_0\,
      I1 => \data_in_reg_n_0_[8]\,
      I2 => \data_out[7]_i_14_n_0\,
      I3 => \data_out[14]_i_13_n_0\,
      I4 => \data_out[7]_i_15_n_0\,
      I5 => \data_out[13]_i_10_n_0\,
      O => \data_out[7]_i_8_n_0\
    );
\data_out[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF08080808080808"
    )
        port map (
      I0 => \data_out[10]_i_18_n_0\,
      I1 => \data_in_reg_n_0_[11]\,
      I2 => \data_out[14]_i_18_n_0\,
      I3 => \data_out[7]_i_14_n_0\,
      I4 => \data_out[10]_i_8_n_0\,
      I5 => \data_in_reg_n_0_[12]\,
      O => \data_out[7]_i_9_n_0\
    );
\data_out[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \data_out[8]_i_2_n_0\,
      I1 => \data_out[8]_i_3_n_0\,
      I2 => \data_out[10]_i_5_n_0\,
      I3 => \data_out[8]_i_4_n_0\,
      I4 => \data_out[8]_i_5_n_0\,
      I5 => \data_out[8]_i_6_n_0\,
      O => data_out(8)
    );
\data_out[8]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3020100000000000"
    )
        port map (
      I0 => diff(0),
      I1 => diff(1),
      I2 => diff(2),
      I3 => \data_in_reg_n_0_[4]\,
      I4 => \data_in_reg_n_0_[3]\,
      I5 => \data_out[14]_i_8_n_0\,
      O => \data_out[8]_i_10_n_0\
    );
\data_out[8]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C00000CE0A0000"
    )
        port map (
      I0 => \data_in_reg_n_0_[1]\,
      I1 => \data_in_reg_n_0_[9]\,
      I2 => diff(4),
      I3 => diff(3),
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => p_0_in1_in,
      O => \data_out[8]_i_11_n_0\
    );
\data_out[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFFFE"
    )
        port map (
      I0 => \data_out[7]_i_4_n_0\,
      I1 => \data_out[8]_i_7_n_0\,
      I2 => \data_out[14]_i_17_n_0\,
      I3 => \data_out[13]_i_10_n_0\,
      I4 => diff(3),
      O => \data_out[8]_i_2_n_0\
    );
\data_out[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAAAF0A0EAAAA0A0"
    )
        port map (
      I0 => \data_out[14]_i_12_n_0\,
      I1 => \data_out[14]_i_16_n_0\,
      I2 => diff(0),
      I3 => diff(1),
      I4 => diff(2),
      I5 => \data_out[13]_i_9_n_0\,
      O => \data_out[8]_i_3_n_0\
    );
\data_out[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FAC000000AC0"
    )
        port map (
      I0 => \data_out[14]_i_13_n_0\,
      I1 => \data_out[13]_i_12_n_0\,
      I2 => diff(1),
      I3 => diff(0),
      I4 => diff(2),
      I5 => \data_out[12]_i_7_n_0\,
      O => \data_out[8]_i_4_n_0\
    );
\data_out[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000C8F00000C8C"
    )
        port map (
      I0 => \data_in_reg_n_0_[14]\,
      I1 => \data_out[13]_i_10_n_0\,
      I2 => diff(1),
      I3 => diff(0),
      I4 => diff(2),
      I5 => \data_out[14]_i_16_n_0\,
      O => \data_out[8]_i_5_n_0\
    );
\data_out[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \data_out[8]_i_8_n_0\,
      I1 => \data_out[14]_i_10_n_0\,
      I2 => \data_in_reg_n_0_[8]\,
      I3 => \data_out[10]_i_18_n_0\,
      I4 => \data_out[8]_i_9_n_0\,
      I5 => \data_out[8]_i_10_n_0\,
      O => \data_out[8]_i_6_n_0\
    );
\data_out[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000888800000000"
    )
        port map (
      I0 => \data_out[13]_i_10_n_0\,
      I1 => \data_in_reg_n_0_[13]\,
      I2 => \data_out[14]_i_19_n_0\,
      I3 => \data_in_reg_n_0_[2]\,
      I4 => diff(2),
      I5 => diff(0),
      O => \data_out[8]_i_7_n_0\
    );
\data_out[8]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \data_out[9]_i_11_n_0\,
      I1 => \data_out[10]_i_12_n_0\,
      I2 => \data_out[8]_i_11_n_0\,
      I3 => \data_out[10]_i_10_n_0\,
      I4 => \^s_axis_tready\,
      I5 => s_axis_tdata(8),
      O => \data_out[8]_i_8_n_0\
    );
\data_out[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => \data_in_reg_n_0_[11]\,
      I1 => diff(0),
      I2 => diff(1),
      I3 => \data_in_reg_n_0_[12]\,
      O => \data_out[8]_i_9_n_0\
    );
\data_out[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \data_out[12]_i_3_n_0\,
      I1 => \data_out[9]_i_2_n_0\,
      I2 => \data_out[9]_i_3_n_0\,
      I3 => \data_out[9]_i_4_n_0\,
      I4 => \data_out[9]_i_5_n_0\,
      I5 => \data_out[9]_i_6_n_0\,
      O => data_out(9)
    );
\data_out[9]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => \data_in_reg_n_0_[12]\,
      I1 => diff(0),
      I2 => diff(1),
      I3 => \data_in_reg_n_0_[13]\,
      O => \data_out[9]_i_10_n_0\
    );
\data_out[9]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C00000CE0A0000"
    )
        port map (
      I0 => \data_in_reg_n_0_[2]\,
      I1 => \data_in_reg_n_0_[10]\,
      I2 => diff(4),
      I3 => diff(3),
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => p_0_in1_in,
      O => \data_out[9]_i_11_n_0\
    );
\data_out[9]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8A8"
    )
        port map (
      I0 => \data_in_reg_n_0_[5]\,
      I1 => diff(1),
      I2 => diff(2),
      I3 => \data_in_reg_n_0_[4]\,
      O => \data_out[9]_i_12_n_0\
    );
\data_out[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \data_out[13]_i_17_n_0\,
      I1 => \data_out[9]_i_7_n_0\,
      I2 => \data_out[13]_i_14_n_0\,
      I3 => \data_out[13]_i_13_n_0\,
      I4 => \data_out[12]_i_10_n_0\,
      I5 => \data_out[13]_i_7_n_0\,
      O => \data_out[9]_i_2_n_0\
    );
\data_out[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_out[9]_i_8_n_0\,
      I1 => \data_out[14]_i_8_n_0\,
      I2 => \data_out[10]_i_11_n_0\,
      I3 => \data_out[10]_i_12_n_0\,
      I4 => \data_in_reg_n_0_[9]\,
      I5 => \data_out[14]_i_10_n_0\,
      O => \data_out[9]_i_3_n_0\
    );
\data_out[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C0C8FFC0C0C8C8"
    )
        port map (
      I0 => \data_in_reg_n_0_[14]\,
      I1 => \data_out[13]_i_10_n_0\,
      I2 => \data_out[9]_i_9_n_0\,
      I3 => \data_out[14]_i_18_n_0\,
      I4 => diff(2),
      I5 => \data_out[12]_i_8_n_0\,
      O => \data_out[9]_i_4_n_0\
    );
\data_out[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FAC000000AC0"
    )
        port map (
      I0 => \data_out[14]_i_16_n_0\,
      I1 => \data_out[14]_i_13_n_0\,
      I2 => diff(1),
      I3 => diff(0),
      I4 => diff(2),
      I5 => \data_out[13]_i_12_n_0\,
      O => \data_out[9]_i_5_n_0\
    );
\data_out[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF888F888"
    )
        port map (
      I0 => \data_out[9]_i_10_n_0\,
      I1 => \data_out[10]_i_18_n_0\,
      I2 => s_axis_tdata(9),
      I3 => \^s_axis_tready\,
      I4 => \data_out[10]_i_10_n_0\,
      I5 => \data_out[9]_i_11_n_0\,
      O => \data_out[9]_i_6_n_0\
    );
\data_out[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0808080"
    )
        port map (
      I0 => diff(3),
      I1 => \data_out[9]_i_12_n_0\,
      I2 => \data_out[14]_i_8_n_0\,
      I3 => \data_in_reg_n_0_[14]\,
      I4 => \data_out[14]_i_18_n_0\,
      I5 => \data_out[2]_i_11_n_0\,
      O => \data_out[9]_i_7_n_0\
    );
\data_out[9]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A000C0"
    )
        port map (
      I0 => \data_in_reg_n_0_[4]\,
      I1 => \data_in_reg_n_0_[5]\,
      I2 => diff(2),
      I3 => diff(1),
      I4 => diff(0),
      O => \data_out[9]_i_8_n_0\
    );
\data_out[9]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"058F"
    )
        port map (
      I0 => diff(1),
      I1 => \data_in_reg_n_0_[11]\,
      I2 => diff(2),
      I3 => diff(0),
      O => \data_out[9]_i_9_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => data_out0,
      D => data_out(0),
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
      D => data_out(10),
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
      D => data_out(11),
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
      D => data_out(12),
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
      D => data_out(13),
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
      D => data_out(14),
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
      D => data_out(15),
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
      D => data_out(1),
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
      D => data_out(2),
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
      D => data_out(3),
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
      D => data_out(4),
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
      D => data_out(5),
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
      D => data_out(6),
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
      D => data_out(7),
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
      D => data_out(8),
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
      D => data_out(9),
      Q => m_axis_tdata(9),
      R => '0'
    );
\diff[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000000"
    )
        port map (
      I0 => tlast_expected,
      I1 => s_axis_tlast,
      I2 => \^s_axis_tready\,
      I3 => s_axis_tvalid,
      I4 => aresetn,
      O => tlast_sampled0
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
m_axis_tlast_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axis_tvalid\,
      I1 => tlast_sampled,
      O => m_axis_tlast
    );
tlast_expected_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F40"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => \^s_axis_tready\,
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
      CLR => vol_led_ctrl_n_23,
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
vol_led_ctrl: entity work.bd_top_00_volume_controller_0_0_volume_led_ctrl
     port map (
      AR(0) => vol_led_ctrl_n_23,
      D(4 downto 0) => state1(4 downto 0),
      E(0) => data_out0,
      \FSM_onehot_state_reg[0]\(1) => vol_led_ctrl_n_20,
      \FSM_onehot_state_reg[0]\(0) => vol_led_ctrl_n_21,
      Q(2) => \FSM_onehot_state_reg_n_0_[2]\,
      Q(1) => \^s_axis_tready\,
      Q(0) => \FSM_onehot_state_reg_n_0_[0]\,
      aclk => aclk,
      aresetn => aresetn,
      \data_out_reg[0]\(0) => tlast_sampled0,
      \data_out_reg[0]_0\(0) => diff(4),
      \data_out_reg[0]_1\ => \data_out[15]_i_3_n_0\,
      volume_down => volume_down,
      volume_level(14 downto 0) => volume_level(14 downto 0),
      volume_up => volume_up
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_top_00_volume_controller_0_0 is
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
  attribute NotValidForBitStream of bd_top_00_volume_controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_top_00_volume_controller_0_0 : entity is "bd_top_00_volume_controller_0_0,volume_controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of bd_top_00_volume_controller_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of bd_top_00_volume_controller_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of bd_top_00_volume_controller_0_0 : entity is "volume_controller,Vivado 2019.2";
end bd_top_00_volume_controller_0_0;

architecture STRUCTURE of bd_top_00_volume_controller_0_0 is
  signal \<const1>\ : STD_LOGIC;
  signal \^volume_level\ : STD_LOGIC_VECTOR ( 15 downto 1 );
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
  volume_level(15 downto 1) <= \^volume_level\(15 downto 1);
  volume_level(0) <= \<const1>\;
U0: entity work.bd_top_00_volume_controller_0_0_volume_controller
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

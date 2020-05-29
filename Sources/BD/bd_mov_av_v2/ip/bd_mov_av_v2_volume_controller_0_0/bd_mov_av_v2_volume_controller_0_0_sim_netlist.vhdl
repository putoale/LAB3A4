-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Fri May 29 19:23:56 2020
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
    volume_level : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \volume_uns_reg[2]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    volume_up : in STD_LOGIC;
    volume_down : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \data_out_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn : in STD_LOGIC;
    \data_out_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_out_reg[0]_1\ : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_mov_av_v2_volume_controller_0_0_volume_led_ctrl : entity is "volume_led_ctrl";
end bd_mov_av_v2_volume_controller_0_0_volume_led_ctrl;

architecture STRUCTURE of bd_mov_av_v2_volume_controller_0_0_volume_led_ctrl is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^d\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_3_n_0\ : STD_LOGIC;
  signal diff2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \led_out[11]_i_2_n_0\ : STD_LOGIC;
  signal \led_out[13]_i_4_n_0\ : STD_LOGIC;
  signal \led_out[13]_i_5_n_0\ : STD_LOGIC;
  signal \led_out[15]_i_10_n_0\ : STD_LOGIC;
  signal \led_out[15]_i_11_n_0\ : STD_LOGIC;
  signal \led_out[15]_i_12_n_0\ : STD_LOGIC;
  signal \led_out[15]_i_3_n_0\ : STD_LOGIC;
  signal \led_out[15]_i_5_n_0\ : STD_LOGIC;
  signal \led_out[15]_i_6_n_0\ : STD_LOGIC;
  signal \led_out[15]_i_7_n_0\ : STD_LOGIC;
  signal \led_out[15]_i_8_n_0\ : STD_LOGIC;
  signal \led_out[15]_i_9_n_0\ : STD_LOGIC;
  signal \led_out[3]_i_2_n_0\ : STD_LOGIC;
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
  signal p_0_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal volume : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^volume_level\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \volume_uns[1]_i_1_n_0\ : STD_LOGIC;
  signal \volume_uns[2]_i_1_n_0\ : STD_LOGIC;
  signal \volume_uns[3]_i_1_n_0\ : STD_LOGIC;
  signal \volume_uns[3]_i_2_n_0\ : STD_LOGIC;
  signal \NLW_mult20_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_out[15]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \diff[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \diff[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \diff[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \diff[4]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \led_out[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \led_out[12]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \led_out[13]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \led_out[14]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \led_out[15]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \led_out[15]_i_10\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \led_out[15]_i_12\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \led_out[15]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \led_out[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \led_out[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \led_out[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \led_out[8]_i_1\ : label is "soft_lutpair7";
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
      INIT => X"4444444404444444"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => volume(2),
      I3 => volume(1),
      I4 => volume(0),
      I5 => volume(3),
      O => \volume_uns_reg[2]_0\(0)
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008FF0800"
    )
        port map (
      I0 => volume(2),
      I1 => \FSM_onehot_state[3]_i_2_n_0\,
      I2 => volume(3),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(0),
      O => \volume_uns_reg[2]_0\(1)
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => volume(1),
      I1 => volume(0),
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\data_out[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888F888F8888888"
    )
        port map (
      I0 => \data_out[15]_i_3_n_0\,
      I1 => \data_out_reg[0]\(0),
      I2 => aresetn,
      I3 => Q(2),
      I4 => \data_out_reg[0]_0\(0),
      I5 => \data_out_reg[0]_1\,
      O => E(0)
    );
\data_out[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => volume(2),
      I1 => volume(1),
      I2 => volume(0),
      I3 => volume(3),
      O => \data_out[15]_i_3_n_0\
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
      D => volume(1),
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
      D => volume(2),
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
      D => volume(3),
      Q => diff2(3),
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
      I0 => volume(1),
      I1 => volume(0),
      O => \^d\(1)
    );
\diff[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => volume(2),
      I1 => volume(0),
      I2 => volume(1),
      O => \^d\(2)
    );
\diff[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9555"
    )
        port map (
      I0 => volume(3),
      I1 => volume(2),
      I2 => volume(1),
      I3 => volume(0),
      O => \^d\(3)
    );
\diff[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1555"
    )
        port map (
      I0 => volume(3),
      I1 => volume(2),
      I2 => volume(1),
      I3 => volume(0),
      O => \^d\(4)
    );
\led_out[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_0_out(4),
      I1 => \^volume_level\(9),
      I2 => \led_out[11]_i_2_n_0\,
      O => p_1_in(10)
    );
\led_out[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF000F888F888"
    )
        port map (
      I0 => p_0_out(2),
      I1 => p_0_out(3),
      I2 => p_0_out(4),
      I3 => \^volume_level\(10),
      I4 => \led_out[11]_i_2_n_0\,
      I5 => p_0_out(0),
      O => p_1_in(11)
    );
\led_out[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF6000000000"
    )
        port map (
      I0 => mult2(7),
      I1 => mult2(3),
      I2 => \led_out[15]_i_5_n_0\,
      I3 => \led_out[15]_i_6_n_0\,
      I4 => p_0_out(2),
      I5 => p_0_out(3),
      O => \led_out[11]_i_2_n_0\
    );
\led_out[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => p_0_out(2),
      I1 => p_0_out(3),
      I2 => p_0_out(4),
      I3 => \^volume_level\(11),
      O => p_1_in(12)
    );
\led_out[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF888F000"
    )
        port map (
      I0 => p_0_out(2),
      I1 => p_0_out(3),
      I2 => p_0_out(4),
      I3 => \^volume_level\(12),
      I4 => p_0_out(0),
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
      O => p_0_out(2)
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
      O => p_0_out(3)
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
      I0 => p_0_out(4),
      I1 => \^volume_level\(13),
      I2 => \led_out[15]_i_3_n_0\,
      O => p_1_in(14)
    );
\led_out[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => p_0_out(4),
      I1 => \^volume_level\(14),
      I2 => \led_out[15]_i_3_n_0\,
      I3 => p_0_out(0),
      O => p_1_in(15)
    );
\led_out[15]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mult2(1),
      I1 => mult2(2),
      I2 => mult2(6),
      O => \led_out[15]_i_10_n_0\
    );
\led_out[15]_i_11\: unisim.vcomponents.LUT6
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
      O => \led_out[15]_i_11_n_0\
    );
\led_out[15]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => mult2(6),
      I1 => mult2(2),
      I2 => mult2(1),
      I3 => mult2(0),
      I4 => mult2(5),
      O => \led_out[15]_i_12_n_0\
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
      O => p_0_out(4)
    );
\led_out[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF60000000000000"
    )
        port map (
      I0 => mult2(7),
      I1 => mult2(3),
      I2 => \led_out[15]_i_5_n_0\,
      I3 => \led_out[15]_i_6_n_0\,
      I4 => p_0_out(2),
      I5 => p_0_out(3),
      O => \led_out[15]_i_3_n_0\
    );
\led_out[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00474700"
    )
        port map (
      I0 => \led_out[15]_i_7_n_0\,
      I1 => mult2(2),
      I2 => \led_out[15]_i_8_n_0\,
      I3 => mult2(7),
      I4 => mult2(3),
      I5 => \led_out[15]_i_9_n_0\,
      O => p_0_out(0)
    );
\led_out[15]_i_5\: unisim.vcomponents.LUT6
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
      O => \led_out[15]_i_5_n_0\
    );
\led_out[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800303C3C3C0C000"
    )
        port map (
      I0 => \led_out[15]_i_10_n_0\,
      I1 => mult2(7),
      I2 => mult2(3),
      I3 => mult2(4),
      I4 => mult2(8),
      I5 => mult2(5),
      O => \led_out[15]_i_6_n_0\
    );
\led_out[15]_i_7\: unisim.vcomponents.LUT6
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
      O => \led_out[15]_i_7_n_0\
    );
\led_out[15]_i_8\: unisim.vcomponents.LUT6
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
      O => \led_out[15]_i_8_n_0\
    );
\led_out[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA0000FC8200003C"
    )
        port map (
      I0 => \led_out[15]_i_11_n_0\,
      I1 => mult2(4),
      I2 => mult2(8),
      I3 => mult2(3),
      I4 => mult2(7),
      I5 => \led_out[15]_i_12_n_0\,
      O => \led_out[15]_i_9_n_0\
    );
\led_out[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => p_0_out(4),
      I1 => \^volume_level\(0),
      I2 => \led_out[3]_i_2_n_0\,
      I3 => p_0_out(0),
      O => p_1_in(1)
    );
\led_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_0_out(4),
      I1 => \^volume_level\(1),
      I2 => \led_out[3]_i_2_n_0\,
      O => p_1_in(2)
    );
\led_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF000FEEEFEEE"
    )
        port map (
      I0 => p_0_out(2),
      I1 => p_0_out(3),
      I2 => p_0_out(4),
      I3 => \^volume_level\(2),
      I4 => \led_out[3]_i_2_n_0\,
      I5 => p_0_out(0),
      O => p_1_in(3)
    );
\led_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF60"
    )
        port map (
      I0 => mult2(7),
      I1 => mult2(3),
      I2 => \led_out[15]_i_5_n_0\,
      I3 => \led_out[15]_i_6_n_0\,
      I4 => p_0_out(2),
      I5 => p_0_out(3),
      O => \led_out[3]_i_2_n_0\
    );
\led_out[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => p_0_out(2),
      I1 => p_0_out(3),
      I2 => p_0_out(4),
      I3 => \^volume_level\(3),
      O => p_1_in(4)
    );
\led_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEFFFFFEEEF000"
    )
        port map (
      I0 => p_0_out(2),
      I1 => p_0_out(3),
      I2 => p_0_out(4),
      I3 => \^volume_level\(4),
      I4 => p_0_out(0),
      I5 => \led_out[7]_i_2_n_0\,
      O => p_1_in(5)
    );
\led_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_0_out(4),
      I1 => \^volume_level\(5),
      I2 => \led_out[7]_i_2_n_0\,
      O => p_1_in(6)
    );
\led_out[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF888"
    )
        port map (
      I0 => p_0_out(4),
      I1 => \^volume_level\(6),
      I2 => \led_out[7]_i_2_n_0\,
      I3 => p_0_out(0),
      I4 => p_0_out(3),
      O => p_1_in(7)
    );
\led_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF600000"
    )
        port map (
      I0 => mult2(7),
      I1 => mult2(3),
      I2 => \led_out[15]_i_5_n_0\,
      I3 => \led_out[15]_i_6_n_0\,
      I4 => p_0_out(2),
      I5 => p_0_out(3),
      O => \led_out[7]_i_2_n_0\
    );
\led_out[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_0_out(4),
      I1 => \^volume_level\(7),
      I2 => p_0_out(3),
      O => p_1_in(8)
    );
\led_out[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF888"
    )
        port map (
      I0 => p_0_out(4),
      I1 => \^volume_level\(8),
      I2 => p_0_out(3),
      I3 => p_0_out(0),
      I4 => \led_out[11]_i_2_n_0\,
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
      DI(3) => diff2(0),
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
      DI(2 downto 0) => diff2(3 downto 1),
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
      I0 => diff2(3),
      O => \mult20_carry__0_i_1_n_0\
    );
\mult20_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => diff2(2),
      O => \mult20_carry__0_i_2_n_0\
    );
\mult20_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => diff2(1),
      O => \mult20_carry__0_i_3_n_0\
    );
mult20_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => diff2(0),
      O => mult20_carry_i_1_n_0
    );
mult20_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => diff2(0),
      O => mult20_carry_i_2_n_0
    );
mult20_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => diff2(3),
      O => mult20_carry_i_3_n_0
    );
mult20_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => diff2(2),
      O => mult20_carry_i_4_n_0
    );
mult20_carry_i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => diff2(1),
      O => mult20_carry_i_5_n_0
    );
\mult2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aresetn,
      D => diff2(0),
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
      INIT => X"F00FF00F8FF0F00F"
    )
        port map (
      I0 => volume(2),
      I1 => volume(3),
      I2 => volume(1),
      I3 => volume(0),
      I4 => volume_up,
      I5 => volume_down,
      O => \volume_uns[1]_i_1_n_0\
    );
\volume_uns[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF2DFF2200D200D"
    )
        port map (
      I0 => volume_up,
      I1 => volume_down,
      I2 => volume(0),
      I3 => volume(1),
      I4 => volume(3),
      I5 => volume(2),
      O => \volume_uns[2]_i_1_n_0\
    );
\volume_uns[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4666666666666662"
    )
        port map (
      I0 => volume_up,
      I1 => volume_down,
      I2 => volume(0),
      I3 => volume(1),
      I4 => volume(3),
      I5 => volume(2),
      O => \volume_uns[3]_i_1_n_0\
    );
\volume_uns[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEFE01800101"
    )
        port map (
      I0 => volume(2),
      I1 => volume(1),
      I2 => volume(0),
      I3 => volume_down,
      I4 => volume_up,
      I5 => volume(3),
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
entity bd_mov_av_v2_volume_controller_0_0_volume_controller is
  port (
    s_axis_tready : out STD_LOGIC;
    volume_level : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    volume_up : in STD_LOGIC;
    volume_down : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tready : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_mov_av_v2_volume_controller_0_0_volume_controller : entity is "volume_controller";
end bd_mov_av_v2_volume_controller_0_0_volume_controller;

architecture STRUCTURE of bd_mov_av_v2_volume_controller_0_0_volume_controller is
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal data_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \data_in[15]_i_1_n_0\ : STD_LOGIC;
  signal data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_out0 : STD_LOGIC;
  signal \data_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[10]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[12]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_10_n_0\ : STD_LOGIC;
  signal \data_out[13]_i_11_n_0\ : STD_LOGIC;
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
  signal \data_out[14]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[14]_i_9_n_0\ : STD_LOGIC;
  signal \data_out[15]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_10_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_11_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_12_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_13_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_9_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_8_n_0\ : STD_LOGIC;
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
  signal \data_out[6]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_7_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_8_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_9_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_5_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_6_n_0\ : STD_LOGIC;
  signal \data_out[8]_i_10_n_0\ : STD_LOGIC;
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
  signal \^s_axis_tready\ : STD_LOGIC;
  signal state1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal tlast_expected : STD_LOGIC;
  signal tlast_expected_0 : STD_LOGIC;
  signal tlast_expected_i_1_n_0 : STD_LOGIC;
  signal tlast_sampled : STD_LOGIC;
  signal tlast_sampled0 : STD_LOGIC;
  signal vol_led_ctrl_n_0 : STD_LOGIC;
  signal vol_led_ctrl_n_1 : STD_LOGIC;
  signal vol_led_ctrl_n_20 : STD_LOGIC;
  signal vol_led_ctrl_n_21 : STD_LOGIC;
  signal vol_led_ctrl_n_23 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_4\ : label is "soft_lutpair19";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "idle:0001,receive_data:0010,multiply:0100,send_data:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "idle:0001,receive_data:0010,multiply:0100,send_data:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "idle:0001,receive_data:0010,multiply:0100,send_data:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "idle:0001,receive_data:0010,multiply:0100,send_data:1000";
  attribute SOFT_HLUTNM of \data_out[0]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data_out[10]_i_8\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_out[11]_i_6\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data_out[11]_i_7\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_out[11]_i_8\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_out[12]_i_6\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data_out[13]_i_11\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_out[13]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_out[13]_i_5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_out[13]_i_7\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data_out[14]_i_10\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data_out[14]_i_11\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data_out[14]_i_13\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data_out[14]_i_6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \data_out[14]_i_7\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_out[14]_i_8\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_out[14]_i_9\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_out[15]_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_out[1]_i_4\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data_out[3]_i_4\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data_out[4]_i_4\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data_out[4]_i_6\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data_out[5]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_out[5]_i_5\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data_out[5]_i_7\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_out[5]_i_8\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data_out[5]_i_9\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_out[6]_i_14\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_out[6]_i_5\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \data_out[8]_i_10\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_out[8]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data_out[9]_i_11\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_out[9]_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of tlast_expected_i_1 : label is "soft_lutpair19";
begin
  m_axis_tvalid <= \^m_axis_tvalid\;
  s_axis_tready <= \^s_axis_tready\;
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEA"
    )
        port map (
      I0 => tlast_expected_0,
      I1 => \^m_axis_tvalid\,
      I2 => m_axis_tready,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \^s_axis_tready\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \^m_axis_tvalid\,
      O => \FSM_onehot_state[1]_i_2_n_0\
    );
\FSM_onehot_state[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8008"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tvalid,
      I2 => tlast_expected,
      I3 => s_axis_tlast,
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
      I0 => \^s_axis_tready\,
      I1 => s_axis_tvalid,
      I2 => aresetn,
      O => \data_in[15]_i_1_n_0\
    );
\data_in_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \data_in[15]_i_1_n_0\,
      D => s_axis_tdata(0),
      Q => data_in(0),
      R => '0'
    );
\data_in_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \data_in[15]_i_1_n_0\,
      D => s_axis_tdata(10),
      Q => data_in(10),
      R => '0'
    );
\data_in_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \data_in[15]_i_1_n_0\,
      D => s_axis_tdata(11),
      Q => data_in(11),
      R => '0'
    );
\data_in_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \data_in[15]_i_1_n_0\,
      D => s_axis_tdata(12),
      Q => data_in(12),
      R => '0'
    );
\data_in_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \data_in[15]_i_1_n_0\,
      D => s_axis_tdata(13),
      Q => data_in(13),
      R => '0'
    );
\data_in_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \data_in[15]_i_1_n_0\,
      D => s_axis_tdata(14),
      Q => data_in(14),
      R => '0'
    );
\data_in_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \data_in[15]_i_1_n_0\,
      D => s_axis_tdata(15),
      Q => data_in(15),
      R => '0'
    );
\data_in_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \data_in[15]_i_1_n_0\,
      D => s_axis_tdata(1),
      Q => data_in(1),
      R => '0'
    );
\data_in_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \data_in[15]_i_1_n_0\,
      D => s_axis_tdata(2),
      Q => data_in(2),
      R => '0'
    );
\data_in_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \data_in[15]_i_1_n_0\,
      D => s_axis_tdata(3),
      Q => data_in(3),
      R => '0'
    );
\data_in_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \data_in[15]_i_1_n_0\,
      D => s_axis_tdata(4),
      Q => data_in(4),
      R => '0'
    );
\data_in_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \data_in[15]_i_1_n_0\,
      D => s_axis_tdata(5),
      Q => data_in(5),
      R => '0'
    );
\data_in_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \data_in[15]_i_1_n_0\,
      D => s_axis_tdata(6),
      Q => data_in(6),
      R => '0'
    );
\data_in_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \data_in[15]_i_1_n_0\,
      D => s_axis_tdata(7),
      Q => data_in(7),
      R => '0'
    );
\data_in_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \data_in[15]_i_1_n_0\,
      D => s_axis_tdata(8),
      Q => data_in(8),
      R => '0'
    );
\data_in_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \data_in[15]_i_1_n_0\,
      D => s_axis_tdata(9),
      Q => data_in(9),
      R => '0'
    );
\data_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF444"
    )
        port map (
      I0 => \data_out[0]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^s_axis_tready\,
      I3 => s_axis_tdata(0),
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => data_out(0)
    );
\data_out[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555500001101"
    )
        port map (
      I0 => \data_out[14]_i_3_n_0\,
      I1 => \data_out[0]_i_3_n_0\,
      I2 => diff(0),
      I3 => \data_out[1]_i_5_n_0\,
      I4 => \data_out[10]_i_4_n_0\,
      I5 => \data_out[5]_i_3_n_0\,
      O => \data_out[0]_i_2_n_0\
    );
\data_out[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002A2AAAA02A2"
    )
        port map (
      I0 => \data_out[14]_i_9_n_0\,
      I1 => \data_out[0]_i_4_n_0\,
      I2 => \data_out[11]_i_7_n_0\,
      I3 => \data_out[0]_i_5_n_0\,
      I4 => \data_out[14]_i_8_n_0\,
      I5 => \data_out[2]_i_7_n_0\,
      O => \data_out[0]_i_3_n_0\
    );
\data_out[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => data_in(4),
      I1 => \data_out[10]_i_8_n_0\,
      I2 => data_in(12),
      O => \data_out[0]_i_4_n_0\
    );
\data_out[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0DD"
    )
        port map (
      I0 => data_in(8),
      I1 => \data_out[10]_i_8_n_0\,
      I2 => \data_out[11]_i_8_n_0\,
      I3 => data_in(0),
      O => \data_out[0]_i_5_n_0\
    );
\data_out[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFD0D0D0"
    )
        port map (
      I0 => \data_out[10]_i_2_n_0\,
      I1 => \data_out[10]_i_3_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \^s_axis_tready\,
      I4 => s_axis_tdata(10),
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => data_out(10)
    );
\data_out[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBAAAABABBBABB"
    )
        port map (
      I0 => \data_out[5]_i_3_n_0\,
      I1 => \data_out[10]_i_4_n_0\,
      I2 => \data_out[10]_i_5_n_0\,
      I3 => diff(0),
      I4 => \data_out[10]_i_6_n_0\,
      I5 => \data_out[14]_i_9_n_0\,
      O => \data_out[10]_i_2_n_0\
    );
\data_out[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA2000"
    )
        port map (
      I0 => \data_out[14]_i_5_n_0\,
      I1 => \data_out[11]_i_5_n_0\,
      I2 => diff(4),
      I3 => diff(0),
      I4 => \data_out[10]_i_7_n_0\,
      I5 => \data_out[14]_i_3_n_0\,
      O => \data_out[10]_i_3_n_0\
    );
\data_out[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => diff(3),
      I1 => diff(1),
      I2 => diff(0),
      I3 => diff(2),
      I4 => diff(4),
      I5 => data_in(15),
      O => \data_out[10]_i_4_n_0\
    );
\data_out[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F440F0F0F770F0F"
    )
        port map (
      I0 => data_in(13),
      I1 => \data_out[14]_i_8_n_0\,
      I2 => data_in(15),
      I3 => \data_out[11]_i_8_n_0\,
      I4 => \data_out[11]_i_7_n_0\,
      I5 => data_in(11),
      O => \data_out[10]_i_5_n_0\
    );
\data_out[10]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAA00AA"
    )
        port map (
      I0 => \data_out[9]_i_7_n_0\,
      I1 => \data_out[11]_i_7_n_0\,
      I2 => \data_out[14]_i_8_n_0\,
      I3 => data_in(15),
      I4 => \data_out[10]_i_8_n_0\,
      O => \data_out[10]_i_6_n_0\
    );
\data_out[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540FFFF45404540"
    )
        port map (
      I0 => diff(4),
      I1 => \data_out[9]_i_8_n_0\,
      I2 => diff(0),
      I3 => \data_out[11]_i_6_n_0\,
      I4 => \data_out[9]_i_7_n_0\,
      I5 => \data_out[13]_i_3_n_0\,
      O => \data_out[10]_i_7_n_0\
    );
\data_out[10]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA95555"
    )
        port map (
      I0 => diff(3),
      I1 => diff(1),
      I2 => diff(0),
      I3 => diff(2),
      I4 => diff(4),
      O => \data_out[10]_i_8_n_0\
    );
\data_out[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF444"
    )
        port map (
      I0 => \data_out[11]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^s_axis_tready\,
      I3 => s_axis_tdata(11),
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => data_out(11)
    );
\data_out[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002A222A2A"
    )
        port map (
      I0 => \data_out[11]_i_3_n_0\,
      I1 => \data_out[14]_i_5_n_0\,
      I2 => \data_out[11]_i_4_n_0\,
      I3 => \data_out[11]_i_5_n_0\,
      I4 => \data_out[13]_i_3_n_0\,
      I5 => \data_out[14]_i_3_n_0\,
      O => \data_out[11]_i_2_n_0\
    );
\data_out[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBAAAABABBBABB"
    )
        port map (
      I0 => \data_out[5]_i_3_n_0\,
      I1 => \data_out[10]_i_4_n_0\,
      I2 => \data_out[10]_i_5_n_0\,
      I3 => \data_out[14]_i_9_n_0\,
      I4 => \data_out[12]_i_7_n_0\,
      I5 => diff(0),
      O => \data_out[11]_i_3_n_0\
    );
\data_out[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FAA00CC"
    )
        port map (
      I0 => \data_out[11]_i_6_n_0\,
      I1 => \data_out[12]_i_6_n_0\,
      I2 => \data_out[12]_i_3_n_0\,
      I3 => diff(4),
      I4 => diff(0),
      O => \data_out[11]_i_4_n_0\
    );
\data_out[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF47CCFFFF47FF"
    )
        port map (
      I0 => data_in(13),
      I1 => \data_out[14]_i_8_n_0\,
      I2 => data_in(11),
      I3 => \data_out[11]_i_7_n_0\,
      I4 => \data_out[11]_i_8_n_0\,
      I5 => data_in(15),
      O => \data_out[11]_i_5_n_0\
    );
\data_out[11]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out[9]_i_12_n_0\,
      I1 => diff(1),
      I2 => \data_out[13]_i_11_n_0\,
      O => \data_out[11]_i_6_n_0\
    );
\data_out[11]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9995"
    )
        port map (
      I0 => diff(2),
      I1 => diff(4),
      I2 => diff(1),
      I3 => diff(0),
      O => \data_out[11]_i_7_n_0\
    );
\data_out[11]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6666666A"
    )
        port map (
      I0 => diff(3),
      I1 => diff(4),
      I2 => diff(2),
      I3 => diff(0),
      I4 => diff(1),
      O => \data_out[11]_i_8_n_0\
    );
\data_out[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF444"
    )
        port map (
      I0 => \data_out[12]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^s_axis_tready\,
      I3 => s_axis_tdata(12),
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => data_out(12)
    );
\data_out[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000055F7"
    )
        port map (
      I0 => \data_out[14]_i_5_n_0\,
      I1 => \data_out[13]_i_3_n_0\,
      I2 => \data_out[12]_i_3_n_0\,
      I3 => \data_out[12]_i_4_n_0\,
      I4 => \data_out[12]_i_5_n_0\,
      I5 => \data_out[14]_i_3_n_0\,
      O => \data_out[12]_i_2_n_0\
    );
\data_out[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1540FFFFD57F"
    )
        port map (
      I0 => data_in(14),
      I1 => diff(0),
      I2 => diff(4),
      I3 => diff(1),
      I4 => \data_out[14]_i_7_n_0\,
      I5 => data_in(12),
      O => \data_out[12]_i_3_n_0\
    );
\data_out[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FAA00CC"
    )
        port map (
      I0 => \data_out[12]_i_6_n_0\,
      I1 => \data_out[13]_i_7_n_0\,
      I2 => \data_out[13]_i_4_n_0\,
      I3 => diff(4),
      I4 => diff(0),
      O => \data_out[12]_i_4_n_0\
    );
\data_out[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4544555545444544"
    )
        port map (
      I0 => \data_out[5]_i_3_n_0\,
      I1 => \data_out[10]_i_4_n_0\,
      I2 => \data_out[13]_i_9_n_0\,
      I3 => diff(0),
      I4 => \data_out[12]_i_7_n_0\,
      I5 => \data_out[14]_i_9_n_0\,
      O => \data_out[12]_i_5_n_0\
    );
\data_out[12]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out[9]_i_11_n_0\,
      I1 => diff(1),
      I2 => \data_out[14]_i_18_n_0\,
      O => \data_out[12]_i_6_n_0\
    );
\data_out[12]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505553555F555355"
    )
        port map (
      I0 => data_in(15),
      I1 => data_in(12),
      I2 => \data_out[11]_i_8_n_0\,
      I3 => \data_out[11]_i_7_n_0\,
      I4 => \data_out[14]_i_8_n_0\,
      I5 => data_in(14),
      O => \data_out[12]_i_7_n_0\
    );
\data_out[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF444"
    )
        port map (
      I0 => \data_out[13]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^s_axis_tready\,
      I3 => s_axis_tdata(13),
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => data_out(13)
    );
\data_out[13]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4755555555474747"
    )
        port map (
      I0 => data_in(15),
      I1 => \data_out[14]_i_7_n_0\,
      I2 => data_in(14),
      I3 => diff(0),
      I4 => diff(4),
      I5 => diff(1),
      O => \data_out[13]_i_10_n_0\
    );
\data_out[13]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data_in(6),
      I1 => diff(2),
      I2 => data_in(2),
      I3 => diff(3),
      I4 => data_in(10),
      O => \data_out[13]_i_11_n_0\
    );
\data_out[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000055F7"
    )
        port map (
      I0 => \data_out[14]_i_5_n_0\,
      I1 => \data_out[13]_i_3_n_0\,
      I2 => \data_out[13]_i_4_n_0\,
      I3 => \data_out[13]_i_5_n_0\,
      I4 => \data_out[13]_i_6_n_0\,
      I5 => \data_out[14]_i_3_n_0\,
      O => \data_out[13]_i_2_n_0\
    );
\data_out[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0E0000"
    )
        port map (
      I0 => diff(3),
      I1 => diff(1),
      I2 => diff(0),
      I3 => diff(2),
      I4 => diff(4),
      O => \data_out[13]_i_3_n_0\
    );
\data_out[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF1540D57F"
    )
        port map (
      I0 => data_in(15),
      I1 => diff(0),
      I2 => diff(4),
      I3 => diff(1),
      I4 => data_in(13),
      I5 => \data_out[14]_i_7_n_0\,
      O => \data_out[13]_i_4_n_0\
    );
\data_out[13]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FA0C0A0C"
    )
        port map (
      I0 => \data_out[13]_i_7_n_0\,
      I1 => \data_out[14]_i_13_n_0\,
      I2 => diff(4),
      I3 => diff(0),
      I4 => \data_out[13]_i_8_n_0\,
      O => \data_out[13]_i_5_n_0\
    );
\data_out[13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4544555545444544"
    )
        port map (
      I0 => \data_out[5]_i_3_n_0\,
      I1 => \data_out[10]_i_4_n_0\,
      I2 => \data_out[13]_i_9_n_0\,
      I3 => \data_out[14]_i_9_n_0\,
      I4 => \data_out[13]_i_10_n_0\,
      I5 => diff(0),
      O => \data_out[13]_i_6_n_0\
    );
\data_out[13]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out[13]_i_11_n_0\,
      I1 => diff(1),
      I2 => \data_out[14]_i_14_n_0\,
      O => \data_out[13]_i_7_n_0\
    );
\data_out[13]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000020022"
    )
        port map (
      I0 => data_in(14),
      I1 => diff(3),
      I2 => diff(0),
      I3 => diff(1),
      I4 => diff(4),
      I5 => diff(2),
      O => \data_out[13]_i_8_n_0\
    );
\data_out[13]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555551540D57F"
    )
        port map (
      I0 => data_in(15),
      I1 => diff(0),
      I2 => diff(4),
      I3 => diff(1),
      I4 => data_in(13),
      I5 => \data_out[14]_i_7_n_0\,
      O => \data_out[13]_i_9_n_0\
    );
\data_out[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFD550000"
    )
        port map (
      I0 => \data_out[14]_i_2_n_0\,
      I1 => \data_out[14]_i_3_n_0\,
      I2 => \data_out[14]_i_4_n_0\,
      I3 => \data_out[14]_i_5_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \data_out[14]_i_6_n_0\,
      O => data_out(14)
    );
\data_out[14]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out[14]_i_14_n_0\,
      I1 => diff(1),
      I2 => \data_out[14]_i_15_n_0\,
      O => \data_out[14]_i_10_n_0\
    );
\data_out[14]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out[14]_i_16_n_0\,
      I1 => diff(1),
      I2 => \data_out[14]_i_17_n_0\,
      O => \data_out[14]_i_11_n_0\
    );
\data_out[14]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777FEEEAFFFFFFFF"
    )
        port map (
      I0 => diff(2),
      I1 => diff(4),
      I2 => diff(1),
      I3 => diff(0),
      I4 => diff(3),
      I5 => data_in(15),
      O => \data_out[14]_i_12_n_0\
    );
\data_out[14]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_out[14]_i_18_n_0\,
      I1 => diff(1),
      I2 => \data_out[14]_i_16_n_0\,
      O => \data_out[14]_i_13_n_0\
    );
\data_out[14]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(8),
      I2 => diff(2),
      I3 => data_in(4),
      I4 => diff(3),
      I5 => data_in(12),
      O => \data_out[14]_i_14_n_0\
    );
\data_out[14]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(2),
      I1 => data_in(10),
      I2 => diff(2),
      I3 => data_in(6),
      I4 => diff(3),
      I5 => data_in(14),
      O => \data_out[14]_i_15_n_0\
    );
\data_out[14]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(9),
      I2 => diff(2),
      I3 => data_in(5),
      I4 => diff(3),
      I5 => data_in(13),
      O => \data_out[14]_i_16_n_0\
    );
\data_out[14]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(3),
      I1 => data_in(11),
      I2 => diff(2),
      I3 => data_in(7),
      I4 => diff(3),
      I5 => data_in(15),
      O => \data_out[14]_i_17_n_0\
    );
\data_out[14]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data_in(7),
      I1 => diff(2),
      I2 => data_in(3),
      I3 => diff(3),
      I4 => data_in(11),
      O => \data_out[14]_i_18_n_0\
    );
\data_out[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01FB00FF"
    )
        port map (
      I0 => \data_out[14]_i_7_n_0\,
      I1 => data_in(14),
      I2 => \data_out[14]_i_8_n_0\,
      I3 => data_in(15),
      I4 => \data_out[14]_i_9_n_0\,
      I5 => \data_out[5]_i_3_n_0\,
      O => \data_out[14]_i_2_n_0\
    );
\data_out[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => data_in(15),
      I1 => \data_out[14]_i_10_n_0\,
      I2 => diff(0),
      I3 => \data_out[14]_i_11_n_0\,
      I4 => diff(4),
      O => \data_out[14]_i_3_n_0\
    );
\data_out[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F200F0F2F200000"
    )
        port map (
      I0 => diff(1),
      I1 => \data_out[14]_i_12_n_0\,
      I2 => diff(4),
      I3 => \data_out[14]_i_13_n_0\,
      I4 => diff(0),
      I5 => \data_out[14]_i_10_n_0\,
      O => \data_out[14]_i_4_n_0\
    );
\data_out[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A2A2A2222222A22"
    )
        port map (
      I0 => \data_out[5]_i_3_n_0\,
      I1 => data_in(15),
      I2 => diff(4),
      I3 => \data_out[14]_i_11_n_0\,
      I4 => diff(0),
      I5 => \data_out[14]_i_10_n_0\,
      O => \data_out[14]_i_5_n_0\
    );
\data_out[14]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axis_tdata(14),
      I2 => \^s_axis_tready\,
      O => \data_out[14]_i_6_n_0\
    );
\data_out[14]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"57FFFEAA"
    )
        port map (
      I0 => diff(3),
      I1 => diff(0),
      I2 => diff(1),
      I3 => diff(4),
      I4 => diff(2),
      O => \data_out[14]_i_7_n_0\
    );
\data_out[14]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => diff(0),
      I1 => diff(4),
      I2 => diff(1),
      O => \data_out[14]_i_8_n_0\
    );
\data_out[14]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0E0F0F"
    )
        port map (
      I0 => diff(3),
      I1 => diff(1),
      I2 => diff(0),
      I3 => diff(2),
      I4 => diff(4),
      O => \data_out[14]_i_9_n_0\
    );
\data_out[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => \^s_axis_tready\,
      I2 => data_in(15),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => data_out(15)
    );
\data_out[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => diff(3),
      I1 => diff(1),
      I2 => diff(0),
      I3 => diff(2),
      O => \data_out[15]_i_4_n_0\
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF5D0000"
    )
        port map (
      I0 => \data_out[1]_i_2_n_0\,
      I1 => \data_out[14]_i_5_n_0\,
      I2 => \data_out[1]_i_3_n_0\,
      I3 => \data_out[14]_i_3_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \data_out[1]_i_4_n_0\,
      O => data_out(1)
    );
\data_out[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBAAAABABBBABB"
    )
        port map (
      I0 => \data_out[5]_i_3_n_0\,
      I1 => \data_out[10]_i_4_n_0\,
      I2 => \data_out[1]_i_5_n_0\,
      I3 => \data_out[14]_i_9_n_0\,
      I4 => \data_out[2]_i_4_n_0\,
      I5 => diff(0),
      O => \data_out[1]_i_2_n_0\
    );
\data_out[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDD0DDDDD000D00"
    )
        port map (
      I0 => \data_out[13]_i_3_n_0\,
      I1 => \data_out[1]_i_5_n_0\,
      I2 => diff(0),
      I3 => diff(4),
      I4 => \data_out[2]_i_5_n_0\,
      I5 => \data_out[1]_i_6_n_0\,
      O => \data_out[1]_i_3_n_0\
    );
\data_out[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axis_tdata(1),
      I2 => \^s_axis_tready\,
      O => \data_out[1]_i_4_n_0\
    );
\data_out[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EABF2A80"
    )
        port map (
      I0 => \data_out[3]_i_11_n_0\,
      I1 => diff(0),
      I2 => diff(4),
      I3 => diff(1),
      I4 => \data_out[1]_i_7_n_0\,
      O => \data_out[1]_i_5_n_0\
    );
\data_out[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFDCFFDF"
    )
        port map (
      I0 => data_in(0),
      I1 => diff(1),
      I2 => diff(0),
      I3 => diff(3),
      I4 => data_in(1),
      I5 => diff(2),
      O => \data_out[1]_i_6_n_0\
    );
\data_out[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(9),
      I2 => \data_out[11]_i_7_n_0\,
      I3 => data_in(5),
      I4 => \data_out[10]_i_8_n_0\,
      I5 => data_in(13),
      O => \data_out[1]_i_7_n_0\
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFD0D0D0"
    )
        port map (
      I0 => \data_out[2]_i_2_n_0\,
      I1 => \data_out[2]_i_3_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \^s_axis_tready\,
      I4 => s_axis_tdata(2),
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => data_out(2)
    );
\data_out[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBAAAABABBBABB"
    )
        port map (
      I0 => \data_out[5]_i_3_n_0\,
      I1 => \data_out[10]_i_4_n_0\,
      I2 => \data_out[3]_i_5_n_0\,
      I3 => diff(0),
      I4 => \data_out[2]_i_4_n_0\,
      I5 => \data_out[14]_i_9_n_0\,
      O => \data_out[2]_i_2_n_0\
    );
\data_out[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A88AAAA"
    )
        port map (
      I0 => \data_out[14]_i_5_n_0\,
      I1 => \data_out[14]_i_3_n_0\,
      I2 => \data_out[2]_i_5_n_0\,
      I3 => \data_out[13]_i_3_n_0\,
      I4 => \data_out[2]_i_6_n_0\,
      O => \data_out[2]_i_3_n_0\
    );
\data_out[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0AACCAACCAACCAA"
    )
        port map (
      I0 => \data_out[2]_i_7_n_0\,
      I1 => \data_out[4]_i_7_n_0\,
      I2 => \data_out[11]_i_7_n_0\,
      I3 => \data_out[14]_i_8_n_0\,
      I4 => data_in(15),
      I5 => \data_out[11]_i_8_n_0\,
      O => \data_out[2]_i_4_n_0\
    );
\data_out[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EABF2A80"
    )
        port map (
      I0 => \data_out[4]_i_7_n_0\,
      I1 => diff(0),
      I2 => diff(4),
      I3 => diff(1),
      I4 => \data_out[2]_i_7_n_0\,
      O => \data_out[2]_i_5_n_0\
    );
\data_out[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55CF550F55CF55"
    )
        port map (
      I0 => \data_out[2]_i_8_n_0\,
      I1 => \data_out[5]_i_10_n_0\,
      I2 => diff(0),
      I3 => diff(4),
      I4 => diff(1),
      I5 => \data_out[3]_i_11_n_0\,
      O => \data_out[2]_i_6_n_0\
    );
\data_out[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => data_in(2),
      I1 => data_in(10),
      I2 => \data_out[11]_i_7_n_0\,
      I3 => data_in(6),
      I4 => \data_out[10]_i_8_n_0\,
      I5 => data_in(14),
      O => \data_out[2]_i_7_n_0\
    );
\data_out[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => diff(2),
      I1 => data_in(1),
      I2 => diff(3),
      I3 => diff(1),
      I4 => diff(0),
      I5 => \data_out[3]_i_12_n_0\,
      O => \data_out[2]_i_8_n_0\
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF1F110000"
    )
        port map (
      I0 => \data_out[3]_i_2_n_0\,
      I1 => \data_out[5]_i_3_n_0\,
      I2 => \data_out[3]_i_3_n_0\,
      I3 => \data_out[14]_i_5_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \data_out[3]_i_4_n_0\,
      O => data_out(3)
    );
\data_out[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA800000002AAAA"
    )
        port map (
      I0 => data_in(9),
      I1 => diff(1),
      I2 => diff(0),
      I3 => diff(2),
      I4 => diff(4),
      I5 => diff(3),
      O => \data_out[3]_i_10_n_0\
    );
\data_out[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F505F3030303F"
    )
        port map (
      I0 => data_in(3),
      I1 => data_in(11),
      I2 => \data_out[11]_i_7_n_0\,
      I3 => \data_out[3]_i_13_n_0\,
      I4 => data_in(15),
      I5 => \data_out[10]_i_8_n_0\,
      O => \data_out[3]_i_11_n_0\
    );
\data_out[3]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => data_in(0),
      I1 => diff(1),
      I2 => diff(2),
      I3 => data_in(2),
      I4 => diff(3),
      O => \data_out[3]_i_12_n_0\
    );
\data_out[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA800000002AAAA"
    )
        port map (
      I0 => data_in(7),
      I1 => diff(1),
      I2 => diff(0),
      I3 => diff(2),
      I4 => diff(4),
      I5 => diff(3),
      O => \data_out[3]_i_13_n_0\
    );
\data_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000D5D500D5"
    )
        port map (
      I0 => diff(0),
      I1 => \data_out[5]_i_6_n_0\,
      I2 => \data_out[4]_i_5_n_0\,
      I3 => \data_out[14]_i_9_n_0\,
      I4 => \data_out[3]_i_5_n_0\,
      I5 => \data_out[10]_i_4_n_0\,
      O => \data_out[3]_i_2_n_0\
    );
\data_out[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000D0D000D0"
    )
        port map (
      I0 => \data_out[13]_i_3_n_0\,
      I1 => \data_out[3]_i_6_n_0\,
      I2 => \data_out[3]_i_7_n_0\,
      I3 => \data_out[5]_i_9_n_0\,
      I4 => \data_out[4]_i_5_n_0\,
      I5 => \data_out[14]_i_3_n_0\,
      O => \data_out[3]_i_3_n_0\
    );
\data_out[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axis_tdata(3),
      I2 => \^s_axis_tready\,
      O => \data_out[3]_i_4_n_0\
    );
\data_out[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \data_out[3]_i_8_n_0\,
      I1 => \data_out[11]_i_7_n_0\,
      I2 => \data_out[3]_i_9_n_0\,
      I3 => \data_out[3]_i_10_n_0\,
      I4 => \data_out[14]_i_8_n_0\,
      I5 => \data_out[3]_i_11_n_0\,
      O => \data_out[3]_i_5_n_0\
    );
\data_out[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EABF2A80"
    )
        port map (
      I0 => \data_out[5]_i_10_n_0\,
      I1 => diff(0),
      I2 => diff(4),
      I3 => diff(1),
      I4 => \data_out[3]_i_11_n_0\,
      O => \data_out[3]_i_6_n_0\
    );
\data_out[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEBF"
    )
        port map (
      I0 => diff(4),
      I1 => diff(0),
      I2 => \data_out[3]_i_12_n_0\,
      I3 => \data_out[4]_i_8_n_0\,
      O => \data_out[3]_i_7_n_0\
    );
\data_out[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0DD"
    )
        port map (
      I0 => data_in(13),
      I1 => \data_out[10]_i_8_n_0\,
      I2 => \data_out[11]_i_8_n_0\,
      I3 => data_in(5),
      O => \data_out[3]_i_8_n_0\
    );
\data_out[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA85557FFFFFFFF"
    )
        port map (
      I0 => diff(4),
      I1 => diff(2),
      I2 => diff(0),
      I3 => diff(1),
      I4 => diff(3),
      I5 => data_in(15),
      O => \data_out[3]_i_9_n_0\
    );
\data_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF1F110000"
    )
        port map (
      I0 => \data_out[4]_i_2_n_0\,
      I1 => \data_out[5]_i_3_n_0\,
      I2 => \data_out[4]_i_3_n_0\,
      I3 => \data_out[14]_i_5_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \data_out[4]_i_4_n_0\,
      O => data_out(4)
    );
\data_out[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DD0D0505"
    )
        port map (
      I0 => diff(0),
      I1 => \data_out[5]_i_7_n_0\,
      I2 => \data_out[14]_i_9_n_0\,
      I3 => \data_out[4]_i_5_n_0\,
      I4 => \data_out[5]_i_6_n_0\,
      I5 => \data_out[10]_i_4_n_0\,
      O => \data_out[4]_i_2_n_0\
    );
\data_out[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000D0D000D0"
    )
        port map (
      I0 => \data_out[5]_i_9_n_0\,
      I1 => \data_out[5]_i_7_n_0\,
      I2 => \data_out[4]_i_6_n_0\,
      I3 => \data_out[13]_i_3_n_0\,
      I4 => \data_out[4]_i_5_n_0\,
      I5 => \data_out[14]_i_3_n_0\,
      O => \data_out[4]_i_3_n_0\
    );
\data_out[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axis_tdata(4),
      I2 => \^s_axis_tready\,
      O => \data_out[4]_i_4_n_0\
    );
\data_out[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EABF2A80"
    )
        port map (
      I0 => \data_out[6]_i_13_n_0\,
      I1 => diff(0),
      I2 => diff(4),
      I3 => diff(1),
      I4 => \data_out[4]_i_7_n_0\,
      O => \data_out[4]_i_5_n_0\
    );
\data_out[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF2E"
    )
        port map (
      I0 => \data_out[5]_i_11_n_0\,
      I1 => diff(0),
      I2 => \data_out[4]_i_8_n_0\,
      I3 => diff(4),
      O => \data_out[4]_i_6_n_0\
    );
\data_out[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47FF470047FF47FF"
    )
        port map (
      I0 => data_in(4),
      I1 => \data_out[10]_i_8_n_0\,
      I2 => data_in(12),
      I3 => \data_out[11]_i_7_n_0\,
      I4 => \data_out[11]_i_8_n_0\,
      I5 => data_in(8),
      O => \data_out[4]_i_7_n_0\
    );
\data_out[4]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => data_in(1),
      I1 => diff(1),
      I2 => diff(3),
      I3 => data_in(3),
      I4 => diff(2),
      O => \data_out[4]_i_8_n_0\
    );
\data_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF1F110000"
    )
        port map (
      I0 => \data_out[5]_i_2_n_0\,
      I1 => \data_out[5]_i_3_n_0\,
      I2 => \data_out[5]_i_4_n_0\,
      I3 => \data_out[14]_i_5_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \data_out[5]_i_5_n_0\,
      O => data_out(5)
    );
\data_out[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000FFFDDDDDDDD"
    )
        port map (
      I0 => data_in(9),
      I1 => \data_out[11]_i_8_n_0\,
      I2 => data_in(5),
      I3 => \data_out[10]_i_8_n_0\,
      I4 => data_in(13),
      I5 => \data_out[11]_i_7_n_0\,
      O => \data_out[5]_i_10_n_0\
    );
\data_out[5]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF5F5FFFF303F"
    )
        port map (
      I0 => data_in(2),
      I1 => data_in(0),
      I2 => diff(2),
      I3 => data_in(4),
      I4 => diff(3),
      I5 => diff(1),
      O => \data_out[5]_i_11_n_0\
    );
\data_out[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000D5D500D5"
    )
        port map (
      I0 => \data_out[14]_i_9_n_0\,
      I1 => \data_out[5]_i_6_n_0\,
      I2 => \data_out[5]_i_7_n_0\,
      I3 => diff(0),
      I4 => \data_out[6]_i_6_n_0\,
      I5 => \data_out[10]_i_4_n_0\,
      O => \data_out[5]_i_2_n_0\
    );
\data_out[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => diff(2),
      I1 => diff(0),
      I2 => diff(1),
      I3 => diff(3),
      I4 => diff(4),
      O => \data_out[5]_i_3_n_0\
    );
\data_out[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000D0D000D0"
    )
        port map (
      I0 => \data_out[13]_i_3_n_0\,
      I1 => \data_out[5]_i_7_n_0\,
      I2 => \data_out[5]_i_8_n_0\,
      I3 => \data_out[5]_i_9_n_0\,
      I4 => \data_out[6]_i_9_n_0\,
      I5 => \data_out[14]_i_3_n_0\,
      O => \data_out[5]_i_4_n_0\
    );
\data_out[5]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axis_tdata(5),
      I2 => \^s_axis_tready\,
      O => \data_out[5]_i_5_n_0\
    );
\data_out[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDDDDF7777FFFF"
    )
        port map (
      I0 => data_in(15),
      I1 => diff(3),
      I2 => diff(1),
      I3 => diff(0),
      I4 => diff(2),
      I5 => diff(4),
      O => \data_out[5]_i_6_n_0\
    );
\data_out[5]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EABF2A80"
    )
        port map (
      I0 => \data_out[6]_i_11_n_0\,
      I1 => diff(0),
      I2 => diff(4),
      I3 => diff(1),
      I4 => \data_out[5]_i_10_n_0\,
      O => \data_out[5]_i_7_n_0\
    );
\data_out[5]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF8B"
    )
        port map (
      I0 => \data_out[5]_i_11_n_0\,
      I1 => diff(0),
      I2 => \data_out[6]_i_8_n_0\,
      I3 => diff(4),
      O => \data_out[5]_i_8_n_0\
    );
\data_out[5]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => diff(4),
      I1 => diff(0),
      O => \data_out[5]_i_9_n_0\
    );
\data_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF7550000"
    )
        port map (
      I0 => \data_out[6]_i_2_n_0\,
      I1 => \data_out[6]_i_3_n_0\,
      I2 => \data_out[6]_i_4_n_0\,
      I3 => \data_out[14]_i_5_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \data_out[6]_i_5_n_0\,
      O => data_out(6)
    );
\data_out[6]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DDCF"
    )
        port map (
      I0 => data_in(9),
      I1 => \data_out[11]_i_8_n_0\,
      I2 => data_in(13),
      I3 => \data_out[11]_i_7_n_0\,
      O => \data_out[6]_i_10_n_0\
    );
\data_out[6]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F351F351FF00FFFF"
    )
        port map (
      I0 => data_in(7),
      I1 => data_in(15),
      I2 => \data_out[10]_i_8_n_0\,
      I3 => \data_out[11]_i_8_n_0\,
      I4 => data_in(11),
      I5 => \data_out[11]_i_7_n_0\,
      O => \data_out[6]_i_11_n_0\
    );
\data_out[6]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => data_in(8),
      I1 => \data_out[11]_i_7_n_0\,
      I2 => data_in(12),
      I3 => \data_out[11]_i_8_n_0\,
      O => \data_out[6]_i_12_n_0\
    );
\data_out[6]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47FF470047FF47FF"
    )
        port map (
      I0 => data_in(6),
      I1 => \data_out[10]_i_8_n_0\,
      I2 => data_in(14),
      I3 => \data_out[11]_i_7_n_0\,
      I4 => \data_out[11]_i_8_n_0\,
      I5 => data_in(10),
      O => \data_out[6]_i_13_n_0\
    );
\data_out[6]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF47"
    )
        port map (
      I0 => data_in(2),
      I1 => diff(2),
      I2 => data_in(6),
      I3 => diff(3),
      O => \data_out[6]_i_14_n_0\
    );
\data_out[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBAAAABABBBABB"
    )
        port map (
      I0 => \data_out[5]_i_3_n_0\,
      I1 => \data_out[10]_i_4_n_0\,
      I2 => \data_out[6]_i_6_n_0\,
      I3 => \data_out[14]_i_9_n_0\,
      I4 => \data_out[7]_i_4_n_0\,
      I5 => diff(0),
      O => \data_out[6]_i_2_n_0\
    );
\data_out[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF2E0000FF2EFF2E"
    )
        port map (
      I0 => \data_out[6]_i_7_n_0\,
      I1 => diff(0),
      I2 => \data_out[6]_i_8_n_0\,
      I3 => diff(4),
      I4 => \data_out[6]_i_9_n_0\,
      I5 => \data_out[13]_i_3_n_0\,
      O => \data_out[6]_i_3_n_0\
    );
\data_out[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAFAAABAAA"
    )
        port map (
      I0 => \data_out[14]_i_3_n_0\,
      I1 => \data_out[6]_i_10_n_0\,
      I2 => diff(0),
      I3 => diff(4),
      I4 => diff(1),
      I5 => \data_out[6]_i_11_n_0\,
      O => \data_out[6]_i_4_n_0\
    );
\data_out[6]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axis_tdata(6),
      I2 => \^s_axis_tready\,
      O => \data_out[6]_i_5_n_0\
    );
\data_out[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50555055CCCCC0CC"
    )
        port map (
      I0 => \data_out[6]_i_12_n_0\,
      I1 => \data_out[6]_i_13_n_0\,
      I2 => \data_out[10]_i_8_n_0\,
      I3 => data_in(15),
      I4 => \data_out[11]_i_7_n_0\,
      I5 => \data_out[14]_i_8_n_0\,
      O => \data_out[6]_i_6_n_0\
    );
\data_out[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF47FFFFFF470000"
    )
        port map (
      I0 => data_in(0),
      I1 => diff(2),
      I2 => data_in(4),
      I3 => diff(3),
      I4 => diff(1),
      I5 => \data_out[6]_i_14_n_0\,
      O => \data_out[6]_i_7_n_0\
    );
\data_out[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => data_in(3),
      I1 => diff(1),
      I2 => data_in(1),
      I3 => diff(2),
      I4 => data_in(5),
      I5 => diff(3),
      O => \data_out[6]_i_8_n_0\
    );
\data_out[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF47FFFFFF470000"
    )
        port map (
      I0 => data_in(8),
      I1 => \data_out[11]_i_7_n_0\,
      I2 => data_in(12),
      I3 => \data_out[11]_i_8_n_0\,
      I4 => \data_out[14]_i_8_n_0\,
      I5 => \data_out[6]_i_13_n_0\,
      O => \data_out[6]_i_9_n_0\
    );
\data_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFD0D0D0"
    )
        port map (
      I0 => \data_out[7]_i_2_n_0\,
      I1 => \data_out[7]_i_3_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \^s_axis_tready\,
      I4 => s_axis_tdata(7),
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => data_out(7)
    );
\data_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBAAAABABBBABB"
    )
        port map (
      I0 => \data_out[5]_i_3_n_0\,
      I1 => \data_out[10]_i_4_n_0\,
      I2 => \data_out[8]_i_4_n_0\,
      I3 => diff(0),
      I4 => \data_out[7]_i_4_n_0\,
      I5 => \data_out[14]_i_9_n_0\,
      O => \data_out[7]_i_2_n_0\
    );
\data_out[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8AAA8A8"
    )
        port map (
      I0 => \data_out[14]_i_5_n_0\,
      I1 => \data_out[14]_i_3_n_0\,
      I2 => \data_out[7]_i_5_n_0\,
      I3 => \data_out[7]_i_6_n_0\,
      I4 => \data_out[13]_i_3_n_0\,
      O => \data_out[7]_i_3_n_0\
    );
\data_out[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B830B8B8B800B8B8"
    )
        port map (
      I0 => \data_out[6]_i_10_n_0\,
      I1 => \data_out[14]_i_8_n_0\,
      I2 => \data_out[6]_i_11_n_0\,
      I3 => \data_out[10]_i_8_n_0\,
      I4 => data_in(15),
      I5 => \data_out[11]_i_7_n_0\,
      O => \data_out[7]_i_4_n_0\
    );
\data_out[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F5030503"
    )
        port map (
      I0 => \data_out[6]_i_7_n_0\,
      I1 => \data_out[8]_i_9_n_0\,
      I2 => diff(4),
      I3 => diff(0),
      I4 => \data_out[8]_i_5_n_0\,
      O => \data_out[7]_i_5_n_0\
    );
\data_out[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDCFFFFFDDCF0000"
    )
        port map (
      I0 => data_in(9),
      I1 => \data_out[11]_i_8_n_0\,
      I2 => data_in(13),
      I3 => \data_out[11]_i_7_n_0\,
      I4 => \data_out[14]_i_8_n_0\,
      I5 => \data_out[6]_i_11_n_0\,
      O => \data_out[7]_i_6_n_0\
    );
\data_out[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFD0D0D0"
    )
        port map (
      I0 => \data_out[8]_i_2_n_0\,
      I1 => \data_out[8]_i_3_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \^s_axis_tready\,
      I4 => s_axis_tdata(8),
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => data_out(8)
    );
\data_out[8]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => data_in(1),
      I1 => diff(2),
      I2 => data_in(5),
      I3 => diff(3),
      O => \data_out[8]_i_10_n_0\
    );
\data_out[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBAAAABABBBABB"
    )
        port map (
      I0 => \data_out[5]_i_3_n_0\,
      I1 => \data_out[10]_i_4_n_0\,
      I2 => \data_out[8]_i_4_n_0\,
      I3 => \data_out[14]_i_9_n_0\,
      I4 => \data_out[9]_i_5_n_0\,
      I5 => diff(0),
      O => \data_out[8]_i_2_n_0\
    );
\data_out[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAA80"
    )
        port map (
      I0 => \data_out[14]_i_5_n_0\,
      I1 => \data_out[13]_i_3_n_0\,
      I2 => \data_out[8]_i_5_n_0\,
      I3 => \data_out[8]_i_6_n_0\,
      I4 => \data_out[8]_i_7_n_0\,
      I5 => \data_out[14]_i_3_n_0\,
      O => \data_out[8]_i_3_n_0\
    );
\data_out[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => data_in(15),
      I1 => \data_out[10]_i_8_n_0\,
      I2 => \data_out[8]_i_5_n_0\,
      O => \data_out[8]_i_4_n_0\
    );
\data_out[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000074777444"
    )
        port map (
      I0 => \data_out[8]_i_8_n_0\,
      I1 => \data_out[14]_i_8_n_0\,
      I2 => data_in(8),
      I3 => \data_out[11]_i_7_n_0\,
      I4 => data_in(12),
      I5 => \data_out[11]_i_8_n_0\,
      O => \data_out[8]_i_5_n_0\
    );
\data_out[8]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40007000"
    )
        port map (
      I0 => \data_out[6]_i_10_n_0\,
      I1 => diff(1),
      I2 => diff(4),
      I3 => diff(0),
      I4 => \data_out[9]_i_10_n_0\,
      O => \data_out[8]_i_6_n_0\
    );
\data_out[8]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"003A"
    )
        port map (
      I0 => \data_out[9]_i_9_n_0\,
      I1 => \data_out[8]_i_9_n_0\,
      I2 => diff(0),
      I3 => diff(4),
      O => \data_out[8]_i_7_n_0\
    );
\data_out[8]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"414141117D7D7DDD"
    )
        port map (
      I0 => data_in(10),
      I1 => diff(2),
      I2 => diff(4),
      I3 => diff(1),
      I4 => diff(0),
      I5 => data_in(14),
      O => \data_out[8]_i_8_n_0\
    );
\data_out[8]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFF47FF47"
    )
        port map (
      I0 => data_in(3),
      I1 => diff(2),
      I2 => data_in(7),
      I3 => diff(3),
      I4 => \data_out[8]_i_10_n_0\,
      I5 => diff(1),
      O => \data_out[8]_i_9_n_0\
    );
\data_out[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFD550000"
    )
        port map (
      I0 => \data_out[9]_i_2_n_0\,
      I1 => \data_out[14]_i_3_n_0\,
      I2 => \data_out[9]_i_3_n_0\,
      I3 => \data_out[14]_i_5_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \data_out[9]_i_4_n_0\,
      O => data_out(9)
    );
\data_out[9]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4F7"
    )
        port map (
      I0 => data_in(11),
      I1 => \data_out[11]_i_7_n_0\,
      I2 => \data_out[11]_i_8_n_0\,
      I3 => data_in(15),
      O => \data_out[9]_i_10_n_0\
    );
\data_out[9]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data_in(5),
      I1 => diff(2),
      I2 => data_in(1),
      I3 => diff(3),
      I4 => data_in(9),
      O => \data_out[9]_i_11_n_0\
    );
\data_out[9]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data_in(4),
      I1 => diff(2),
      I2 => data_in(0),
      I3 => diff(3),
      I4 => data_in(8),
      O => \data_out[9]_i_12_n_0\
    );
\data_out[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBAAAABABBBABB"
    )
        port map (
      I0 => \data_out[5]_i_3_n_0\,
      I1 => \data_out[10]_i_4_n_0\,
      I2 => \data_out[10]_i_6_n_0\,
      I3 => diff(0),
      I4 => \data_out[9]_i_5_n_0\,
      I5 => \data_out[14]_i_9_n_0\,
      O => \data_out[9]_i_2_n_0\
    );
\data_out[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEFAEEEABEBAAEA"
    )
        port map (
      I0 => \data_out[9]_i_6_n_0\,
      I1 => diff(0),
      I2 => diff(4),
      I3 => \data_out[9]_i_7_n_0\,
      I4 => \data_out[9]_i_8_n_0\,
      I5 => \data_out[9]_i_9_n_0\,
      O => \data_out[9]_i_3_n_0\
    );
\data_out[9]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axis_tdata(9),
      I2 => \^s_axis_tready\,
      O => \data_out[9]_i_4_n_0\
    );
\data_out[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FBF10BF10B010B0"
    )
        port map (
      I0 => \data_out[14]_i_7_n_0\,
      I1 => data_in(11),
      I2 => \data_out[14]_i_8_n_0\,
      I3 => data_in(15),
      I4 => \data_out[10]_i_8_n_0\,
      I5 => \data_out[6]_i_10_n_0\,
      O => \data_out[9]_i_5_n_0\
    );
\data_out[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"200202022AA2A2A2"
    )
        port map (
      I0 => \data_out[13]_i_3_n_0\,
      I1 => \data_out[6]_i_10_n_0\,
      I2 => diff(1),
      I3 => diff(4),
      I4 => diff(0),
      I5 => \data_out[9]_i_10_n_0\,
      O => \data_out[9]_i_6_n_0\
    );
\data_out[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4FCFFF7F7FCFF"
    )
        port map (
      I0 => data_in(12),
      I1 => \data_out[14]_i_8_n_0\,
      I2 => \data_out[11]_i_8_n_0\,
      I3 => data_in(14),
      I4 => \data_out[11]_i_7_n_0\,
      I5 => data_in(10),
      O => \data_out[9]_i_7_n_0\
    );
\data_out[9]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => data_in(3),
      I1 => diff(2),
      I2 => data_in(7),
      I3 => diff(3),
      I4 => diff(1),
      I5 => \data_out[9]_i_11_n_0\,
      O => \data_out[9]_i_8_n_0\
    );
\data_out[9]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => data_in(2),
      I1 => diff(2),
      I2 => data_in(6),
      I3 => diff(3),
      I4 => diff(1),
      I5 => \data_out[9]_i_12_n_0\,
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
      INIT => X"80000080"
    )
        port map (
      I0 => aresetn,
      I1 => s_axis_tvalid,
      I2 => \^s_axis_tready\,
      I3 => tlast_expected,
      I4 => s_axis_tlast,
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
      D => vol_led_ctrl_n_1,
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
      D => vol_led_ctrl_n_0,
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
      INIT => X"7F40"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => s_axis_tvalid,
      I2 => \^s_axis_tready\,
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
vol_led_ctrl: entity work.bd_mov_av_v2_volume_controller_0_0_volume_led_ctrl
     port map (
      AR(0) => vol_led_ctrl_n_23,
      D(4) => vol_led_ctrl_n_0,
      D(3) => vol_led_ctrl_n_1,
      D(2 downto 0) => state1(2 downto 0),
      E(0) => data_out0,
      Q(2) => \FSM_onehot_state_reg_n_0_[2]\,
      Q(1) => \^s_axis_tready\,
      Q(0) => \FSM_onehot_state_reg_n_0_[0]\,
      aclk => aclk,
      aresetn => aresetn,
      \data_out_reg[0]\(0) => tlast_sampled0,
      \data_out_reg[0]_0\(0) => diff(4),
      \data_out_reg[0]_1\ => \data_out[15]_i_4_n_0\,
      volume_down => volume_down,
      volume_level(14 downto 0) => volume_level(14 downto 0),
      \volume_uns_reg[2]_0\(1) => vol_led_ctrl_n_20,
      \volume_uns_reg[2]_0\(0) => vol_led_ctrl_n_21,
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

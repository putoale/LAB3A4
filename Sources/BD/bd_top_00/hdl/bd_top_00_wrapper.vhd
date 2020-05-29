--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Fri May 29 21:34:28 2020
--Host        : DESKTOP-O39JAIK running 64-bit major release  (build 9200)
--Command     : generate_target bd_top_00_wrapper.bd
--Design      : bd_top_00_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_top_00_wrapper is
  port (
    input_signal_0 : in STD_LOGIC;
    input_signal_1 : in STD_LOGIC;
    mute_left_0 : in STD_LOGIC;
    mute_right_0 : in STD_LOGIC;
    reset : in STD_LOGIC;
    sw_in_0 : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    volume_level_0 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end bd_top_00_wrapper;

architecture STRUCTURE of bd_top_00_wrapper is
  component bd_top_00 is
  port (
    sys_clock : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    reset : in STD_LOGIC;
    input_signal_0 : in STD_LOGIC;
    input_signal_1 : in STD_LOGIC;
    volume_level_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sw_in_0 : in STD_LOGIC;
    mute_left_0 : in STD_LOGIC;
    mute_right_0 : in STD_LOGIC
  );
  end component bd_top_00;
begin
bd_top_00_i: component bd_top_00
     port map (
      input_signal_0 => input_signal_0,
      input_signal_1 => input_signal_1,
      mute_left_0 => mute_left_0,
      mute_right_0 => mute_right_0,
      reset => reset,
      sw_in_0 => sw_in_0,
      sys_clock => sys_clock,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd,
      volume_level_0(15 downto 0) => volume_level_0(15 downto 0)
    );
end STRUCTURE;

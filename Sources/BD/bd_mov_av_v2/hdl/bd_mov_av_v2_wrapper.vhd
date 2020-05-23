--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Sat May 23 21:03:56 2020
--Host        : DESKTOP-O39JAIK running 64-bit major release  (build 9200)
--Command     : generate_target bd_mov_av_v2_wrapper.bd
--Design      : bd_mov_av_v2_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_mov_av_v2_wrapper is
  port (
    btnL : in STD_LOGIC;
    btnR : in STD_LOGIC;
    reset : in STD_LOGIC;
    sw_in_0 : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    volume_down_0 : in STD_LOGIC;
    volume_level_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    volume_up_0 : in STD_LOGIC
  );
end bd_mov_av_v2_wrapper;

architecture STRUCTURE of bd_mov_av_v2_wrapper is
  component bd_mov_av_v2 is
  port (
    sys_clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    sw_in_0 : in STD_LOGIC;
    btnR : in STD_LOGIC;
    btnL : in STD_LOGIC;
    volume_up_0 : in STD_LOGIC;
    volume_down_0 : in STD_LOGIC;
    volume_level_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    usb_uart_txd : out STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC
  );
  end component bd_mov_av_v2;
begin
bd_mov_av_v2_i: component bd_mov_av_v2
     port map (
      btnL => btnL,
      btnR => btnR,
      reset => reset,
      sw_in_0 => sw_in_0,
      sys_clock => sys_clock,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd,
      volume_down_0 => volume_down_0,
      volume_level_0(15 downto 0) => volume_level_0(15 downto 0),
      volume_up_0 => volume_up_0
    );
end STRUCTURE;

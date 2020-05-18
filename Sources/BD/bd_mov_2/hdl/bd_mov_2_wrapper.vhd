--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Mon May 18 21:53:38 2020
--Host        : DESKTOP-O39JAIK running 64-bit major release  (build 9200)
--Command     : generate_target bd_mov_2_wrapper.bd
--Design      : bd_mov_2_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_mov_2_wrapper is
  port (
    reset : in STD_LOGIC;
    sw_in_0 : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
end bd_mov_2_wrapper;

architecture STRUCTURE of bd_mov_2_wrapper is
  component bd_mov_2 is
  port (
    sys_clock : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    reset : in STD_LOGIC;
    sw_in_0 : in STD_LOGIC
  );
  end component bd_mov_2;
begin
bd_mov_2_i: component bd_mov_2
     port map (
      reset => reset,
      sw_in_0 => sw_in_0,
      sys_clock => sys_clock,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd
    );
end STRUCTURE;

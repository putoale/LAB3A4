--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Fri May 29 19:54:29 2020
--Host        : DESKTOP-O39JAIK running 64-bit major release  (build 9200)
--Command     : generate_target bd_top_final_wrapper.bd
--Design      : bd_top_final_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_top_final_wrapper is
  port (
    btnDown : in STD_LOGIC;
    btnL : in STD_LOGIC;
    btnR : in STD_LOGIC;
    btnUp : in STD_LOGIC;
    reset : in STD_LOGIC;
    sw_in_0 : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
end bd_top_final_wrapper;

architecture STRUCTURE of bd_top_final_wrapper is
  component bd_top_final is
  port (
    sys_clock : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    reset : in STD_LOGIC;
    btnUp : in STD_LOGIC;
    btnDown : in STD_LOGIC;
    btnL : in STD_LOGIC;
    btnR : in STD_LOGIC;
    sw_in_0 : in STD_LOGIC
  );
  end component bd_top_final;
begin
bd_top_final_i: component bd_top_final
     port map (
      btnDown => btnDown,
      btnL => btnL,
      btnR => btnR,
      btnUp => btnUp,
      reset => reset,
      sw_in_0 => sw_in_0,
      sys_clock => sys_clock,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd
    );
end STRUCTURE;

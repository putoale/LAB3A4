--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Sat May 30 23:33:47 2020
--Host        : DESKTOP-O39JAIK running 64-bit major release  (build 9200)
--Command     : generate_target bd_try_wrapper.bd
--Design      : bd_try_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_try_wrapper is
  port (
    btnL : in STD_LOGIC;
    btnR : in STD_LOGIC;
    input_signal_0 : in STD_LOGIC;
    input_signal_1 : in STD_LOGIC;
    reset : in STD_LOGIC;
    sw_in_0 : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    volume_level_0 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end bd_try_wrapper;

architecture STRUCTURE of bd_try_wrapper is
  component bd_try is
  port (
    sys_clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    volume_level_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    input_signal_0 : in STD_LOGIC;
    input_signal_1 : in STD_LOGIC;
    sw_in_0 : in STD_LOGIC;
    btnR : in STD_LOGIC;
    btnL : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC
  );
  end component bd_try;
begin
bd_try_i: component bd_try
     port map (
      btnL => btnL,
      btnR => btnR,
      input_signal_0 => input_signal_0,
      input_signal_1 => input_signal_1,
      reset => reset,
      sw_in_0 => sw_in_0,
      sys_clock => sys_clock,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd,
      volume_level_0(15 downto 0) => volume_level_0(15 downto 0)
    );
end STRUCTURE;

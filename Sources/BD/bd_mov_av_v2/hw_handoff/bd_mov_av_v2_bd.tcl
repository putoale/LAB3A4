
################################################################
# This is a generated script based on design: bd_mov_av_v2
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source bd_mov_av_v2_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# debouncer, debouncer, depacketizer, edge_detector, edge_detector, moving_average_v2, mute_v1, packetizer, volume_controller

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
   set_property BOARD_PART digilentinc.com:basys3:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name bd_mov_av_v2

# This script was generated for a remote BD. To create a non-remote design,
# change the variable <run_remote_bd_flow> to <0>.

set run_remote_bd_flow 1
if { $run_remote_bd_flow == 1 } {
  # Set the reference directory for source file relative paths (by default 
  # the value is script directory path)
  set origin_dir ./Sources/BD

  # Use origin directory path location variable, if specified in the tcl shell
  if { [info exists ::origin_dir_loc] } {
     set origin_dir $::origin_dir_loc
  }

  set str_bd_folder [file normalize ${origin_dir}]
  set str_bd_filepath ${str_bd_folder}/${design_name}/${design_name}.bd

  # Check if remote design exists on disk
  if { [file exists $str_bd_filepath ] == 1 } {
     catch {common::send_msg_id "BD_TCL-110" "ERROR" "The remote BD file path <$str_bd_filepath> already exists!"}
     common::send_msg_id "BD_TCL-008" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0>."
     common::send_msg_id "BD_TCL-009" "INFO" "Also make sure there is no design <$design_name> existing in your current project."

     return 1
  }

  # Check if design exists in memory
  set list_existing_designs [get_bd_designs -quiet $design_name]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-111" "ERROR" "The design <$design_name> already exists in this project! Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-010" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Check if design exists on disk within project
  set list_existing_designs [get_files -quiet */${design_name}.bd]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-112" "ERROR" "The design <$design_name> already exists in this project at location:
    $list_existing_designs"}
     catch {common::send_msg_id "BD_TCL-113" "ERROR" "Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-011" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Now can create the remote BD
  # NOTE - usage of <-dir> will create <$str_bd_folder/$design_name/$design_name.bd>
  create_bd_design -dir $str_bd_folder $design_name
} else {

  # Create regular design
  if { [catch {create_bd_design $design_name} errmsg] } {
     common::send_msg_id "BD_TCL-012" "INFO" "Please set a different value to variable <design_name>."

     return 1
  }
}

current_bd_design $design_name

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set usb_uart [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 usb_uart ]


  # Create ports
  set btnL [ create_bd_port -dir I btnL ]
  set btnR [ create_bd_port -dir I btnR ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset
  set sw_in_0 [ create_bd_port -dir I sw_in_0 ]
  set sys_clock [ create_bd_port -dir I -type clk -freq_hz 100000000 sys_clock ]
  set_property -dict [ list \
   CONFIG.PHASE {0.000} \
 ] $sys_clock
  set volume_down_0 [ create_bd_port -dir I volume_down_0 ]
  set volume_level_0 [ create_bd_port -dir O -from 15 -to 0 volume_level_0 ]
  set volume_up_0 [ create_bd_port -dir I volume_up_0 ]

  # Create instance: AXI4Stream_UART_0, and set properties
  set AXI4Stream_UART_0 [ create_bd_cell -type ip -vlnv TimeEngineers:ip:AXI4Stream_UART:1.0 AXI4Stream_UART_0 ]
  set_property -dict [ list \
   CONFIG.UART_BAUD_RATE {2000000} \
   CONFIG.UART_BOARD_INTERFACE {usb_uart} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $AXI4Stream_UART_0

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {152.663} \
   CONFIG.CLKOUT1_PHASE_ERROR {132.063} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {96.000} \
   CONFIG.CLKOUT2_JITTER {132.221} \
   CONFIG.CLKOUT2_PHASE_ERROR {132.063} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {200.000} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {6.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {10.0} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {6.250} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {3} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $clk_wiz_0

  # Create instance: debouncer_0, and set properties
  set block_name debouncer
  set block_cell_name debouncer_0
  if { [catch {set debouncer_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $debouncer_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: debouncer_1, and set properties
  set block_name debouncer
  set block_cell_name debouncer_1
  if { [catch {set debouncer_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $debouncer_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: depacketizer_0, and set properties
  set block_name depacketizer
  set block_cell_name depacketizer_0
  if { [catch {set depacketizer_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $depacketizer_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: edge_detector_0, and set properties
  set block_name edge_detector
  set block_cell_name edge_detector_0
  if { [catch {set edge_detector_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $edge_detector_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: edge_detector_1, and set properties
  set block_name edge_detector
  set block_cell_name edge_detector_1
  if { [catch {set edge_detector_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $edge_detector_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: moving_average_v2_0, and set properties
  set block_name moving_average_v2
  set block_cell_name moving_average_v2_0
  if { [catch {set moving_average_v2_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $moving_average_v2_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mute_v1_0, and set properties
  set block_name mute_v1
  set block_cell_name mute_v1_0
  if { [catch {set mute_v1_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mute_v1_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: packetizer_0, and set properties
  set block_name packetizer
  set block_cell_name packetizer_0
  if { [catch {set packetizer_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $packetizer_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: volume_controller_0, and set properties
  set block_name volume_controller
  set block_cell_name volume_controller_0
  if { [catch {set volume_controller_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $volume_controller_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.DEFAULT_VOLUME {7} \
   CONFIG.MAX_VOLUME {15} \
   CONFIG.MIN_VOLUME {0} \
   CONFIG.VOLUME_BITS {4} \
 ] $volume_controller_0

  # Create interface connections
  connect_bd_intf_net -intf_net AXI4Stream_UART_0_M00_AXIS_RX [get_bd_intf_pins AXI4Stream_UART_0/M00_AXIS_RX] [get_bd_intf_pins depacketizer_0/s_axis]
  connect_bd_intf_net -intf_net AXI4Stream_UART_0_UART [get_bd_intf_ports usb_uart] [get_bd_intf_pins AXI4Stream_UART_0/UART]
  connect_bd_intf_net -intf_net depacketizer_0_m_axis [get_bd_intf_pins depacketizer_0/m_axis] [get_bd_intf_pins moving_average_v2_0/s_axis]
  connect_bd_intf_net -intf_net moving_average_v2_0_m_axis [get_bd_intf_pins moving_average_v2_0/m_axis] [get_bd_intf_pins mute_v1_0/s_mute]
  connect_bd_intf_net -intf_net mute_v1_0_m_mute [get_bd_intf_pins mute_v1_0/m_mute] [get_bd_intf_pins volume_controller_0/s_axis]
  connect_bd_intf_net -intf_net packetizer_0_m_axis [get_bd_intf_pins AXI4Stream_UART_0/S00_AXIS_TX] [get_bd_intf_pins packetizer_0/m_axis]
  connect_bd_intf_net -intf_net volume_controller_0_m_axis [get_bd_intf_pins packetizer_0/s_axis] [get_bd_intf_pins volume_controller_0/m_axis]

  # Create port connections
  connect_bd_net -net btnL_1 [get_bd_ports btnL] [get_bd_pins mute_v1_0/mute_right]
  connect_bd_net -net btnR_1 [get_bd_ports btnR] [get_bd_pins mute_v1_0/mute_left]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins AXI4Stream_UART_0/clk_uart] [get_bd_pins clk_wiz_0/clk_out1]
  connect_bd_net -net clk_wiz_0_clk_out2 [get_bd_pins AXI4Stream_UART_0/m00_axis_rx_aclk] [get_bd_pins AXI4Stream_UART_0/s00_axis_tx_aclk] [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins debouncer_0/clk] [get_bd_pins debouncer_1/clk] [get_bd_pins depacketizer_0/aclk] [get_bd_pins edge_detector_0/clk] [get_bd_pins edge_detector_1/clk] [get_bd_pins moving_average_v2_0/clk] [get_bd_pins mute_v1_0/clk] [get_bd_pins packetizer_0/aclk] [get_bd_pins volume_controller_0/aclk]
  connect_bd_net -net debouncer_0_debounced [get_bd_pins debouncer_0/debounced] [get_bd_pins edge_detector_0/input_signal]
  connect_bd_net -net debouncer_1_debounced [get_bd_pins debouncer_1/debounced] [get_bd_pins edge_detector_1/input_signal]
  connect_bd_net -net edge_detector_0_edge_detected [get_bd_pins edge_detector_0/edge_detected] [get_bd_pins volume_controller_0/volume_up]
  connect_bd_net -net edge_detector_1_edge_detected [get_bd_pins edge_detector_1/edge_detected] [get_bd_pins volume_controller_0/volume_down]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins AXI4Stream_UART_0/rst] [get_bd_pins clk_wiz_0/reset] [get_bd_pins debouncer_0/reset] [get_bd_pins debouncer_1/reset] [get_bd_pins edge_detector_0/reset] [get_bd_pins edge_detector_1/reset] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net sw_in_0_1 [get_bd_ports sw_in_0] [get_bd_pins moving_average_v2_0/sw_in]
  connect_bd_net -net sys_clock_1 [get_bd_ports sys_clock] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins AXI4Stream_UART_0/m00_axis_rx_aresetn] [get_bd_pins AXI4Stream_UART_0/s00_axis_tx_aresetn] [get_bd_pins depacketizer_0/aresetn] [get_bd_pins moving_average_v2_0/aresetn] [get_bd_pins mute_v1_0/aresetn] [get_bd_pins packetizer_0/aresetn] [get_bd_pins util_vector_logic_0/Res] [get_bd_pins volume_controller_0/aresetn]
  connect_bd_net -net volume_controller_0_volume_level [get_bd_ports volume_level_0] [get_bd_pins volume_controller_0/volume_level]
  connect_bd_net -net volume_down_0_1 [get_bd_ports volume_down_0] [get_bd_pins debouncer_1/input_signal]
  connect_bd_net -net volume_up_0_1 [get_bd_ports volume_up_0] [get_bd_pins debouncer_0/input_signal]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""



# Copyright (C) 1991-2014 Altera Corporation
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, Altera MegaCore Function License 
# Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by 
# Altera or its authorized distributors.  Please refer to the 
# applicable agreement for further details.

# Quartus II: Generate Tcl File for Project
# File: t_block.tcl
# Generated on: Thu Apr 10 20:16:15 2014

# Load Quartus II Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "t_block"]} {
		puts "Project t_block is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists t_block]} {
		project_open -revision t_block t_block
	} else {
		project_new -revision t_block t_block
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 13.1
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "19:48:58  APRIL 10, 2014"
	set_global_assignment -name LAST_QUARTUS_VERSION 13.1
	set_global_assignment -name SYSTEMVERILOG_FILE t_block_interface.sv
	set_global_assignment -name SYSTEMVERILOG_FILE t_block.sv
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name SMART_RECOMPILE ON
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name FAMILY "Cyclone V"
	set_global_assignment -name OPTIMIZE_POWER_DURING_SYNTHESIS "EXTRA EFFORT"
	set_global_assignment -name OPTIMIZATION_TECHNIQUE SPEED
	set_global_assignment -name ADV_NETLIST_OPT_SYNTH_WYSIWYG_REMAP ON
	set_global_assignment -name MUX_RESTRUCTURE OFF
	set_global_assignment -name DEVICE 5CSXFC6D6F31C6
	set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 256
	set_global_assignment -name OPTIMIZE_POWER_DURING_FITTING "EXTRA EFFORT"
	set_global_assignment -name PHYSICAL_SYNTHESIS_COMBO_LOGIC ON
	set_global_assignment -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON
	set_global_assignment -name PHYSICAL_SYNTHESIS_REGISTER_RETIMING ON
	set_global_assignment -name ROUTER_LCELL_INSERTION_AND_LOGIC_DUPLICATION ON
	set_global_assignment -name ROUTER_TIMING_OPTIMIZATION_LEVEL MAXIMUM
	set_global_assignment -name AUTO_PACKED_REGISTERS_STRATIXII NORMAL
	set_global_assignment -name FITTER_EFFORT "STANDARD FIT"
	set_global_assignment -name ROUTER_CLOCKING_TOPOLOGY_ANALYSIS ON
	set_global_assignment -name EDA_SIMULATION_TOOL "ModelSim-Altera (SystemVerilog)"
	set_global_assignment -name ENABLE_DRC_SETTINGS ON
	set_global_assignment -name EDA_RUN_TOOL_AUTOMATICALLY ON -section_id eda_simulation
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT "SYSTEMVERILOG HDL" -section_id eda_simulation
	set_global_assignment -name EDA_TIME_SCALE "1 ps" -section_id eda_simulation
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}

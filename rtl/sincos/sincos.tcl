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
# File: sincos.tcl
# Generated on: Mon Apr  7 17:17:50 2014

# Load Quartus II Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "sincos"]} {
		puts "Project sincos is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists sincos]} {
		project_open -revision sincos sincos
	} else {
		project_new -revision sincos sincos
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 13.1
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "12:13:45  APRIL 07, 2014"
	set_global_assignment -name LAST_QUARTUS_VERSION 13.1
	set_global_assignment -name SMART_RECOMPILE ON
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name TIMEQUEST_MULTICORNER_ANALYSIS ON
	set_global_assignment -name FAMILY "Cyclone V"
	set_global_assignment -name OPTIMIZATION_TECHNIQUE AREA
	set_global_assignment -name SYNTH_TIMING_DRIVEN_SYNTHESIS ON
	set_global_assignment -name VERILOG_INPUT_VERSION SYSTEMVERILOG_2005
	set_global_assignment -name VERILOG_SHOW_LMF_MAPPING_MESSAGES OFF
	set_global_assignment -name TOP_LEVEL_ENTITY sincos
	set_global_assignment -name DEVICE 5CSXFC6D6F31C6
	set_global_assignment -name PHYSICAL_SYNTHESIS_COMBO_LOGIC ON
	set_global_assignment -name PHYSICAL_SYNTHESIS_REGISTER_RETIMING ON
	set_global_assignment -name STRATIX_DEVICE_IO_STANDARD "2.5 V"
	set_global_assignment -name EDA_SIMULATION_TOOL "ModelSim-Altera (SystemVerilog)"
	set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
	set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
	set_global_assignment -name EDA_RUN_TOOL_AUTOMATICALLY ON -section_id eda_simulation
	set_global_assignment -name EDA_TIME_SCALE "1 ps" -section_id eda_simulation
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT "SYSTEMVERILOG HDL" -section_id eda_simulation
	set_global_assignment -name EDA_MAP_ILLEGAL_CHARACTERS ON -section_id eda_simulation
	set_global_assignment -name SYSTEMVERILOG_FILE cos.sv
	set_global_assignment -name SYSTEMVERILOG_FILE sin.sv
	set_global_assignment -name SYSTEMVERILOG_FILE sincos.sv
	set_global_assignment -name SYSTEMVERILOG_FILE sincos_interface.sv
	set_global_assignment -name SYSTEMVERILOG_FILE top.sv
	set_global_assignment -name SOURCE_FILE sincos.qpf
	set_global_assignment -name SOURCE_FILE sincos.qsf
	set_global_assignment -name SOURCE_FILE sin.sv.bak
	set_global_assignment -name TEXT_FORMAT_REPORT_FILE sincos.flow.rpt
	set_global_assignment -name TEXT_FORMAT_REPORT_FILE sincos.map.rpt
	set_global_assignment -name SOURCE_FILE sincos.map.smsg
	set_global_assignment -name TEXT_FORMAT_REPORT_FILE sincos.map.summary
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

## Generated SDC file "t_block.sdc"

## Copyright (C) 1991-2014 Altera Corporation
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, Altera MegaCore Function License 
## Agreement, or other applicable license agreement, including, 
## without limitation, that your use is for the sole purpose of 
## programming logic devices manufactured by Altera and sold by 
## Altera or its authorized distributors.  Please refer to the 
## applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 13.1.3 Build 178 02/12/2014 SJ Web Edition"

## DATE    "Thu Apr 10 20:25:17 2014"

##
## DEVICE  "5CSXFC6D6F31C6"
##


# Constrain clock port clk with a 10-ns requirement

create_clock -period 30 [get_ports i.clk]

# Automatically apply a generate clock on the output of phase-locked loops (PLLs)
# This command can be safely left in the SDC even if no PLLs exist in the design

derive_pll_clocks

# Constrain the input I/O path

set_input_delay -clock i.clk -max 3 [all_inputs]

set_input_delay -clock i.clk -min 2 [all_inputs]

# Constrain the output I/O path

set_output_delay -clock i.clk 2 [all_outputs]
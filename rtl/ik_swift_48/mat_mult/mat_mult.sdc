## Generated SDC file "mat_mult.sdc"

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

## DATE    "Wed Apr 16 10:00:39 2014"

##
## DEVICE  "5CGXFC7D6F31C7ES"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {i.clk} -period 10.000 -waveform { 0.000 5.000 } [get_ports { i.clk }]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {i.clk}] -rise_to [get_clocks {i.clk}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {i.clk}] -rise_to [get_clocks {i.clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {i.clk}] -fall_to [get_clocks {i.clk}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {i.clk}] -fall_to [get_clocks {i.clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {i.clk}] -rise_to [get_clocks {i.clk}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {i.clk}] -rise_to [get_clocks {i.clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {i.clk}] -fall_to [get_clocks {i.clk}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {i.clk}] -fall_to [get_clocks {i.clk}] -hold 0.060  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -clock i.clk -max 1 [all_inputs]

set_input_delay -clock i.clk -min 1 [all_inputs]

#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -clock i.clk 1 [all_outputs]

#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************


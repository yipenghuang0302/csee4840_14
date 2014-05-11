## Generated SDC file "sincos.sdc"

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

## DATE    "Mon May  5 16:06:37 2014"

##
## DEVICE  "5CSXFC6D6F31C8ES"
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

set_clock_uncertainty -rise_from [get_clocks {i.clk}] -rise_to [get_clocks {i.clk}] -setup 0.170  
set_clock_uncertainty -rise_from [get_clocks {i.clk}] -rise_to [get_clocks {i.clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {i.clk}] -fall_to [get_clocks {i.clk}] -setup 0.170  
set_clock_uncertainty -rise_from [get_clocks {i.clk}] -fall_to [get_clocks {i.clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {i.clk}] -rise_to [get_clocks {i.clk}] -setup 0.170  
set_clock_uncertainty -fall_from [get_clocks {i.clk}] -rise_to [get_clocks {i.clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {i.clk}] -fall_to [get_clocks {i.clk}] -setup 0.170  
set_clock_uncertainty -fall_from [get_clocks {i.clk}] -fall_to [get_clocks {i.clk}] -hold 0.060  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.angle[0]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.angle[1]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.angle[2]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.angle[3]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.angle[4]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.angle[5]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.angle[6]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.angle[7]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.angle[8]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.angle[9]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.angle[10]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.angle[11]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.angle[12]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.angle[13]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.angle[14]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.angle[15]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.angle[16]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.angle[17]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.angle[18]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.angle[19]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.angle[20]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.angle[21]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.clk}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.en}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.rst}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.cos[0]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.cos[1]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.cos[2]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.cos[3]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.cos[4]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.cos[5]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.cos[6]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.cos[7]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.cos[8]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.cos[9]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.cos[10]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.cos[11]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.cos[12]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.cos[13]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.cos[14]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.cos[15]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.cos[16]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.cos[17]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.cos[18]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.cos[19]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.cos[20]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.cos[21]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.sin[0]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.sin[1]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.sin[2]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.sin[3]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.sin[4]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.sin[5]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.sin[6]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.sin[7]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.sin[8]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.sin[9]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.sin[10]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.sin[11]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.sin[12]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.sin[13]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.sin[14]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.sin[15]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.sin[16]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.sin[17]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.sin[18]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.sin[19]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.sin[20]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.sin[21]}]


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


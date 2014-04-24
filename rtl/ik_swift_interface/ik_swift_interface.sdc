## Generated SDC file "ik_swift_interface.sdc"

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

## DATE    "Thu Apr 17 16:48:03 2014"

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

create_clock -name {clk} -period 5.000 -waveform { 0.000 2.500 } [get_ports { clk }]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {clk}] -rise_to [get_clocks {clk}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {clk}] -rise_to [get_clocks {clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {clk}] -fall_to [get_clocks {clk}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {clk}] -fall_to [get_clocks {clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {clk}] -rise_to [get_clocks {clk}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {clk}] -rise_to [get_clocks {clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {clk}] -fall_to [get_clocks {clk}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {clk}] -fall_to [get_clocks {clk}] -hold 0.060  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {address[0]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {address[1]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {address[2]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {address[3]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {address[4]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {address[5]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {address[6]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {chipselect}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {clk}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {col_select[0]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {col_select[1]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {col_select[2]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {reset}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {row_select[0]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {row_select[1]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {row_select[2]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {write}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {writedata[0]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {writedata[1]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {writedata[2]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {writedata[3]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {writedata[4]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {writedata[5]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {writedata[6]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {writedata[7]}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {data[0]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {data[1]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {data[2]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {data[3]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {data[4]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {data[5]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {data[6]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {data[7]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {data[8]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {data[9]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {data[10]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {data[11]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {data[12]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {data[13]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {data[14]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {data[15]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {data[16]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {data[17]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {data[18]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {data[19]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {data[20]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {data[21]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {data[22]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {data[23]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {data[24]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {data[25]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  1.000 [get_ports {data[26]}]


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


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

## DATE    "Tue Apr 15 15:56:52 2014"

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

create_clock -name {i.clk} -period 5.000 -waveform { 0.000 2.500 } [get_ports { i.clk }]


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

set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.clk}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][0][0]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][0][1]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][0][2]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][0][3]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][0][4]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][0][5]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][0][6]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][0][7]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][0][8]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][0][9]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][0][10]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][0][11]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][0][12]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][0][13]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][0][14]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][0][15]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][0][16]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][0][17]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][0][18]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][0][19]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][0][20]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][0][21]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][0][22]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][0][23]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][0][24]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][0][25]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][0][26]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][1][0]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][1][1]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][1][2]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][1][3]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][1][4]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][1][5]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][1][6]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][1][7]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][1][8]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][1][9]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][1][10]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][1][11]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][1][12]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][1][13]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][1][14]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][1][15]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][1][16]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][1][17]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][1][18]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][1][19]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][1][20]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][1][21]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][1][22]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][1][23]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][1][24]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][1][25]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[0][1][26]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][0][0]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][0][1]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][0][2]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][0][3]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][0][4]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][0][5]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][0][6]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][0][7]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][0][8]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][0][9]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][0][10]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][0][11]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][0][12]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][0][13]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][0][14]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][0][15]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][0][16]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][0][17]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][0][18]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][0][19]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][0][20]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][0][21]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][0][22]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][0][23]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][0][24]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][0][25]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][0][26]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][1][0]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][1][1]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][1][2]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][1][3]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][1][4]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][1][5]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][1][6]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][1][7]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][1][8]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][1][9]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][1][10]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][1][11]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][1][12]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][1][13]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][1][14]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][1][15]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][1][16]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][1][17]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][1][18]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][1][19]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][1][20]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][1][21]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][1][22]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][1][23]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][1][24]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][1][25]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.dataa[1][1][26]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][0][0]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][0][1]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][0][2]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][0][3]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][0][4]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][0][5]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][0][6]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][0][7]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][0][8]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][0][9]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][0][10]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][0][11]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][0][12]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][0][13]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][0][14]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][0][15]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][0][16]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][0][17]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][0][18]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][0][19]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][0][20]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][0][21]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][0][22]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][0][23]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][0][24]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][0][25]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][0][26]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][1][0]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][1][1]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][1][2]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][1][3]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][1][4]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][1][5]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][1][6]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][1][7]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][1][8]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][1][9]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][1][10]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][1][11]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][1][12]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][1][13]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][1][14]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][1][15]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][1][16]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][1][17]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][1][18]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][1][19]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][1][20]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][1][21]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][1][22]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][1][23]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][1][24]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][1][25]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[0][1][26]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][0][0]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][0][1]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][0][2]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][0][3]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][0][4]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][0][5]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][0][6]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][0][7]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][0][8]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][0][9]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][0][10]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][0][11]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][0][12]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][0][13]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][0][14]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][0][15]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][0][16]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][0][17]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][0][18]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][0][19]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][0][20]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][0][21]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][0][22]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][0][23]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][0][24]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][0][25]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][0][26]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][1][0]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][1][1]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][1][2]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][1][3]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][1][4]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][1][5]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][1][6]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][1][7]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][1][8]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][1][9]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][1][10]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][1][11]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][1][12]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][1][13]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][1][14]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][1][15]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][1][16]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][1][17]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][1][18]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][1][19]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][1][20]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][1][21]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][1][22]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][1][23]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][1][24]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][1][25]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.datab[1][1][26]}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.en}]
set_input_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.rst}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][0][0]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][0][1]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][0][2]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][0][3]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][0][4]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][0][5]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][0][6]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][0][7]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][0][8]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][0][9]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][0][10]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][0][11]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][0][12]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][0][13]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][0][14]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][0][15]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][0][16]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][0][17]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][0][18]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][0][19]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][0][20]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][0][21]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][0][22]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][0][23]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][0][24]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][0][25]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][0][26]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][1][0]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][1][1]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][1][2]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][1][3]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][1][4]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][1][5]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][1][6]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][1][7]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][1][8]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][1][9]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][1][10]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][1][11]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][1][12]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][1][13]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][1][14]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][1][15]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][1][16]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][1][17]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][1][18]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][1][19]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][1][20]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][1][21]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][1][22]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][1][23]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][1][24]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][1][25]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[0][1][26]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][0][0]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][0][1]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][0][2]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][0][3]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][0][4]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][0][5]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][0][6]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][0][7]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][0][8]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][0][9]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][0][10]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][0][11]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][0][12]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][0][13]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][0][14]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][0][15]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][0][16]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][0][17]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][0][18]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][0][19]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][0][20]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][0][21]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][0][22]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][0][23]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][0][24]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][0][25]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][0][26]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][1][0]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][1][1]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][1][2]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][1][3]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][1][4]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][1][5]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][1][6]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][1][7]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][1][8]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][1][9]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][1][10]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][1][11]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][1][12]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][1][13]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][1][14]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][1][15]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][1][16]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][1][17]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][1][18]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][1][19]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][1][20]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][1][21]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][1][22]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][1][23]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][1][24]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][1][25]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  1.000 [get_ports {i.result[1][1][26]}]


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


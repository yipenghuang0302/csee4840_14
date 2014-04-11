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

## DATE    "Fri Apr 11 14:51:16 2014"

##
## DEVICE  "5CSXFC6D6F31C6"
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

set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.a[0]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.a[0]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.a[1]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.a[1]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.a[2]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.a[2]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.a[3]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.a[3]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.a[4]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.a[4]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.a[5]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.a[5]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.a[6]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.a[6]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.a[7]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.a[7]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.a[8]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.a[8]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.a[9]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.a[9]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.a[10]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.a[10]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.a[11]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.a[11]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.a[12]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.a[12]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.a[13]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.a[13]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.a[14]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.a[14]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.a[15]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.a[15]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.a[16]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.a[16]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.a[17]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.a[17]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.a[18]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.a[18]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.a[19]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.a[19]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.a[20]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.a[20]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.a[21]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.a[21]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.a[22]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.a[22]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.a[23]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.a[23]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.a[24]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.a[24]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.a[25]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.a[25]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.a[26]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.a[26]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.alpha[0]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.alpha[0]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.alpha[1]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.alpha[1]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.alpha[2]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.alpha[2]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.alpha[3]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.alpha[3]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.alpha[4]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.alpha[4]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.alpha[5]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.alpha[5]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.alpha[6]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.alpha[6]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.alpha[7]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.alpha[7]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.alpha[8]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.alpha[8]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.alpha[9]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.alpha[9]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.alpha[10]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.alpha[10]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.alpha[11]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.alpha[11]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.alpha[12]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.alpha[12]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.alpha[13]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.alpha[13]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.alpha[14]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.alpha[14]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.alpha[15]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.alpha[15]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.alpha[16]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.alpha[16]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.alpha[17]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.alpha[17]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.alpha[18]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.alpha[18]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.alpha[19]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.alpha[19]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.alpha[20]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.alpha[20]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.alpha[21]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.alpha[21]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.alpha[22]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.alpha[22]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.alpha[23]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.alpha[23]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.alpha[24]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.alpha[24]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.alpha[25]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.alpha[25]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.alpha[26]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.alpha[26]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.clk}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.clk}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.d[0]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.d[0]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.d[1]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.d[1]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.d[2]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.d[2]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.d[3]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.d[3]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.d[4]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.d[4]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.d[5]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.d[5]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.d[6]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.d[6]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.d[7]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.d[7]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.d[8]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.d[8]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.d[9]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.d[9]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.d[10]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.d[10]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.d[11]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.d[11]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.d[12]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.d[12]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.d[13]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.d[13]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.d[14]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.d[14]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.d[15]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.d[15]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.d[16]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.d[16]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.d[17]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.d[17]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.d[18]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.d[18]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.d[19]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.d[19]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.d[20]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.d[20]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.d[21]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.d[21]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.d[22]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.d[22]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.d[23]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.d[23]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.d[24]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.d[24]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.d[25]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.d[25]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.d[26]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.d[26]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.en}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.en}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.theta[0]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.theta[0]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.theta[1]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.theta[1]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.theta[2]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.theta[2]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.theta[3]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.theta[3]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.theta[4]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.theta[4]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.theta[5]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.theta[5]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.theta[6]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.theta[6]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.theta[7]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.theta[7]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.theta[8]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.theta[8]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.theta[9]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.theta[9]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.theta[10]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.theta[10]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.theta[11]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.theta[11]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.theta[12]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.theta[12]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.theta[13]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.theta[13]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.theta[14]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.theta[14]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.theta[15]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.theta[15]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.theta[16]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.theta[16]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.theta[17]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.theta[17]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.theta[18]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.theta[18]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.theta[19]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.theta[19]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.theta[20]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.theta[20]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.theta[21]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.theta[21]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.theta[22]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.theta[22]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.theta[23]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.theta[23]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.theta[24]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.theta[24]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.theta[25]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.theta[25]}]
set_input_delay -add_delay -max -clock [get_clocks {i.clk}]  3.000 [get_ports {i.theta[26]}]
set_input_delay -add_delay -min -clock [get_clocks {i.clk}]  2.000 [get_ports {i.theta[26]}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_01[0]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_01[1]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_01[2]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_01[3]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_01[4]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_01[5]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_01[6]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_01[7]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_01[8]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_01[9]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_01[10]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_01[11]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_01[12]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_01[13]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_01[14]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_01[15]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_01[16]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_01[17]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_01[18]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_01[19]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_01[20]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_01[21]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_01[22]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_01[23]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_01[24]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_01[25]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_01[26]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_02[0]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_02[1]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_02[2]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_02[3]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_02[4]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_02[5]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_02[6]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_02[7]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_02[8]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_02[9]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_02[10]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_02[11]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_02[12]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_02[13]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_02[14]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_02[15]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_02[16]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_02[17]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_02[18]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_02[19]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_02[20]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_02[21]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_02[22]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_02[23]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_02[24]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_02[25]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_02[26]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_03[0]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_03[1]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_03[2]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_03[3]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_03[4]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_03[5]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_03[6]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_03[7]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_03[8]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_03[9]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_03[10]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_03[11]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_03[12]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_03[13]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_03[14]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_03[15]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_03[16]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_03[17]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_03[18]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_03[19]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_03[20]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_03[21]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_03[22]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_03[23]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_03[24]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_03[25]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_03[26]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_11[0]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_11[1]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_11[2]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_11[3]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_11[4]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_11[5]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_11[6]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_11[7]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_11[8]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_11[9]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_11[10]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_11[11]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_11[12]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_11[13]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_11[14]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_11[15]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_11[16]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_11[17]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_11[18]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_11[19]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_11[20]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_11[21]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_11[22]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_11[23]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_11[24]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_11[25]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_11[26]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_12[0]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_12[1]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_12[2]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_12[3]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_12[4]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_12[5]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_12[6]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_12[7]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_12[8]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_12[9]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_12[10]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_12[11]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_12[12]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_12[13]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_12[14]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_12[15]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_12[16]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_12[17]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_12[18]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_12[19]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_12[20]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_12[21]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_12[22]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_12[23]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_12[24]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_12[25]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_12[26]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_13[0]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_13[1]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_13[2]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_13[3]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_13[4]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_13[5]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_13[6]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_13[7]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_13[8]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_13[9]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_13[10]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_13[11]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_13[12]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_13[13]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_13[14]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_13[15]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_13[16]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_13[17]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_13[18]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_13[19]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_13[20]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_13[21]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_13[22]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_13[23]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_13[24]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_13[25]}]
set_output_delay -add_delay  -clock [get_clocks {i.clk}]  2.000 [get_ports {i.t_matrix_13[26]}]


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


//ALTSQRT CBX_SINGLE_OUTPUT_FILE="ON" PIPELINE=5 Q_PORT_WIDTH=26 R_PORT_WIDTH=27 WIDTH=52 clk ena q radical remainder
//VERSION_BEGIN 13.1 cbx_mgl 2014:02:12:21:04:28:SJ cbx_stratixii 2014:02:12:20:59:46:SJ cbx_util_mgl 2014:02:12:20:59:46:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



// Copyright (C) 1991-2014 Altera Corporation
//  Your use of Altera Corporation's design tools, logic functions 
//  and other software and tools, and its AMPP partner logic 
//  functions, and any output files from any of the foregoing 
//  (including device programming or simulation files), and any 
//  associated documentation or information are expressly subject 
//  to the terms and conditions of the Altera Program License 
//  Subscription Agreement, Altera MegaCore Function License 
//  Agreement, or other applicable license agreement, including, 
//  without limitation, that your use is for the sole purpose of 
//  programming logic devices manufactured by Altera and sold by 
//  Altera or its authorized distributors.  Please refer to the 
//  applicable agreement for further details.



//synthesis_resources = ALTSQRT 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  mgsha
	( 
	clk,
	ena,
	q,
	radical,
	remainder) /* synthesis synthesis_clearbox=1 */;
	input   clk;
	input   ena;
	output   [25:0]  q;
	input   [51:0]  radical;
	output   [26:0]  remainder;

	wire  [25:0]   wire_mgl_prim1_q;
	wire  [26:0]   wire_mgl_prim1_remainder;

	ALTSQRT   mgl_prim1
	( 
	.clk(clk),
	.ena(ena),
	.q(wire_mgl_prim1_q),
	.radical(radical),
	.remainder(wire_mgl_prim1_remainder));
	defparam
		mgl_prim1.pipeline = 5,
		mgl_prim1.q_port_width = 26,
		mgl_prim1.r_port_width = 27,
		mgl_prim1.width = 52;
	assign
		q = wire_mgl_prim1_q,
		remainder = wire_mgl_prim1_remainder;
endmodule //mgsha
//VALID FILE

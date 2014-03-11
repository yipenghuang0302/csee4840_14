// megafunction wizard: %ALTFP_SINCOS%VBB%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: altfp_sincos 

// ============================================================
// File Name: sin.v
// Megafunction Name(s):
// 			altfp_sincos
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 13.1.3 Build 178 02/12/2014 SJ Web Edition
// ************************************************************

//Copyright (C) 1991-2014 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.

module sin (
	clk_en,
	clock,
	data,
	result)/* synthesis synthesis_clearbox = 1 */;

	input	  clk_en;
	input	  clock;
	input	[31:0]  data;
	output	[31:0]  result;

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: FPM_FORMAT NUMERIC "0"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "1"
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
// Retrieval info: CONSTANT: OPERATION STRING "SIN"
// Retrieval info: CONSTANT: PIPELINE NUMERIC "36"
// Retrieval info: CONSTANT: ROUNDING STRING "TO_NEAREST"
// Retrieval info: CONSTANT: WIDTH_EXP NUMERIC "8"
// Retrieval info: CONSTANT: WIDTH_MAN NUMERIC "23"
// Retrieval info: USED_PORT: clk_en 0 0 0 0 INPUT NODEFVAL "clk_en"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
// Retrieval info: USED_PORT: data 0 0 32 0 INPUT NODEFVAL "data[31..0]"
// Retrieval info: USED_PORT: result 0 0 32 0 OUTPUT NODEFVAL "result[31..0]"
// Retrieval info: CONNECT: @clk_en 0 0 0 0 clk_en 0 0 0 0
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 32 0 data 0 0 32 0
// Retrieval info: CONNECT: result 0 0 32 0 @result 0 0 32 0
// Retrieval info: GEN_FILE: TYPE_NORMAL sin.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL sin.inc TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL sin.cmp TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL sin.bsf TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL sin_inst.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL sin_bb.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL sin_syn.v TRUE
// Retrieval info: LIB_FILE: lpm

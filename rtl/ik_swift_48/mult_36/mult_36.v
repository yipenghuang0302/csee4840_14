// megafunction wizard: %LPM_MULT%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: lpm_mult 

// ============================================================
// File Name: mult_36.v
// Megafunction Name(s):
// 			lpm_mult
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


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module mult_36 (
	clken,
	clock,
	dataa,
	datab,
	result);

	input	  clken;
	input	  clock;
	input	[35:0]  dataa;
	input	[35:0]  datab;
	output	[71:0]  result;

	wire [71:0] sub_wire0;
	wire [71:0] result = sub_wire0[71:0];

	lpm_mult	lpm_mult_component (
				.clock (clock),
				.datab (datab),
				.clken (clken),
				.dataa (dataa),
				.result (sub_wire0),
				.aclr (1'b0),
				.sum (1'b0));
	defparam
		lpm_mult_component.lpm_hint = "MAXIMIZE_SPEED=1",
		lpm_mult_component.lpm_pipeline = 3,
		lpm_mult_component.lpm_representation = "SIGNED",
		lpm_mult_component.lpm_type = "LPM_MULT",
		lpm_mult_component.lpm_widtha = 36,
		lpm_mult_component.lpm_widthb = 36,
		lpm_mult_component.lpm_widthp = 72;


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: AutoSizeResult NUMERIC "1"
// Retrieval info: PRIVATE: B_isConstant NUMERIC "0"
// Retrieval info: PRIVATE: ConstantB NUMERIC "0"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
// Retrieval info: PRIVATE: LPM_PIPELINE NUMERIC "3"
// Retrieval info: PRIVATE: Latency NUMERIC "1"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "1"
// Retrieval info: PRIVATE: SignedMult NUMERIC "1"
// Retrieval info: PRIVATE: USE_MULT NUMERIC "1"
// Retrieval info: PRIVATE: ValidConstant NUMERIC "0"
// Retrieval info: PRIVATE: WidthA NUMERIC "36"
// Retrieval info: PRIVATE: WidthB NUMERIC "36"
// Retrieval info: PRIVATE: WidthP NUMERIC "72"
// Retrieval info: PRIVATE: aclr NUMERIC "0"
// Retrieval info: PRIVATE: clken NUMERIC "1"
// Retrieval info: PRIVATE: new_diagram STRING "1"
// Retrieval info: PRIVATE: optimize NUMERIC "2"
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: CONSTANT: LPM_HINT STRING "MAXIMIZE_SPEED=1"
// Retrieval info: CONSTANT: LPM_PIPELINE NUMERIC "3"
// Retrieval info: CONSTANT: LPM_REPRESENTATION STRING "SIGNED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_MULT"
// Retrieval info: CONSTANT: LPM_WIDTHA NUMERIC "36"
// Retrieval info: CONSTANT: LPM_WIDTHB NUMERIC "36"
// Retrieval info: CONSTANT: LPM_WIDTHP NUMERIC "72"
// Retrieval info: USED_PORT: clken 0 0 0 0 INPUT NODEFVAL "clken"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
// Retrieval info: USED_PORT: dataa 0 0 36 0 INPUT NODEFVAL "dataa[35..0]"
// Retrieval info: USED_PORT: datab 0 0 36 0 INPUT NODEFVAL "datab[35..0]"
// Retrieval info: USED_PORT: result 0 0 72 0 OUTPUT NODEFVAL "result[71..0]"
// Retrieval info: CONNECT: @clken 0 0 0 0 clken 0 0 0 0
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: @dataa 0 0 36 0 dataa 0 0 36 0
// Retrieval info: CONNECT: @datab 0 0 36 0 datab 0 0 36 0
// Retrieval info: CONNECT: result 0 0 72 0 @result 0 0 72 0
// Retrieval info: GEN_FILE: TYPE_NORMAL mult_36.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL mult_36.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL mult_36.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL mult_36.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL mult_36_inst.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL mult_36_bb.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL mult_36_syn.v TRUE
// Retrieval info: LIB_FILE: lpm

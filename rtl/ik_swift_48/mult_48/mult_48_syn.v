// megafunction wizard: %LPM_MULT%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: lpm_mult 

// ============================================================
// File Name: mult_48.v
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


//lpm_mult DEVICE_FAMILY="Cyclone V" LPM_PIPELINE=3 LPM_REPRESENTATION="SIGNED" LPM_WIDTHA=48 LPM_WIDTHB=48 LPM_WIDTHP=96 MAXIMIZE_SPEED=1 clken clock dataa datab result
//VERSION_BEGIN 13.1 cbx_cycloneii 2014:02:12:20:59:46:SJ cbx_lpm_add_sub 2014:02:12:20:59:46:SJ cbx_lpm_mult 2014:02:12:20:59:46:SJ cbx_mgl 2014:02:12:21:04:28:SJ cbx_padd 2014:02:12:20:59:46:SJ cbx_stratix 2014:02:12:20:59:46:SJ cbx_stratixii 2014:02:12:20:59:46:SJ cbx_util_mgl 2014:02:12:20:59:46:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463


//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  mult_48_mult
	( 
	clken,
	clock,
	dataa,
	datab,
	result) /* synthesis synthesis_clearbox=1 */;
	input   clken;
	input   clock;
	input   [47:0]  dataa;
	input   [47:0]  datab;
	output   [95:0]  result;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri1   clken;
	tri0   clock;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	reg	[47:0]	dataa_input_reg;
	reg	[47:0]	datab_input_reg;
	reg	[95:0]	result_output_reg;
	reg	[95:0]	result_extra0_reg;
	wire	signed	[47:0]	dataa_wire;
	wire	signed	[47:0]	datab_wire;
	wire	signed	[95:0]	result_wire;


	// synopsys translate_off
	initial
		dataa_input_reg = 0;
	// synopsys translate_on
	always @(posedge clock)
		 if (clken == 1'b1)	dataa_input_reg <= dataa;
	// synopsys translate_off
	initial
		datab_input_reg = 0;
	// synopsys translate_on
	always @(posedge clock)
		 if (clken == 1'b1)	datab_input_reg <= datab;
	// synopsys translate_off
	initial
		result_output_reg = 0;
	// synopsys translate_on
	always @(posedge clock)
		 if (clken == 1'b1)	result_output_reg <= result_extra0_reg;
	// synopsys translate_off
	initial
		result_extra0_reg = 0;
	// synopsys translate_on
	always @(posedge clock)
		 if (clken == 1'b1)	result_extra0_reg <= result_wire[95:0];

	assign dataa_wire = dataa_input_reg;
	assign datab_wire = datab_input_reg;
	assign result_wire = dataa_wire * datab_wire;
	assign result = ({result_output_reg});

endmodule //mult_48_mult
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module mult_48 (
	clken,
	clock,
	dataa,
	datab,
	result)/* synthesis synthesis_clearbox = 1 */;

	input	  clken;
	input	  clock;
	input	[47:0]  dataa;
	input	[47:0]  datab;
	output	[95:0]  result;

	wire [95:0] sub_wire0;
	wire [95:0] result = sub_wire0[95:0];

	mult_48_mult	mult_48_mult_component (
				.clock (clock),
				.datab (datab),
				.clken (clken),
				.dataa (dataa),
				.result (sub_wire0));

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
// Retrieval info: PRIVATE: WidthA NUMERIC "48"
// Retrieval info: PRIVATE: WidthB NUMERIC "48"
// Retrieval info: PRIVATE: WidthP NUMERIC "96"
// Retrieval info: PRIVATE: aclr NUMERIC "0"
// Retrieval info: PRIVATE: clken NUMERIC "1"
// Retrieval info: PRIVATE: new_diagram STRING "1"
// Retrieval info: PRIVATE: optimize NUMERIC "2"
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: CONSTANT: LPM_HINT STRING "MAXIMIZE_SPEED=1"
// Retrieval info: CONSTANT: LPM_PIPELINE NUMERIC "3"
// Retrieval info: CONSTANT: LPM_REPRESENTATION STRING "SIGNED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_MULT"
// Retrieval info: CONSTANT: LPM_WIDTHA NUMERIC "48"
// Retrieval info: CONSTANT: LPM_WIDTHB NUMERIC "48"
// Retrieval info: CONSTANT: LPM_WIDTHP NUMERIC "96"
// Retrieval info: USED_PORT: clken 0 0 0 0 INPUT NODEFVAL "clken"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
// Retrieval info: USED_PORT: dataa 0 0 48 0 INPUT NODEFVAL "dataa[47..0]"
// Retrieval info: USED_PORT: datab 0 0 48 0 INPUT NODEFVAL "datab[47..0]"
// Retrieval info: USED_PORT: result 0 0 96 0 OUTPUT NODEFVAL "result[95..0]"
// Retrieval info: CONNECT: @clken 0 0 0 0 clken 0 0 0 0
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: @dataa 0 0 48 0 dataa 0 0 48 0
// Retrieval info: CONNECT: @datab 0 0 48 0 datab 0 0 48 0
// Retrieval info: CONNECT: result 0 0 96 0 @result 0 0 96 0
// Retrieval info: GEN_FILE: TYPE_NORMAL mult_48.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL mult_48.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL mult_48.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL mult_48.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL mult_48_inst.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL mult_48_bb.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL mult_48_syn.v TRUE
// Retrieval info: LIB_FILE: lpm

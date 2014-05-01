// Copyright (C) 1991-2014 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// VENDOR "Altera"
// PROGRAM "Quartus II 32-bit"
// VERSION "Version 13.1.3 Build 178 02/12/2014 SJ Web Edition"

// DATE "04/25/2014 19:11:01"

// 
// Device: Altera 5CGXFC7C7F23C8 Package FBGA484
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module sqrt_27 (
	clk,
	ena,
	radical,
	q,
	remainder)/* synthesis synthesis_greybox=0 */;
input 	clk;
input 	ena;
input 	[26:0] radical;
output 	[13:0] q;
output 	[14:0] remainder;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \ALTSQRT_component|subtractors[13]|auto_generated|op_1~1_sumout ;
wire \ALTSQRT_component|b_dffe[12]|sr[0][0]~q ;
wire \ALTSQRT_component|b_dffe[12]|sr[0][1]~q ;
wire \ALTSQRT_component|b_dffe[12]|sr[0][2]~q ;
wire \ALTSQRT_component|b_dffe[12]|sr[0][3]~q ;
wire \ALTSQRT_component|b_dffe[12]|sr[0][4]~q ;
wire \ALTSQRT_component|b_dffe[12]|sr[0][5]~q ;
wire \ALTSQRT_component|b_dffe[12]|sr[0][6]~q ;
wire \ALTSQRT_component|b_dffe[12]|sr[0][7]~q ;
wire \ALTSQRT_component|b_dffe[12]|sr[0][8]~q ;
wire \ALTSQRT_component|b_dffe[12]|sr[0][9]~q ;
wire \ALTSQRT_component|b_dffe[12]|sr[0][10]~q ;
wire \ALTSQRT_component|b_dffe[12]|sr[0][11]~q ;
wire \ALTSQRT_component|b_dffe[12]|sr[0][12]~q ;
wire \ALTSQRT_component|_~0_combout ;
wire \ALTSQRT_component|_~1_combout ;
wire \ALTSQRT_component|_~2_combout ;
wire \ALTSQRT_component|_~3_combout ;
wire \ALTSQRT_component|_~4_combout ;
wire \ALTSQRT_component|_~5_combout ;
wire \ALTSQRT_component|_~6_combout ;
wire \ALTSQRT_component|_~7_combout ;
wire \ALTSQRT_component|_~8_combout ;
wire \ALTSQRT_component|_~9_combout ;
wire \ALTSQRT_component|_~10_combout ;
wire \ALTSQRT_component|_~11_combout ;
wire \ALTSQRT_component|_~12_combout ;
wire \ALTSQRT_component|_~13_combout ;
wire \ALTSQRT_component|_~14_combout ;
wire \clk~input_o ;
wire \ena~input_o ;
wire \radical[26]~input_o ;
wire \radical[25]~input_o ;
wire \radical[24]~input_o ;
wire \radical[23]~input_o ;
wire \radical[22]~input_o ;
wire \radical[0]~input_o ;
wire \radical[1]~input_o ;
wire \radical[2]~input_o ;
wire \radical[3]~input_o ;
wire \radical[4]~input_o ;
wire \radical[5]~input_o ;
wire \radical[6]~input_o ;
wire \radical[7]~input_o ;
wire \radical[8]~input_o ;
wire \radical[9]~input_o ;
wire \radical[10]~input_o ;
wire \radical[11]~input_o ;
wire \radical[12]~input_o ;
wire \radical[13]~input_o ;
wire \radical[14]~input_o ;
wire \radical[15]~input_o ;
wire \radical[16]~input_o ;
wire \radical[17]~input_o ;
wire \radical[18]~input_o ;
wire \radical[19]~input_o ;
wire \radical[20]~input_o ;
wire \radical[21]~input_o ;


sqrt_27_altsqrt_1 ALTSQRT_component(
	.op_1(\ALTSQRT_component|subtractors[13]|auto_generated|op_1~1_sumout ),
	.sr_0_0(\ALTSQRT_component|b_dffe[12]|sr[0][0]~q ),
	.sr_1_0(\ALTSQRT_component|b_dffe[12]|sr[0][1]~q ),
	.sr_2_0(\ALTSQRT_component|b_dffe[12]|sr[0][2]~q ),
	.sr_3_0(\ALTSQRT_component|b_dffe[12]|sr[0][3]~q ),
	.sr_4_0(\ALTSQRT_component|b_dffe[12]|sr[0][4]~q ),
	.sr_5_0(\ALTSQRT_component|b_dffe[12]|sr[0][5]~q ),
	.sr_6_0(\ALTSQRT_component|b_dffe[12]|sr[0][6]~q ),
	.sr_7_0(\ALTSQRT_component|b_dffe[12]|sr[0][7]~q ),
	.sr_8_0(\ALTSQRT_component|b_dffe[12]|sr[0][8]~q ),
	.sr_9_0(\ALTSQRT_component|b_dffe[12]|sr[0][9]~q ),
	.sr_10_0(\ALTSQRT_component|b_dffe[12]|sr[0][10]~q ),
	.sr_11_0(\ALTSQRT_component|b_dffe[12]|sr[0][11]~q ),
	.sr_12_0(\ALTSQRT_component|b_dffe[12]|sr[0][12]~q ),
	._(\ALTSQRT_component|_~0_combout ),
	._1(\ALTSQRT_component|_~1_combout ),
	._2(\ALTSQRT_component|_~2_combout ),
	._3(\ALTSQRT_component|_~3_combout ),
	._4(\ALTSQRT_component|_~4_combout ),
	._5(\ALTSQRT_component|_~5_combout ),
	._6(\ALTSQRT_component|_~6_combout ),
	._7(\ALTSQRT_component|_~7_combout ),
	._8(\ALTSQRT_component|_~8_combout ),
	._9(\ALTSQRT_component|_~9_combout ),
	._10(\ALTSQRT_component|_~10_combout ),
	._11(\ALTSQRT_component|_~11_combout ),
	._12(\ALTSQRT_component|_~12_combout ),
	._13(\ALTSQRT_component|_~13_combout ),
	._14(\ALTSQRT_component|_~14_combout ),
	.clk(\clk~input_o ),
	.ena(\ena~input_o ),
	.radical_26(\radical[26]~input_o ),
	.radical_25(\radical[25]~input_o ),
	.radical_24(\radical[24]~input_o ),
	.radical_23(\radical[23]~input_o ),
	.radical_22(\radical[22]~input_o ),
	.radical_0(\radical[0]~input_o ),
	.radical_1(\radical[1]~input_o ),
	.radical_2(\radical[2]~input_o ),
	.radical_3(\radical[3]~input_o ),
	.radical_4(\radical[4]~input_o ),
	.radical_5(\radical[5]~input_o ),
	.radical_6(\radical[6]~input_o ),
	.radical_7(\radical[7]~input_o ),
	.radical_8(\radical[8]~input_o ),
	.radical_9(\radical[9]~input_o ),
	.radical_10(\radical[10]~input_o ),
	.radical_11(\radical[11]~input_o ),
	.radical_12(\radical[12]~input_o ),
	.radical_13(\radical[13]~input_o ),
	.radical_14(\radical[14]~input_o ),
	.radical_15(\radical[15]~input_o ),
	.radical_16(\radical[16]~input_o ),
	.radical_17(\radical[17]~input_o ),
	.radical_18(\radical[18]~input_o ),
	.radical_19(\radical[19]~input_o ),
	.radical_20(\radical[20]~input_o ),
	.radical_21(\radical[21]~input_o ));

assign \clk~input_o  = clk;

assign \ena~input_o  = ena;

assign \radical[26]~input_o  = radical[26];

assign \radical[25]~input_o  = radical[25];

assign \radical[24]~input_o  = radical[24];

assign \radical[23]~input_o  = radical[23];

assign \radical[22]~input_o  = radical[22];

assign \radical[0]~input_o  = radical[0];

assign \radical[1]~input_o  = radical[1];

assign \radical[2]~input_o  = radical[2];

assign \radical[3]~input_o  = radical[3];

assign \radical[4]~input_o  = radical[4];

assign \radical[5]~input_o  = radical[5];

assign \radical[6]~input_o  = radical[6];

assign \radical[7]~input_o  = radical[7];

assign \radical[8]~input_o  = radical[8];

assign \radical[9]~input_o  = radical[9];

assign \radical[10]~input_o  = radical[10];

assign \radical[11]~input_o  = radical[11];

assign \radical[12]~input_o  = radical[12];

assign \radical[13]~input_o  = radical[13];

assign \radical[14]~input_o  = radical[14];

assign \radical[15]~input_o  = radical[15];

assign \radical[16]~input_o  = radical[16];

assign \radical[17]~input_o  = radical[17];

assign \radical[18]~input_o  = radical[18];

assign \radical[19]~input_o  = radical[19];

assign \radical[20]~input_o  = radical[20];

assign \radical[21]~input_o  = radical[21];

assign q[0] = ~ \ALTSQRT_component|subtractors[13]|auto_generated|op_1~1_sumout ;

assign q[1] = \ALTSQRT_component|b_dffe[12]|sr[0][0]~q ;

assign q[2] = \ALTSQRT_component|b_dffe[12]|sr[0][1]~q ;

assign q[3] = \ALTSQRT_component|b_dffe[12]|sr[0][2]~q ;

assign q[4] = \ALTSQRT_component|b_dffe[12]|sr[0][3]~q ;

assign q[5] = \ALTSQRT_component|b_dffe[12]|sr[0][4]~q ;

assign q[6] = \ALTSQRT_component|b_dffe[12]|sr[0][5]~q ;

assign q[7] = \ALTSQRT_component|b_dffe[12]|sr[0][6]~q ;

assign q[8] = \ALTSQRT_component|b_dffe[12]|sr[0][7]~q ;

assign q[9] = \ALTSQRT_component|b_dffe[12]|sr[0][8]~q ;

assign q[10] = \ALTSQRT_component|b_dffe[12]|sr[0][9]~q ;

assign q[11] = \ALTSQRT_component|b_dffe[12]|sr[0][10]~q ;

assign q[12] = \ALTSQRT_component|b_dffe[12]|sr[0][11]~q ;

assign q[13] = \ALTSQRT_component|b_dffe[12]|sr[0][12]~q ;

assign remainder[0] = ~ \ALTSQRT_component|_~0_combout ;

assign remainder[1] = \ALTSQRT_component|_~1_combout ;

assign remainder[2] = \ALTSQRT_component|_~2_combout ;

assign remainder[3] = \ALTSQRT_component|_~3_combout ;

assign remainder[4] = \ALTSQRT_component|_~4_combout ;

assign remainder[5] = \ALTSQRT_component|_~5_combout ;

assign remainder[6] = \ALTSQRT_component|_~6_combout ;

assign remainder[7] = \ALTSQRT_component|_~7_combout ;

assign remainder[8] = \ALTSQRT_component|_~8_combout ;

assign remainder[9] = \ALTSQRT_component|_~9_combout ;

assign remainder[10] = \ALTSQRT_component|_~10_combout ;

assign remainder[11] = \ALTSQRT_component|_~11_combout ;

assign remainder[12] = \ALTSQRT_component|_~12_combout ;

assign remainder[13] = \ALTSQRT_component|_~13_combout ;

assign remainder[14] = \ALTSQRT_component|_~14_combout ;

endmodule

module sqrt_27_altsqrt_1 (
	op_1,
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_7_0,
	sr_8_0,
	sr_9_0,
	sr_10_0,
	sr_11_0,
	sr_12_0,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	_6,
	_7,
	_8,
	_9,
	_10,
	_11,
	_12,
	_13,
	_14,
	clk,
	ena,
	radical_26,
	radical_25,
	radical_24,
	radical_23,
	radical_22,
	radical_0,
	radical_1,
	radical_2,
	radical_3,
	radical_4,
	radical_5,
	radical_6,
	radical_7,
	radical_8,
	radical_9,
	radical_10,
	radical_11,
	radical_12,
	radical_13,
	radical_14,
	radical_15,
	radical_16,
	radical_17,
	radical_18,
	radical_19,
	radical_20,
	radical_21)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	sr_0_0;
output 	sr_1_0;
output 	sr_2_0;
output 	sr_3_0;
output 	sr_4_0;
output 	sr_5_0;
output 	sr_6_0;
output 	sr_7_0;
output 	sr_8_0;
output 	sr_9_0;
output 	sr_10_0;
output 	sr_11_0;
output 	sr_12_0;
output 	_;
output 	_1;
output 	_2;
output 	_3;
output 	_4;
output 	_5;
output 	_6;
output 	_7;
output 	_8;
output 	_9;
output 	_10;
output 	_11;
output 	_12;
output 	_13;
output 	_14;
input 	clk;
input 	ena;
input 	radical_26;
input 	radical_25;
input 	radical_24;
input 	radical_23;
input 	radical_22;
input 	radical_0;
input 	radical_1;
input 	radical_2;
input 	radical_3;
input 	radical_4;
input 	radical_5;
input 	radical_6;
input 	radical_7;
input 	radical_8;
input 	radical_9;
input 	radical_10;
input 	radical_11;
input 	radical_12;
input 	radical_13;
input 	radical_14;
input 	radical_15;
input 	radical_16;
input 	radical_17;
input 	radical_18;
input 	radical_19;
input 	radical_20;
input 	radical_21;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \subtractors[13]|auto_generated|op_1~5_sumout ;
wire \subtractors[13]|auto_generated|op_1~9_sumout ;
wire \subtractors[13]|auto_generated|op_1~13_sumout ;
wire \subtractors[13]|auto_generated|op_1~17_sumout ;
wire \subtractors[13]|auto_generated|op_1~21_sumout ;
wire \subtractors[13]|auto_generated|op_1~25_sumout ;
wire \subtractors[13]|auto_generated|op_1~29_sumout ;
wire \subtractors[13]|auto_generated|op_1~33_sumout ;
wire \subtractors[13]|auto_generated|op_1~37_sumout ;
wire \subtractors[13]|auto_generated|op_1~41_sumout ;
wire \subtractors[13]|auto_generated|op_1~45_sumout ;
wire \subtractors[13]|auto_generated|op_1~49_sumout ;
wire \subtractors[13]|auto_generated|op_1~53_sumout ;
wire \subtractors[13]|auto_generated|op_1~57_sumout ;
wire \subtractors[12]|auto_generated|op_1~1_sumout ;
wire \subtractors[11]|auto_generated|op_1~1_sumout ;
wire \subtractors[10]|auto_generated|op_1~1_sumout ;
wire \subtractors[12]|auto_generated|op_1~5_sumout ;
wire \subtractors[12]|auto_generated|op_1~9_sumout ;
wire \subtractors[11]|auto_generated|op_1~5_sumout ;
wire \subtractors[12]|auto_generated|op_1~13_sumout ;
wire \subtractors[11]|auto_generated|op_1~9_sumout ;
wire \subtractors[12]|auto_generated|op_1~17_sumout ;
wire \subtractors[10]|auto_generated|op_1~5_sumout ;
wire \subtractors[11]|auto_generated|op_1~13_sumout ;
wire \subtractors[12]|auto_generated|op_1~21_sumout ;
wire \subtractors[10]|auto_generated|op_1~9_sumout ;
wire \subtractors[11]|auto_generated|op_1~17_sumout ;
wire \subtractors[12]|auto_generated|op_1~25_sumout ;
wire \subtractors[10]|auto_generated|op_1~13_sumout ;
wire \subtractors[11]|auto_generated|op_1~21_sumout ;
wire \subtractors[12]|auto_generated|op_1~29_sumout ;
wire \subtractors[10]|auto_generated|op_1~17_sumout ;
wire \subtractors[11]|auto_generated|op_1~25_sumout ;
wire \subtractors[12]|auto_generated|op_1~33_sumout ;
wire \subtractors[10]|auto_generated|op_1~21_sumout ;
wire \subtractors[11]|auto_generated|op_1~29_sumout ;
wire \subtractors[12]|auto_generated|op_1~37_sumout ;
wire \subtractors[10]|auto_generated|op_1~25_sumout ;
wire \subtractors[11]|auto_generated|op_1~33_sumout ;
wire \subtractors[12]|auto_generated|op_1~41_sumout ;
wire \subtractors[10]|auto_generated|op_1~29_sumout ;
wire \subtractors[11]|auto_generated|op_1~37_sumout ;
wire \subtractors[12]|auto_generated|op_1~45_sumout ;
wire \subtractors[10]|auto_generated|op_1~33_sumout ;
wire \subtractors[11]|auto_generated|op_1~41_sumout ;
wire \subtractors[12]|auto_generated|op_1~49_sumout ;
wire \subtractors[9]|auto_generated|op_1~1_sumout ;
wire \subtractors[8]|auto_generated|op_1~1_sumout ;
wire \subtractors[7]|auto_generated|op_1~1_sumout ;
wire \subtractors[9]|auto_generated|op_1~5_sumout ;
wire \subtractors[9]|auto_generated|op_1~9_sumout ;
wire \subtractors[8]|auto_generated|op_1~5_sumout ;
wire \subtractors[9]|auto_generated|op_1~13_sumout ;
wire \subtractors[8]|auto_generated|op_1~9_sumout ;
wire \subtractors[9]|auto_generated|op_1~17_sumout ;
wire \subtractors[7]|auto_generated|op_1~5_sumout ;
wire \subtractors[8]|auto_generated|op_1~13_sumout ;
wire \subtractors[9]|auto_generated|op_1~21_sumout ;
wire \subtractors[7]|auto_generated|op_1~9_sumout ;
wire \subtractors[8]|auto_generated|op_1~17_sumout ;
wire \subtractors[9]|auto_generated|op_1~25_sumout ;
wire \subtractors[10]|auto_generated|op_1~45_sumout ;
wire \subtractors[11]|auto_generated|op_1~53_sumout ;
wire \subtractors[12]|auto_generated|op_1~61_sumout ;
wire \subtractors[10]|auto_generated|op_1~49_sumout ;
wire \subtractors[11]|auto_generated|op_1~57_sumout ;
wire \subtractors[10]|auto_generated|op_1~53_sumout ;
wire \subtractors[6]|auto_generated|op_1~1_sumout ;
wire \subtractors[5]|auto_generated|op_1~1_sumout ;
wire \subtractors[7]|auto_generated|op_1~21_sumout ;
wire \subtractors[8]|auto_generated|op_1~29_sumout ;
wire \subtractors[9]|auto_generated|op_1~37_sumout ;
wire \subtractors[7]|auto_generated|op_1~25_sumout ;
wire \subtractors[8]|auto_generated|op_1~33_sumout ;
wire \subtractors[9]|auto_generated|op_1~41_sumout ;
wire \subtractors[7]|auto_generated|op_1~29_sumout ;
wire \subtractors[8]|auto_generated|op_1~37_sumout ;
wire \subtractors[9]|auto_generated|op_1~45_sumout ;
wire \subtractors[7]|auto_generated|op_1~33_sumout ;
wire \subtractors[8]|auto_generated|op_1~41_sumout ;
wire \subtractors[9]|auto_generated|op_1~49_sumout ;
wire \subtractors[7]|auto_generated|op_1~37_sumout ;
wire \subtractors[8]|auto_generated|op_1~45_sumout ;
wire \subtractors[7]|auto_generated|op_1~41_sumout ;
wire \subtractors[4]|auto_generated|op_1~1_sumout ;
wire \subtractors[3]|auto_generated|op_1~1_sumout ;
wire \subtractors[6]|auto_generated|op_1~9_sumout ;
wire \subtractors[6]|auto_generated|op_1~13_sumout ;
wire \subtractors[5]|auto_generated|op_1~9_sumout ;
wire \subtractors[6]|auto_generated|op_1~17_sumout ;
wire \subtractors[5]|auto_generated|op_1~13_sumout ;
wire \subtractors[6]|auto_generated|op_1~21_sumout ;
wire \subtractors[5]|auto_generated|op_1~17_sumout ;
wire \subtractors[6]|auto_generated|op_1~25_sumout ;
wire \subtractors[5]|auto_generated|op_1~21_sumout ;
wire \subtractors[6]|auto_generated|op_1~29_sumout ;
wire \subtractors[5]|auto_generated|op_1~25_sumout ;
wire \subtractors[6]|auto_generated|op_1~33_sumout ;
wire \subtractors[5]|auto_generated|op_1~29_sumout ;
wire \subtractors[4]|auto_generated|op_1~9_sumout ;
wire \subtractors[4]|auto_generated|op_1~13_sumout ;
wire \subtractors[3]|auto_generated|op_1~9_sumout ;
wire \subtractors[4]|auto_generated|op_1~17_sumout ;
wire \subtractors[3]|auto_generated|op_1~13_sumout ;
wire \subtractors[4]|auto_generated|op_1~21_sumout ;
wire \subtractors[3]|auto_generated|op_1~17_sumout ;
wire \subtractors[4]|auto_generated|op_1~25_sumout ;
wire \subtractors[3]|auto_generated|op_1~21_sumout ;
wire \a_delay|sr[4][0]~q ;
wire \a_delay|sr[4][1]~q ;
wire \r_dffe[12]|sr[0][0]~q ;
wire \r_dffe[12]|sr[0][1]~q ;
wire \r_dffe[12]|sr[0][2]~q ;
wire \r_dffe[12]|sr[0][3]~q ;
wire \r_dffe[12]|sr[0][4]~q ;
wire \r_dffe[12]|sr[0][5]~q ;
wire \r_dffe[12]|sr[0][6]~q ;
wire \r_dffe[12]|sr[0][7]~q ;
wire \r_dffe[12]|sr[0][8]~q ;
wire \r_dffe[12]|sr[0][9]~q ;
wire \r_dffe[12]|sr[0][10]~q ;
wire \r_dffe[12]|sr[0][11]~q ;
wire \r_dffe[12]|sr[0][12]~q ;
wire \b_dffe[9]|sr[0][0]~q ;
wire \b_dffe[9]|sr[0][1]~q ;
wire \b_dffe[9]|sr[0][2]~q ;
wire \b_dffe[9]|sr[0][3]~q ;
wire \b_dffe[9]|sr[0][4]~q ;
wire \b_dffe[9]|sr[0][5]~q ;
wire \b_dffe[9]|sr[0][6]~q ;
wire \b_dffe[9]|sr[0][7]~q ;
wire \b_dffe[9]|sr[0][8]~q ;
wire \b_dffe[9]|sr[0][9]~q ;
wire \a_delay|sr[3][2]~q ;
wire \_~15_combout ;
wire \a_delay|sr[3][3]~q ;
wire \_~16_combout ;
wire \a_delay|sr[3][4]~q ;
wire \_~17_combout ;
wire \a_delay|sr[3][5]~q ;
wire \_~18_combout ;
wire \a_delay|sr[3][6]~q ;
wire \_~19_combout ;
wire \a_delay|sr[3][7]~q ;
wire \_~20_combout ;
wire \_~21_combout ;
wire \r_dffe[9]|sr[0][0]~q ;
wire \_~22_combout ;
wire \_~23_combout ;
wire \r_dffe[9]|sr[0][1]~q ;
wire \_~24_combout ;
wire \_~25_combout ;
wire \r_dffe[9]|sr[0][2]~q ;
wire \_~26_combout ;
wire \_~27_combout ;
wire \r_dffe[9]|sr[0][3]~q ;
wire \_~28_combout ;
wire \_~29_combout ;
wire \r_dffe[9]|sr[0][4]~q ;
wire \_~30_combout ;
wire \_~31_combout ;
wire \r_dffe[9]|sr[0][5]~q ;
wire \_~32_combout ;
wire \_~33_combout ;
wire \r_dffe[9]|sr[0][6]~q ;
wire \_~34_combout ;
wire \_~35_combout ;
wire \r_dffe[12]|sr[0][13]~q ;
wire \b_dffe[6]|sr[0][0]~q ;
wire \b_dffe[6]|sr[0][1]~q ;
wire \b_dffe[6]|sr[0][2]~q ;
wire \b_dffe[6]|sr[0][3]~q ;
wire \b_dffe[6]|sr[0][4]~q ;
wire \b_dffe[6]|sr[0][5]~q ;
wire \b_dffe[6]|sr[0][6]~q ;
wire \a_delay|sr[2][8]~q ;
wire \_~36_combout ;
wire \a_delay|sr[2][9]~q ;
wire \_~37_combout ;
wire \a_delay|sr[2][10]~q ;
wire \_~38_combout ;
wire \a_delay|sr[2][11]~q ;
wire \_~39_combout ;
wire \a_delay|sr[2][12]~q ;
wire \_~40_combout ;
wire \a_delay|sr[2][13]~q ;
wire \_~41_combout ;
wire \_~42_combout ;
wire \r_dffe[6]|sr[0][0]~q ;
wire \_~43_combout ;
wire \_~44_combout ;
wire \r_dffe[9]|sr[0][7]~q ;
wire \_~45_combout ;
wire \_~46_combout ;
wire \r_dffe[9]|sr[0][8]~q ;
wire \_~47_combout ;
wire \r_dffe[9]|sr[0][9]~q ;
wire \r_dffe[9]|sr[0][10]~q ;
wire \b_dffe[4]|sr[0][0]~q ;
wire \b_dffe[4]|sr[0][1]~q ;
wire \b_dffe[4]|sr[0][2]~q ;
wire \b_dffe[4]|sr[0][3]~q ;
wire \b_dffe[4]|sr[0][4]~q ;
wire \a_delay|sr[1][14]~q ;
wire \_~48_combout ;
wire \r_dffe[6]|sr[0][1]~q ;
wire \_~49_combout ;
wire \_~50_combout ;
wire \r_dffe[6]|sr[0][2]~q ;
wire \_~51_combout ;
wire \_~52_combout ;
wire \r_dffe[6]|sr[0][3]~q ;
wire \_~53_combout ;
wire \_~54_combout ;
wire \r_dffe[6]|sr[0][4]~q ;
wire \_~55_combout ;
wire \_~56_combout ;
wire \r_dffe[6]|sr[0][5]~q ;
wire \_~57_combout ;
wire \r_dffe[6]|sr[0][6]~q ;
wire \r_dffe[6]|sr[0][7]~q ;
wire \b_dffe[1]|sr[0][1]~q ;
wire \r_dffe[1]|sr[0][1]~q ;
wire \b_dffe[1]|sr[0][0]~q ;
wire \r_dffe[1]|sr[0][0]~q ;
wire \a_delay|sr[0][23]~q ;
wire \a_delay|sr[0][22]~q ;
wire \subtractors[2]|auto_generated|op_1~1_combout ;
wire \a_delay|sr[1][15]~q ;
wire \_~58_combout ;
wire \a_delay|sr[1][16]~q ;
wire \_~59_combout ;
wire \a_delay|sr[1][17]~q ;
wire \_~60_combout ;
wire \r_dffe[4]|sr[0][0]~q ;
wire \_~61_combout ;
wire \r_dffe[4]|sr[0][1]~q ;
wire \_~62_combout ;
wire \r_dffe[4]|sr[0][2]~q ;
wire \_~63_combout ;
wire \r_dffe[4]|sr[0][3]~q ;
wire \_~64_combout ;
wire \r_dffe[4]|sr[0][4]~q ;
wire \r_dffe[4]|sr[0][5]~q ;
wire \_~65_combout ;
wire \subtractors[1]|auto_generated|op_1~0_combout ;
wire \_~66_combout ;
wire \a_delay|sr[0][18]~q ;
wire \_~67_combout ;
wire \a_delay|sr[0][19]~q ;
wire \_~68_combout ;
wire \a_delay|sr[0][20]~q ;
wire \_~69_combout ;
wire \a_delay|sr[0][21]~q ;
wire \_~70_combout ;
wire \_~71_combout ;
wire \_~72_combout ;
wire \_~73_combout ;
wire \subtractors[2]|auto_generated|op_1~2_combout ;
wire \_~74_combout ;
wire \subtractors[2]|auto_generated|op_1~3_combout ;


sqrt_27_dffpipe_22 \r_dffe[1] (
	.sr_1_0(\r_dffe[1]|sr[0][1]~q ),
	.sr_0_0(\r_dffe[1]|sr[0][0]~q ),
	._(\_~65_combout ),
	._1(\_~66_combout ),
	.clock(clk),
	.ena(ena));

sqrt_27_dffpipe_25 \r_dffe[4] (
	.sr_0_0(\r_dffe[4]|sr[0][0]~q ),
	.sr_1_0(\r_dffe[4]|sr[0][1]~q ),
	.sr_2_0(\r_dffe[4]|sr[0][2]~q ),
	.sr_3_0(\r_dffe[4]|sr[0][3]~q ),
	.sr_4_0(\r_dffe[4]|sr[0][4]~q ),
	.sr_5_0(\r_dffe[4]|sr[0][5]~q ),
	._(\_~67_combout ),
	._1(\_~68_combout ),
	._2(\_~69_combout ),
	._3(\_~70_combout ),
	._4(\_~71_combout ),
	._5(\_~73_combout ),
	.clock(clk),
	.ena(ena));

sqrt_27_dffpipe_27 \r_dffe[6] (
	.sr_0_0(\r_dffe[6]|sr[0][0]~q ),
	._(\_~48_combout ),
	.sr_1_0(\r_dffe[6]|sr[0][1]~q ),
	.sr_2_0(\r_dffe[6]|sr[0][2]~q ),
	.sr_3_0(\r_dffe[6]|sr[0][3]~q ),
	.sr_4_0(\r_dffe[6]|sr[0][4]~q ),
	.sr_5_0(\r_dffe[6]|sr[0][5]~q ),
	.sr_6_0(\r_dffe[6]|sr[0][6]~q ),
	.sr_7_0(\r_dffe[6]|sr[0][7]~q ),
	._1(\_~58_combout ),
	._2(\_~59_combout ),
	._3(\_~60_combout ),
	._4(\_~61_combout ),
	._5(\_~62_combout ),
	._6(\_~63_combout ),
	._7(\_~64_combout ),
	.clock(clk),
	.ena(ena));

sqrt_27_dffpipe_30 \r_dffe[9] (
	.sr_0_0(\r_dffe[9]|sr[0][0]~q ),
	.sr_1_0(\r_dffe[9]|sr[0][1]~q ),
	.sr_2_0(\r_dffe[9]|sr[0][2]~q ),
	.sr_3_0(\r_dffe[9]|sr[0][3]~q ),
	.sr_4_0(\r_dffe[9]|sr[0][4]~q ),
	.sr_5_0(\r_dffe[9]|sr[0][5]~q ),
	.sr_6_0(\r_dffe[9]|sr[0][6]~q ),
	._(\_~36_combout ),
	._1(\_~37_combout ),
	._2(\_~38_combout ),
	._3(\_~39_combout ),
	._4(\_~40_combout ),
	._5(\_~42_combout ),
	._6(\_~44_combout ),
	.sr_7_0(\r_dffe[9]|sr[0][7]~q ),
	.sr_8_0(\r_dffe[9]|sr[0][8]~q ),
	.sr_9_0(\r_dffe[9]|sr[0][9]~q ),
	.sr_10_0(\r_dffe[9]|sr[0][10]~q ),
	._7(\_~50_combout ),
	._8(\_~52_combout ),
	._9(\_~54_combout ),
	._10(\_~56_combout ),
	.clock(clk),
	.ena(ena));

sqrt_27_dffpipe_20 \r_dffe[12] (
	.sr_0_0(\r_dffe[12]|sr[0][0]~q ),
	.sr_1_0(\r_dffe[12]|sr[0][1]~q ),
	.sr_2_0(\r_dffe[12]|sr[0][2]~q ),
	.sr_3_0(\r_dffe[12]|sr[0][3]~q ),
	.sr_4_0(\r_dffe[12]|sr[0][4]~q ),
	.sr_5_0(\r_dffe[12]|sr[0][5]~q ),
	.sr_6_0(\r_dffe[12]|sr[0][6]~q ),
	.sr_7_0(\r_dffe[12]|sr[0][7]~q ),
	.sr_8_0(\r_dffe[12]|sr[0][8]~q ),
	.sr_9_0(\r_dffe[12]|sr[0][9]~q ),
	.sr_10_0(\r_dffe[12]|sr[0][10]~q ),
	.sr_11_0(\r_dffe[12]|sr[0][11]~q ),
	.sr_12_0(\r_dffe[12]|sr[0][12]~q ),
	._(\_~15_combout ),
	._1(\_~16_combout ),
	._2(\_~17_combout ),
	._3(\_~18_combout ),
	._4(\_~19_combout ),
	._5(\_~21_combout ),
	._6(\_~23_combout ),
	._7(\_~25_combout ),
	._8(\_~27_combout ),
	._9(\_~29_combout ),
	._10(\_~31_combout ),
	._11(\_~33_combout ),
	._12(\_~35_combout ),
	.sr_13_0(\r_dffe[12]|sr[0][13]~q ),
	._13(\_~46_combout ),
	.clock(clk),
	.ena(ena));

sqrt_27_dffpipe_7 \b_dffe[1] (
	.sr_1_0(\b_dffe[1]|sr[0][1]~q ),
	.sr_0_0(\b_dffe[1]|sr[0][0]~q ),
	.op_1(\subtractors[1]|auto_generated|op_1~0_combout ),
	.clock(clk),
	.ena(ena),
	.radical_26(radical_26));

sqrt_27_dffpipe_10 \b_dffe[4] (
	.op_1(\subtractors[4]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[3]|auto_generated|op_1~1_sumout ),
	.sr_0_0(\b_dffe[4]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[4]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[4]|sr[0][2]~q ),
	.sr_3_0(\b_dffe[4]|sr[0][3]~q ),
	.sr_4_0(\b_dffe[4]|sr[0][4]~q ),
	.sr_1_01(\b_dffe[1]|sr[0][1]~q ),
	.sr_0_01(\b_dffe[1]|sr[0][0]~q ),
	.op_12(\subtractors[2]|auto_generated|op_1~1_combout ),
	.clock(clk),
	.ena(ena));

sqrt_27_dffpipe_12 \b_dffe[6] (
	.op_1(\subtractors[6]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[5]|auto_generated|op_1~1_sumout ),
	.sr_0_0(\b_dffe[6]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[6]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[6]|sr[0][2]~q ),
	.sr_3_0(\b_dffe[6]|sr[0][3]~q ),
	.sr_4_0(\b_dffe[6]|sr[0][4]~q ),
	.sr_5_0(\b_dffe[6]|sr[0][5]~q ),
	.sr_6_0(\b_dffe[6]|sr[0][6]~q ),
	.sr_0_01(\b_dffe[4]|sr[0][0]~q ),
	.sr_1_01(\b_dffe[4]|sr[0][1]~q ),
	.sr_2_01(\b_dffe[4]|sr[0][2]~q ),
	.sr_3_01(\b_dffe[4]|sr[0][3]~q ),
	.sr_4_01(\b_dffe[4]|sr[0][4]~q ),
	.clock(clk),
	.ena(ena));

sqrt_27_dffpipe_15 \b_dffe[9] (
	.op_1(\subtractors[9]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[8]|auto_generated|op_1~1_sumout ),
	.op_12(\subtractors[7]|auto_generated|op_1~1_sumout ),
	.sr_0_0(\b_dffe[9]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[9]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[9]|sr[0][2]~q ),
	.sr_3_0(\b_dffe[9]|sr[0][3]~q ),
	.sr_4_0(\b_dffe[9]|sr[0][4]~q ),
	.sr_5_0(\b_dffe[9]|sr[0][5]~q ),
	.sr_6_0(\b_dffe[9]|sr[0][6]~q ),
	.sr_7_0(\b_dffe[9]|sr[0][7]~q ),
	.sr_8_0(\b_dffe[9]|sr[0][8]~q ),
	.sr_9_0(\b_dffe[9]|sr[0][9]~q ),
	.sr_0_01(\b_dffe[6]|sr[0][0]~q ),
	.sr_1_01(\b_dffe[6]|sr[0][1]~q ),
	.sr_2_01(\b_dffe[6]|sr[0][2]~q ),
	.sr_3_01(\b_dffe[6]|sr[0][3]~q ),
	.sr_4_01(\b_dffe[6]|sr[0][4]~q ),
	.sr_5_01(\b_dffe[6]|sr[0][5]~q ),
	.sr_6_01(\b_dffe[6]|sr[0][6]~q ),
	.clock(clk),
	.ena(ena));

sqrt_27_dffpipe_5 \b_dffe[12] (
	.op_1(\subtractors[12]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[11]|auto_generated|op_1~1_sumout ),
	.op_12(\subtractors[10]|auto_generated|op_1~1_sumout ),
	.sr_0_0(sr_0_0),
	.sr_1_0(sr_1_0),
	.sr_2_0(sr_2_0),
	.sr_3_0(sr_3_0),
	.sr_4_0(sr_4_0),
	.sr_5_0(sr_5_0),
	.sr_6_0(sr_6_0),
	.sr_7_0(sr_7_0),
	.sr_8_0(sr_8_0),
	.sr_9_0(sr_9_0),
	.sr_10_0(sr_10_0),
	.sr_11_0(sr_11_0),
	.sr_12_0(sr_12_0),
	.sr_0_01(\b_dffe[9]|sr[0][0]~q ),
	.sr_1_01(\b_dffe[9]|sr[0][1]~q ),
	.sr_2_01(\b_dffe[9]|sr[0][2]~q ),
	.sr_3_01(\b_dffe[9]|sr[0][3]~q ),
	.sr_4_01(\b_dffe[9]|sr[0][4]~q ),
	.sr_5_01(\b_dffe[9]|sr[0][5]~q ),
	.sr_6_01(\b_dffe[9]|sr[0][6]~q ),
	.sr_7_01(\b_dffe[9]|sr[0][7]~q ),
	.sr_8_01(\b_dffe[9]|sr[0][8]~q ),
	.sr_9_01(\b_dffe[9]|sr[0][9]~q ),
	.clock(clk),
	.ena(ena));

sqrt_27_dffpipe_1 a_delay(
	.sr_0_4(\a_delay|sr[4][0]~q ),
	.sr_1_4(\a_delay|sr[4][1]~q ),
	.sr_2_3(\a_delay|sr[3][2]~q ),
	.sr_3_3(\a_delay|sr[3][3]~q ),
	.sr_4_3(\a_delay|sr[3][4]~q ),
	.sr_5_3(\a_delay|sr[3][5]~q ),
	.sr_6_3(\a_delay|sr[3][6]~q ),
	.sr_7_3(\a_delay|sr[3][7]~q ),
	.sr_8_2(\a_delay|sr[2][8]~q ),
	.sr_9_2(\a_delay|sr[2][9]~q ),
	.sr_10_2(\a_delay|sr[2][10]~q ),
	.sr_11_2(\a_delay|sr[2][11]~q ),
	.sr_12_2(\a_delay|sr[2][12]~q ),
	.sr_13_2(\a_delay|sr[2][13]~q ),
	.sr_14_1(\a_delay|sr[1][14]~q ),
	.sr_23_0(\a_delay|sr[0][23]~q ),
	.sr_22_0(\a_delay|sr[0][22]~q ),
	.sr_15_1(\a_delay|sr[1][15]~q ),
	.sr_16_1(\a_delay|sr[1][16]~q ),
	.sr_17_1(\a_delay|sr[1][17]~q ),
	.sr_18_0(\a_delay|sr[0][18]~q ),
	.sr_19_0(\a_delay|sr[0][19]~q ),
	.sr_20_0(\a_delay|sr[0][20]~q ),
	.sr_21_0(\a_delay|sr[0][21]~q ),
	.clock(clk),
	.ena(ena),
	.radical_23(radical_23),
	.radical_22(radical_22),
	.radical_0(radical_0),
	.radical_1(radical_1),
	.radical_2(radical_2),
	.radical_3(radical_3),
	.radical_4(radical_4),
	.radical_5(radical_5),
	.radical_6(radical_6),
	.radical_7(radical_7),
	.radical_8(radical_8),
	.radical_9(radical_9),
	.radical_10(radical_10),
	.radical_11(radical_11),
	.radical_12(radical_12),
	.radical_13(radical_13),
	.radical_14(radical_14),
	.radical_15(radical_15),
	.radical_16(radical_16),
	.radical_17(radical_17),
	.radical_18(radical_18),
	.radical_19(radical_19),
	.radical_20(radical_20),
	.radical_21(radical_21));

sqrt_27_lpm_add_sub_6 \subtractors[1] (
	.op_1(\subtractors[1]|auto_generated|op_1~0_combout ),
	.radical_26(radical_26),
	.radical_25(radical_25),
	.radical_24(radical_24));

sqrt_27_lpm_add_sub_7 \subtractors[2] (
	.sr_1_0(\b_dffe[1]|sr[0][1]~q ),
	.sr_1_01(\r_dffe[1]|sr[0][1]~q ),
	.sr_0_0(\b_dffe[1]|sr[0][0]~q ),
	.sr_0_01(\r_dffe[1]|sr[0][0]~q ),
	.sr_23_0(\a_delay|sr[0][23]~q ),
	.sr_22_0(\a_delay|sr[0][22]~q ),
	.op_1(\subtractors[2]|auto_generated|op_1~1_combout ),
	.op_11(\subtractors[2]|auto_generated|op_1~2_combout ),
	.op_12(\subtractors[2]|auto_generated|op_1~3_combout ));

sqrt_27_lpm_add_sub_8 \subtractors[3] (
	.op_1(\subtractors[3]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[3]|auto_generated|op_1~9_sumout ),
	.op_12(\subtractors[3]|auto_generated|op_1~13_sumout ),
	.op_13(\subtractors[3]|auto_generated|op_1~17_sumout ),
	.op_14(\subtractors[3]|auto_generated|op_1~21_sumout ),
	.sr_1_0(\b_dffe[1]|sr[0][1]~q ),
	.sr_1_01(\r_dffe[1]|sr[0][1]~q ),
	.sr_0_0(\b_dffe[1]|sr[0][0]~q ),
	.sr_0_01(\r_dffe[1]|sr[0][0]~q ),
	.sr_23_0(\a_delay|sr[0][23]~q ),
	.sr_22_0(\a_delay|sr[0][22]~q ),
	.op_15(\subtractors[2]|auto_generated|op_1~1_combout ),
	.sr_20_0(\a_delay|sr[0][20]~q ),
	.sr_21_0(\a_delay|sr[0][21]~q ),
	.op_16(\subtractors[2]|auto_generated|op_1~2_combout ),
	.op_17(\subtractors[2]|auto_generated|op_1~3_combout ));

sqrt_27_lpm_add_sub_9 \subtractors[4] (
	.op_1(\subtractors[4]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[3]|auto_generated|op_1~1_sumout ),
	.op_12(\subtractors[4]|auto_generated|op_1~9_sumout ),
	.op_13(\subtractors[4]|auto_generated|op_1~13_sumout ),
	.op_14(\subtractors[3]|auto_generated|op_1~9_sumout ),
	.op_15(\subtractors[4]|auto_generated|op_1~17_sumout ),
	.op_16(\subtractors[3]|auto_generated|op_1~13_sumout ),
	.op_17(\subtractors[4]|auto_generated|op_1~21_sumout ),
	.op_18(\subtractors[3]|auto_generated|op_1~17_sumout ),
	.op_19(\subtractors[4]|auto_generated|op_1~25_sumout ),
	.op_110(\subtractors[3]|auto_generated|op_1~21_sumout ),
	.sr_1_0(\b_dffe[1]|sr[0][1]~q ),
	.sr_0_0(\b_dffe[1]|sr[0][0]~q ),
	.sr_22_0(\a_delay|sr[0][22]~q ),
	.op_111(\subtractors[2]|auto_generated|op_1~1_combout ),
	.sr_18_0(\a_delay|sr[0][18]~q ),
	.sr_19_0(\a_delay|sr[0][19]~q ),
	.sr_20_0(\a_delay|sr[0][20]~q ),
	.sr_21_0(\a_delay|sr[0][21]~q ),
	._(\_~72_combout ),
	._1(\_~74_combout ));

sqrt_27_lpm_add_sub_10 \subtractors[5] (
	.op_1(\subtractors[5]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[5]|auto_generated|op_1~9_sumout ),
	.op_12(\subtractors[5]|auto_generated|op_1~13_sumout ),
	.op_13(\subtractors[5]|auto_generated|op_1~17_sumout ),
	.op_14(\subtractors[5]|auto_generated|op_1~21_sumout ),
	.op_15(\subtractors[5]|auto_generated|op_1~25_sumout ),
	.op_16(\subtractors[5]|auto_generated|op_1~29_sumout ),
	.sr_0_0(\b_dffe[4]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[4]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[4]|sr[0][2]~q ),
	.sr_3_0(\b_dffe[4]|sr[0][3]~q ),
	.sr_4_0(\b_dffe[4]|sr[0][4]~q ),
	.sr_16_1(\a_delay|sr[1][16]~q ),
	.sr_17_1(\a_delay|sr[1][17]~q ),
	.sr_0_01(\r_dffe[4]|sr[0][0]~q ),
	.sr_1_01(\r_dffe[4]|sr[0][1]~q ),
	.sr_2_01(\r_dffe[4]|sr[0][2]~q ),
	.sr_3_01(\r_dffe[4]|sr[0][3]~q ),
	.sr_4_01(\r_dffe[4]|sr[0][4]~q ),
	.sr_5_0(\r_dffe[4]|sr[0][5]~q ));

sqrt_27_lpm_add_sub_11 \subtractors[6] (
	.op_1(\subtractors[6]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[5]|auto_generated|op_1~1_sumout ),
	.op_12(\subtractors[6]|auto_generated|op_1~9_sumout ),
	.op_13(\subtractors[6]|auto_generated|op_1~13_sumout ),
	.op_14(\subtractors[5]|auto_generated|op_1~9_sumout ),
	.op_15(\subtractors[6]|auto_generated|op_1~17_sumout ),
	.op_16(\subtractors[5]|auto_generated|op_1~13_sumout ),
	.op_17(\subtractors[6]|auto_generated|op_1~21_sumout ),
	.op_18(\subtractors[5]|auto_generated|op_1~17_sumout ),
	.op_19(\subtractors[6]|auto_generated|op_1~25_sumout ),
	.op_110(\subtractors[5]|auto_generated|op_1~21_sumout ),
	.op_111(\subtractors[6]|auto_generated|op_1~29_sumout ),
	.op_112(\subtractors[5]|auto_generated|op_1~25_sumout ),
	.op_113(\subtractors[6]|auto_generated|op_1~33_sumout ),
	.op_114(\subtractors[5]|auto_generated|op_1~29_sumout ),
	.sr_0_0(\b_dffe[4]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[4]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[4]|sr[0][2]~q ),
	.sr_3_0(\b_dffe[4]|sr[0][3]~q ),
	.sr_4_0(\b_dffe[4]|sr[0][4]~q ),
	.sr_14_1(\a_delay|sr[1][14]~q ),
	.sr_15_1(\a_delay|sr[1][15]~q ),
	.sr_16_1(\a_delay|sr[1][16]~q ),
	.sr_17_1(\a_delay|sr[1][17]~q ),
	.sr_0_01(\r_dffe[4]|sr[0][0]~q ),
	.sr_1_01(\r_dffe[4]|sr[0][1]~q ),
	.sr_2_01(\r_dffe[4]|sr[0][2]~q ),
	.sr_3_01(\r_dffe[4]|sr[0][3]~q ),
	.sr_4_01(\r_dffe[4]|sr[0][4]~q ));

sqrt_27_lpm_add_sub_12 \subtractors[7] (
	.op_1(\subtractors[7]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[7]|auto_generated|op_1~5_sumout ),
	.op_12(\subtractors[7]|auto_generated|op_1~9_sumout ),
	.op_13(\subtractors[7]|auto_generated|op_1~21_sumout ),
	.op_14(\subtractors[7]|auto_generated|op_1~25_sumout ),
	.op_15(\subtractors[7]|auto_generated|op_1~29_sumout ),
	.op_16(\subtractors[7]|auto_generated|op_1~33_sumout ),
	.op_17(\subtractors[7]|auto_generated|op_1~37_sumout ),
	.op_18(\subtractors[7]|auto_generated|op_1~41_sumout ),
	.sr_0_0(\b_dffe[6]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[6]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[6]|sr[0][2]~q ),
	.sr_3_0(\b_dffe[6]|sr[0][3]~q ),
	.sr_4_0(\b_dffe[6]|sr[0][4]~q ),
	.sr_5_0(\b_dffe[6]|sr[0][5]~q ),
	.sr_6_0(\b_dffe[6]|sr[0][6]~q ),
	.sr_12_2(\a_delay|sr[2][12]~q ),
	.sr_13_2(\a_delay|sr[2][13]~q ),
	.sr_0_01(\r_dffe[6]|sr[0][0]~q ),
	.sr_1_01(\r_dffe[6]|sr[0][1]~q ),
	.sr_2_01(\r_dffe[6]|sr[0][2]~q ),
	.sr_3_01(\r_dffe[6]|sr[0][3]~q ),
	.sr_4_01(\r_dffe[6]|sr[0][4]~q ),
	.sr_5_01(\r_dffe[6]|sr[0][5]~q ),
	.sr_6_01(\r_dffe[6]|sr[0][6]~q ),
	.sr_7_0(\r_dffe[6]|sr[0][7]~q ));

sqrt_27_lpm_add_sub_13 \subtractors[8] (
	.op_1(\subtractors[8]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[7]|auto_generated|op_1~1_sumout ),
	.op_12(\subtractors[8]|auto_generated|op_1~5_sumout ),
	.op_13(\subtractors[8]|auto_generated|op_1~9_sumout ),
	.op_14(\subtractors[7]|auto_generated|op_1~5_sumout ),
	.op_15(\subtractors[8]|auto_generated|op_1~13_sumout ),
	.op_16(\subtractors[7]|auto_generated|op_1~9_sumout ),
	.op_17(\subtractors[8]|auto_generated|op_1~17_sumout ),
	.op_18(\subtractors[7]|auto_generated|op_1~21_sumout ),
	.op_19(\subtractors[8]|auto_generated|op_1~29_sumout ),
	.op_110(\subtractors[7]|auto_generated|op_1~25_sumout ),
	.op_111(\subtractors[8]|auto_generated|op_1~33_sumout ),
	.op_112(\subtractors[7]|auto_generated|op_1~29_sumout ),
	.op_113(\subtractors[8]|auto_generated|op_1~37_sumout ),
	.op_114(\subtractors[7]|auto_generated|op_1~33_sumout ),
	.op_115(\subtractors[8]|auto_generated|op_1~41_sumout ),
	.op_116(\subtractors[7]|auto_generated|op_1~37_sumout ),
	.op_117(\subtractors[8]|auto_generated|op_1~45_sumout ),
	.op_118(\subtractors[7]|auto_generated|op_1~41_sumout ),
	.sr_0_0(\b_dffe[6]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[6]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[6]|sr[0][2]~q ),
	.sr_3_0(\b_dffe[6]|sr[0][3]~q ),
	.sr_4_0(\b_dffe[6]|sr[0][4]~q ),
	.sr_5_0(\b_dffe[6]|sr[0][5]~q ),
	.sr_6_0(\b_dffe[6]|sr[0][6]~q ),
	.sr_10_2(\a_delay|sr[2][10]~q ),
	.sr_11_2(\a_delay|sr[2][11]~q ),
	.sr_12_2(\a_delay|sr[2][12]~q ),
	.sr_13_2(\a_delay|sr[2][13]~q ),
	.sr_0_01(\r_dffe[6]|sr[0][0]~q ),
	.sr_1_01(\r_dffe[6]|sr[0][1]~q ),
	.sr_2_01(\r_dffe[6]|sr[0][2]~q ),
	.sr_3_01(\r_dffe[6]|sr[0][3]~q ),
	.sr_4_01(\r_dffe[6]|sr[0][4]~q ),
	.sr_5_01(\r_dffe[6]|sr[0][5]~q ),
	.sr_6_01(\r_dffe[6]|sr[0][6]~q ));

sqrt_27_lpm_add_sub_14 \subtractors[9] (
	.op_1(\subtractors[9]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[8]|auto_generated|op_1~1_sumout ),
	.op_12(\subtractors[7]|auto_generated|op_1~1_sumout ),
	.op_13(\subtractors[9]|auto_generated|op_1~5_sumout ),
	.op_14(\subtractors[9]|auto_generated|op_1~9_sumout ),
	.op_15(\subtractors[8]|auto_generated|op_1~5_sumout ),
	.op_16(\subtractors[9]|auto_generated|op_1~13_sumout ),
	.op_17(\subtractors[8]|auto_generated|op_1~9_sumout ),
	.op_18(\subtractors[9]|auto_generated|op_1~17_sumout ),
	.op_19(\subtractors[8]|auto_generated|op_1~13_sumout ),
	.op_110(\subtractors[9]|auto_generated|op_1~21_sumout ),
	.op_111(\subtractors[8]|auto_generated|op_1~17_sumout ),
	.op_112(\subtractors[9]|auto_generated|op_1~25_sumout ),
	.op_113(\subtractors[8]|auto_generated|op_1~29_sumout ),
	.op_114(\subtractors[9]|auto_generated|op_1~37_sumout ),
	.op_115(\subtractors[8]|auto_generated|op_1~33_sumout ),
	.op_116(\subtractors[9]|auto_generated|op_1~41_sumout ),
	.op_117(\subtractors[8]|auto_generated|op_1~37_sumout ),
	.op_118(\subtractors[9]|auto_generated|op_1~45_sumout ),
	.op_119(\subtractors[8]|auto_generated|op_1~41_sumout ),
	.op_120(\subtractors[9]|auto_generated|op_1~49_sumout ),
	.op_121(\subtractors[8]|auto_generated|op_1~45_sumout ),
	.sr_0_0(\b_dffe[6]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[6]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[6]|sr[0][2]~q ),
	.sr_3_0(\b_dffe[6]|sr[0][3]~q ),
	.sr_4_0(\b_dffe[6]|sr[0][4]~q ),
	.sr_5_0(\b_dffe[6]|sr[0][5]~q ),
	.sr_6_0(\b_dffe[6]|sr[0][6]~q ),
	.sr_8_2(\a_delay|sr[2][8]~q ),
	.sr_9_2(\a_delay|sr[2][9]~q ),
	.sr_10_2(\a_delay|sr[2][10]~q ),
	.sr_11_2(\a_delay|sr[2][11]~q ),
	.sr_12_2(\a_delay|sr[2][12]~q ),
	._(\_~41_combout ),
	._1(\_~43_combout ),
	._2(\_~49_combout ),
	._3(\_~51_combout ),
	._4(\_~53_combout ),
	._5(\_~55_combout ),
	._6(\_~57_combout ));

sqrt_27_lpm_add_sub_2 \subtractors[10] (
	.op_1(\subtractors[10]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[10]|auto_generated|op_1~5_sumout ),
	.op_12(\subtractors[10]|auto_generated|op_1~9_sumout ),
	.op_13(\subtractors[10]|auto_generated|op_1~13_sumout ),
	.op_14(\subtractors[10]|auto_generated|op_1~17_sumout ),
	.op_15(\subtractors[10]|auto_generated|op_1~21_sumout ),
	.op_16(\subtractors[10]|auto_generated|op_1~25_sumout ),
	.op_17(\subtractors[10]|auto_generated|op_1~29_sumout ),
	.op_18(\subtractors[10]|auto_generated|op_1~33_sumout ),
	.op_19(\subtractors[10]|auto_generated|op_1~45_sumout ),
	.op_110(\subtractors[10]|auto_generated|op_1~49_sumout ),
	.op_111(\subtractors[10]|auto_generated|op_1~53_sumout ),
	.sr_0_0(\b_dffe[9]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[9]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[9]|sr[0][2]~q ),
	.sr_3_0(\b_dffe[9]|sr[0][3]~q ),
	.sr_4_0(\b_dffe[9]|sr[0][4]~q ),
	.sr_5_0(\b_dffe[9]|sr[0][5]~q ),
	.sr_6_0(\b_dffe[9]|sr[0][6]~q ),
	.sr_7_0(\b_dffe[9]|sr[0][7]~q ),
	.sr_8_0(\b_dffe[9]|sr[0][8]~q ),
	.sr_9_0(\b_dffe[9]|sr[0][9]~q ),
	.sr_6_3(\a_delay|sr[3][6]~q ),
	.sr_7_3(\a_delay|sr[3][7]~q ),
	.sr_0_01(\r_dffe[9]|sr[0][0]~q ),
	.sr_1_01(\r_dffe[9]|sr[0][1]~q ),
	.sr_2_01(\r_dffe[9]|sr[0][2]~q ),
	.sr_3_01(\r_dffe[9]|sr[0][3]~q ),
	.sr_4_01(\r_dffe[9]|sr[0][4]~q ),
	.sr_5_01(\r_dffe[9]|sr[0][5]~q ),
	.sr_6_01(\r_dffe[9]|sr[0][6]~q ),
	.sr_7_01(\r_dffe[9]|sr[0][7]~q ),
	.sr_8_01(\r_dffe[9]|sr[0][8]~q ),
	.sr_9_01(\r_dffe[9]|sr[0][9]~q ),
	.sr_10_0(\r_dffe[9]|sr[0][10]~q ));

sqrt_27_lpm_add_sub_3 \subtractors[11] (
	.op_1(\subtractors[11]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[10]|auto_generated|op_1~1_sumout ),
	.op_12(\subtractors[11]|auto_generated|op_1~5_sumout ),
	.op_13(\subtractors[11]|auto_generated|op_1~9_sumout ),
	.op_14(\subtractors[10]|auto_generated|op_1~5_sumout ),
	.op_15(\subtractors[11]|auto_generated|op_1~13_sumout ),
	.op_16(\subtractors[10]|auto_generated|op_1~9_sumout ),
	.op_17(\subtractors[11]|auto_generated|op_1~17_sumout ),
	.op_18(\subtractors[10]|auto_generated|op_1~13_sumout ),
	.op_19(\subtractors[11]|auto_generated|op_1~21_sumout ),
	.op_110(\subtractors[10]|auto_generated|op_1~17_sumout ),
	.op_111(\subtractors[11]|auto_generated|op_1~25_sumout ),
	.op_112(\subtractors[10]|auto_generated|op_1~21_sumout ),
	.op_113(\subtractors[11]|auto_generated|op_1~29_sumout ),
	.op_114(\subtractors[10]|auto_generated|op_1~25_sumout ),
	.op_115(\subtractors[11]|auto_generated|op_1~33_sumout ),
	.op_116(\subtractors[10]|auto_generated|op_1~29_sumout ),
	.op_117(\subtractors[11]|auto_generated|op_1~37_sumout ),
	.op_118(\subtractors[10]|auto_generated|op_1~33_sumout ),
	.op_119(\subtractors[11]|auto_generated|op_1~41_sumout ),
	.op_120(\subtractors[10]|auto_generated|op_1~45_sumout ),
	.op_121(\subtractors[11]|auto_generated|op_1~53_sumout ),
	.op_122(\subtractors[10]|auto_generated|op_1~49_sumout ),
	.op_123(\subtractors[11]|auto_generated|op_1~57_sumout ),
	.op_124(\subtractors[10]|auto_generated|op_1~53_sumout ),
	.sr_0_0(\b_dffe[9]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[9]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[9]|sr[0][2]~q ),
	.sr_3_0(\b_dffe[9]|sr[0][3]~q ),
	.sr_4_0(\b_dffe[9]|sr[0][4]~q ),
	.sr_5_0(\b_dffe[9]|sr[0][5]~q ),
	.sr_6_0(\b_dffe[9]|sr[0][6]~q ),
	.sr_7_0(\b_dffe[9]|sr[0][7]~q ),
	.sr_8_0(\b_dffe[9]|sr[0][8]~q ),
	.sr_9_0(\b_dffe[9]|sr[0][9]~q ),
	.sr_4_3(\a_delay|sr[3][4]~q ),
	.sr_5_3(\a_delay|sr[3][5]~q ),
	.sr_6_3(\a_delay|sr[3][6]~q ),
	.sr_7_3(\a_delay|sr[3][7]~q ),
	.sr_0_01(\r_dffe[9]|sr[0][0]~q ),
	.sr_1_01(\r_dffe[9]|sr[0][1]~q ),
	.sr_2_01(\r_dffe[9]|sr[0][2]~q ),
	.sr_3_01(\r_dffe[9]|sr[0][3]~q ),
	.sr_4_01(\r_dffe[9]|sr[0][4]~q ),
	.sr_5_01(\r_dffe[9]|sr[0][5]~q ),
	.sr_6_01(\r_dffe[9]|sr[0][6]~q ),
	.sr_7_01(\r_dffe[9]|sr[0][7]~q ),
	.sr_8_01(\r_dffe[9]|sr[0][8]~q ),
	.sr_9_01(\r_dffe[9]|sr[0][9]~q ));

sqrt_27_lpm_add_sub_4 \subtractors[12] (
	.op_1(\subtractors[12]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[11]|auto_generated|op_1~1_sumout ),
	.op_12(\subtractors[10]|auto_generated|op_1~1_sumout ),
	.op_13(\subtractors[12]|auto_generated|op_1~5_sumout ),
	.op_14(\subtractors[12]|auto_generated|op_1~9_sumout ),
	.op_15(\subtractors[11]|auto_generated|op_1~5_sumout ),
	.op_16(\subtractors[12]|auto_generated|op_1~13_sumout ),
	.op_17(\subtractors[11]|auto_generated|op_1~9_sumout ),
	.op_18(\subtractors[12]|auto_generated|op_1~17_sumout ),
	.op_19(\subtractors[11]|auto_generated|op_1~13_sumout ),
	.op_110(\subtractors[12]|auto_generated|op_1~21_sumout ),
	.op_111(\subtractors[11]|auto_generated|op_1~17_sumout ),
	.op_112(\subtractors[12]|auto_generated|op_1~25_sumout ),
	.op_113(\subtractors[11]|auto_generated|op_1~21_sumout ),
	.op_114(\subtractors[12]|auto_generated|op_1~29_sumout ),
	.op_115(\subtractors[11]|auto_generated|op_1~25_sumout ),
	.op_116(\subtractors[12]|auto_generated|op_1~33_sumout ),
	.op_117(\subtractors[11]|auto_generated|op_1~29_sumout ),
	.op_118(\subtractors[12]|auto_generated|op_1~37_sumout ),
	.op_119(\subtractors[11]|auto_generated|op_1~33_sumout ),
	.op_120(\subtractors[12]|auto_generated|op_1~41_sumout ),
	.op_121(\subtractors[11]|auto_generated|op_1~37_sumout ),
	.op_122(\subtractors[12]|auto_generated|op_1~45_sumout ),
	.op_123(\subtractors[11]|auto_generated|op_1~41_sumout ),
	.op_124(\subtractors[12]|auto_generated|op_1~49_sumout ),
	.op_125(\subtractors[11]|auto_generated|op_1~53_sumout ),
	.op_126(\subtractors[12]|auto_generated|op_1~61_sumout ),
	.op_127(\subtractors[11]|auto_generated|op_1~57_sumout ),
	.sr_0_0(\b_dffe[9]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[9]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[9]|sr[0][2]~q ),
	.sr_3_0(\b_dffe[9]|sr[0][3]~q ),
	.sr_4_0(\b_dffe[9]|sr[0][4]~q ),
	.sr_5_0(\b_dffe[9]|sr[0][5]~q ),
	.sr_6_0(\b_dffe[9]|sr[0][6]~q ),
	.sr_7_0(\b_dffe[9]|sr[0][7]~q ),
	.sr_8_0(\b_dffe[9]|sr[0][8]~q ),
	.sr_9_0(\b_dffe[9]|sr[0][9]~q ),
	.sr_2_3(\a_delay|sr[3][2]~q ),
	.sr_3_3(\a_delay|sr[3][3]~q ),
	.sr_4_3(\a_delay|sr[3][4]~q ),
	.sr_5_3(\a_delay|sr[3][5]~q ),
	.sr_6_3(\a_delay|sr[3][6]~q ),
	._(\_~20_combout ),
	._1(\_~22_combout ),
	._2(\_~24_combout ),
	._3(\_~26_combout ),
	._4(\_~28_combout ),
	._5(\_~30_combout ),
	._6(\_~32_combout ),
	._7(\_~34_combout ),
	._8(\_~45_combout ),
	._9(\_~47_combout ));

sqrt_27_lpm_add_sub_5 \subtractors[13] (
	.op_1(op_1),
	.op_11(\subtractors[13]|auto_generated|op_1~5_sumout ),
	.op_12(\subtractors[13]|auto_generated|op_1~9_sumout ),
	.op_13(\subtractors[13]|auto_generated|op_1~13_sumout ),
	.op_14(\subtractors[13]|auto_generated|op_1~17_sumout ),
	.op_15(\subtractors[13]|auto_generated|op_1~21_sumout ),
	.op_16(\subtractors[13]|auto_generated|op_1~25_sumout ),
	.op_17(\subtractors[13]|auto_generated|op_1~29_sumout ),
	.op_18(\subtractors[13]|auto_generated|op_1~33_sumout ),
	.op_19(\subtractors[13]|auto_generated|op_1~37_sumout ),
	.op_110(\subtractors[13]|auto_generated|op_1~41_sumout ),
	.op_111(\subtractors[13]|auto_generated|op_1~45_sumout ),
	.op_112(\subtractors[13]|auto_generated|op_1~49_sumout ),
	.op_113(\subtractors[13]|auto_generated|op_1~53_sumout ),
	.op_114(\subtractors[13]|auto_generated|op_1~57_sumout ),
	.sr_0_0(sr_0_0),
	.sr_1_0(sr_1_0),
	.sr_2_0(sr_2_0),
	.sr_3_0(sr_3_0),
	.sr_4_0(sr_4_0),
	.sr_5_0(sr_5_0),
	.sr_6_0(sr_6_0),
	.sr_7_0(sr_7_0),
	.sr_8_0(sr_8_0),
	.sr_9_0(sr_9_0),
	.sr_10_0(sr_10_0),
	.sr_11_0(sr_11_0),
	.sr_12_0(sr_12_0),
	.sr_0_4(\a_delay|sr[4][0]~q ),
	.sr_1_4(\a_delay|sr[4][1]~q ),
	.sr_0_01(\r_dffe[12]|sr[0][0]~q ),
	.sr_1_01(\r_dffe[12]|sr[0][1]~q ),
	.sr_2_01(\r_dffe[12]|sr[0][2]~q ),
	.sr_3_01(\r_dffe[12]|sr[0][3]~q ),
	.sr_4_01(\r_dffe[12]|sr[0][4]~q ),
	.sr_5_01(\r_dffe[12]|sr[0][5]~q ),
	.sr_6_01(\r_dffe[12]|sr[0][6]~q ),
	.sr_7_01(\r_dffe[12]|sr[0][7]~q ),
	.sr_8_01(\r_dffe[12]|sr[0][8]~q ),
	.sr_9_01(\r_dffe[12]|sr[0][9]~q ),
	.sr_10_01(\r_dffe[12]|sr[0][10]~q ),
	.sr_11_01(\r_dffe[12]|sr[0][11]~q ),
	.sr_12_01(\r_dffe[12]|sr[0][12]~q ),
	.sr_13_0(\r_dffe[12]|sr[0][13]~q ));

cyclonev_lcell_comb \_~15 (
	.dataa(!\a_delay|sr[3][2]~q ),
	.datab(!\subtractors[12]|auto_generated|op_1~1_sumout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~15_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~15 .extended_lut = "off";
defparam \_~15 .lut_mask = 64'h9999999999999999;
defparam \_~15 .shared_arith = "off";

cyclonev_lcell_comb \_~16 (
	.dataa(!\a_delay|sr[3][3]~q ),
	.datab(!\subtractors[12]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[12]|auto_generated|op_1~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~16_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~16 .extended_lut = "off";
defparam \_~16 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~16 .shared_arith = "off";

cyclonev_lcell_comb \_~17 (
	.dataa(!\a_delay|sr[3][4]~q ),
	.datab(!\subtractors[11]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[12]|auto_generated|op_1~1_sumout ),
	.datad(!\subtractors[12]|auto_generated|op_1~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~17_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~17 .extended_lut = "off";
defparam \_~17 .lut_mask = 64'h09F909F909F909F9;
defparam \_~17 .shared_arith = "off";

cyclonev_lcell_comb \_~18 (
	.dataa(!\a_delay|sr[3][5]~q ),
	.datab(!\subtractors[11]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[11]|auto_generated|op_1~5_sumout ),
	.datad(!\subtractors[12]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[12]|auto_generated|op_1~13_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~18_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~18 .extended_lut = "off";
defparam \_~18 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~18 .shared_arith = "off";

cyclonev_lcell_comb \_~19 (
	.dataa(!\a_delay|sr[3][6]~q ),
	.datab(!\subtractors[10]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[11]|auto_generated|op_1~1_sumout ),
	.datad(!\subtractors[11]|auto_generated|op_1~9_sumout ),
	.datae(!\subtractors[12]|auto_generated|op_1~1_sumout ),
	.dataf(!\subtractors[12]|auto_generated|op_1~17_sumout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~19_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~19 .extended_lut = "off";
defparam \_~19 .lut_mask = 64'h000009F9FFFF09F9;
defparam \_~19 .shared_arith = "off";

cyclonev_lcell_comb \_~20 (
	.dataa(!\a_delay|sr[3][7]~q ),
	.datab(!\subtractors[10]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[10]|auto_generated|op_1~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~20_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~20 .extended_lut = "off";
defparam \_~20 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~20 .shared_arith = "off";

cyclonev_lcell_comb \_~21 (
	.dataa(!\subtractors[11]|auto_generated|op_1~1_sumout ),
	.datab(!\_~20_combout ),
	.datac(!\subtractors[11]|auto_generated|op_1~13_sumout ),
	.datad(!\subtractors[12]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[12]|auto_generated|op_1~21_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~21_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~21 .extended_lut = "off";
defparam \_~21 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~21 .shared_arith = "off";

cyclonev_lcell_comb \_~22 (
	.dataa(!\r_dffe[9]|sr[0][0]~q ),
	.datab(!\subtractors[10]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[10]|auto_generated|op_1~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~22_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~22 .extended_lut = "off";
defparam \_~22 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~22 .shared_arith = "off";

cyclonev_lcell_comb \_~23 (
	.dataa(!\subtractors[11]|auto_generated|op_1~1_sumout ),
	.datab(!\_~22_combout ),
	.datac(!\subtractors[11]|auto_generated|op_1~17_sumout ),
	.datad(!\subtractors[12]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[12]|auto_generated|op_1~25_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~23_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~23 .extended_lut = "off";
defparam \_~23 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~23 .shared_arith = "off";

cyclonev_lcell_comb \_~24 (
	.dataa(!\r_dffe[9]|sr[0][1]~q ),
	.datab(!\subtractors[10]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[10]|auto_generated|op_1~13_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~24_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~24 .extended_lut = "off";
defparam \_~24 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~24 .shared_arith = "off";

cyclonev_lcell_comb \_~25 (
	.dataa(!\subtractors[11]|auto_generated|op_1~1_sumout ),
	.datab(!\_~24_combout ),
	.datac(!\subtractors[11]|auto_generated|op_1~21_sumout ),
	.datad(!\subtractors[12]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[12]|auto_generated|op_1~29_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~25_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~25 .extended_lut = "off";
defparam \_~25 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~25 .shared_arith = "off";

cyclonev_lcell_comb \_~26 (
	.dataa(!\r_dffe[9]|sr[0][2]~q ),
	.datab(!\subtractors[10]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[10]|auto_generated|op_1~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~26_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~26 .extended_lut = "off";
defparam \_~26 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~26 .shared_arith = "off";

cyclonev_lcell_comb \_~27 (
	.dataa(!\subtractors[11]|auto_generated|op_1~1_sumout ),
	.datab(!\_~26_combout ),
	.datac(!\subtractors[11]|auto_generated|op_1~25_sumout ),
	.datad(!\subtractors[12]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[12]|auto_generated|op_1~33_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~27_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~27 .extended_lut = "off";
defparam \_~27 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~27 .shared_arith = "off";

cyclonev_lcell_comb \_~28 (
	.dataa(!\r_dffe[9]|sr[0][3]~q ),
	.datab(!\subtractors[10]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[10]|auto_generated|op_1~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~28_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~28 .extended_lut = "off";
defparam \_~28 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~28 .shared_arith = "off";

cyclonev_lcell_comb \_~29 (
	.dataa(!\subtractors[11]|auto_generated|op_1~1_sumout ),
	.datab(!\_~28_combout ),
	.datac(!\subtractors[11]|auto_generated|op_1~29_sumout ),
	.datad(!\subtractors[12]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[12]|auto_generated|op_1~37_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~29_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~29 .extended_lut = "off";
defparam \_~29 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~29 .shared_arith = "off";

cyclonev_lcell_comb \_~30 (
	.dataa(!\r_dffe[9]|sr[0][4]~q ),
	.datab(!\subtractors[10]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[10]|auto_generated|op_1~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~30_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~30 .extended_lut = "off";
defparam \_~30 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~30 .shared_arith = "off";

cyclonev_lcell_comb \_~31 (
	.dataa(!\subtractors[11]|auto_generated|op_1~1_sumout ),
	.datab(!\_~30_combout ),
	.datac(!\subtractors[11]|auto_generated|op_1~33_sumout ),
	.datad(!\subtractors[12]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[12]|auto_generated|op_1~41_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~31_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~31 .extended_lut = "off";
defparam \_~31 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~31 .shared_arith = "off";

cyclonev_lcell_comb \_~32 (
	.dataa(!\r_dffe[9]|sr[0][5]~q ),
	.datab(!\subtractors[10]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[10]|auto_generated|op_1~29_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~32_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~32 .extended_lut = "off";
defparam \_~32 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~32 .shared_arith = "off";

cyclonev_lcell_comb \_~33 (
	.dataa(!\subtractors[11]|auto_generated|op_1~1_sumout ),
	.datab(!\_~32_combout ),
	.datac(!\subtractors[11]|auto_generated|op_1~37_sumout ),
	.datad(!\subtractors[12]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[12]|auto_generated|op_1~45_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~33_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~33 .extended_lut = "off";
defparam \_~33 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~33 .shared_arith = "off";

cyclonev_lcell_comb \_~34 (
	.dataa(!\r_dffe[9]|sr[0][6]~q ),
	.datab(!\subtractors[10]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[10]|auto_generated|op_1~33_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~34_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~34 .extended_lut = "off";
defparam \_~34 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~34 .shared_arith = "off";

cyclonev_lcell_comb \_~35 (
	.dataa(!\subtractors[11]|auto_generated|op_1~1_sumout ),
	.datab(!\_~34_combout ),
	.datac(!\subtractors[11]|auto_generated|op_1~41_sumout ),
	.datad(!\subtractors[12]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[12]|auto_generated|op_1~49_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~35_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~35 .extended_lut = "off";
defparam \_~35 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~35 .shared_arith = "off";

cyclonev_lcell_comb \_~36 (
	.dataa(!\a_delay|sr[2][8]~q ),
	.datab(!\subtractors[9]|auto_generated|op_1~1_sumout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~36_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~36 .extended_lut = "off";
defparam \_~36 .lut_mask = 64'h9999999999999999;
defparam \_~36 .shared_arith = "off";

cyclonev_lcell_comb \_~37 (
	.dataa(!\a_delay|sr[2][9]~q ),
	.datab(!\subtractors[9]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[9]|auto_generated|op_1~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~37_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~37 .extended_lut = "off";
defparam \_~37 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~37 .shared_arith = "off";

cyclonev_lcell_comb \_~38 (
	.dataa(!\a_delay|sr[2][10]~q ),
	.datab(!\subtractors[8]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[9]|auto_generated|op_1~1_sumout ),
	.datad(!\subtractors[9]|auto_generated|op_1~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~38_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~38 .extended_lut = "off";
defparam \_~38 .lut_mask = 64'h09F909F909F909F9;
defparam \_~38 .shared_arith = "off";

cyclonev_lcell_comb \_~39 (
	.dataa(!\a_delay|sr[2][11]~q ),
	.datab(!\subtractors[8]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[8]|auto_generated|op_1~5_sumout ),
	.datad(!\subtractors[9]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[9]|auto_generated|op_1~13_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~39_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~39 .extended_lut = "off";
defparam \_~39 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~39 .shared_arith = "off";

cyclonev_lcell_comb \_~40 (
	.dataa(!\a_delay|sr[2][12]~q ),
	.datab(!\subtractors[7]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[8]|auto_generated|op_1~1_sumout ),
	.datad(!\subtractors[8]|auto_generated|op_1~9_sumout ),
	.datae(!\subtractors[9]|auto_generated|op_1~1_sumout ),
	.dataf(!\subtractors[9]|auto_generated|op_1~17_sumout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~40_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~40 .extended_lut = "off";
defparam \_~40 .lut_mask = 64'h000009F9FFFF09F9;
defparam \_~40 .shared_arith = "off";

cyclonev_lcell_comb \_~41 (
	.dataa(!\a_delay|sr[2][13]~q ),
	.datab(!\subtractors[7]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[7]|auto_generated|op_1~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~41_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~41 .extended_lut = "off";
defparam \_~41 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~41 .shared_arith = "off";

cyclonev_lcell_comb \_~42 (
	.dataa(!\subtractors[8]|auto_generated|op_1~1_sumout ),
	.datab(!\_~41_combout ),
	.datac(!\subtractors[8]|auto_generated|op_1~13_sumout ),
	.datad(!\subtractors[9]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[9]|auto_generated|op_1~21_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~42_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~42 .extended_lut = "off";
defparam \_~42 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~42 .shared_arith = "off";

cyclonev_lcell_comb \_~43 (
	.dataa(!\r_dffe[6]|sr[0][0]~q ),
	.datab(!\subtractors[7]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[7]|auto_generated|op_1~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~43_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~43 .extended_lut = "off";
defparam \_~43 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~43 .shared_arith = "off";

cyclonev_lcell_comb \_~44 (
	.dataa(!\subtractors[8]|auto_generated|op_1~1_sumout ),
	.datab(!\_~43_combout ),
	.datac(!\subtractors[8]|auto_generated|op_1~17_sumout ),
	.datad(!\subtractors[9]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[9]|auto_generated|op_1~25_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~44_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~44 .extended_lut = "off";
defparam \_~44 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~44 .shared_arith = "off";

cyclonev_lcell_comb \_~45 (
	.dataa(!\r_dffe[9]|sr[0][7]~q ),
	.datab(!\subtractors[10]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[10]|auto_generated|op_1~45_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~45_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~45 .extended_lut = "off";
defparam \_~45 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~45 .shared_arith = "off";

cyclonev_lcell_comb \_~46 (
	.dataa(!\subtractors[11]|auto_generated|op_1~1_sumout ),
	.datab(!\_~45_combout ),
	.datac(!\subtractors[11]|auto_generated|op_1~53_sumout ),
	.datad(!\subtractors[12]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[12]|auto_generated|op_1~61_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~46_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~46 .extended_lut = "off";
defparam \_~46 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~46 .shared_arith = "off";

cyclonev_lcell_comb \_~47 (
	.dataa(!\r_dffe[9]|sr[0][8]~q ),
	.datab(!\subtractors[10]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[10]|auto_generated|op_1~49_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~47_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~47 .extended_lut = "off";
defparam \_~47 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~47 .shared_arith = "off";

cyclonev_lcell_comb \_~48 (
	.dataa(!\a_delay|sr[1][14]~q ),
	.datab(!\subtractors[6]|auto_generated|op_1~1_sumout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~48_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~48 .extended_lut = "off";
defparam \_~48 .lut_mask = 64'h9999999999999999;
defparam \_~48 .shared_arith = "off";

cyclonev_lcell_comb \_~49 (
	.dataa(!\r_dffe[6]|sr[0][1]~q ),
	.datab(!\subtractors[7]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[7]|auto_generated|op_1~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~49_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~49 .extended_lut = "off";
defparam \_~49 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~49 .shared_arith = "off";

cyclonev_lcell_comb \_~50 (
	.dataa(!\subtractors[8]|auto_generated|op_1~1_sumout ),
	.datab(!\_~49_combout ),
	.datac(!\subtractors[8]|auto_generated|op_1~29_sumout ),
	.datad(!\subtractors[9]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[9]|auto_generated|op_1~37_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~50_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~50 .extended_lut = "off";
defparam \_~50 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~50 .shared_arith = "off";

cyclonev_lcell_comb \_~51 (
	.dataa(!\r_dffe[6]|sr[0][2]~q ),
	.datab(!\subtractors[7]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[7]|auto_generated|op_1~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~51_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~51 .extended_lut = "off";
defparam \_~51 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~51 .shared_arith = "off";

cyclonev_lcell_comb \_~52 (
	.dataa(!\subtractors[8]|auto_generated|op_1~1_sumout ),
	.datab(!\_~51_combout ),
	.datac(!\subtractors[8]|auto_generated|op_1~33_sumout ),
	.datad(!\subtractors[9]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[9]|auto_generated|op_1~41_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~52_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~52 .extended_lut = "off";
defparam \_~52 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~52 .shared_arith = "off";

cyclonev_lcell_comb \_~53 (
	.dataa(!\r_dffe[6]|sr[0][3]~q ),
	.datab(!\subtractors[7]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[7]|auto_generated|op_1~29_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~53_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~53 .extended_lut = "off";
defparam \_~53 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~53 .shared_arith = "off";

cyclonev_lcell_comb \_~54 (
	.dataa(!\subtractors[8]|auto_generated|op_1~1_sumout ),
	.datab(!\_~53_combout ),
	.datac(!\subtractors[8]|auto_generated|op_1~37_sumout ),
	.datad(!\subtractors[9]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[9]|auto_generated|op_1~45_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~54_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~54 .extended_lut = "off";
defparam \_~54 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~54 .shared_arith = "off";

cyclonev_lcell_comb \_~55 (
	.dataa(!\r_dffe[6]|sr[0][4]~q ),
	.datab(!\subtractors[7]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[7]|auto_generated|op_1~33_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~55_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~55 .extended_lut = "off";
defparam \_~55 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~55 .shared_arith = "off";

cyclonev_lcell_comb \_~56 (
	.dataa(!\subtractors[8]|auto_generated|op_1~1_sumout ),
	.datab(!\_~55_combout ),
	.datac(!\subtractors[8]|auto_generated|op_1~41_sumout ),
	.datad(!\subtractors[9]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[9]|auto_generated|op_1~49_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~56_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~56 .extended_lut = "off";
defparam \_~56 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~56 .shared_arith = "off";

cyclonev_lcell_comb \_~57 (
	.dataa(!\r_dffe[6]|sr[0][5]~q ),
	.datab(!\subtractors[7]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[7]|auto_generated|op_1~37_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~57_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~57 .extended_lut = "off";
defparam \_~57 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~57 .shared_arith = "off";

cyclonev_lcell_comb \_~58 (
	.dataa(!\a_delay|sr[1][15]~q ),
	.datab(!\subtractors[6]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[6]|auto_generated|op_1~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~58_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~58 .extended_lut = "off";
defparam \_~58 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~58 .shared_arith = "off";

cyclonev_lcell_comb \_~59 (
	.dataa(!\a_delay|sr[1][16]~q ),
	.datab(!\subtractors[5]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[6]|auto_generated|op_1~1_sumout ),
	.datad(!\subtractors[6]|auto_generated|op_1~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~59_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~59 .extended_lut = "off";
defparam \_~59 .lut_mask = 64'h09F909F909F909F9;
defparam \_~59 .shared_arith = "off";

cyclonev_lcell_comb \_~60 (
	.dataa(!\a_delay|sr[1][17]~q ),
	.datab(!\subtractors[5]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[5]|auto_generated|op_1~9_sumout ),
	.datad(!\subtractors[6]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[6]|auto_generated|op_1~17_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~60_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~60 .extended_lut = "off";
defparam \_~60 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~60 .shared_arith = "off";

cyclonev_lcell_comb \_~61 (
	.dataa(!\r_dffe[4]|sr[0][0]~q ),
	.datab(!\subtractors[5]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[5]|auto_generated|op_1~13_sumout ),
	.datad(!\subtractors[6]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[6]|auto_generated|op_1~21_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~61_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~61 .extended_lut = "off";
defparam \_~61 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~61 .shared_arith = "off";

cyclonev_lcell_comb \_~62 (
	.dataa(!\r_dffe[4]|sr[0][1]~q ),
	.datab(!\subtractors[5]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[5]|auto_generated|op_1~17_sumout ),
	.datad(!\subtractors[6]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[6]|auto_generated|op_1~25_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~62_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~62 .extended_lut = "off";
defparam \_~62 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~62 .shared_arith = "off";

cyclonev_lcell_comb \_~63 (
	.dataa(!\r_dffe[4]|sr[0][2]~q ),
	.datab(!\subtractors[5]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[5]|auto_generated|op_1~21_sumout ),
	.datad(!\subtractors[6]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[6]|auto_generated|op_1~29_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~63_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~63 .extended_lut = "off";
defparam \_~63 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~63 .shared_arith = "off";

cyclonev_lcell_comb \_~64 (
	.dataa(!\r_dffe[4]|sr[0][3]~q ),
	.datab(!\subtractors[5]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[5]|auto_generated|op_1~25_sumout ),
	.datad(!\subtractors[6]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[6]|auto_generated|op_1~33_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~64_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~64 .extended_lut = "off";
defparam \_~64 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~64 .shared_arith = "off";

cyclonev_lcell_comb \_~65 (
	.dataa(!radical_26),
	.datab(!radical_25),
	.datac(!radical_24),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~65_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~65 .extended_lut = "off";
defparam \_~65 .lut_mask = 64'h1313131313131313;
defparam \_~65 .shared_arith = "off";

cyclonev_lcell_comb \_~66 (
	.dataa(!radical_26),
	.datab(!radical_25),
	.datac(!radical_24),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~66_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~66 .extended_lut = "off";
defparam \_~66 .lut_mask = 64'h2525252525252525;
defparam \_~66 .shared_arith = "off";

cyclonev_lcell_comb \_~67 (
	.dataa(!\a_delay|sr[0][18]~q ),
	.datab(!\subtractors[4]|auto_generated|op_1~1_sumout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~67_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~67 .extended_lut = "off";
defparam \_~67 .lut_mask = 64'h9999999999999999;
defparam \_~67 .shared_arith = "off";

cyclonev_lcell_comb \_~68 (
	.dataa(!\a_delay|sr[0][19]~q ),
	.datab(!\subtractors[4]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[4]|auto_generated|op_1~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~68_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~68 .extended_lut = "off";
defparam \_~68 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~68 .shared_arith = "off";

cyclonev_lcell_comb \_~69 (
	.dataa(!\a_delay|sr[0][20]~q ),
	.datab(!\subtractors[3]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[4]|auto_generated|op_1~1_sumout ),
	.datad(!\subtractors[4]|auto_generated|op_1~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~69_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~69 .extended_lut = "off";
defparam \_~69 .lut_mask = 64'h09F909F909F909F9;
defparam \_~69 .shared_arith = "off";

cyclonev_lcell_comb \_~70 (
	.dataa(!\a_delay|sr[0][21]~q ),
	.datab(!\subtractors[3]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[3]|auto_generated|op_1~9_sumout ),
	.datad(!\subtractors[4]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[4]|auto_generated|op_1~17_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~70_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~70 .extended_lut = "off";
defparam \_~70 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~70 .shared_arith = "off";

cyclonev_lcell_comb \_~71 (
	.dataa(!\a_delay|sr[0][22]~q ),
	.datab(!\subtractors[2]|auto_generated|op_1~1_combout ),
	.datac(!\subtractors[3]|auto_generated|op_1~1_sumout ),
	.datad(!\subtractors[3]|auto_generated|op_1~13_sumout ),
	.datae(!\subtractors[4]|auto_generated|op_1~1_sumout ),
	.dataf(!\subtractors[4]|auto_generated|op_1~21_sumout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~71_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~71 .extended_lut = "off";
defparam \_~71 .lut_mask = 64'h000006F6FFFF06F6;
defparam \_~71 .shared_arith = "off";

cyclonev_lcell_comb \_~72 (
	.dataa(!\a_delay|sr[0][23]~q ),
	.datab(!\a_delay|sr[0][22]~q ),
	.datac(!\subtractors[2]|auto_generated|op_1~1_combout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~72_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~72 .extended_lut = "off";
defparam \_~72 .lut_mask = 64'h5959595959595959;
defparam \_~72 .shared_arith = "off";

cyclonev_lcell_comb \_~73 (
	.dataa(!\subtractors[3]|auto_generated|op_1~1_sumout ),
	.datab(!\_~72_combout ),
	.datac(!\subtractors[3]|auto_generated|op_1~17_sumout ),
	.datad(!\subtractors[4]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[4]|auto_generated|op_1~25_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~73_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~73 .extended_lut = "off";
defparam \_~73 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~73 .shared_arith = "off";

cyclonev_lcell_comb \_~74 (
	.dataa(!\r_dffe[1]|sr[0][0]~q ),
	.datab(!\subtractors[2]|auto_generated|op_1~1_combout ),
	.datac(!\subtractors[2]|auto_generated|op_1~2_combout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~74_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~74 .extended_lut = "off";
defparam \_~74 .lut_mask = 64'h7474747474747474;
defparam \_~74 .shared_arith = "off";

cyclonev_lcell_comb \_~0 (
	.dataa(!\a_delay|sr[4][0]~q ),
	.datab(!op_1),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~0 .extended_lut = "off";
defparam \_~0 .lut_mask = 64'h6666666666666666;
defparam \_~0 .shared_arith = "off";

cyclonev_lcell_comb \_~1 (
	.dataa(!\a_delay|sr[4][1]~q ),
	.datab(!op_1),
	.datac(!\subtractors[13]|auto_generated|op_1~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_1),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~1 .extended_lut = "off";
defparam \_~1 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~1 .shared_arith = "off";

cyclonev_lcell_comb \_~2 (
	.dataa(!\r_dffe[12]|sr[0][0]~q ),
	.datab(!op_1),
	.datac(!\subtractors[13]|auto_generated|op_1~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_2),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~2 .extended_lut = "off";
defparam \_~2 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~2 .shared_arith = "off";

cyclonev_lcell_comb \_~3 (
	.dataa(!\r_dffe[12]|sr[0][1]~q ),
	.datab(!op_1),
	.datac(!\subtractors[13]|auto_generated|op_1~13_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_3),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~3 .extended_lut = "off";
defparam \_~3 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~3 .shared_arith = "off";

cyclonev_lcell_comb \_~4 (
	.dataa(!\r_dffe[12]|sr[0][2]~q ),
	.datab(!op_1),
	.datac(!\subtractors[13]|auto_generated|op_1~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_4),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~4 .extended_lut = "off";
defparam \_~4 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~4 .shared_arith = "off";

cyclonev_lcell_comb \_~5 (
	.dataa(!\r_dffe[12]|sr[0][3]~q ),
	.datab(!op_1),
	.datac(!\subtractors[13]|auto_generated|op_1~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_5),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~5 .extended_lut = "off";
defparam \_~5 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~5 .shared_arith = "off";

cyclonev_lcell_comb \_~6 (
	.dataa(!\r_dffe[12]|sr[0][4]~q ),
	.datab(!op_1),
	.datac(!\subtractors[13]|auto_generated|op_1~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_6),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~6 .extended_lut = "off";
defparam \_~6 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~6 .shared_arith = "off";

cyclonev_lcell_comb \_~7 (
	.dataa(!\r_dffe[12]|sr[0][5]~q ),
	.datab(!op_1),
	.datac(!\subtractors[13]|auto_generated|op_1~29_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_7),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~7 .extended_lut = "off";
defparam \_~7 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~7 .shared_arith = "off";

cyclonev_lcell_comb \_~8 (
	.dataa(!\r_dffe[12]|sr[0][6]~q ),
	.datab(!op_1),
	.datac(!\subtractors[13]|auto_generated|op_1~33_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_8),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~8 .extended_lut = "off";
defparam \_~8 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~8 .shared_arith = "off";

cyclonev_lcell_comb \_~9 (
	.dataa(!\r_dffe[12]|sr[0][7]~q ),
	.datab(!op_1),
	.datac(!\subtractors[13]|auto_generated|op_1~37_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_9),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~9 .extended_lut = "off";
defparam \_~9 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~9 .shared_arith = "off";

cyclonev_lcell_comb \_~10 (
	.dataa(!\r_dffe[12]|sr[0][8]~q ),
	.datab(!op_1),
	.datac(!\subtractors[13]|auto_generated|op_1~41_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_10),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~10 .extended_lut = "off";
defparam \_~10 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~10 .shared_arith = "off";

cyclonev_lcell_comb \_~11 (
	.dataa(!\r_dffe[12]|sr[0][9]~q ),
	.datab(!op_1),
	.datac(!\subtractors[13]|auto_generated|op_1~45_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_11),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~11 .extended_lut = "off";
defparam \_~11 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~11 .shared_arith = "off";

cyclonev_lcell_comb \_~12 (
	.dataa(!\r_dffe[12]|sr[0][10]~q ),
	.datab(!op_1),
	.datac(!\subtractors[13]|auto_generated|op_1~49_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_12),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~12 .extended_lut = "off";
defparam \_~12 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~12 .shared_arith = "off";

cyclonev_lcell_comb \_~13 (
	.dataa(!\r_dffe[12]|sr[0][11]~q ),
	.datab(!op_1),
	.datac(!\subtractors[13]|auto_generated|op_1~53_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_13),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~13 .extended_lut = "off";
defparam \_~13 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~13 .shared_arith = "off";

cyclonev_lcell_comb \_~14 (
	.dataa(!\r_dffe[12]|sr[0][12]~q ),
	.datab(!op_1),
	.datac(!\subtractors[13]|auto_generated|op_1~57_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_14),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~14 .extended_lut = "off";
defparam \_~14 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~14 .shared_arith = "off";

endmodule

module sqrt_27_dffpipe_1 (
	sr_0_4,
	sr_1_4,
	sr_2_3,
	sr_3_3,
	sr_4_3,
	sr_5_3,
	sr_6_3,
	sr_7_3,
	sr_8_2,
	sr_9_2,
	sr_10_2,
	sr_11_2,
	sr_12_2,
	sr_13_2,
	sr_14_1,
	sr_23_0,
	sr_22_0,
	sr_15_1,
	sr_16_1,
	sr_17_1,
	sr_18_0,
	sr_19_0,
	sr_20_0,
	sr_21_0,
	clock,
	ena,
	radical_23,
	radical_22,
	radical_0,
	radical_1,
	radical_2,
	radical_3,
	radical_4,
	radical_5,
	radical_6,
	radical_7,
	radical_8,
	radical_9,
	radical_10,
	radical_11,
	radical_12,
	radical_13,
	radical_14,
	radical_15,
	radical_16,
	radical_17,
	radical_18,
	radical_19,
	radical_20,
	radical_21)/* synthesis synthesis_greybox=0 */;
output 	sr_0_4;
output 	sr_1_4;
output 	sr_2_3;
output 	sr_3_3;
output 	sr_4_3;
output 	sr_5_3;
output 	sr_6_3;
output 	sr_7_3;
output 	sr_8_2;
output 	sr_9_2;
output 	sr_10_2;
output 	sr_11_2;
output 	sr_12_2;
output 	sr_13_2;
output 	sr_14_1;
output 	sr_23_0;
output 	sr_22_0;
output 	sr_15_1;
output 	sr_16_1;
output 	sr_17_1;
output 	sr_18_0;
output 	sr_19_0;
output 	sr_20_0;
output 	sr_21_0;
input 	clock;
input 	ena;
input 	radical_23;
input 	radical_22;
input 	radical_0;
input 	radical_1;
input 	radical_2;
input 	radical_3;
input 	radical_4;
input 	radical_5;
input 	radical_6;
input 	radical_7;
input 	radical_8;
input 	radical_9;
input 	radical_10;
input 	radical_11;
input 	radical_12;
input 	radical_13;
input 	radical_14;
input 	radical_15;
input 	radical_16;
input 	radical_17;
input 	radical_18;
input 	radical_19;
input 	radical_20;
input 	radical_21;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \sr[0][0]~q ;
wire \sr[1][0]~q ;
wire \sr[2][0]~q ;
wire \sr[3][0]~q ;
wire \sr[0][1]~q ;
wire \sr[1][1]~q ;
wire \sr[2][1]~q ;
wire \sr[3][1]~q ;
wire \sr[0][2]~q ;
wire \sr[1][2]~q ;
wire \sr[2][2]~q ;
wire \sr[0][3]~q ;
wire \sr[1][3]~q ;
wire \sr[2][3]~q ;
wire \sr[0][4]~q ;
wire \sr[1][4]~q ;
wire \sr[2][4]~q ;
wire \sr[0][5]~q ;
wire \sr[1][5]~q ;
wire \sr[2][5]~q ;
wire \sr[0][6]~q ;
wire \sr[1][6]~q ;
wire \sr[2][6]~q ;
wire \sr[0][7]~q ;
wire \sr[1][7]~q ;
wire \sr[2][7]~q ;
wire \sr[0][8]~q ;
wire \sr[1][8]~q ;
wire \sr[0][9]~q ;
wire \sr[1][9]~q ;
wire \sr[0][10]~q ;
wire \sr[1][10]~q ;
wire \sr[0][11]~q ;
wire \sr[1][11]~q ;
wire \sr[0][12]~q ;
wire \sr[1][12]~q ;
wire \sr[0][13]~q ;
wire \sr[1][13]~q ;
wire \sr[0][14]~q ;
wire \sr[0][15]~q ;
wire \sr[0][16]~q ;
wire \sr[0][17]~q ;


dffeas \sr[4][0] (
	.clk(clock),
	.d(\sr[3][0]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_0_4),
	.prn(vcc));
defparam \sr[4][0] .is_wysiwyg = "true";
defparam \sr[4][0] .power_up = "low";

dffeas \sr[4][1] (
	.clk(clock),
	.d(\sr[3][1]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_1_4),
	.prn(vcc));
defparam \sr[4][1] .is_wysiwyg = "true";
defparam \sr[4][1] .power_up = "low";

dffeas \sr[3][2] (
	.clk(clock),
	.d(\sr[2][2]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_2_3),
	.prn(vcc));
defparam \sr[3][2] .is_wysiwyg = "true";
defparam \sr[3][2] .power_up = "low";

dffeas \sr[3][3] (
	.clk(clock),
	.d(\sr[2][3]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_3_3),
	.prn(vcc));
defparam \sr[3][3] .is_wysiwyg = "true";
defparam \sr[3][3] .power_up = "low";

dffeas \sr[3][4] (
	.clk(clock),
	.d(\sr[2][4]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_4_3),
	.prn(vcc));
defparam \sr[3][4] .is_wysiwyg = "true";
defparam \sr[3][4] .power_up = "low";

dffeas \sr[3][5] (
	.clk(clock),
	.d(\sr[2][5]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_5_3),
	.prn(vcc));
defparam \sr[3][5] .is_wysiwyg = "true";
defparam \sr[3][5] .power_up = "low";

dffeas \sr[3][6] (
	.clk(clock),
	.d(\sr[2][6]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_6_3),
	.prn(vcc));
defparam \sr[3][6] .is_wysiwyg = "true";
defparam \sr[3][6] .power_up = "low";

dffeas \sr[3][7] (
	.clk(clock),
	.d(\sr[2][7]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_7_3),
	.prn(vcc));
defparam \sr[3][7] .is_wysiwyg = "true";
defparam \sr[3][7] .power_up = "low";

dffeas \sr[2][8] (
	.clk(clock),
	.d(\sr[1][8]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_8_2),
	.prn(vcc));
defparam \sr[2][8] .is_wysiwyg = "true";
defparam \sr[2][8] .power_up = "low";

dffeas \sr[2][9] (
	.clk(clock),
	.d(\sr[1][9]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_9_2),
	.prn(vcc));
defparam \sr[2][9] .is_wysiwyg = "true";
defparam \sr[2][9] .power_up = "low";

dffeas \sr[2][10] (
	.clk(clock),
	.d(\sr[1][10]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_10_2),
	.prn(vcc));
defparam \sr[2][10] .is_wysiwyg = "true";
defparam \sr[2][10] .power_up = "low";

dffeas \sr[2][11] (
	.clk(clock),
	.d(\sr[1][11]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_11_2),
	.prn(vcc));
defparam \sr[2][11] .is_wysiwyg = "true";
defparam \sr[2][11] .power_up = "low";

dffeas \sr[2][12] (
	.clk(clock),
	.d(\sr[1][12]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_12_2),
	.prn(vcc));
defparam \sr[2][12] .is_wysiwyg = "true";
defparam \sr[2][12] .power_up = "low";

dffeas \sr[2][13] (
	.clk(clock),
	.d(\sr[1][13]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_13_2),
	.prn(vcc));
defparam \sr[2][13] .is_wysiwyg = "true";
defparam \sr[2][13] .power_up = "low";

dffeas \sr[1][14] (
	.clk(clock),
	.d(\sr[0][14]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_14_1),
	.prn(vcc));
defparam \sr[1][14] .is_wysiwyg = "true";
defparam \sr[1][14] .power_up = "low";

dffeas \sr[0][23] (
	.clk(clock),
	.d(radical_23),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_23_0),
	.prn(vcc));
defparam \sr[0][23] .is_wysiwyg = "true";
defparam \sr[0][23] .power_up = "low";

dffeas \sr[0][22] (
	.clk(clock),
	.d(radical_22),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_22_0),
	.prn(vcc));
defparam \sr[0][22] .is_wysiwyg = "true";
defparam \sr[0][22] .power_up = "low";

dffeas \sr[1][15] (
	.clk(clock),
	.d(\sr[0][15]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_15_1),
	.prn(vcc));
defparam \sr[1][15] .is_wysiwyg = "true";
defparam \sr[1][15] .power_up = "low";

dffeas \sr[1][16] (
	.clk(clock),
	.d(\sr[0][16]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_16_1),
	.prn(vcc));
defparam \sr[1][16] .is_wysiwyg = "true";
defparam \sr[1][16] .power_up = "low";

dffeas \sr[1][17] (
	.clk(clock),
	.d(\sr[0][17]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_17_1),
	.prn(vcc));
defparam \sr[1][17] .is_wysiwyg = "true";
defparam \sr[1][17] .power_up = "low";

dffeas \sr[0][18] (
	.clk(clock),
	.d(radical_18),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_18_0),
	.prn(vcc));
defparam \sr[0][18] .is_wysiwyg = "true";
defparam \sr[0][18] .power_up = "low";

dffeas \sr[0][19] (
	.clk(clock),
	.d(radical_19),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_19_0),
	.prn(vcc));
defparam \sr[0][19] .is_wysiwyg = "true";
defparam \sr[0][19] .power_up = "low";

dffeas \sr[0][20] (
	.clk(clock),
	.d(radical_20),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_20_0),
	.prn(vcc));
defparam \sr[0][20] .is_wysiwyg = "true";
defparam \sr[0][20] .power_up = "low";

dffeas \sr[0][21] (
	.clk(clock),
	.d(radical_21),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_21_0),
	.prn(vcc));
defparam \sr[0][21] .is_wysiwyg = "true";
defparam \sr[0][21] .power_up = "low";

dffeas \sr[0][0] (
	.clk(clock),
	.d(radical_0),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][0]~q ),
	.prn(vcc));
defparam \sr[0][0] .is_wysiwyg = "true";
defparam \sr[0][0] .power_up = "low";

dffeas \sr[1][0] (
	.clk(clock),
	.d(\sr[0][0]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[1][0]~q ),
	.prn(vcc));
defparam \sr[1][0] .is_wysiwyg = "true";
defparam \sr[1][0] .power_up = "low";

dffeas \sr[2][0] (
	.clk(clock),
	.d(\sr[1][0]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[2][0]~q ),
	.prn(vcc));
defparam \sr[2][0] .is_wysiwyg = "true";
defparam \sr[2][0] .power_up = "low";

dffeas \sr[3][0] (
	.clk(clock),
	.d(\sr[2][0]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[3][0]~q ),
	.prn(vcc));
defparam \sr[3][0] .is_wysiwyg = "true";
defparam \sr[3][0] .power_up = "low";

dffeas \sr[0][1] (
	.clk(clock),
	.d(radical_1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][1]~q ),
	.prn(vcc));
defparam \sr[0][1] .is_wysiwyg = "true";
defparam \sr[0][1] .power_up = "low";

dffeas \sr[1][1] (
	.clk(clock),
	.d(\sr[0][1]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[1][1]~q ),
	.prn(vcc));
defparam \sr[1][1] .is_wysiwyg = "true";
defparam \sr[1][1] .power_up = "low";

dffeas \sr[2][1] (
	.clk(clock),
	.d(\sr[1][1]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[2][1]~q ),
	.prn(vcc));
defparam \sr[2][1] .is_wysiwyg = "true";
defparam \sr[2][1] .power_up = "low";

dffeas \sr[3][1] (
	.clk(clock),
	.d(\sr[2][1]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[3][1]~q ),
	.prn(vcc));
defparam \sr[3][1] .is_wysiwyg = "true";
defparam \sr[3][1] .power_up = "low";

dffeas \sr[0][2] (
	.clk(clock),
	.d(radical_2),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][2]~q ),
	.prn(vcc));
defparam \sr[0][2] .is_wysiwyg = "true";
defparam \sr[0][2] .power_up = "low";

dffeas \sr[1][2] (
	.clk(clock),
	.d(\sr[0][2]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[1][2]~q ),
	.prn(vcc));
defparam \sr[1][2] .is_wysiwyg = "true";
defparam \sr[1][2] .power_up = "low";

dffeas \sr[2][2] (
	.clk(clock),
	.d(\sr[1][2]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[2][2]~q ),
	.prn(vcc));
defparam \sr[2][2] .is_wysiwyg = "true";
defparam \sr[2][2] .power_up = "low";

dffeas \sr[0][3] (
	.clk(clock),
	.d(radical_3),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][3]~q ),
	.prn(vcc));
defparam \sr[0][3] .is_wysiwyg = "true";
defparam \sr[0][3] .power_up = "low";

dffeas \sr[1][3] (
	.clk(clock),
	.d(\sr[0][3]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[1][3]~q ),
	.prn(vcc));
defparam \sr[1][3] .is_wysiwyg = "true";
defparam \sr[1][3] .power_up = "low";

dffeas \sr[2][3] (
	.clk(clock),
	.d(\sr[1][3]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[2][3]~q ),
	.prn(vcc));
defparam \sr[2][3] .is_wysiwyg = "true";
defparam \sr[2][3] .power_up = "low";

dffeas \sr[0][4] (
	.clk(clock),
	.d(radical_4),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][4]~q ),
	.prn(vcc));
defparam \sr[0][4] .is_wysiwyg = "true";
defparam \sr[0][4] .power_up = "low";

dffeas \sr[1][4] (
	.clk(clock),
	.d(\sr[0][4]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[1][4]~q ),
	.prn(vcc));
defparam \sr[1][4] .is_wysiwyg = "true";
defparam \sr[1][4] .power_up = "low";

dffeas \sr[2][4] (
	.clk(clock),
	.d(\sr[1][4]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[2][4]~q ),
	.prn(vcc));
defparam \sr[2][4] .is_wysiwyg = "true";
defparam \sr[2][4] .power_up = "low";

dffeas \sr[0][5] (
	.clk(clock),
	.d(radical_5),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][5]~q ),
	.prn(vcc));
defparam \sr[0][5] .is_wysiwyg = "true";
defparam \sr[0][5] .power_up = "low";

dffeas \sr[1][5] (
	.clk(clock),
	.d(\sr[0][5]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[1][5]~q ),
	.prn(vcc));
defparam \sr[1][5] .is_wysiwyg = "true";
defparam \sr[1][5] .power_up = "low";

dffeas \sr[2][5] (
	.clk(clock),
	.d(\sr[1][5]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[2][5]~q ),
	.prn(vcc));
defparam \sr[2][5] .is_wysiwyg = "true";
defparam \sr[2][5] .power_up = "low";

dffeas \sr[0][6] (
	.clk(clock),
	.d(radical_6),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][6]~q ),
	.prn(vcc));
defparam \sr[0][6] .is_wysiwyg = "true";
defparam \sr[0][6] .power_up = "low";

dffeas \sr[1][6] (
	.clk(clock),
	.d(\sr[0][6]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[1][6]~q ),
	.prn(vcc));
defparam \sr[1][6] .is_wysiwyg = "true";
defparam \sr[1][6] .power_up = "low";

dffeas \sr[2][6] (
	.clk(clock),
	.d(\sr[1][6]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[2][6]~q ),
	.prn(vcc));
defparam \sr[2][6] .is_wysiwyg = "true";
defparam \sr[2][6] .power_up = "low";

dffeas \sr[0][7] (
	.clk(clock),
	.d(radical_7),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][7]~q ),
	.prn(vcc));
defparam \sr[0][7] .is_wysiwyg = "true";
defparam \sr[0][7] .power_up = "low";

dffeas \sr[1][7] (
	.clk(clock),
	.d(\sr[0][7]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[1][7]~q ),
	.prn(vcc));
defparam \sr[1][7] .is_wysiwyg = "true";
defparam \sr[1][7] .power_up = "low";

dffeas \sr[2][7] (
	.clk(clock),
	.d(\sr[1][7]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[2][7]~q ),
	.prn(vcc));
defparam \sr[2][7] .is_wysiwyg = "true";
defparam \sr[2][7] .power_up = "low";

dffeas \sr[0][8] (
	.clk(clock),
	.d(radical_8),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][8]~q ),
	.prn(vcc));
defparam \sr[0][8] .is_wysiwyg = "true";
defparam \sr[0][8] .power_up = "low";

dffeas \sr[1][8] (
	.clk(clock),
	.d(\sr[0][8]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[1][8]~q ),
	.prn(vcc));
defparam \sr[1][8] .is_wysiwyg = "true";
defparam \sr[1][8] .power_up = "low";

dffeas \sr[0][9] (
	.clk(clock),
	.d(radical_9),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][9]~q ),
	.prn(vcc));
defparam \sr[0][9] .is_wysiwyg = "true";
defparam \sr[0][9] .power_up = "low";

dffeas \sr[1][9] (
	.clk(clock),
	.d(\sr[0][9]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[1][9]~q ),
	.prn(vcc));
defparam \sr[1][9] .is_wysiwyg = "true";
defparam \sr[1][9] .power_up = "low";

dffeas \sr[0][10] (
	.clk(clock),
	.d(radical_10),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][10]~q ),
	.prn(vcc));
defparam \sr[0][10] .is_wysiwyg = "true";
defparam \sr[0][10] .power_up = "low";

dffeas \sr[1][10] (
	.clk(clock),
	.d(\sr[0][10]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[1][10]~q ),
	.prn(vcc));
defparam \sr[1][10] .is_wysiwyg = "true";
defparam \sr[1][10] .power_up = "low";

dffeas \sr[0][11] (
	.clk(clock),
	.d(radical_11),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][11]~q ),
	.prn(vcc));
defparam \sr[0][11] .is_wysiwyg = "true";
defparam \sr[0][11] .power_up = "low";

dffeas \sr[1][11] (
	.clk(clock),
	.d(\sr[0][11]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[1][11]~q ),
	.prn(vcc));
defparam \sr[1][11] .is_wysiwyg = "true";
defparam \sr[1][11] .power_up = "low";

dffeas \sr[0][12] (
	.clk(clock),
	.d(radical_12),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][12]~q ),
	.prn(vcc));
defparam \sr[0][12] .is_wysiwyg = "true";
defparam \sr[0][12] .power_up = "low";

dffeas \sr[1][12] (
	.clk(clock),
	.d(\sr[0][12]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[1][12]~q ),
	.prn(vcc));
defparam \sr[1][12] .is_wysiwyg = "true";
defparam \sr[1][12] .power_up = "low";

dffeas \sr[0][13] (
	.clk(clock),
	.d(radical_13),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][13]~q ),
	.prn(vcc));
defparam \sr[0][13] .is_wysiwyg = "true";
defparam \sr[0][13] .power_up = "low";

dffeas \sr[1][13] (
	.clk(clock),
	.d(\sr[0][13]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[1][13]~q ),
	.prn(vcc));
defparam \sr[1][13] .is_wysiwyg = "true";
defparam \sr[1][13] .power_up = "low";

dffeas \sr[0][14] (
	.clk(clock),
	.d(radical_14),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][14]~q ),
	.prn(vcc));
defparam \sr[0][14] .is_wysiwyg = "true";
defparam \sr[0][14] .power_up = "low";

dffeas \sr[0][15] (
	.clk(clock),
	.d(radical_15),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][15]~q ),
	.prn(vcc));
defparam \sr[0][15] .is_wysiwyg = "true";
defparam \sr[0][15] .power_up = "low";

dffeas \sr[0][16] (
	.clk(clock),
	.d(radical_16),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][16]~q ),
	.prn(vcc));
defparam \sr[0][16] .is_wysiwyg = "true";
defparam \sr[0][16] .power_up = "low";

dffeas \sr[0][17] (
	.clk(clock),
	.d(radical_17),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][17]~q ),
	.prn(vcc));
defparam \sr[0][17] .is_wysiwyg = "true";
defparam \sr[0][17] .power_up = "low";

endmodule

module sqrt_27_dffpipe_5 (
	op_1,
	op_11,
	op_12,
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_7_0,
	sr_8_0,
	sr_9_0,
	sr_10_0,
	sr_11_0,
	sr_12_0,
	sr_0_01,
	sr_1_01,
	sr_2_01,
	sr_3_01,
	sr_4_01,
	sr_5_01,
	sr_6_01,
	sr_7_01,
	sr_8_01,
	sr_9_01,
	clock,
	ena)/* synthesis synthesis_greybox=0 */;
input 	op_1;
input 	op_11;
input 	op_12;
output 	sr_0_0;
output 	sr_1_0;
output 	sr_2_0;
output 	sr_3_0;
output 	sr_4_0;
output 	sr_5_0;
output 	sr_6_0;
output 	sr_7_0;
output 	sr_8_0;
output 	sr_9_0;
output 	sr_10_0;
output 	sr_11_0;
output 	sr_12_0;
input 	sr_0_01;
input 	sr_1_01;
input 	sr_2_01;
input 	sr_3_01;
input 	sr_4_01;
input 	sr_5_01;
input 	sr_6_01;
input 	sr_7_01;
input 	sr_8_01;
input 	sr_9_01;
input 	clock;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \sr[0][0]~0_combout ;
wire \sr[0][1]~1_combout ;
wire \sr[0][2]~2_combout ;


dffeas \sr[0][0] (
	.clk(clock),
	.d(\sr[0][0]~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_0_0),
	.prn(vcc));
defparam \sr[0][0] .is_wysiwyg = "true";
defparam \sr[0][0] .power_up = "low";

dffeas \sr[0][1] (
	.clk(clock),
	.d(\sr[0][1]~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_1_0),
	.prn(vcc));
defparam \sr[0][1] .is_wysiwyg = "true";
defparam \sr[0][1] .power_up = "low";

dffeas \sr[0][2] (
	.clk(clock),
	.d(\sr[0][2]~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_2_0),
	.prn(vcc));
defparam \sr[0][2] .is_wysiwyg = "true";
defparam \sr[0][2] .power_up = "low";

dffeas \sr[0][3] (
	.clk(clock),
	.d(sr_0_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_3_0),
	.prn(vcc));
defparam \sr[0][3] .is_wysiwyg = "true";
defparam \sr[0][3] .power_up = "low";

dffeas \sr[0][4] (
	.clk(clock),
	.d(sr_1_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_4_0),
	.prn(vcc));
defparam \sr[0][4] .is_wysiwyg = "true";
defparam \sr[0][4] .power_up = "low";

dffeas \sr[0][5] (
	.clk(clock),
	.d(sr_2_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_5_0),
	.prn(vcc));
defparam \sr[0][5] .is_wysiwyg = "true";
defparam \sr[0][5] .power_up = "low";

dffeas \sr[0][6] (
	.clk(clock),
	.d(sr_3_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_6_0),
	.prn(vcc));
defparam \sr[0][6] .is_wysiwyg = "true";
defparam \sr[0][6] .power_up = "low";

dffeas \sr[0][7] (
	.clk(clock),
	.d(sr_4_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_7_0),
	.prn(vcc));
defparam \sr[0][7] .is_wysiwyg = "true";
defparam \sr[0][7] .power_up = "low";

dffeas \sr[0][8] (
	.clk(clock),
	.d(sr_5_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_8_0),
	.prn(vcc));
defparam \sr[0][8] .is_wysiwyg = "true";
defparam \sr[0][8] .power_up = "low";

dffeas \sr[0][9] (
	.clk(clock),
	.d(sr_6_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_9_0),
	.prn(vcc));
defparam \sr[0][9] .is_wysiwyg = "true";
defparam \sr[0][9] .power_up = "low";

dffeas \sr[0][10] (
	.clk(clock),
	.d(sr_7_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_10_0),
	.prn(vcc));
defparam \sr[0][10] .is_wysiwyg = "true";
defparam \sr[0][10] .power_up = "low";

dffeas \sr[0][11] (
	.clk(clock),
	.d(sr_8_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_11_0),
	.prn(vcc));
defparam \sr[0][11] .is_wysiwyg = "true";
defparam \sr[0][11] .power_up = "low";

dffeas \sr[0][12] (
	.clk(clock),
	.d(sr_9_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_12_0),
	.prn(vcc));
defparam \sr[0][12] .is_wysiwyg = "true";
defparam \sr[0][12] .power_up = "low";

cyclonev_lcell_comb \sr[0][0]~0 (
	.dataa(!op_1),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\sr[0][0]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \sr[0][0]~0 .extended_lut = "off";
defparam \sr[0][0]~0 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \sr[0][0]~0 .shared_arith = "off";

cyclonev_lcell_comb \sr[0][1]~1 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\sr[0][1]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \sr[0][1]~1 .extended_lut = "off";
defparam \sr[0][1]~1 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \sr[0][1]~1 .shared_arith = "off";

cyclonev_lcell_comb \sr[0][2]~2 (
	.dataa(!op_12),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\sr[0][2]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \sr[0][2]~2 .extended_lut = "off";
defparam \sr[0][2]~2 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \sr[0][2]~2 .shared_arith = "off";

endmodule

module sqrt_27_dffpipe_7 (
	sr_1_0,
	sr_0_0,
	op_1,
	clock,
	ena,
	radical_26)/* synthesis synthesis_greybox=0 */;
output 	sr_1_0;
output 	sr_0_0;
input 	op_1;
input 	clock;
input 	ena;
input 	radical_26;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \sr[0][1] (
	.clk(clock),
	.d(radical_26),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_1_0),
	.prn(vcc));
defparam \sr[0][1] .is_wysiwyg = "true";
defparam \sr[0][1] .power_up = "low";

dffeas \sr[0][0] (
	.clk(clock),
	.d(op_1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_0_0),
	.prn(vcc));
defparam \sr[0][0] .is_wysiwyg = "true";
defparam \sr[0][0] .power_up = "low";

endmodule

module sqrt_27_dffpipe_10 (
	op_1,
	op_11,
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_1_01,
	sr_0_01,
	op_12,
	clock,
	ena)/* synthesis synthesis_greybox=0 */;
input 	op_1;
input 	op_11;
output 	sr_0_0;
output 	sr_1_0;
output 	sr_2_0;
output 	sr_3_0;
output 	sr_4_0;
input 	sr_1_01;
input 	sr_0_01;
input 	op_12;
input 	clock;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \sr[0][0]~0_combout ;
wire \sr[0][1]~1_combout ;


dffeas \sr[0][0] (
	.clk(clock),
	.d(\sr[0][0]~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_0_0),
	.prn(vcc));
defparam \sr[0][0] .is_wysiwyg = "true";
defparam \sr[0][0] .power_up = "low";

dffeas \sr[0][1] (
	.clk(clock),
	.d(\sr[0][1]~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_1_0),
	.prn(vcc));
defparam \sr[0][1] .is_wysiwyg = "true";
defparam \sr[0][1] .power_up = "low";

dffeas \sr[0][2] (
	.clk(clock),
	.d(op_12),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_2_0),
	.prn(vcc));
defparam \sr[0][2] .is_wysiwyg = "true";
defparam \sr[0][2] .power_up = "low";

dffeas \sr[0][3] (
	.clk(clock),
	.d(sr_0_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_3_0),
	.prn(vcc));
defparam \sr[0][3] .is_wysiwyg = "true";
defparam \sr[0][3] .power_up = "low";

dffeas \sr[0][4] (
	.clk(clock),
	.d(sr_1_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_4_0),
	.prn(vcc));
defparam \sr[0][4] .is_wysiwyg = "true";
defparam \sr[0][4] .power_up = "low";

cyclonev_lcell_comb \sr[0][0]~0 (
	.dataa(!op_1),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\sr[0][0]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \sr[0][0]~0 .extended_lut = "off";
defparam \sr[0][0]~0 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \sr[0][0]~0 .shared_arith = "off";

cyclonev_lcell_comb \sr[0][1]~1 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\sr[0][1]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \sr[0][1]~1 .extended_lut = "off";
defparam \sr[0][1]~1 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \sr[0][1]~1 .shared_arith = "off";

endmodule

module sqrt_27_dffpipe_12 (
	op_1,
	op_11,
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_0_01,
	sr_1_01,
	sr_2_01,
	sr_3_01,
	sr_4_01,
	clock,
	ena)/* synthesis synthesis_greybox=0 */;
input 	op_1;
input 	op_11;
output 	sr_0_0;
output 	sr_1_0;
output 	sr_2_0;
output 	sr_3_0;
output 	sr_4_0;
output 	sr_5_0;
output 	sr_6_0;
input 	sr_0_01;
input 	sr_1_01;
input 	sr_2_01;
input 	sr_3_01;
input 	sr_4_01;
input 	clock;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \sr[0][0]~0_combout ;
wire \sr[0][1]~1_combout ;


dffeas \sr[0][0] (
	.clk(clock),
	.d(\sr[0][0]~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_0_0),
	.prn(vcc));
defparam \sr[0][0] .is_wysiwyg = "true";
defparam \sr[0][0] .power_up = "low";

dffeas \sr[0][1] (
	.clk(clock),
	.d(\sr[0][1]~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_1_0),
	.prn(vcc));
defparam \sr[0][1] .is_wysiwyg = "true";
defparam \sr[0][1] .power_up = "low";

dffeas \sr[0][2] (
	.clk(clock),
	.d(sr_0_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_2_0),
	.prn(vcc));
defparam \sr[0][2] .is_wysiwyg = "true";
defparam \sr[0][2] .power_up = "low";

dffeas \sr[0][3] (
	.clk(clock),
	.d(sr_1_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_3_0),
	.prn(vcc));
defparam \sr[0][3] .is_wysiwyg = "true";
defparam \sr[0][3] .power_up = "low";

dffeas \sr[0][4] (
	.clk(clock),
	.d(sr_2_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_4_0),
	.prn(vcc));
defparam \sr[0][4] .is_wysiwyg = "true";
defparam \sr[0][4] .power_up = "low";

dffeas \sr[0][5] (
	.clk(clock),
	.d(sr_3_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_5_0),
	.prn(vcc));
defparam \sr[0][5] .is_wysiwyg = "true";
defparam \sr[0][5] .power_up = "low";

dffeas \sr[0][6] (
	.clk(clock),
	.d(sr_4_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_6_0),
	.prn(vcc));
defparam \sr[0][6] .is_wysiwyg = "true";
defparam \sr[0][6] .power_up = "low";

cyclonev_lcell_comb \sr[0][0]~0 (
	.dataa(!op_1),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\sr[0][0]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \sr[0][0]~0 .extended_lut = "off";
defparam \sr[0][0]~0 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \sr[0][0]~0 .shared_arith = "off";

cyclonev_lcell_comb \sr[0][1]~1 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\sr[0][1]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \sr[0][1]~1 .extended_lut = "off";
defparam \sr[0][1]~1 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \sr[0][1]~1 .shared_arith = "off";

endmodule

module sqrt_27_dffpipe_15 (
	op_1,
	op_11,
	op_12,
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_7_0,
	sr_8_0,
	sr_9_0,
	sr_0_01,
	sr_1_01,
	sr_2_01,
	sr_3_01,
	sr_4_01,
	sr_5_01,
	sr_6_01,
	clock,
	ena)/* synthesis synthesis_greybox=0 */;
input 	op_1;
input 	op_11;
input 	op_12;
output 	sr_0_0;
output 	sr_1_0;
output 	sr_2_0;
output 	sr_3_0;
output 	sr_4_0;
output 	sr_5_0;
output 	sr_6_0;
output 	sr_7_0;
output 	sr_8_0;
output 	sr_9_0;
input 	sr_0_01;
input 	sr_1_01;
input 	sr_2_01;
input 	sr_3_01;
input 	sr_4_01;
input 	sr_5_01;
input 	sr_6_01;
input 	clock;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \sr[0][0]~0_combout ;
wire \sr[0][1]~1_combout ;
wire \sr[0][2]~2_combout ;


dffeas \sr[0][0] (
	.clk(clock),
	.d(\sr[0][0]~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_0_0),
	.prn(vcc));
defparam \sr[0][0] .is_wysiwyg = "true";
defparam \sr[0][0] .power_up = "low";

dffeas \sr[0][1] (
	.clk(clock),
	.d(\sr[0][1]~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_1_0),
	.prn(vcc));
defparam \sr[0][1] .is_wysiwyg = "true";
defparam \sr[0][1] .power_up = "low";

dffeas \sr[0][2] (
	.clk(clock),
	.d(\sr[0][2]~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_2_0),
	.prn(vcc));
defparam \sr[0][2] .is_wysiwyg = "true";
defparam \sr[0][2] .power_up = "low";

dffeas \sr[0][3] (
	.clk(clock),
	.d(sr_0_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_3_0),
	.prn(vcc));
defparam \sr[0][3] .is_wysiwyg = "true";
defparam \sr[0][3] .power_up = "low";

dffeas \sr[0][4] (
	.clk(clock),
	.d(sr_1_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_4_0),
	.prn(vcc));
defparam \sr[0][4] .is_wysiwyg = "true";
defparam \sr[0][4] .power_up = "low";

dffeas \sr[0][5] (
	.clk(clock),
	.d(sr_2_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_5_0),
	.prn(vcc));
defparam \sr[0][5] .is_wysiwyg = "true";
defparam \sr[0][5] .power_up = "low";

dffeas \sr[0][6] (
	.clk(clock),
	.d(sr_3_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_6_0),
	.prn(vcc));
defparam \sr[0][6] .is_wysiwyg = "true";
defparam \sr[0][6] .power_up = "low";

dffeas \sr[0][7] (
	.clk(clock),
	.d(sr_4_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_7_0),
	.prn(vcc));
defparam \sr[0][7] .is_wysiwyg = "true";
defparam \sr[0][7] .power_up = "low";

dffeas \sr[0][8] (
	.clk(clock),
	.d(sr_5_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_8_0),
	.prn(vcc));
defparam \sr[0][8] .is_wysiwyg = "true";
defparam \sr[0][8] .power_up = "low";

dffeas \sr[0][9] (
	.clk(clock),
	.d(sr_6_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_9_0),
	.prn(vcc));
defparam \sr[0][9] .is_wysiwyg = "true";
defparam \sr[0][9] .power_up = "low";

cyclonev_lcell_comb \sr[0][0]~0 (
	.dataa(!op_1),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\sr[0][0]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \sr[0][0]~0 .extended_lut = "off";
defparam \sr[0][0]~0 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \sr[0][0]~0 .shared_arith = "off";

cyclonev_lcell_comb \sr[0][1]~1 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\sr[0][1]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \sr[0][1]~1 .extended_lut = "off";
defparam \sr[0][1]~1 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \sr[0][1]~1 .shared_arith = "off";

cyclonev_lcell_comb \sr[0][2]~2 (
	.dataa(!op_12),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\sr[0][2]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \sr[0][2]~2 .extended_lut = "off";
defparam \sr[0][2]~2 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \sr[0][2]~2 .shared_arith = "off";

endmodule

module sqrt_27_dffpipe_20 (
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_7_0,
	sr_8_0,
	sr_9_0,
	sr_10_0,
	sr_11_0,
	sr_12_0,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	_6,
	_7,
	_8,
	_9,
	_10,
	_11,
	_12,
	sr_13_0,
	_13,
	clock,
	ena)/* synthesis synthesis_greybox=0 */;
output 	sr_0_0;
output 	sr_1_0;
output 	sr_2_0;
output 	sr_3_0;
output 	sr_4_0;
output 	sr_5_0;
output 	sr_6_0;
output 	sr_7_0;
output 	sr_8_0;
output 	sr_9_0;
output 	sr_10_0;
output 	sr_11_0;
output 	sr_12_0;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	_5;
input 	_6;
input 	_7;
input 	_8;
input 	_9;
input 	_10;
input 	_11;
input 	_12;
output 	sr_13_0;
input 	_13;
input 	clock;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \sr[0][0] (
	.clk(clock),
	.d(_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_0_0),
	.prn(vcc));
defparam \sr[0][0] .is_wysiwyg = "true";
defparam \sr[0][0] .power_up = "low";

dffeas \sr[0][1] (
	.clk(clock),
	.d(_1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_1_0),
	.prn(vcc));
defparam \sr[0][1] .is_wysiwyg = "true";
defparam \sr[0][1] .power_up = "low";

dffeas \sr[0][2] (
	.clk(clock),
	.d(_2),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_2_0),
	.prn(vcc));
defparam \sr[0][2] .is_wysiwyg = "true";
defparam \sr[0][2] .power_up = "low";

dffeas \sr[0][3] (
	.clk(clock),
	.d(_3),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_3_0),
	.prn(vcc));
defparam \sr[0][3] .is_wysiwyg = "true";
defparam \sr[0][3] .power_up = "low";

dffeas \sr[0][4] (
	.clk(clock),
	.d(_4),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_4_0),
	.prn(vcc));
defparam \sr[0][4] .is_wysiwyg = "true";
defparam \sr[0][4] .power_up = "low";

dffeas \sr[0][5] (
	.clk(clock),
	.d(_5),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_5_0),
	.prn(vcc));
defparam \sr[0][5] .is_wysiwyg = "true";
defparam \sr[0][5] .power_up = "low";

dffeas \sr[0][6] (
	.clk(clock),
	.d(_6),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_6_0),
	.prn(vcc));
defparam \sr[0][6] .is_wysiwyg = "true";
defparam \sr[0][6] .power_up = "low";

dffeas \sr[0][7] (
	.clk(clock),
	.d(_7),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_7_0),
	.prn(vcc));
defparam \sr[0][7] .is_wysiwyg = "true";
defparam \sr[0][7] .power_up = "low";

dffeas \sr[0][8] (
	.clk(clock),
	.d(_8),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_8_0),
	.prn(vcc));
defparam \sr[0][8] .is_wysiwyg = "true";
defparam \sr[0][8] .power_up = "low";

dffeas \sr[0][9] (
	.clk(clock),
	.d(_9),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_9_0),
	.prn(vcc));
defparam \sr[0][9] .is_wysiwyg = "true";
defparam \sr[0][9] .power_up = "low";

dffeas \sr[0][10] (
	.clk(clock),
	.d(_10),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_10_0),
	.prn(vcc));
defparam \sr[0][10] .is_wysiwyg = "true";
defparam \sr[0][10] .power_up = "low";

dffeas \sr[0][11] (
	.clk(clock),
	.d(_11),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_11_0),
	.prn(vcc));
defparam \sr[0][11] .is_wysiwyg = "true";
defparam \sr[0][11] .power_up = "low";

dffeas \sr[0][12] (
	.clk(clock),
	.d(_12),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_12_0),
	.prn(vcc));
defparam \sr[0][12] .is_wysiwyg = "true";
defparam \sr[0][12] .power_up = "low";

dffeas \sr[0][13] (
	.clk(clock),
	.d(_13),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_13_0),
	.prn(vcc));
defparam \sr[0][13] .is_wysiwyg = "true";
defparam \sr[0][13] .power_up = "low";

endmodule

module sqrt_27_dffpipe_22 (
	sr_1_0,
	sr_0_0,
	_,
	_1,
	clock,
	ena)/* synthesis synthesis_greybox=0 */;
output 	sr_1_0;
output 	sr_0_0;
input 	_;
input 	_1;
input 	clock;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \sr[0][1] (
	.clk(clock),
	.d(_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_1_0),
	.prn(vcc));
defparam \sr[0][1] .is_wysiwyg = "true";
defparam \sr[0][1] .power_up = "low";

dffeas \sr[0][0] (
	.clk(clock),
	.d(_1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_0_0),
	.prn(vcc));
defparam \sr[0][0] .is_wysiwyg = "true";
defparam \sr[0][0] .power_up = "low";

endmodule

module sqrt_27_dffpipe_25 (
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	clock,
	ena)/* synthesis synthesis_greybox=0 */;
output 	sr_0_0;
output 	sr_1_0;
output 	sr_2_0;
output 	sr_3_0;
output 	sr_4_0;
output 	sr_5_0;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	_5;
input 	clock;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \sr[0][0] (
	.clk(clock),
	.d(_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_0_0),
	.prn(vcc));
defparam \sr[0][0] .is_wysiwyg = "true";
defparam \sr[0][0] .power_up = "low";

dffeas \sr[0][1] (
	.clk(clock),
	.d(_1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_1_0),
	.prn(vcc));
defparam \sr[0][1] .is_wysiwyg = "true";
defparam \sr[0][1] .power_up = "low";

dffeas \sr[0][2] (
	.clk(clock),
	.d(_2),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_2_0),
	.prn(vcc));
defparam \sr[0][2] .is_wysiwyg = "true";
defparam \sr[0][2] .power_up = "low";

dffeas \sr[0][3] (
	.clk(clock),
	.d(_3),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_3_0),
	.prn(vcc));
defparam \sr[0][3] .is_wysiwyg = "true";
defparam \sr[0][3] .power_up = "low";

dffeas \sr[0][4] (
	.clk(clock),
	.d(_4),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_4_0),
	.prn(vcc));
defparam \sr[0][4] .is_wysiwyg = "true";
defparam \sr[0][4] .power_up = "low";

dffeas \sr[0][5] (
	.clk(clock),
	.d(_5),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_5_0),
	.prn(vcc));
defparam \sr[0][5] .is_wysiwyg = "true";
defparam \sr[0][5] .power_up = "low";

endmodule

module sqrt_27_dffpipe_27 (
	sr_0_0,
	_,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_7_0,
	_1,
	_2,
	_3,
	_4,
	_5,
	_6,
	_7,
	clock,
	ena)/* synthesis synthesis_greybox=0 */;
output 	sr_0_0;
input 	_;
output 	sr_1_0;
output 	sr_2_0;
output 	sr_3_0;
output 	sr_4_0;
output 	sr_5_0;
output 	sr_6_0;
output 	sr_7_0;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	_5;
input 	_6;
input 	_7;
input 	clock;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \sr[0][0] (
	.clk(clock),
	.d(_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_0_0),
	.prn(vcc));
defparam \sr[0][0] .is_wysiwyg = "true";
defparam \sr[0][0] .power_up = "low";

dffeas \sr[0][1] (
	.clk(clock),
	.d(_1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_1_0),
	.prn(vcc));
defparam \sr[0][1] .is_wysiwyg = "true";
defparam \sr[0][1] .power_up = "low";

dffeas \sr[0][2] (
	.clk(clock),
	.d(_2),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_2_0),
	.prn(vcc));
defparam \sr[0][2] .is_wysiwyg = "true";
defparam \sr[0][2] .power_up = "low";

dffeas \sr[0][3] (
	.clk(clock),
	.d(_3),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_3_0),
	.prn(vcc));
defparam \sr[0][3] .is_wysiwyg = "true";
defparam \sr[0][3] .power_up = "low";

dffeas \sr[0][4] (
	.clk(clock),
	.d(_4),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_4_0),
	.prn(vcc));
defparam \sr[0][4] .is_wysiwyg = "true";
defparam \sr[0][4] .power_up = "low";

dffeas \sr[0][5] (
	.clk(clock),
	.d(_5),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_5_0),
	.prn(vcc));
defparam \sr[0][5] .is_wysiwyg = "true";
defparam \sr[0][5] .power_up = "low";

dffeas \sr[0][6] (
	.clk(clock),
	.d(_6),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_6_0),
	.prn(vcc));
defparam \sr[0][6] .is_wysiwyg = "true";
defparam \sr[0][6] .power_up = "low";

dffeas \sr[0][7] (
	.clk(clock),
	.d(_7),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_7_0),
	.prn(vcc));
defparam \sr[0][7] .is_wysiwyg = "true";
defparam \sr[0][7] .power_up = "low";

endmodule

module sqrt_27_dffpipe_30 (
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	_6,
	sr_7_0,
	sr_8_0,
	sr_9_0,
	sr_10_0,
	_7,
	_8,
	_9,
	_10,
	clock,
	ena)/* synthesis synthesis_greybox=0 */;
output 	sr_0_0;
output 	sr_1_0;
output 	sr_2_0;
output 	sr_3_0;
output 	sr_4_0;
output 	sr_5_0;
output 	sr_6_0;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	_5;
input 	_6;
output 	sr_7_0;
output 	sr_8_0;
output 	sr_9_0;
output 	sr_10_0;
input 	_7;
input 	_8;
input 	_9;
input 	_10;
input 	clock;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \sr[0][0] (
	.clk(clock),
	.d(_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_0_0),
	.prn(vcc));
defparam \sr[0][0] .is_wysiwyg = "true";
defparam \sr[0][0] .power_up = "low";

dffeas \sr[0][1] (
	.clk(clock),
	.d(_1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_1_0),
	.prn(vcc));
defparam \sr[0][1] .is_wysiwyg = "true";
defparam \sr[0][1] .power_up = "low";

dffeas \sr[0][2] (
	.clk(clock),
	.d(_2),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_2_0),
	.prn(vcc));
defparam \sr[0][2] .is_wysiwyg = "true";
defparam \sr[0][2] .power_up = "low";

dffeas \sr[0][3] (
	.clk(clock),
	.d(_3),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_3_0),
	.prn(vcc));
defparam \sr[0][3] .is_wysiwyg = "true";
defparam \sr[0][3] .power_up = "low";

dffeas \sr[0][4] (
	.clk(clock),
	.d(_4),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_4_0),
	.prn(vcc));
defparam \sr[0][4] .is_wysiwyg = "true";
defparam \sr[0][4] .power_up = "low";

dffeas \sr[0][5] (
	.clk(clock),
	.d(_5),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_5_0),
	.prn(vcc));
defparam \sr[0][5] .is_wysiwyg = "true";
defparam \sr[0][5] .power_up = "low";

dffeas \sr[0][6] (
	.clk(clock),
	.d(_6),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_6_0),
	.prn(vcc));
defparam \sr[0][6] .is_wysiwyg = "true";
defparam \sr[0][6] .power_up = "low";

dffeas \sr[0][7] (
	.clk(clock),
	.d(_7),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_7_0),
	.prn(vcc));
defparam \sr[0][7] .is_wysiwyg = "true";
defparam \sr[0][7] .power_up = "low";

dffeas \sr[0][8] (
	.clk(clock),
	.d(_8),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_8_0),
	.prn(vcc));
defparam \sr[0][8] .is_wysiwyg = "true";
defparam \sr[0][8] .power_up = "low";

dffeas \sr[0][9] (
	.clk(clock),
	.d(_9),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_9_0),
	.prn(vcc));
defparam \sr[0][9] .is_wysiwyg = "true";
defparam \sr[0][9] .power_up = "low";

dffeas \sr[0][10] (
	.clk(clock),
	.d(_10),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_10_0),
	.prn(vcc));
defparam \sr[0][10] .is_wysiwyg = "true";
defparam \sr[0][10] .power_up = "low";

endmodule

module sqrt_27_lpm_add_sub_2 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_7_0,
	sr_8_0,
	sr_9_0,
	sr_6_3,
	sr_7_3,
	sr_0_01,
	sr_1_01,
	sr_2_01,
	sr_3_01,
	sr_4_01,
	sr_5_01,
	sr_6_01,
	sr_7_01,
	sr_8_01,
	sr_9_01,
	sr_10_0)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
output 	op_12;
output 	op_13;
output 	op_14;
output 	op_15;
output 	op_16;
output 	op_17;
output 	op_18;
output 	op_19;
output 	op_110;
output 	op_111;
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_3_0;
input 	sr_4_0;
input 	sr_5_0;
input 	sr_6_0;
input 	sr_7_0;
input 	sr_8_0;
input 	sr_9_0;
input 	sr_6_3;
input 	sr_7_3;
input 	sr_0_01;
input 	sr_1_01;
input 	sr_2_01;
input 	sr_3_01;
input 	sr_4_01;
input 	sr_5_01;
input 	sr_6_01;
input 	sr_7_01;
input 	sr_8_01;
input 	sr_9_01;
input 	sr_10_0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_27_add_sub_cjc auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.op_16(op_16),
	.op_17(op_17),
	.op_18(op_18),
	.op_19(op_19),
	.op_110(op_110),
	.op_111(op_111),
	.sr_0_0(sr_0_0),
	.sr_1_0(sr_1_0),
	.sr_2_0(sr_2_0),
	.sr_3_0(sr_3_0),
	.sr_4_0(sr_4_0),
	.sr_5_0(sr_5_0),
	.sr_6_0(sr_6_0),
	.sr_7_0(sr_7_0),
	.sr_8_0(sr_8_0),
	.sr_9_0(sr_9_0),
	.sr_6_3(sr_6_3),
	.sr_7_3(sr_7_3),
	.sr_0_01(sr_0_01),
	.sr_1_01(sr_1_01),
	.sr_2_01(sr_2_01),
	.sr_3_01(sr_3_01),
	.sr_4_01(sr_4_01),
	.sr_5_01(sr_5_01),
	.sr_6_01(sr_6_01),
	.sr_7_01(sr_7_01),
	.sr_8_01(sr_8_01),
	.sr_9_01(sr_9_01),
	.sr_10_0(sr_10_0));

endmodule

module sqrt_27_add_sub_cjc (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_7_0,
	sr_8_0,
	sr_9_0,
	sr_6_3,
	sr_7_3,
	sr_0_01,
	sr_1_01,
	sr_2_01,
	sr_3_01,
	sr_4_01,
	sr_5_01,
	sr_6_01,
	sr_7_01,
	sr_8_01,
	sr_9_01,
	sr_10_0)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
output 	op_12;
output 	op_13;
output 	op_14;
output 	op_15;
output 	op_16;
output 	op_17;
output 	op_18;
output 	op_19;
output 	op_110;
output 	op_111;
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_3_0;
input 	sr_4_0;
input 	sr_5_0;
input 	sr_6_0;
input 	sr_7_0;
input 	sr_8_0;
input 	sr_9_0;
input 	sr_6_3;
input 	sr_7_3;
input 	sr_0_01;
input 	sr_1_01;
input 	sr_2_01;
input 	sr_3_01;
input 	sr_4_01;
input 	sr_5_01;
input 	sr_6_01;
input 	sr_7_01;
input 	sr_8_01;
input 	sr_9_01;
input 	sr_10_0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \op_1~6 ;
wire \op_1~10 ;
wire \op_1~14 ;
wire \op_1~18 ;
wire \op_1~22 ;
wire \op_1~26 ;
wire \op_1~30 ;
wire \op_1~34 ;
wire \op_1~46 ;
wire \op_1~50 ;
wire \op_1~54 ;
wire \op_1~38_cout ;
wire \op_1~42_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~38_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_1),
	.cout(),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \op_1~1 .shared_arith = "off";

cyclonev_lcell_comb \op_1~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_7_3),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~42_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_11),
	.cout(\op_1~6 ),
	.shareout());
defparam \op_1~5 .extended_lut = "off";
defparam \op_1~5 .lut_mask = 64'h00000000000000FF;
defparam \op_1~5 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_0_01),
	.datae(gnd),
	.dataf(!sr_0_0),
	.datag(gnd),
	.cin(\op_1~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_12),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_1_01),
	.datae(gnd),
	.dataf(!sr_1_0),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_13),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_2_01),
	.datae(gnd),
	.dataf(!sr_2_0),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_14),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_3_01),
	.datae(gnd),
	.dataf(!sr_3_0),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_15),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_4_01),
	.datae(gnd),
	.dataf(!sr_4_0),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_16),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_5_01),
	.datae(gnd),
	.dataf(!sr_5_0),
	.datag(gnd),
	.cin(\op_1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_17),
	.cout(\op_1~30 ),
	.shareout());
defparam \op_1~29 .extended_lut = "off";
defparam \op_1~29 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~29 .shared_arith = "off";

cyclonev_lcell_comb \op_1~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_6_01),
	.datae(gnd),
	.dataf(!sr_6_0),
	.datag(gnd),
	.cin(\op_1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_18),
	.cout(\op_1~34 ),
	.shareout());
defparam \op_1~33 .extended_lut = "off";
defparam \op_1~33 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~33 .shared_arith = "off";

cyclonev_lcell_comb \op_1~45 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_7_01),
	.datae(gnd),
	.dataf(!sr_7_0),
	.datag(gnd),
	.cin(\op_1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_19),
	.cout(\op_1~46 ),
	.shareout());
defparam \op_1~45 .extended_lut = "off";
defparam \op_1~45 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~45 .shared_arith = "off";

cyclonev_lcell_comb \op_1~49 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_8_01),
	.datae(gnd),
	.dataf(!sr_8_0),
	.datag(gnd),
	.cin(\op_1~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_110),
	.cout(\op_1~50 ),
	.shareout());
defparam \op_1~49 .extended_lut = "off";
defparam \op_1~49 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~49 .shared_arith = "off";

cyclonev_lcell_comb \op_1~53 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_9_01),
	.datae(gnd),
	.dataf(!sr_9_0),
	.datag(gnd),
	.cin(\op_1~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_111),
	.cout(\op_1~54 ),
	.shareout());
defparam \op_1~53 .extended_lut = "off";
defparam \op_1~53 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~53 .shared_arith = "off";

cyclonev_lcell_comb \op_1~38 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_10_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~38_cout ),
	.shareout());
defparam \op_1~38 .extended_lut = "off";
defparam \op_1~38 .lut_mask = 64'h00000000000000FF;
defparam \op_1~38 .shared_arith = "off";

cyclonev_lcell_comb \op_1~42 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_6_3),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~42_cout ),
	.shareout());
defparam \op_1~42 .extended_lut = "off";
defparam \op_1~42 .lut_mask = 64'h00000000000000FF;
defparam \op_1~42 .shared_arith = "off";

endmodule

module sqrt_27_lpm_add_sub_3 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	op_119,
	op_120,
	op_121,
	op_122,
	op_123,
	op_124,
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_7_0,
	sr_8_0,
	sr_9_0,
	sr_4_3,
	sr_5_3,
	sr_6_3,
	sr_7_3,
	sr_0_01,
	sr_1_01,
	sr_2_01,
	sr_3_01,
	sr_4_01,
	sr_5_01,
	sr_6_01,
	sr_7_01,
	sr_8_01,
	sr_9_01)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
output 	op_12;
output 	op_13;
input 	op_14;
output 	op_15;
input 	op_16;
output 	op_17;
input 	op_18;
output 	op_19;
input 	op_110;
output 	op_111;
input 	op_112;
output 	op_113;
input 	op_114;
output 	op_115;
input 	op_116;
output 	op_117;
input 	op_118;
output 	op_119;
input 	op_120;
output 	op_121;
input 	op_122;
output 	op_123;
input 	op_124;
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_3_0;
input 	sr_4_0;
input 	sr_5_0;
input 	sr_6_0;
input 	sr_7_0;
input 	sr_8_0;
input 	sr_9_0;
input 	sr_4_3;
input 	sr_5_3;
input 	sr_6_3;
input 	sr_7_3;
input 	sr_0_01;
input 	sr_1_01;
input 	sr_2_01;
input 	sr_3_01;
input 	sr_4_01;
input 	sr_5_01;
input 	sr_6_01;
input 	sr_7_01;
input 	sr_8_01;
input 	sr_9_01;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_27_add_sub_djc auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.op_16(op_16),
	.op_17(op_17),
	.op_18(op_18),
	.op_19(op_19),
	.op_110(op_110),
	.op_111(op_111),
	.op_112(op_112),
	.op_113(op_113),
	.op_114(op_114),
	.op_115(op_115),
	.op_116(op_116),
	.op_117(op_117),
	.op_118(op_118),
	.op_119(op_119),
	.op_120(op_120),
	.op_121(op_121),
	.op_122(op_122),
	.op_123(op_123),
	.op_124(op_124),
	.sr_0_0(sr_0_0),
	.sr_1_0(sr_1_0),
	.sr_2_0(sr_2_0),
	.sr_3_0(sr_3_0),
	.sr_4_0(sr_4_0),
	.sr_5_0(sr_5_0),
	.sr_6_0(sr_6_0),
	.sr_7_0(sr_7_0),
	.sr_8_0(sr_8_0),
	.sr_9_0(sr_9_0),
	.sr_4_3(sr_4_3),
	.sr_5_3(sr_5_3),
	.sr_6_3(sr_6_3),
	.sr_7_3(sr_7_3),
	.sr_0_01(sr_0_01),
	.sr_1_01(sr_1_01),
	.sr_2_01(sr_2_01),
	.sr_3_01(sr_3_01),
	.sr_4_01(sr_4_01),
	.sr_5_01(sr_5_01),
	.sr_6_01(sr_6_01),
	.sr_7_01(sr_7_01),
	.sr_8_01(sr_8_01),
	.sr_9_01(sr_9_01));

endmodule

module sqrt_27_add_sub_djc (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	op_119,
	op_120,
	op_121,
	op_122,
	op_123,
	op_124,
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_7_0,
	sr_8_0,
	sr_9_0,
	sr_4_3,
	sr_5_3,
	sr_6_3,
	sr_7_3,
	sr_0_01,
	sr_1_01,
	sr_2_01,
	sr_3_01,
	sr_4_01,
	sr_5_01,
	sr_6_01,
	sr_7_01,
	sr_8_01,
	sr_9_01)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
output 	op_12;
output 	op_13;
input 	op_14;
output 	op_15;
input 	op_16;
output 	op_17;
input 	op_18;
output 	op_19;
input 	op_110;
output 	op_111;
input 	op_112;
output 	op_113;
input 	op_114;
output 	op_115;
input 	op_116;
output 	op_117;
input 	op_118;
output 	op_119;
input 	op_120;
output 	op_121;
input 	op_122;
output 	op_123;
input 	op_124;
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_3_0;
input 	sr_4_0;
input 	sr_5_0;
input 	sr_6_0;
input 	sr_7_0;
input 	sr_8_0;
input 	sr_9_0;
input 	sr_4_3;
input 	sr_5_3;
input 	sr_6_3;
input 	sr_7_3;
input 	sr_0_01;
input 	sr_1_01;
input 	sr_2_01;
input 	sr_3_01;
input 	sr_4_01;
input 	sr_5_01;
input 	sr_6_01;
input 	sr_7_01;
input 	sr_8_01;
input 	sr_9_01;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \op_1~6 ;
wire \op_1~10 ;
wire \op_1~14 ;
wire \op_1~18 ;
wire \op_1~22 ;
wire \op_1~26 ;
wire \op_1~30 ;
wire \op_1~34 ;
wire \op_1~38 ;
wire \op_1~42 ;
wire \op_1~54 ;
wire \op_1~58 ;
wire \op_1~46_cout ;
wire \op_1~50_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~46_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_1),
	.cout(),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \op_1~1 .shared_arith = "off";

cyclonev_lcell_comb \op_1~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_5_3),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~50_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_12),
	.cout(\op_1~6 ),
	.shareout());
defparam \op_1~5 .extended_lut = "off";
defparam \op_1~5 .lut_mask = 64'h00000000000000FF;
defparam \op_1~5 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_6_3),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_13),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_7_3),
	.datad(!op_14),
	.datae(gnd),
	.dataf(!sr_0_0),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_15),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_0_01),
	.datad(!op_16),
	.datae(gnd),
	.dataf(!sr_1_0),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_17),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_1_01),
	.datad(!op_18),
	.datae(gnd),
	.dataf(!sr_2_0),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_19),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_2_01),
	.datad(!op_110),
	.datae(gnd),
	.dataf(!sr_3_0),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_111),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~29 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_3_01),
	.datad(!op_112),
	.datae(gnd),
	.dataf(!sr_4_0),
	.datag(gnd),
	.cin(\op_1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_113),
	.cout(\op_1~30 ),
	.shareout());
defparam \op_1~29 .extended_lut = "off";
defparam \op_1~29 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~29 .shared_arith = "off";

cyclonev_lcell_comb \op_1~33 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_4_01),
	.datad(!op_114),
	.datae(gnd),
	.dataf(!sr_5_0),
	.datag(gnd),
	.cin(\op_1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_115),
	.cout(\op_1~34 ),
	.shareout());
defparam \op_1~33 .extended_lut = "off";
defparam \op_1~33 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~33 .shared_arith = "off";

cyclonev_lcell_comb \op_1~37 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_5_01),
	.datad(!op_116),
	.datae(gnd),
	.dataf(!sr_6_0),
	.datag(gnd),
	.cin(\op_1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_117),
	.cout(\op_1~38 ),
	.shareout());
defparam \op_1~37 .extended_lut = "off";
defparam \op_1~37 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~37 .shared_arith = "off";

cyclonev_lcell_comb \op_1~41 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_6_01),
	.datad(!op_118),
	.datae(gnd),
	.dataf(!sr_7_0),
	.datag(gnd),
	.cin(\op_1~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_119),
	.cout(\op_1~42 ),
	.shareout());
defparam \op_1~41 .extended_lut = "off";
defparam \op_1~41 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~41 .shared_arith = "off";

cyclonev_lcell_comb \op_1~53 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_7_01),
	.datad(!op_120),
	.datae(gnd),
	.dataf(!sr_8_0),
	.datag(gnd),
	.cin(\op_1~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_121),
	.cout(\op_1~54 ),
	.shareout());
defparam \op_1~53 .extended_lut = "off";
defparam \op_1~53 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~53 .shared_arith = "off";

cyclonev_lcell_comb \op_1~57 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_8_01),
	.datad(!op_122),
	.datae(gnd),
	.dataf(!sr_9_0),
	.datag(gnd),
	.cin(\op_1~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_123),
	.cout(\op_1~58 ),
	.shareout());
defparam \op_1~57 .extended_lut = "off";
defparam \op_1~57 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~57 .shared_arith = "off";

cyclonev_lcell_comb \op_1~46 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_9_01),
	.datad(!op_124),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~46_cout ),
	.shareout());
defparam \op_1~46 .extended_lut = "off";
defparam \op_1~46 .lut_mask = 64'h00000000000005AF;
defparam \op_1~46 .shared_arith = "off";

cyclonev_lcell_comb \op_1~50 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_4_3),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~50_cout ),
	.shareout());
defparam \op_1~50 .extended_lut = "off";
defparam \op_1~50 .lut_mask = 64'h00000000000000FF;
defparam \op_1~50 .shared_arith = "off";

endmodule

module sqrt_27_lpm_add_sub_4 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	op_119,
	op_120,
	op_121,
	op_122,
	op_123,
	op_124,
	op_125,
	op_126,
	op_127,
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_7_0,
	sr_8_0,
	sr_9_0,
	sr_2_3,
	sr_3_3,
	sr_4_3,
	sr_5_3,
	sr_6_3,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	_6,
	_7,
	_8,
	_9)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
output 	op_13;
output 	op_14;
input 	op_15;
output 	op_16;
input 	op_17;
output 	op_18;
input 	op_19;
output 	op_110;
input 	op_111;
output 	op_112;
input 	op_113;
output 	op_114;
input 	op_115;
output 	op_116;
input 	op_117;
output 	op_118;
input 	op_119;
output 	op_120;
input 	op_121;
output 	op_122;
input 	op_123;
output 	op_124;
input 	op_125;
output 	op_126;
input 	op_127;
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_3_0;
input 	sr_4_0;
input 	sr_5_0;
input 	sr_6_0;
input 	sr_7_0;
input 	sr_8_0;
input 	sr_9_0;
input 	sr_2_3;
input 	sr_3_3;
input 	sr_4_3;
input 	sr_5_3;
input 	sr_6_3;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	_5;
input 	_6;
input 	_7;
input 	_8;
input 	_9;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_27_add_sub_ejc auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.op_16(op_16),
	.op_17(op_17),
	.op_18(op_18),
	.op_19(op_19),
	.op_110(op_110),
	.op_111(op_111),
	.op_112(op_112),
	.op_113(op_113),
	.op_114(op_114),
	.op_115(op_115),
	.op_116(op_116),
	.op_117(op_117),
	.op_118(op_118),
	.op_119(op_119),
	.op_120(op_120),
	.op_121(op_121),
	.op_122(op_122),
	.op_123(op_123),
	.op_124(op_124),
	.op_125(op_125),
	.op_126(op_126),
	.op_127(op_127),
	.sr_0_0(sr_0_0),
	.sr_1_0(sr_1_0),
	.sr_2_0(sr_2_0),
	.sr_3_0(sr_3_0),
	.sr_4_0(sr_4_0),
	.sr_5_0(sr_5_0),
	.sr_6_0(sr_6_0),
	.sr_7_0(sr_7_0),
	.sr_8_0(sr_8_0),
	.sr_9_0(sr_9_0),
	.sr_2_3(sr_2_3),
	.sr_3_3(sr_3_3),
	.sr_4_3(sr_4_3),
	.sr_5_3(sr_5_3),
	.sr_6_3(sr_6_3),
	._(_),
	._1(_1),
	._2(_2),
	._3(_3),
	._4(_4),
	._5(_5),
	._6(_6),
	._7(_7),
	._8(_8),
	._9(_9));

endmodule

module sqrt_27_add_sub_ejc (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	op_119,
	op_120,
	op_121,
	op_122,
	op_123,
	op_124,
	op_125,
	op_126,
	op_127,
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_7_0,
	sr_8_0,
	sr_9_0,
	sr_2_3,
	sr_3_3,
	sr_4_3,
	sr_5_3,
	sr_6_3,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	_6,
	_7,
	_8,
	_9)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
output 	op_13;
output 	op_14;
input 	op_15;
output 	op_16;
input 	op_17;
output 	op_18;
input 	op_19;
output 	op_110;
input 	op_111;
output 	op_112;
input 	op_113;
output 	op_114;
input 	op_115;
output 	op_116;
input 	op_117;
output 	op_118;
input 	op_119;
output 	op_120;
input 	op_121;
output 	op_122;
input 	op_123;
output 	op_124;
input 	op_125;
output 	op_126;
input 	op_127;
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_3_0;
input 	sr_4_0;
input 	sr_5_0;
input 	sr_6_0;
input 	sr_7_0;
input 	sr_8_0;
input 	sr_9_0;
input 	sr_2_3;
input 	sr_3_3;
input 	sr_4_3;
input 	sr_5_3;
input 	sr_6_3;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	_5;
input 	_6;
input 	_7;
input 	_8;
input 	_9;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \op_1~6 ;
wire \op_1~10 ;
wire \op_1~14 ;
wire \op_1~18 ;
wire \op_1~22 ;
wire \op_1~26 ;
wire \op_1~30 ;
wire \op_1~34 ;
wire \op_1~38 ;
wire \op_1~42 ;
wire \op_1~46 ;
wire \op_1~50 ;
wire \op_1~62 ;
wire \op_1~54_cout ;
wire \op_1~58_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~54_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_1),
	.cout(),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \op_1~1 .shared_arith = "off";

cyclonev_lcell_comb \op_1~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_3_3),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~58_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_13),
	.cout(\op_1~6 ),
	.shareout());
defparam \op_1~5 .extended_lut = "off";
defparam \op_1~5 .lut_mask = 64'h00000000000000FF;
defparam \op_1~5 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_4_3),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_14),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_5_3),
	.datad(!op_15),
	.datae(gnd),
	.dataf(!op_12),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_16),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_11),
	.datab(!sr_6_3),
	.datac(!op_12),
	.datad(!op_17),
	.datae(gnd),
	.dataf(!sr_0_0),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_18),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h000000FF000041EB;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_),
	.datad(!op_19),
	.datae(gnd),
	.dataf(!sr_1_0),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_110),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_1),
	.datad(!op_111),
	.datae(gnd),
	.dataf(!sr_2_0),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_112),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~29 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_2),
	.datad(!op_113),
	.datae(gnd),
	.dataf(!sr_3_0),
	.datag(gnd),
	.cin(\op_1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_114),
	.cout(\op_1~30 ),
	.shareout());
defparam \op_1~29 .extended_lut = "off";
defparam \op_1~29 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~29 .shared_arith = "off";

cyclonev_lcell_comb \op_1~33 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_3),
	.datad(!op_115),
	.datae(gnd),
	.dataf(!sr_4_0),
	.datag(gnd),
	.cin(\op_1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_116),
	.cout(\op_1~34 ),
	.shareout());
defparam \op_1~33 .extended_lut = "off";
defparam \op_1~33 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~33 .shared_arith = "off";

cyclonev_lcell_comb \op_1~37 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_4),
	.datad(!op_117),
	.datae(gnd),
	.dataf(!sr_5_0),
	.datag(gnd),
	.cin(\op_1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_118),
	.cout(\op_1~38 ),
	.shareout());
defparam \op_1~37 .extended_lut = "off";
defparam \op_1~37 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~37 .shared_arith = "off";

cyclonev_lcell_comb \op_1~41 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_5),
	.datad(!op_119),
	.datae(gnd),
	.dataf(!sr_6_0),
	.datag(gnd),
	.cin(\op_1~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_120),
	.cout(\op_1~42 ),
	.shareout());
defparam \op_1~41 .extended_lut = "off";
defparam \op_1~41 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~41 .shared_arith = "off";

cyclonev_lcell_comb \op_1~45 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_6),
	.datad(!op_121),
	.datae(gnd),
	.dataf(!sr_7_0),
	.datag(gnd),
	.cin(\op_1~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_122),
	.cout(\op_1~46 ),
	.shareout());
defparam \op_1~45 .extended_lut = "off";
defparam \op_1~45 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~45 .shared_arith = "off";

cyclonev_lcell_comb \op_1~49 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_7),
	.datad(!op_123),
	.datae(gnd),
	.dataf(!sr_8_0),
	.datag(gnd),
	.cin(\op_1~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_124),
	.cout(\op_1~50 ),
	.shareout());
defparam \op_1~49 .extended_lut = "off";
defparam \op_1~49 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~49 .shared_arith = "off";

cyclonev_lcell_comb \op_1~61 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_8),
	.datad(!op_125),
	.datae(gnd),
	.dataf(!sr_9_0),
	.datag(gnd),
	.cin(\op_1~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_126),
	.cout(\op_1~62 ),
	.shareout());
defparam \op_1~61 .extended_lut = "off";
defparam \op_1~61 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~61 .shared_arith = "off";

cyclonev_lcell_comb \op_1~54 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_9),
	.datad(!op_127),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~54_cout ),
	.shareout());
defparam \op_1~54 .extended_lut = "off";
defparam \op_1~54 .lut_mask = 64'h00000000000005AF;
defparam \op_1~54 .shared_arith = "off";

cyclonev_lcell_comb \op_1~58 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_2_3),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~58_cout ),
	.shareout());
defparam \op_1~58 .extended_lut = "off";
defparam \op_1~58 .lut_mask = 64'h00000000000000FF;
defparam \op_1~58 .shared_arith = "off";

endmodule

module sqrt_27_lpm_add_sub_5 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_7_0,
	sr_8_0,
	sr_9_0,
	sr_10_0,
	sr_11_0,
	sr_12_0,
	sr_0_4,
	sr_1_4,
	sr_0_01,
	sr_1_01,
	sr_2_01,
	sr_3_01,
	sr_4_01,
	sr_5_01,
	sr_6_01,
	sr_7_01,
	sr_8_01,
	sr_9_01,
	sr_10_01,
	sr_11_01,
	sr_12_01,
	sr_13_0)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
output 	op_12;
output 	op_13;
output 	op_14;
output 	op_15;
output 	op_16;
output 	op_17;
output 	op_18;
output 	op_19;
output 	op_110;
output 	op_111;
output 	op_112;
output 	op_113;
output 	op_114;
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_3_0;
input 	sr_4_0;
input 	sr_5_0;
input 	sr_6_0;
input 	sr_7_0;
input 	sr_8_0;
input 	sr_9_0;
input 	sr_10_0;
input 	sr_11_0;
input 	sr_12_0;
input 	sr_0_4;
input 	sr_1_4;
input 	sr_0_01;
input 	sr_1_01;
input 	sr_2_01;
input 	sr_3_01;
input 	sr_4_01;
input 	sr_5_01;
input 	sr_6_01;
input 	sr_7_01;
input 	sr_8_01;
input 	sr_9_01;
input 	sr_10_01;
input 	sr_11_01;
input 	sr_12_01;
input 	sr_13_0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_27_add_sub_fjc auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.op_16(op_16),
	.op_17(op_17),
	.op_18(op_18),
	.op_19(op_19),
	.op_110(op_110),
	.op_111(op_111),
	.op_112(op_112),
	.op_113(op_113),
	.op_114(op_114),
	.sr_0_0(sr_0_0),
	.sr_1_0(sr_1_0),
	.sr_2_0(sr_2_0),
	.sr_3_0(sr_3_0),
	.sr_4_0(sr_4_0),
	.sr_5_0(sr_5_0),
	.sr_6_0(sr_6_0),
	.sr_7_0(sr_7_0),
	.sr_8_0(sr_8_0),
	.sr_9_0(sr_9_0),
	.sr_10_0(sr_10_0),
	.sr_11_0(sr_11_0),
	.sr_12_0(sr_12_0),
	.sr_0_4(sr_0_4),
	.sr_1_4(sr_1_4),
	.sr_0_01(sr_0_01),
	.sr_1_01(sr_1_01),
	.sr_2_01(sr_2_01),
	.sr_3_01(sr_3_01),
	.sr_4_01(sr_4_01),
	.sr_5_01(sr_5_01),
	.sr_6_01(sr_6_01),
	.sr_7_01(sr_7_01),
	.sr_8_01(sr_8_01),
	.sr_9_01(sr_9_01),
	.sr_10_01(sr_10_01),
	.sr_11_01(sr_11_01),
	.sr_12_01(sr_12_01),
	.sr_13_0(sr_13_0));

endmodule

module sqrt_27_add_sub_fjc (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_7_0,
	sr_8_0,
	sr_9_0,
	sr_10_0,
	sr_11_0,
	sr_12_0,
	sr_0_4,
	sr_1_4,
	sr_0_01,
	sr_1_01,
	sr_2_01,
	sr_3_01,
	sr_4_01,
	sr_5_01,
	sr_6_01,
	sr_7_01,
	sr_8_01,
	sr_9_01,
	sr_10_01,
	sr_11_01,
	sr_12_01,
	sr_13_0)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
output 	op_12;
output 	op_13;
output 	op_14;
output 	op_15;
output 	op_16;
output 	op_17;
output 	op_18;
output 	op_19;
output 	op_110;
output 	op_111;
output 	op_112;
output 	op_113;
output 	op_114;
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_3_0;
input 	sr_4_0;
input 	sr_5_0;
input 	sr_6_0;
input 	sr_7_0;
input 	sr_8_0;
input 	sr_9_0;
input 	sr_10_0;
input 	sr_11_0;
input 	sr_12_0;
input 	sr_0_4;
input 	sr_1_4;
input 	sr_0_01;
input 	sr_1_01;
input 	sr_2_01;
input 	sr_3_01;
input 	sr_4_01;
input 	sr_5_01;
input 	sr_6_01;
input 	sr_7_01;
input 	sr_8_01;
input 	sr_9_01;
input 	sr_10_01;
input 	sr_11_01;
input 	sr_12_01;
input 	sr_13_0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \op_1~6 ;
wire \op_1~10 ;
wire \op_1~14 ;
wire \op_1~18 ;
wire \op_1~22 ;
wire \op_1~26 ;
wire \op_1~30 ;
wire \op_1~34 ;
wire \op_1~38 ;
wire \op_1~42 ;
wire \op_1~46 ;
wire \op_1~50 ;
wire \op_1~54 ;
wire \op_1~58 ;
wire \op_1~62_cout ;
wire \op_1~66_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~62_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_1),
	.cout(),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \op_1~1 .shared_arith = "off";

cyclonev_lcell_comb \op_1~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_1_4),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~66_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_11),
	.cout(\op_1~6 ),
	.shareout());
defparam \op_1~5 .extended_lut = "off";
defparam \op_1~5 .lut_mask = 64'h00000000000000FF;
defparam \op_1~5 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_0_01),
	.datae(gnd),
	.dataf(!sr_0_0),
	.datag(gnd),
	.cin(\op_1~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_12),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_1_01),
	.datae(gnd),
	.dataf(!sr_1_0),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_13),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_2_01),
	.datae(gnd),
	.dataf(!sr_2_0),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_14),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_3_01),
	.datae(gnd),
	.dataf(!sr_3_0),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_15),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_4_01),
	.datae(gnd),
	.dataf(!sr_4_0),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_16),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_5_01),
	.datae(gnd),
	.dataf(!sr_5_0),
	.datag(gnd),
	.cin(\op_1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_17),
	.cout(\op_1~30 ),
	.shareout());
defparam \op_1~29 .extended_lut = "off";
defparam \op_1~29 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~29 .shared_arith = "off";

cyclonev_lcell_comb \op_1~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_6_01),
	.datae(gnd),
	.dataf(!sr_6_0),
	.datag(gnd),
	.cin(\op_1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_18),
	.cout(\op_1~34 ),
	.shareout());
defparam \op_1~33 .extended_lut = "off";
defparam \op_1~33 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~33 .shared_arith = "off";

cyclonev_lcell_comb \op_1~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_7_01),
	.datae(gnd),
	.dataf(!sr_7_0),
	.datag(gnd),
	.cin(\op_1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_19),
	.cout(\op_1~38 ),
	.shareout());
defparam \op_1~37 .extended_lut = "off";
defparam \op_1~37 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~37 .shared_arith = "off";

cyclonev_lcell_comb \op_1~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_8_01),
	.datae(gnd),
	.dataf(!sr_8_0),
	.datag(gnd),
	.cin(\op_1~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_110),
	.cout(\op_1~42 ),
	.shareout());
defparam \op_1~41 .extended_lut = "off";
defparam \op_1~41 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~41 .shared_arith = "off";

cyclonev_lcell_comb \op_1~45 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_9_01),
	.datae(gnd),
	.dataf(!sr_9_0),
	.datag(gnd),
	.cin(\op_1~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_111),
	.cout(\op_1~46 ),
	.shareout());
defparam \op_1~45 .extended_lut = "off";
defparam \op_1~45 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~45 .shared_arith = "off";

cyclonev_lcell_comb \op_1~49 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_10_01),
	.datae(gnd),
	.dataf(!sr_10_0),
	.datag(gnd),
	.cin(\op_1~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_112),
	.cout(\op_1~50 ),
	.shareout());
defparam \op_1~49 .extended_lut = "off";
defparam \op_1~49 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~49 .shared_arith = "off";

cyclonev_lcell_comb \op_1~53 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_11_01),
	.datae(gnd),
	.dataf(!sr_11_0),
	.datag(gnd),
	.cin(\op_1~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_113),
	.cout(\op_1~54 ),
	.shareout());
defparam \op_1~53 .extended_lut = "off";
defparam \op_1~53 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~53 .shared_arith = "off";

cyclonev_lcell_comb \op_1~57 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_12_01),
	.datae(gnd),
	.dataf(!sr_12_0),
	.datag(gnd),
	.cin(\op_1~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_114),
	.cout(\op_1~58 ),
	.shareout());
defparam \op_1~57 .extended_lut = "off";
defparam \op_1~57 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~57 .shared_arith = "off";

cyclonev_lcell_comb \op_1~62 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_13_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~62_cout ),
	.shareout());
defparam \op_1~62 .extended_lut = "off";
defparam \op_1~62 .lut_mask = 64'h00000000000000FF;
defparam \op_1~62 .shared_arith = "off";

cyclonev_lcell_comb \op_1~66 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_0_4),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~66_cout ),
	.shareout());
defparam \op_1~66 .extended_lut = "off";
defparam \op_1~66 .lut_mask = 64'h00000000000000FF;
defparam \op_1~66 .shared_arith = "off";

endmodule

module sqrt_27_lpm_add_sub_6 (
	op_1,
	radical_26,
	radical_25,
	radical_24)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	radical_26;
input 	radical_25;
input 	radical_24;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_27_add_sub_shc auto_generated(
	.op_1(op_1),
	.radical_26(radical_26),
	.radical_25(radical_25),
	.radical_24(radical_24));

endmodule

module sqrt_27_add_sub_shc (
	op_1,
	radical_26,
	radical_25,
	radical_24)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	radical_26;
input 	radical_25;
input 	radical_24;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



cyclonev_lcell_comb \op_1~0 (
	.dataa(!radical_26),
	.datab(!radical_25),
	.datac(!radical_24),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(op_1),
	.sumout(),
	.cout(),
	.shareout());
defparam \op_1~0 .extended_lut = "off";
defparam \op_1~0 .lut_mask = 64'h2A2A2A2A2A2A2A2A;
defparam \op_1~0 .shared_arith = "off";

endmodule

module sqrt_27_lpm_add_sub_7 (
	sr_1_0,
	sr_1_01,
	sr_0_0,
	sr_0_01,
	sr_23_0,
	sr_22_0,
	op_1,
	op_11,
	op_12)/* synthesis synthesis_greybox=0 */;
input 	sr_1_0;
input 	sr_1_01;
input 	sr_0_0;
input 	sr_0_01;
input 	sr_23_0;
input 	sr_22_0;
output 	op_1;
output 	op_11;
output 	op_12;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_27_add_sub_thc auto_generated(
	.sr_1_0(sr_1_0),
	.sr_1_01(sr_1_01),
	.sr_0_0(sr_0_0),
	.sr_0_01(sr_0_01),
	.sr_23_0(sr_23_0),
	.sr_22_0(sr_22_0),
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12));

endmodule

module sqrt_27_add_sub_thc (
	sr_1_0,
	sr_1_01,
	sr_0_0,
	sr_0_01,
	sr_23_0,
	sr_22_0,
	op_1,
	op_11,
	op_12)/* synthesis synthesis_greybox=0 */;
input 	sr_1_0;
input 	sr_1_01;
input 	sr_0_0;
input 	sr_0_01;
input 	sr_23_0;
input 	sr_22_0;
output 	op_1;
output 	op_11;
output 	op_12;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \op_1~0_combout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(!sr_1_0),
	.datab(!sr_1_01),
	.datac(!\op_1~0_combout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(op_1),
	.sumout(),
	.cout(),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'hB2B2B2B2B2B2B2B2;
defparam \op_1~1 .shared_arith = "off";

cyclonev_lcell_comb \op_1~2 (
	.dataa(!sr_0_0),
	.datab(!sr_0_01),
	.datac(!sr_23_0),
	.datad(!sr_22_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(op_11),
	.sumout(),
	.cout(),
	.shareout());
defparam \op_1~2 .extended_lut = "off";
defparam \op_1~2 .lut_mask = 64'h6999699969996999;
defparam \op_1~2 .shared_arith = "off";

cyclonev_lcell_comb \op_1~3 (
	.dataa(!sr_1_0),
	.datab(!sr_1_01),
	.datac(!\op_1~0_combout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(op_12),
	.sumout(),
	.cout(),
	.shareout());
defparam \op_1~3 .extended_lut = "off";
defparam \op_1~3 .lut_mask = 64'h9696969696969696;
defparam \op_1~3 .shared_arith = "off";

cyclonev_lcell_comb \op_1~0 (
	.dataa(!sr_0_0),
	.datab(!sr_0_01),
	.datac(!sr_23_0),
	.datad(!sr_22_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\op_1~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \op_1~0 .extended_lut = "off";
defparam \op_1~0 .lut_mask = 64'hD444D444D444D444;
defparam \op_1~0 .shared_arith = "off";

endmodule

module sqrt_27_lpm_add_sub_8 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	sr_1_0,
	sr_1_01,
	sr_0_0,
	sr_0_01,
	sr_23_0,
	sr_22_0,
	op_15,
	sr_20_0,
	sr_21_0,
	op_16,
	op_17)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
output 	op_12;
output 	op_13;
output 	op_14;
input 	sr_1_0;
input 	sr_1_01;
input 	sr_0_0;
input 	sr_0_01;
input 	sr_23_0;
input 	sr_22_0;
input 	op_15;
input 	sr_20_0;
input 	sr_21_0;
input 	op_16;
input 	op_17;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_27_add_sub_uhc auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.sr_1_0(sr_1_0),
	.sr_1_01(sr_1_01),
	.sr_0_0(sr_0_0),
	.sr_0_01(sr_0_01),
	.sr_23_0(sr_23_0),
	.sr_22_0(sr_22_0),
	.op_15(op_15),
	.sr_20_0(sr_20_0),
	.sr_21_0(sr_21_0),
	.op_16(op_16),
	.op_17(op_17));

endmodule

module sqrt_27_add_sub_uhc (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	sr_1_0,
	sr_1_01,
	sr_0_0,
	sr_0_01,
	sr_23_0,
	sr_22_0,
	op_15,
	sr_20_0,
	sr_21_0,
	op_16,
	op_17)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
output 	op_12;
output 	op_13;
output 	op_14;
input 	sr_1_0;
input 	sr_1_01;
input 	sr_0_0;
input 	sr_0_01;
input 	sr_23_0;
input 	sr_22_0;
input 	op_15;
input 	sr_20_0;
input 	sr_21_0;
input 	op_16;
input 	op_17;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \op_1~10 ;
wire \op_1~14 ;
wire \op_1~18 ;
wire \op_1~22 ;
wire \op_1~6_cout ;
wire \op_1~26_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~6_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_1),
	.cout(),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \op_1~1 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_21_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~26_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_11),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h00000000000000FF;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_15),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(!sr_22_0),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_12),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000AA550000AAAA;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_15),
	.datab(gnd),
	.datac(!sr_22_0),
	.datad(!sr_23_0),
	.datae(gnd),
	.dataf(!sr_0_0),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_13),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h000000FF000050AF;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!op_15),
	.datab(gnd),
	.datac(!sr_0_01),
	.datad(!op_16),
	.datae(gnd),
	.dataf(!sr_1_0),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_14),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h000000FF00005F0A;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~6 (
	.dataa(!op_15),
	.datab(gnd),
	.datac(!sr_1_01),
	.datad(!op_17),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~6_cout ),
	.shareout());
defparam \op_1~6 .extended_lut = "off";
defparam \op_1~6 .lut_mask = 64'h0000000000005F0A;
defparam \op_1~6 .shared_arith = "off";

cyclonev_lcell_comb \op_1~26 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_20_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~26_cout ),
	.shareout());
defparam \op_1~26 .extended_lut = "off";
defparam \op_1~26 .lut_mask = 64'h00000000000000FF;
defparam \op_1~26 .shared_arith = "off";

endmodule

module sqrt_27_lpm_add_sub_9 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	sr_1_0,
	sr_0_0,
	sr_22_0,
	op_111,
	sr_18_0,
	sr_19_0,
	sr_20_0,
	sr_21_0,
	_,
	_1)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
output 	op_12;
output 	op_13;
input 	op_14;
output 	op_15;
input 	op_16;
output 	op_17;
input 	op_18;
output 	op_19;
input 	op_110;
input 	sr_1_0;
input 	sr_0_0;
input 	sr_22_0;
input 	op_111;
input 	sr_18_0;
input 	sr_19_0;
input 	sr_20_0;
input 	sr_21_0;
input 	_;
input 	_1;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_27_add_sub_vhc auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.op_16(op_16),
	.op_17(op_17),
	.op_18(op_18),
	.op_19(op_19),
	.op_110(op_110),
	.sr_1_0(sr_1_0),
	.sr_0_0(sr_0_0),
	.sr_22_0(sr_22_0),
	.op_111(op_111),
	.sr_18_0(sr_18_0),
	.sr_19_0(sr_19_0),
	.sr_20_0(sr_20_0),
	.sr_21_0(sr_21_0),
	._(_),
	._1(_1));

endmodule

module sqrt_27_add_sub_vhc (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	sr_1_0,
	sr_0_0,
	sr_22_0,
	op_111,
	sr_18_0,
	sr_19_0,
	sr_20_0,
	sr_21_0,
	_,
	_1)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
output 	op_12;
output 	op_13;
input 	op_14;
output 	op_15;
input 	op_16;
output 	op_17;
input 	op_18;
output 	op_19;
input 	op_110;
input 	sr_1_0;
input 	sr_0_0;
input 	sr_22_0;
input 	op_111;
input 	sr_18_0;
input 	sr_19_0;
input 	sr_20_0;
input 	sr_21_0;
input 	_;
input 	_1;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \op_1~10 ;
wire \op_1~14 ;
wire \op_1~18 ;
wire \op_1~22 ;
wire \op_1~26 ;
wire \op_1~6_cout ;
wire \op_1~30_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~6_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_1),
	.cout(),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \op_1~1 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_19_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~30_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_12),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h00000000000000FF;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_20_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_13),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_21_0),
	.datad(!op_111),
	.datae(gnd),
	.dataf(!op_14),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_15),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h0000FA500000FF00;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!op_11),
	.datab(!sr_22_0),
	.datac(!op_111),
	.datad(!op_16),
	.datae(gnd),
	.dataf(!sr_0_0),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_17),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h000000FF000014BE;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_),
	.datad(!op_18),
	.datae(gnd),
	.dataf(!sr_1_0),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_19),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~6 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_1),
	.datad(!op_110),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~6_cout ),
	.shareout());
defparam \op_1~6 .extended_lut = "off";
defparam \op_1~6 .lut_mask = 64'h00000000000005AF;
defparam \op_1~6 .shared_arith = "off";

cyclonev_lcell_comb \op_1~30 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_18_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~30_cout ),
	.shareout());
defparam \op_1~30 .extended_lut = "off";
defparam \op_1~30 .lut_mask = 64'h00000000000000FF;
defparam \op_1~30 .shared_arith = "off";

endmodule

module sqrt_27_lpm_add_sub_10 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_16_1,
	sr_17_1,
	sr_0_01,
	sr_1_01,
	sr_2_01,
	sr_3_01,
	sr_4_01,
	sr_5_0)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
output 	op_12;
output 	op_13;
output 	op_14;
output 	op_15;
output 	op_16;
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_3_0;
input 	sr_4_0;
input 	sr_16_1;
input 	sr_17_1;
input 	sr_0_01;
input 	sr_1_01;
input 	sr_2_01;
input 	sr_3_01;
input 	sr_4_01;
input 	sr_5_0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_27_add_sub_0ic auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.op_16(op_16),
	.sr_0_0(sr_0_0),
	.sr_1_0(sr_1_0),
	.sr_2_0(sr_2_0),
	.sr_3_0(sr_3_0),
	.sr_4_0(sr_4_0),
	.sr_16_1(sr_16_1),
	.sr_17_1(sr_17_1),
	.sr_0_01(sr_0_01),
	.sr_1_01(sr_1_01),
	.sr_2_01(sr_2_01),
	.sr_3_01(sr_3_01),
	.sr_4_01(sr_4_01),
	.sr_5_0(sr_5_0));

endmodule

module sqrt_27_add_sub_0ic (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_16_1,
	sr_17_1,
	sr_0_01,
	sr_1_01,
	sr_2_01,
	sr_3_01,
	sr_4_01,
	sr_5_0)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
output 	op_12;
output 	op_13;
output 	op_14;
output 	op_15;
output 	op_16;
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_3_0;
input 	sr_4_0;
input 	sr_16_1;
input 	sr_17_1;
input 	sr_0_01;
input 	sr_1_01;
input 	sr_2_01;
input 	sr_3_01;
input 	sr_4_01;
input 	sr_5_0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \op_1~10 ;
wire \op_1~14 ;
wire \op_1~18 ;
wire \op_1~22 ;
wire \op_1~26 ;
wire \op_1~30 ;
wire \op_1~6_cout ;
wire \op_1~34_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~6_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_1),
	.cout(),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \op_1~1 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_17_1),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~34_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_11),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h00000000000000FF;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_0_01),
	.datae(gnd),
	.dataf(!sr_0_0),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_12),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_1_01),
	.datae(gnd),
	.dataf(!sr_1_0),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_13),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_2_01),
	.datae(gnd),
	.dataf(!sr_2_0),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_14),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_3_01),
	.datae(gnd),
	.dataf(!sr_3_0),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_15),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_4_01),
	.datae(gnd),
	.dataf(!sr_4_0),
	.datag(gnd),
	.cin(\op_1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_16),
	.cout(\op_1~30 ),
	.shareout());
defparam \op_1~29 .extended_lut = "off";
defparam \op_1~29 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~29 .shared_arith = "off";

cyclonev_lcell_comb \op_1~6 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_5_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~6_cout ),
	.shareout());
defparam \op_1~6 .extended_lut = "off";
defparam \op_1~6 .lut_mask = 64'h00000000000000FF;
defparam \op_1~6 .shared_arith = "off";

cyclonev_lcell_comb \op_1~34 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_16_1),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~34_cout ),
	.shareout());
defparam \op_1~34 .extended_lut = "off";
defparam \op_1~34 .lut_mask = 64'h00000000000000FF;
defparam \op_1~34 .shared_arith = "off";

endmodule

module sqrt_27_lpm_add_sub_11 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_14_1,
	sr_15_1,
	sr_16_1,
	sr_17_1,
	sr_0_01,
	sr_1_01,
	sr_2_01,
	sr_3_01,
	sr_4_01)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
output 	op_12;
output 	op_13;
input 	op_14;
output 	op_15;
input 	op_16;
output 	op_17;
input 	op_18;
output 	op_19;
input 	op_110;
output 	op_111;
input 	op_112;
output 	op_113;
input 	op_114;
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_3_0;
input 	sr_4_0;
input 	sr_14_1;
input 	sr_15_1;
input 	sr_16_1;
input 	sr_17_1;
input 	sr_0_01;
input 	sr_1_01;
input 	sr_2_01;
input 	sr_3_01;
input 	sr_4_01;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_27_add_sub_1ic auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.op_16(op_16),
	.op_17(op_17),
	.op_18(op_18),
	.op_19(op_19),
	.op_110(op_110),
	.op_111(op_111),
	.op_112(op_112),
	.op_113(op_113),
	.op_114(op_114),
	.sr_0_0(sr_0_0),
	.sr_1_0(sr_1_0),
	.sr_2_0(sr_2_0),
	.sr_3_0(sr_3_0),
	.sr_4_0(sr_4_0),
	.sr_14_1(sr_14_1),
	.sr_15_1(sr_15_1),
	.sr_16_1(sr_16_1),
	.sr_17_1(sr_17_1),
	.sr_0_01(sr_0_01),
	.sr_1_01(sr_1_01),
	.sr_2_01(sr_2_01),
	.sr_3_01(sr_3_01),
	.sr_4_01(sr_4_01));

endmodule

module sqrt_27_add_sub_1ic (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_14_1,
	sr_15_1,
	sr_16_1,
	sr_17_1,
	sr_0_01,
	sr_1_01,
	sr_2_01,
	sr_3_01,
	sr_4_01)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
output 	op_12;
output 	op_13;
input 	op_14;
output 	op_15;
input 	op_16;
output 	op_17;
input 	op_18;
output 	op_19;
input 	op_110;
output 	op_111;
input 	op_112;
output 	op_113;
input 	op_114;
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_3_0;
input 	sr_4_0;
input 	sr_14_1;
input 	sr_15_1;
input 	sr_16_1;
input 	sr_17_1;
input 	sr_0_01;
input 	sr_1_01;
input 	sr_2_01;
input 	sr_3_01;
input 	sr_4_01;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \op_1~10 ;
wire \op_1~14 ;
wire \op_1~18 ;
wire \op_1~22 ;
wire \op_1~26 ;
wire \op_1~30 ;
wire \op_1~34 ;
wire \op_1~6_cout ;
wire \op_1~38_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~6_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_1),
	.cout(),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \op_1~1 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_15_1),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~38_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_12),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h00000000000000FF;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_16_1),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_13),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_17_1),
	.datad(!op_14),
	.datae(gnd),
	.dataf(!sr_0_0),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_15),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_0_01),
	.datad(!op_16),
	.datae(gnd),
	.dataf(!sr_1_0),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_17),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_1_01),
	.datad(!op_18),
	.datae(gnd),
	.dataf(!sr_2_0),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_19),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~29 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_2_01),
	.datad(!op_110),
	.datae(gnd),
	.dataf(!sr_3_0),
	.datag(gnd),
	.cin(\op_1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_111),
	.cout(\op_1~30 ),
	.shareout());
defparam \op_1~29 .extended_lut = "off";
defparam \op_1~29 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~29 .shared_arith = "off";

cyclonev_lcell_comb \op_1~33 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_3_01),
	.datad(!op_112),
	.datae(gnd),
	.dataf(!sr_4_0),
	.datag(gnd),
	.cin(\op_1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_113),
	.cout(\op_1~34 ),
	.shareout());
defparam \op_1~33 .extended_lut = "off";
defparam \op_1~33 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~33 .shared_arith = "off";

cyclonev_lcell_comb \op_1~6 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_4_01),
	.datad(!op_114),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~6_cout ),
	.shareout());
defparam \op_1~6 .extended_lut = "off";
defparam \op_1~6 .lut_mask = 64'h00000000000005AF;
defparam \op_1~6 .shared_arith = "off";

cyclonev_lcell_comb \op_1~38 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_14_1),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~38_cout ),
	.shareout());
defparam \op_1~38 .extended_lut = "off";
defparam \op_1~38 .lut_mask = 64'h00000000000000FF;
defparam \op_1~38 .shared_arith = "off";

endmodule

module sqrt_27_lpm_add_sub_12 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_12_2,
	sr_13_2,
	sr_0_01,
	sr_1_01,
	sr_2_01,
	sr_3_01,
	sr_4_01,
	sr_5_01,
	sr_6_01,
	sr_7_0)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
output 	op_12;
output 	op_13;
output 	op_14;
output 	op_15;
output 	op_16;
output 	op_17;
output 	op_18;
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_3_0;
input 	sr_4_0;
input 	sr_5_0;
input 	sr_6_0;
input 	sr_12_2;
input 	sr_13_2;
input 	sr_0_01;
input 	sr_1_01;
input 	sr_2_01;
input 	sr_3_01;
input 	sr_4_01;
input 	sr_5_01;
input 	sr_6_01;
input 	sr_7_0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_27_add_sub_9jc auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.op_16(op_16),
	.op_17(op_17),
	.op_18(op_18),
	.sr_0_0(sr_0_0),
	.sr_1_0(sr_1_0),
	.sr_2_0(sr_2_0),
	.sr_3_0(sr_3_0),
	.sr_4_0(sr_4_0),
	.sr_5_0(sr_5_0),
	.sr_6_0(sr_6_0),
	.sr_12_2(sr_12_2),
	.sr_13_2(sr_13_2),
	.sr_0_01(sr_0_01),
	.sr_1_01(sr_1_01),
	.sr_2_01(sr_2_01),
	.sr_3_01(sr_3_01),
	.sr_4_01(sr_4_01),
	.sr_5_01(sr_5_01),
	.sr_6_01(sr_6_01),
	.sr_7_0(sr_7_0));

endmodule

module sqrt_27_add_sub_9jc (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_12_2,
	sr_13_2,
	sr_0_01,
	sr_1_01,
	sr_2_01,
	sr_3_01,
	sr_4_01,
	sr_5_01,
	sr_6_01,
	sr_7_0)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
output 	op_12;
output 	op_13;
output 	op_14;
output 	op_15;
output 	op_16;
output 	op_17;
output 	op_18;
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_3_0;
input 	sr_4_0;
input 	sr_5_0;
input 	sr_6_0;
input 	sr_12_2;
input 	sr_13_2;
input 	sr_0_01;
input 	sr_1_01;
input 	sr_2_01;
input 	sr_3_01;
input 	sr_4_01;
input 	sr_5_01;
input 	sr_6_01;
input 	sr_7_0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \op_1~6 ;
wire \op_1~10 ;
wire \op_1~22 ;
wire \op_1~26 ;
wire \op_1~30 ;
wire \op_1~34 ;
wire \op_1~38 ;
wire \op_1~42 ;
wire \op_1~14_cout ;
wire \op_1~18_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~14_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_1),
	.cout(),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \op_1~1 .shared_arith = "off";

cyclonev_lcell_comb \op_1~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_13_2),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~18_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_11),
	.cout(\op_1~6 ),
	.shareout());
defparam \op_1~5 .extended_lut = "off";
defparam \op_1~5 .lut_mask = 64'h00000000000000FF;
defparam \op_1~5 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_0_01),
	.datae(gnd),
	.dataf(!sr_0_0),
	.datag(gnd),
	.cin(\op_1~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_12),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_1_01),
	.datae(gnd),
	.dataf(!sr_1_0),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_13),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_2_01),
	.datae(gnd),
	.dataf(!sr_2_0),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_14),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_3_01),
	.datae(gnd),
	.dataf(!sr_3_0),
	.datag(gnd),
	.cin(\op_1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_15),
	.cout(\op_1~30 ),
	.shareout());
defparam \op_1~29 .extended_lut = "off";
defparam \op_1~29 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~29 .shared_arith = "off";

cyclonev_lcell_comb \op_1~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_4_01),
	.datae(gnd),
	.dataf(!sr_4_0),
	.datag(gnd),
	.cin(\op_1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_16),
	.cout(\op_1~34 ),
	.shareout());
defparam \op_1~33 .extended_lut = "off";
defparam \op_1~33 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~33 .shared_arith = "off";

cyclonev_lcell_comb \op_1~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_5_01),
	.datae(gnd),
	.dataf(!sr_5_0),
	.datag(gnd),
	.cin(\op_1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_17),
	.cout(\op_1~38 ),
	.shareout());
defparam \op_1~37 .extended_lut = "off";
defparam \op_1~37 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~37 .shared_arith = "off";

cyclonev_lcell_comb \op_1~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_6_01),
	.datae(gnd),
	.dataf(!sr_6_0),
	.datag(gnd),
	.cin(\op_1~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_18),
	.cout(\op_1~42 ),
	.shareout());
defparam \op_1~41 .extended_lut = "off";
defparam \op_1~41 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~41 .shared_arith = "off";

cyclonev_lcell_comb \op_1~14 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_7_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~14_cout ),
	.shareout());
defparam \op_1~14 .extended_lut = "off";
defparam \op_1~14 .lut_mask = 64'h00000000000000FF;
defparam \op_1~14 .shared_arith = "off";

cyclonev_lcell_comb \op_1~18 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_12_2),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~18_cout ),
	.shareout());
defparam \op_1~18 .extended_lut = "off";
defparam \op_1~18 .lut_mask = 64'h00000000000000FF;
defparam \op_1~18 .shared_arith = "off";

endmodule

module sqrt_27_lpm_add_sub_13 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_10_2,
	sr_11_2,
	sr_12_2,
	sr_13_2,
	sr_0_01,
	sr_1_01,
	sr_2_01,
	sr_3_01,
	sr_4_01,
	sr_5_01,
	sr_6_01)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
output 	op_12;
output 	op_13;
input 	op_14;
output 	op_15;
input 	op_16;
output 	op_17;
input 	op_18;
output 	op_19;
input 	op_110;
output 	op_111;
input 	op_112;
output 	op_113;
input 	op_114;
output 	op_115;
input 	op_116;
output 	op_117;
input 	op_118;
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_3_0;
input 	sr_4_0;
input 	sr_5_0;
input 	sr_6_0;
input 	sr_10_2;
input 	sr_11_2;
input 	sr_12_2;
input 	sr_13_2;
input 	sr_0_01;
input 	sr_1_01;
input 	sr_2_01;
input 	sr_3_01;
input 	sr_4_01;
input 	sr_5_01;
input 	sr_6_01;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_27_add_sub_ajc auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.op_16(op_16),
	.op_17(op_17),
	.op_18(op_18),
	.op_19(op_19),
	.op_110(op_110),
	.op_111(op_111),
	.op_112(op_112),
	.op_113(op_113),
	.op_114(op_114),
	.op_115(op_115),
	.op_116(op_116),
	.op_117(op_117),
	.op_118(op_118),
	.sr_0_0(sr_0_0),
	.sr_1_0(sr_1_0),
	.sr_2_0(sr_2_0),
	.sr_3_0(sr_3_0),
	.sr_4_0(sr_4_0),
	.sr_5_0(sr_5_0),
	.sr_6_0(sr_6_0),
	.sr_10_2(sr_10_2),
	.sr_11_2(sr_11_2),
	.sr_12_2(sr_12_2),
	.sr_13_2(sr_13_2),
	.sr_0_01(sr_0_01),
	.sr_1_01(sr_1_01),
	.sr_2_01(sr_2_01),
	.sr_3_01(sr_3_01),
	.sr_4_01(sr_4_01),
	.sr_5_01(sr_5_01),
	.sr_6_01(sr_6_01));

endmodule

module sqrt_27_add_sub_ajc (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_10_2,
	sr_11_2,
	sr_12_2,
	sr_13_2,
	sr_0_01,
	sr_1_01,
	sr_2_01,
	sr_3_01,
	sr_4_01,
	sr_5_01,
	sr_6_01)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
output 	op_12;
output 	op_13;
input 	op_14;
output 	op_15;
input 	op_16;
output 	op_17;
input 	op_18;
output 	op_19;
input 	op_110;
output 	op_111;
input 	op_112;
output 	op_113;
input 	op_114;
output 	op_115;
input 	op_116;
output 	op_117;
input 	op_118;
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_3_0;
input 	sr_4_0;
input 	sr_5_0;
input 	sr_6_0;
input 	sr_10_2;
input 	sr_11_2;
input 	sr_12_2;
input 	sr_13_2;
input 	sr_0_01;
input 	sr_1_01;
input 	sr_2_01;
input 	sr_3_01;
input 	sr_4_01;
input 	sr_5_01;
input 	sr_6_01;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \op_1~6 ;
wire \op_1~10 ;
wire \op_1~14 ;
wire \op_1~18 ;
wire \op_1~30 ;
wire \op_1~34 ;
wire \op_1~38 ;
wire \op_1~42 ;
wire \op_1~46 ;
wire \op_1~22_cout ;
wire \op_1~26_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~22_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_1),
	.cout(),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \op_1~1 .shared_arith = "off";

cyclonev_lcell_comb \op_1~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_11_2),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~26_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_12),
	.cout(\op_1~6 ),
	.shareout());
defparam \op_1~5 .extended_lut = "off";
defparam \op_1~5 .lut_mask = 64'h00000000000000FF;
defparam \op_1~5 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_12_2),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_13),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_13_2),
	.datad(!op_14),
	.datae(gnd),
	.dataf(!sr_0_0),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_15),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_0_01),
	.datad(!op_16),
	.datae(gnd),
	.dataf(!sr_1_0),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_17),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~29 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_1_01),
	.datad(!op_18),
	.datae(gnd),
	.dataf(!sr_2_0),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_19),
	.cout(\op_1~30 ),
	.shareout());
defparam \op_1~29 .extended_lut = "off";
defparam \op_1~29 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~29 .shared_arith = "off";

cyclonev_lcell_comb \op_1~33 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_2_01),
	.datad(!op_110),
	.datae(gnd),
	.dataf(!sr_3_0),
	.datag(gnd),
	.cin(\op_1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_111),
	.cout(\op_1~34 ),
	.shareout());
defparam \op_1~33 .extended_lut = "off";
defparam \op_1~33 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~33 .shared_arith = "off";

cyclonev_lcell_comb \op_1~37 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_3_01),
	.datad(!op_112),
	.datae(gnd),
	.dataf(!sr_4_0),
	.datag(gnd),
	.cin(\op_1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_113),
	.cout(\op_1~38 ),
	.shareout());
defparam \op_1~37 .extended_lut = "off";
defparam \op_1~37 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~37 .shared_arith = "off";

cyclonev_lcell_comb \op_1~41 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_4_01),
	.datad(!op_114),
	.datae(gnd),
	.dataf(!sr_5_0),
	.datag(gnd),
	.cin(\op_1~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_115),
	.cout(\op_1~42 ),
	.shareout());
defparam \op_1~41 .extended_lut = "off";
defparam \op_1~41 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~41 .shared_arith = "off";

cyclonev_lcell_comb \op_1~45 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_5_01),
	.datad(!op_116),
	.datae(gnd),
	.dataf(!sr_6_0),
	.datag(gnd),
	.cin(\op_1~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_117),
	.cout(\op_1~46 ),
	.shareout());
defparam \op_1~45 .extended_lut = "off";
defparam \op_1~45 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~45 .shared_arith = "off";

cyclonev_lcell_comb \op_1~22 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_6_01),
	.datad(!op_118),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~22_cout ),
	.shareout());
defparam \op_1~22 .extended_lut = "off";
defparam \op_1~22 .lut_mask = 64'h00000000000005AF;
defparam \op_1~22 .shared_arith = "off";

cyclonev_lcell_comb \op_1~26 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_10_2),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~26_cout ),
	.shareout());
defparam \op_1~26 .extended_lut = "off";
defparam \op_1~26 .lut_mask = 64'h00000000000000FF;
defparam \op_1~26 .shared_arith = "off";

endmodule

module sqrt_27_lpm_add_sub_14 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	op_119,
	op_120,
	op_121,
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_8_2,
	sr_9_2,
	sr_10_2,
	sr_11_2,
	sr_12_2,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	_6)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
output 	op_13;
output 	op_14;
input 	op_15;
output 	op_16;
input 	op_17;
output 	op_18;
input 	op_19;
output 	op_110;
input 	op_111;
output 	op_112;
input 	op_113;
output 	op_114;
input 	op_115;
output 	op_116;
input 	op_117;
output 	op_118;
input 	op_119;
output 	op_120;
input 	op_121;
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_3_0;
input 	sr_4_0;
input 	sr_5_0;
input 	sr_6_0;
input 	sr_8_2;
input 	sr_9_2;
input 	sr_10_2;
input 	sr_11_2;
input 	sr_12_2;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	_5;
input 	_6;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_27_add_sub_bjc auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.op_16(op_16),
	.op_17(op_17),
	.op_18(op_18),
	.op_19(op_19),
	.op_110(op_110),
	.op_111(op_111),
	.op_112(op_112),
	.op_113(op_113),
	.op_114(op_114),
	.op_115(op_115),
	.op_116(op_116),
	.op_117(op_117),
	.op_118(op_118),
	.op_119(op_119),
	.op_120(op_120),
	.op_121(op_121),
	.sr_0_0(sr_0_0),
	.sr_1_0(sr_1_0),
	.sr_2_0(sr_2_0),
	.sr_3_0(sr_3_0),
	.sr_4_0(sr_4_0),
	.sr_5_0(sr_5_0),
	.sr_6_0(sr_6_0),
	.sr_8_2(sr_8_2),
	.sr_9_2(sr_9_2),
	.sr_10_2(sr_10_2),
	.sr_11_2(sr_11_2),
	.sr_12_2(sr_12_2),
	._(_),
	._1(_1),
	._2(_2),
	._3(_3),
	._4(_4),
	._5(_5),
	._6(_6));

endmodule

module sqrt_27_add_sub_bjc (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	op_119,
	op_120,
	op_121,
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_8_2,
	sr_9_2,
	sr_10_2,
	sr_11_2,
	sr_12_2,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	_6)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
output 	op_13;
output 	op_14;
input 	op_15;
output 	op_16;
input 	op_17;
output 	op_18;
input 	op_19;
output 	op_110;
input 	op_111;
output 	op_112;
input 	op_113;
output 	op_114;
input 	op_115;
output 	op_116;
input 	op_117;
output 	op_118;
input 	op_119;
output 	op_120;
input 	op_121;
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_3_0;
input 	sr_4_0;
input 	sr_5_0;
input 	sr_6_0;
input 	sr_8_2;
input 	sr_9_2;
input 	sr_10_2;
input 	sr_11_2;
input 	sr_12_2;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	_5;
input 	_6;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \op_1~6 ;
wire \op_1~10 ;
wire \op_1~14 ;
wire \op_1~18 ;
wire \op_1~22 ;
wire \op_1~26 ;
wire \op_1~38 ;
wire \op_1~42 ;
wire \op_1~46 ;
wire \op_1~50 ;
wire \op_1~30_cout ;
wire \op_1~34_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~30_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_1),
	.cout(),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \op_1~1 .shared_arith = "off";

cyclonev_lcell_comb \op_1~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_9_2),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~34_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_13),
	.cout(\op_1~6 ),
	.shareout());
defparam \op_1~5 .extended_lut = "off";
defparam \op_1~5 .lut_mask = 64'h00000000000000FF;
defparam \op_1~5 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_10_2),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_14),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_11_2),
	.datad(!op_15),
	.datae(gnd),
	.dataf(!op_12),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_16),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_11),
	.datab(!sr_12_2),
	.datac(!op_12),
	.datad(!op_17),
	.datae(gnd),
	.dataf(!sr_0_0),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_18),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h000000FF000041EB;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_),
	.datad(!op_19),
	.datae(gnd),
	.dataf(!sr_1_0),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_110),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_1),
	.datad(!op_111),
	.datae(gnd),
	.dataf(!sr_2_0),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_112),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~37 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_2),
	.datad(!op_113),
	.datae(gnd),
	.dataf(!sr_3_0),
	.datag(gnd),
	.cin(\op_1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_114),
	.cout(\op_1~38 ),
	.shareout());
defparam \op_1~37 .extended_lut = "off";
defparam \op_1~37 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~37 .shared_arith = "off";

cyclonev_lcell_comb \op_1~41 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_3),
	.datad(!op_115),
	.datae(gnd),
	.dataf(!sr_4_0),
	.datag(gnd),
	.cin(\op_1~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_116),
	.cout(\op_1~42 ),
	.shareout());
defparam \op_1~41 .extended_lut = "off";
defparam \op_1~41 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~41 .shared_arith = "off";

cyclonev_lcell_comb \op_1~45 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_4),
	.datad(!op_117),
	.datae(gnd),
	.dataf(!sr_5_0),
	.datag(gnd),
	.cin(\op_1~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_118),
	.cout(\op_1~46 ),
	.shareout());
defparam \op_1~45 .extended_lut = "off";
defparam \op_1~45 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~45 .shared_arith = "off";

cyclonev_lcell_comb \op_1~49 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_5),
	.datad(!op_119),
	.datae(gnd),
	.dataf(!sr_6_0),
	.datag(gnd),
	.cin(\op_1~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_120),
	.cout(\op_1~50 ),
	.shareout());
defparam \op_1~49 .extended_lut = "off";
defparam \op_1~49 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~49 .shared_arith = "off";

cyclonev_lcell_comb \op_1~30 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_6),
	.datad(!op_121),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~30_cout ),
	.shareout());
defparam \op_1~30 .extended_lut = "off";
defparam \op_1~30 .lut_mask = 64'h00000000000005AF;
defparam \op_1~30 .shared_arith = "off";

cyclonev_lcell_comb \op_1~34 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_8_2),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~34_cout ),
	.shareout());
defparam \op_1~34 .extended_lut = "off";
defparam \op_1~34 .lut_mask = 64'h00000000000000FF;
defparam \op_1~34 .shared_arith = "off";

endmodule

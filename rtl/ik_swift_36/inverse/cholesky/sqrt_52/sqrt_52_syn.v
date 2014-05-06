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

// DATE "05/06/2014 10:52:37"

// 
// Device: Altera 5CGXFC7C7F23C8 Package FBGA484
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module sqrt_52 (
	clk,
	ena,
	radical,
	q,
	remainder)/* synthesis synthesis_greybox=0 */;
input 	clk;
input 	ena;
input 	[51:0] radical;
output 	[25:0] q;
output 	[26:0] remainder;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \ALTSQRT_component|subtractors[25]|auto_generated|op_1~1_sumout ;
wire \ALTSQRT_component|subtractors[24]|auto_generated|op_1~1_sumout ;
wire \ALTSQRT_component|b_dffe[23]|sr[0][0]~q ;
wire \ALTSQRT_component|b_dffe[23]|sr[0][1]~q ;
wire \ALTSQRT_component|b_dffe[23]|sr[0][2]~q ;
wire \ALTSQRT_component|b_dffe[23]|sr[0][3]~q ;
wire \ALTSQRT_component|b_dffe[23]|sr[0][4]~q ;
wire \ALTSQRT_component|b_dffe[23]|sr[0][5]~q ;
wire \ALTSQRT_component|b_dffe[23]|sr[0][6]~q ;
wire \ALTSQRT_component|b_dffe[23]|sr[0][7]~q ;
wire \ALTSQRT_component|b_dffe[23]|sr[0][8]~q ;
wire \ALTSQRT_component|b_dffe[23]|sr[0][9]~q ;
wire \ALTSQRT_component|b_dffe[23]|sr[0][10]~q ;
wire \ALTSQRT_component|b_dffe[23]|sr[0][11]~q ;
wire \ALTSQRT_component|b_dffe[23]|sr[0][12]~q ;
wire \ALTSQRT_component|b_dffe[23]|sr[0][13]~q ;
wire \ALTSQRT_component|b_dffe[23]|sr[0][14]~q ;
wire \ALTSQRT_component|b_dffe[23]|sr[0][15]~q ;
wire \ALTSQRT_component|b_dffe[23]|sr[0][16]~q ;
wire \ALTSQRT_component|b_dffe[23]|sr[0][17]~q ;
wire \ALTSQRT_component|b_dffe[23]|sr[0][18]~q ;
wire \ALTSQRT_component|b_dffe[23]|sr[0][19]~q ;
wire \ALTSQRT_component|b_dffe[23]|sr[0][20]~q ;
wire \ALTSQRT_component|b_dffe[23]|sr[0][21]~q ;
wire \ALTSQRT_component|b_dffe[23]|sr[0][22]~q ;
wire \ALTSQRT_component|b_dffe[23]|sr[0][23]~q ;
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
wire \ALTSQRT_component|_~15_combout ;
wire \ALTSQRT_component|_~16_combout ;
wire \ALTSQRT_component|_~17_combout ;
wire \ALTSQRT_component|_~18_combout ;
wire \ALTSQRT_component|_~19_combout ;
wire \ALTSQRT_component|_~20_combout ;
wire \ALTSQRT_component|_~21_combout ;
wire \ALTSQRT_component|_~22_combout ;
wire \ALTSQRT_component|_~23_combout ;
wire \ALTSQRT_component|_~24_combout ;
wire \ALTSQRT_component|_~25_combout ;
wire \ALTSQRT_component|_~26_combout ;
wire \clk~input_o ;
wire \ena~input_o ;
wire \radical[50]~input_o ;
wire \radical[48]~input_o ;
wire \radical[49]~input_o ;
wire \radical[51]~input_o ;
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
wire \radical[22]~input_o ;
wire \radical[23]~input_o ;
wire \radical[24]~input_o ;
wire \radical[25]~input_o ;
wire \radical[26]~input_o ;
wire \radical[27]~input_o ;
wire \radical[28]~input_o ;
wire \radical[29]~input_o ;
wire \radical[30]~input_o ;
wire \radical[31]~input_o ;
wire \radical[32]~input_o ;
wire \radical[33]~input_o ;
wire \radical[34]~input_o ;
wire \radical[35]~input_o ;
wire \radical[36]~input_o ;
wire \radical[37]~input_o ;
wire \radical[38]~input_o ;
wire \radical[39]~input_o ;
wire \radical[40]~input_o ;
wire \radical[41]~input_o ;
wire \radical[42]~input_o ;
wire \radical[43]~input_o ;
wire \radical[44]~input_o ;
wire \radical[45]~input_o ;
wire \radical[46]~input_o ;
wire \radical[47]~input_o ;


sqrt_52_altsqrt_1 ALTSQRT_component(
	.op_1(\ALTSQRT_component|subtractors[25]|auto_generated|op_1~1_sumout ),
	.op_11(\ALTSQRT_component|subtractors[24]|auto_generated|op_1~1_sumout ),
	.sr_0_0(\ALTSQRT_component|b_dffe[23]|sr[0][0]~q ),
	.sr_1_0(\ALTSQRT_component|b_dffe[23]|sr[0][1]~q ),
	.sr_2_0(\ALTSQRT_component|b_dffe[23]|sr[0][2]~q ),
	.sr_3_0(\ALTSQRT_component|b_dffe[23]|sr[0][3]~q ),
	.sr_4_0(\ALTSQRT_component|b_dffe[23]|sr[0][4]~q ),
	.sr_5_0(\ALTSQRT_component|b_dffe[23]|sr[0][5]~q ),
	.sr_6_0(\ALTSQRT_component|b_dffe[23]|sr[0][6]~q ),
	.sr_7_0(\ALTSQRT_component|b_dffe[23]|sr[0][7]~q ),
	.sr_8_0(\ALTSQRT_component|b_dffe[23]|sr[0][8]~q ),
	.sr_9_0(\ALTSQRT_component|b_dffe[23]|sr[0][9]~q ),
	.sr_10_0(\ALTSQRT_component|b_dffe[23]|sr[0][10]~q ),
	.sr_11_0(\ALTSQRT_component|b_dffe[23]|sr[0][11]~q ),
	.sr_12_0(\ALTSQRT_component|b_dffe[23]|sr[0][12]~q ),
	.sr_13_0(\ALTSQRT_component|b_dffe[23]|sr[0][13]~q ),
	.sr_14_0(\ALTSQRT_component|b_dffe[23]|sr[0][14]~q ),
	.sr_15_0(\ALTSQRT_component|b_dffe[23]|sr[0][15]~q ),
	.sr_16_0(\ALTSQRT_component|b_dffe[23]|sr[0][16]~q ),
	.sr_17_0(\ALTSQRT_component|b_dffe[23]|sr[0][17]~q ),
	.sr_18_0(\ALTSQRT_component|b_dffe[23]|sr[0][18]~q ),
	.sr_19_0(\ALTSQRT_component|b_dffe[23]|sr[0][19]~q ),
	.sr_20_0(\ALTSQRT_component|b_dffe[23]|sr[0][20]~q ),
	.sr_21_0(\ALTSQRT_component|b_dffe[23]|sr[0][21]~q ),
	.sr_22_0(\ALTSQRT_component|b_dffe[23]|sr[0][22]~q ),
	.sr_23_0(\ALTSQRT_component|b_dffe[23]|sr[0][23]~q ),
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
	._15(\ALTSQRT_component|_~15_combout ),
	._16(\ALTSQRT_component|_~16_combout ),
	._17(\ALTSQRT_component|_~17_combout ),
	._18(\ALTSQRT_component|_~18_combout ),
	._19(\ALTSQRT_component|_~19_combout ),
	._20(\ALTSQRT_component|_~20_combout ),
	._21(\ALTSQRT_component|_~21_combout ),
	._22(\ALTSQRT_component|_~22_combout ),
	._23(\ALTSQRT_component|_~23_combout ),
	._24(\ALTSQRT_component|_~24_combout ),
	._25(\ALTSQRT_component|_~25_combout ),
	._26(\ALTSQRT_component|_~26_combout ),
	.clk(\clk~input_o ),
	.ena(\ena~input_o ),
	.radical_50(\radical[50]~input_o ),
	.radical_48(\radical[48]~input_o ),
	.radical_49(\radical[49]~input_o ),
	.radical_51(\radical[51]~input_o ),
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
	.radical_21(\radical[21]~input_o ),
	.radical_22(\radical[22]~input_o ),
	.radical_23(\radical[23]~input_o ),
	.radical_24(\radical[24]~input_o ),
	.radical_25(\radical[25]~input_o ),
	.radical_26(\radical[26]~input_o ),
	.radical_27(\radical[27]~input_o ),
	.radical_28(\radical[28]~input_o ),
	.radical_29(\radical[29]~input_o ),
	.radical_30(\radical[30]~input_o ),
	.radical_31(\radical[31]~input_o ),
	.radical_32(\radical[32]~input_o ),
	.radical_33(\radical[33]~input_o ),
	.radical_34(\radical[34]~input_o ),
	.radical_35(\radical[35]~input_o ),
	.radical_36(\radical[36]~input_o ),
	.radical_37(\radical[37]~input_o ),
	.radical_38(\radical[38]~input_o ),
	.radical_39(\radical[39]~input_o ),
	.radical_40(\radical[40]~input_o ),
	.radical_41(\radical[41]~input_o ),
	.radical_42(\radical[42]~input_o ),
	.radical_43(\radical[43]~input_o ),
	.radical_44(\radical[44]~input_o ),
	.radical_45(\radical[45]~input_o ),
	.radical_46(\radical[46]~input_o ),
	.radical_47(\radical[47]~input_o ));

assign \clk~input_o  = clk;

assign \ena~input_o  = ena;

assign \radical[50]~input_o  = radical[50];

assign \radical[48]~input_o  = radical[48];

assign \radical[49]~input_o  = radical[49];

assign \radical[51]~input_o  = radical[51];

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

assign \radical[22]~input_o  = radical[22];

assign \radical[23]~input_o  = radical[23];

assign \radical[24]~input_o  = radical[24];

assign \radical[25]~input_o  = radical[25];

assign \radical[26]~input_o  = radical[26];

assign \radical[27]~input_o  = radical[27];

assign \radical[28]~input_o  = radical[28];

assign \radical[29]~input_o  = radical[29];

assign \radical[30]~input_o  = radical[30];

assign \radical[31]~input_o  = radical[31];

assign \radical[32]~input_o  = radical[32];

assign \radical[33]~input_o  = radical[33];

assign \radical[34]~input_o  = radical[34];

assign \radical[35]~input_o  = radical[35];

assign \radical[36]~input_o  = radical[36];

assign \radical[37]~input_o  = radical[37];

assign \radical[38]~input_o  = radical[38];

assign \radical[39]~input_o  = radical[39];

assign \radical[40]~input_o  = radical[40];

assign \radical[41]~input_o  = radical[41];

assign \radical[42]~input_o  = radical[42];

assign \radical[43]~input_o  = radical[43];

assign \radical[44]~input_o  = radical[44];

assign \radical[45]~input_o  = radical[45];

assign \radical[46]~input_o  = radical[46];

assign \radical[47]~input_o  = radical[47];

assign q[0] = ~ \ALTSQRT_component|subtractors[25]|auto_generated|op_1~1_sumout ;

assign q[1] = ~ \ALTSQRT_component|subtractors[24]|auto_generated|op_1~1_sumout ;

assign q[2] = \ALTSQRT_component|b_dffe[23]|sr[0][0]~q ;

assign q[3] = \ALTSQRT_component|b_dffe[23]|sr[0][1]~q ;

assign q[4] = \ALTSQRT_component|b_dffe[23]|sr[0][2]~q ;

assign q[5] = \ALTSQRT_component|b_dffe[23]|sr[0][3]~q ;

assign q[6] = \ALTSQRT_component|b_dffe[23]|sr[0][4]~q ;

assign q[7] = \ALTSQRT_component|b_dffe[23]|sr[0][5]~q ;

assign q[8] = \ALTSQRT_component|b_dffe[23]|sr[0][6]~q ;

assign q[9] = \ALTSQRT_component|b_dffe[23]|sr[0][7]~q ;

assign q[10] = \ALTSQRT_component|b_dffe[23]|sr[0][8]~q ;

assign q[11] = \ALTSQRT_component|b_dffe[23]|sr[0][9]~q ;

assign q[12] = \ALTSQRT_component|b_dffe[23]|sr[0][10]~q ;

assign q[13] = \ALTSQRT_component|b_dffe[23]|sr[0][11]~q ;

assign q[14] = \ALTSQRT_component|b_dffe[23]|sr[0][12]~q ;

assign q[15] = \ALTSQRT_component|b_dffe[23]|sr[0][13]~q ;

assign q[16] = \ALTSQRT_component|b_dffe[23]|sr[0][14]~q ;

assign q[17] = \ALTSQRT_component|b_dffe[23]|sr[0][15]~q ;

assign q[18] = \ALTSQRT_component|b_dffe[23]|sr[0][16]~q ;

assign q[19] = \ALTSQRT_component|b_dffe[23]|sr[0][17]~q ;

assign q[20] = \ALTSQRT_component|b_dffe[23]|sr[0][18]~q ;

assign q[21] = \ALTSQRT_component|b_dffe[23]|sr[0][19]~q ;

assign q[22] = \ALTSQRT_component|b_dffe[23]|sr[0][20]~q ;

assign q[23] = \ALTSQRT_component|b_dffe[23]|sr[0][21]~q ;

assign q[24] = \ALTSQRT_component|b_dffe[23]|sr[0][22]~q ;

assign q[25] = \ALTSQRT_component|b_dffe[23]|sr[0][23]~q ;

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

assign remainder[15] = \ALTSQRT_component|_~15_combout ;

assign remainder[16] = \ALTSQRT_component|_~16_combout ;

assign remainder[17] = \ALTSQRT_component|_~17_combout ;

assign remainder[18] = \ALTSQRT_component|_~18_combout ;

assign remainder[19] = \ALTSQRT_component|_~19_combout ;

assign remainder[20] = \ALTSQRT_component|_~20_combout ;

assign remainder[21] = \ALTSQRT_component|_~21_combout ;

assign remainder[22] = \ALTSQRT_component|_~22_combout ;

assign remainder[23] = \ALTSQRT_component|_~23_combout ;

assign remainder[24] = \ALTSQRT_component|_~24_combout ;

assign remainder[25] = \ALTSQRT_component|_~25_combout ;

assign remainder[26] = \ALTSQRT_component|_~26_combout ;

endmodule

module sqrt_52_altsqrt_1 (
	op_1,
	op_11,
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
	sr_13_0,
	sr_14_0,
	sr_15_0,
	sr_16_0,
	sr_17_0,
	sr_18_0,
	sr_19_0,
	sr_20_0,
	sr_21_0,
	sr_22_0,
	sr_23_0,
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
	_15,
	_16,
	_17,
	_18,
	_19,
	_20,
	_21,
	_22,
	_23,
	_24,
	_25,
	_26,
	clk,
	ena,
	radical_50,
	radical_48,
	radical_49,
	radical_51,
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
	radical_21,
	radical_22,
	radical_23,
	radical_24,
	radical_25,
	radical_26,
	radical_27,
	radical_28,
	radical_29,
	radical_30,
	radical_31,
	radical_32,
	radical_33,
	radical_34,
	radical_35,
	radical_36,
	radical_37,
	radical_38,
	radical_39,
	radical_40,
	radical_41,
	radical_42,
	radical_43,
	radical_44,
	radical_45,
	radical_46,
	radical_47)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
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
output 	sr_13_0;
output 	sr_14_0;
output 	sr_15_0;
output 	sr_16_0;
output 	sr_17_0;
output 	sr_18_0;
output 	sr_19_0;
output 	sr_20_0;
output 	sr_21_0;
output 	sr_22_0;
output 	sr_23_0;
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
output 	_15;
output 	_16;
output 	_17;
output 	_18;
output 	_19;
output 	_20;
output 	_21;
output 	_22;
output 	_23;
output 	_24;
output 	_25;
output 	_26;
input 	clk;
input 	ena;
input 	radical_50;
input 	radical_48;
input 	radical_49;
input 	radical_51;
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
input 	radical_22;
input 	radical_23;
input 	radical_24;
input 	radical_25;
input 	radical_26;
input 	radical_27;
input 	radical_28;
input 	radical_29;
input 	radical_30;
input 	radical_31;
input 	radical_32;
input 	radical_33;
input 	radical_34;
input 	radical_35;
input 	radical_36;
input 	radical_37;
input 	radical_38;
input 	radical_39;
input 	radical_40;
input 	radical_41;
input 	radical_42;
input 	radical_43;
input 	radical_44;
input 	radical_45;
input 	radical_46;
input 	radical_47;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \subtractors[25]|auto_generated|op_1~5_sumout ;
wire \subtractors[25]|auto_generated|op_1~9_sumout ;
wire \subtractors[24]|auto_generated|op_1~5_sumout ;
wire \subtractors[25]|auto_generated|op_1~13_sumout ;
wire \subtractors[24]|auto_generated|op_1~9_sumout ;
wire \subtractors[25]|auto_generated|op_1~17_sumout ;
wire \subtractors[24]|auto_generated|op_1~13_sumout ;
wire \subtractors[25]|auto_generated|op_1~21_sumout ;
wire \r_dffe[23]|sr[0][2]~q ;
wire \subtractors[24]|auto_generated|op_1~17_sumout ;
wire \subtractors[25]|auto_generated|op_1~25_sumout ;
wire \r_dffe[23]|sr[0][3]~q ;
wire \subtractors[24]|auto_generated|op_1~21_sumout ;
wire \subtractors[25]|auto_generated|op_1~29_sumout ;
wire \r_dffe[23]|sr[0][4]~q ;
wire \subtractors[24]|auto_generated|op_1~25_sumout ;
wire \subtractors[25]|auto_generated|op_1~33_sumout ;
wire \r_dffe[23]|sr[0][5]~q ;
wire \subtractors[24]|auto_generated|op_1~29_sumout ;
wire \subtractors[25]|auto_generated|op_1~37_sumout ;
wire \r_dffe[23]|sr[0][6]~q ;
wire \subtractors[24]|auto_generated|op_1~33_sumout ;
wire \subtractors[25]|auto_generated|op_1~41_sumout ;
wire \r_dffe[23]|sr[0][7]~q ;
wire \subtractors[24]|auto_generated|op_1~37_sumout ;
wire \subtractors[25]|auto_generated|op_1~45_sumout ;
wire \r_dffe[23]|sr[0][8]~q ;
wire \subtractors[24]|auto_generated|op_1~41_sumout ;
wire \subtractors[25]|auto_generated|op_1~49_sumout ;
wire \r_dffe[23]|sr[0][9]~q ;
wire \subtractors[24]|auto_generated|op_1~45_sumout ;
wire \subtractors[25]|auto_generated|op_1~53_sumout ;
wire \r_dffe[23]|sr[0][10]~q ;
wire \subtractors[24]|auto_generated|op_1~49_sumout ;
wire \subtractors[25]|auto_generated|op_1~57_sumout ;
wire \r_dffe[23]|sr[0][11]~q ;
wire \subtractors[24]|auto_generated|op_1~53_sumout ;
wire \subtractors[25]|auto_generated|op_1~61_sumout ;
wire \r_dffe[23]|sr[0][12]~q ;
wire \subtractors[24]|auto_generated|op_1~57_sumout ;
wire \subtractors[25]|auto_generated|op_1~65_sumout ;
wire \r_dffe[23]|sr[0][13]~q ;
wire \subtractors[24]|auto_generated|op_1~61_sumout ;
wire \subtractors[25]|auto_generated|op_1~69_sumout ;
wire \r_dffe[23]|sr[0][14]~q ;
wire \subtractors[24]|auto_generated|op_1~65_sumout ;
wire \subtractors[25]|auto_generated|op_1~73_sumout ;
wire \r_dffe[23]|sr[0][15]~q ;
wire \subtractors[24]|auto_generated|op_1~69_sumout ;
wire \subtractors[25]|auto_generated|op_1~77_sumout ;
wire \r_dffe[23]|sr[0][16]~q ;
wire \subtractors[24]|auto_generated|op_1~73_sumout ;
wire \subtractors[25]|auto_generated|op_1~81_sumout ;
wire \r_dffe[23]|sr[0][17]~q ;
wire \subtractors[24]|auto_generated|op_1~77_sumout ;
wire \subtractors[25]|auto_generated|op_1~85_sumout ;
wire \r_dffe[23]|sr[0][18]~q ;
wire \subtractors[24]|auto_generated|op_1~81_sumout ;
wire \subtractors[25]|auto_generated|op_1~89_sumout ;
wire \r_dffe[23]|sr[0][19]~q ;
wire \subtractors[24]|auto_generated|op_1~85_sumout ;
wire \subtractors[25]|auto_generated|op_1~93_sumout ;
wire \r_dffe[23]|sr[0][20]~q ;
wire \subtractors[24]|auto_generated|op_1~89_sumout ;
wire \subtractors[25]|auto_generated|op_1~97_sumout ;
wire \r_dffe[23]|sr[0][21]~q ;
wire \subtractors[24]|auto_generated|op_1~93_sumout ;
wire \subtractors[25]|auto_generated|op_1~101_sumout ;
wire \r_dffe[23]|sr[0][22]~q ;
wire \subtractors[24]|auto_generated|op_1~97_sumout ;
wire \subtractors[25]|auto_generated|op_1~105_sumout ;
wire \subtractors[23]|auto_generated|op_1~1_sumout ;
wire \subtractors[22]|auto_generated|op_1~1_sumout ;
wire \subtractors[21]|auto_generated|op_1~1_sumout ;
wire \subtractors[20]|auto_generated|op_1~1_sumout ;
wire \subtractors[19]|auto_generated|op_1~1_sumout ;
wire \subtractors[23]|auto_generated|op_1~5_sumout ;
wire \subtractors[23]|auto_generated|op_1~9_sumout ;
wire \subtractors[22]|auto_generated|op_1~5_sumout ;
wire \subtractors[23]|auto_generated|op_1~13_sumout ;
wire \subtractors[22]|auto_generated|op_1~9_sumout ;
wire \subtractors[23]|auto_generated|op_1~17_sumout ;
wire \subtractors[21]|auto_generated|op_1~5_sumout ;
wire \subtractors[22]|auto_generated|op_1~13_sumout ;
wire \subtractors[23]|auto_generated|op_1~21_sumout ;
wire \subtractors[21]|auto_generated|op_1~9_sumout ;
wire \subtractors[22]|auto_generated|op_1~17_sumout ;
wire \subtractors[23]|auto_generated|op_1~25_sumout ;
wire \subtractors[20]|auto_generated|op_1~5_sumout ;
wire \subtractors[21]|auto_generated|op_1~13_sumout ;
wire \subtractors[22]|auto_generated|op_1~21_sumout ;
wire \subtractors[23]|auto_generated|op_1~29_sumout ;
wire \subtractors[20]|auto_generated|op_1~9_sumout ;
wire \subtractors[21]|auto_generated|op_1~17_sumout ;
wire \subtractors[22]|auto_generated|op_1~25_sumout ;
wire \subtractors[23]|auto_generated|op_1~33_sumout ;
wire \subtractors[19]|auto_generated|op_1~5_sumout ;
wire \subtractors[20]|auto_generated|op_1~13_sumout ;
wire \subtractors[21]|auto_generated|op_1~21_sumout ;
wire \subtractors[22]|auto_generated|op_1~29_sumout ;
wire \subtractors[23]|auto_generated|op_1~37_sumout ;
wire \subtractors[19]|auto_generated|op_1~9_sumout ;
wire \subtractors[20]|auto_generated|op_1~17_sumout ;
wire \subtractors[21]|auto_generated|op_1~25_sumout ;
wire \subtractors[22]|auto_generated|op_1~33_sumout ;
wire \subtractors[23]|auto_generated|op_1~41_sumout ;
wire \subtractors[19]|auto_generated|op_1~13_sumout ;
wire \subtractors[20]|auto_generated|op_1~21_sumout ;
wire \subtractors[21]|auto_generated|op_1~29_sumout ;
wire \subtractors[22]|auto_generated|op_1~37_sumout ;
wire \subtractors[23]|auto_generated|op_1~45_sumout ;
wire \r_dffe[18]|sr[0][2]~q ;
wire \subtractors[19]|auto_generated|op_1~17_sumout ;
wire \subtractors[20]|auto_generated|op_1~25_sumout ;
wire \subtractors[21]|auto_generated|op_1~33_sumout ;
wire \subtractors[22]|auto_generated|op_1~41_sumout ;
wire \subtractors[23]|auto_generated|op_1~49_sumout ;
wire \r_dffe[18]|sr[0][3]~q ;
wire \subtractors[19]|auto_generated|op_1~21_sumout ;
wire \subtractors[20]|auto_generated|op_1~29_sumout ;
wire \subtractors[21]|auto_generated|op_1~37_sumout ;
wire \subtractors[22]|auto_generated|op_1~45_sumout ;
wire \subtractors[23]|auto_generated|op_1~53_sumout ;
wire \r_dffe[18]|sr[0][4]~q ;
wire \subtractors[19]|auto_generated|op_1~25_sumout ;
wire \subtractors[20]|auto_generated|op_1~33_sumout ;
wire \subtractors[21]|auto_generated|op_1~41_sumout ;
wire \subtractors[22]|auto_generated|op_1~49_sumout ;
wire \subtractors[23]|auto_generated|op_1~57_sumout ;
wire \r_dffe[18]|sr[0][5]~q ;
wire \subtractors[19]|auto_generated|op_1~29_sumout ;
wire \subtractors[20]|auto_generated|op_1~37_sumout ;
wire \subtractors[21]|auto_generated|op_1~45_sumout ;
wire \subtractors[22]|auto_generated|op_1~53_sumout ;
wire \subtractors[23]|auto_generated|op_1~61_sumout ;
wire \r_dffe[18]|sr[0][6]~q ;
wire \subtractors[19]|auto_generated|op_1~33_sumout ;
wire \subtractors[20]|auto_generated|op_1~41_sumout ;
wire \subtractors[21]|auto_generated|op_1~49_sumout ;
wire \subtractors[22]|auto_generated|op_1~57_sumout ;
wire \subtractors[23]|auto_generated|op_1~65_sumout ;
wire \r_dffe[18]|sr[0][7]~q ;
wire \subtractors[19]|auto_generated|op_1~37_sumout ;
wire \subtractors[20]|auto_generated|op_1~45_sumout ;
wire \subtractors[21]|auto_generated|op_1~53_sumout ;
wire \subtractors[22]|auto_generated|op_1~61_sumout ;
wire \subtractors[23]|auto_generated|op_1~69_sumout ;
wire \r_dffe[18]|sr[0][8]~q ;
wire \subtractors[19]|auto_generated|op_1~41_sumout ;
wire \subtractors[20]|auto_generated|op_1~49_sumout ;
wire \subtractors[21]|auto_generated|op_1~57_sumout ;
wire \subtractors[22]|auto_generated|op_1~65_sumout ;
wire \subtractors[23]|auto_generated|op_1~73_sumout ;
wire \r_dffe[18]|sr[0][9]~q ;
wire \subtractors[19]|auto_generated|op_1~45_sumout ;
wire \subtractors[20]|auto_generated|op_1~53_sumout ;
wire \subtractors[21]|auto_generated|op_1~61_sumout ;
wire \subtractors[22]|auto_generated|op_1~69_sumout ;
wire \subtractors[23]|auto_generated|op_1~77_sumout ;
wire \r_dffe[18]|sr[0][10]~q ;
wire \subtractors[19]|auto_generated|op_1~49_sumout ;
wire \subtractors[20]|auto_generated|op_1~57_sumout ;
wire \subtractors[21]|auto_generated|op_1~65_sumout ;
wire \subtractors[22]|auto_generated|op_1~73_sumout ;
wire \subtractors[23]|auto_generated|op_1~81_sumout ;
wire \r_dffe[18]|sr[0][11]~q ;
wire \subtractors[19]|auto_generated|op_1~53_sumout ;
wire \subtractors[20]|auto_generated|op_1~61_sumout ;
wire \subtractors[21]|auto_generated|op_1~69_sumout ;
wire \subtractors[22]|auto_generated|op_1~77_sumout ;
wire \subtractors[23]|auto_generated|op_1~85_sumout ;
wire \r_dffe[18]|sr[0][12]~q ;
wire \subtractors[19]|auto_generated|op_1~57_sumout ;
wire \subtractors[20]|auto_generated|op_1~65_sumout ;
wire \subtractors[21]|auto_generated|op_1~73_sumout ;
wire \subtractors[22]|auto_generated|op_1~81_sumout ;
wire \subtractors[23]|auto_generated|op_1~89_sumout ;
wire \r_dffe[23]|sr[0][23]~q ;
wire \subtractors[24]|auto_generated|op_1~109_sumout ;
wire \r_dffe[23]|sr[0][24]~q ;
wire \subtractors[18]|auto_generated|op_1~1_sumout ;
wire \subtractors[17]|auto_generated|op_1~1_sumout ;
wire \subtractors[16]|auto_generated|op_1~1_sumout ;
wire \subtractors[15]|auto_generated|op_1~1_sumout ;
wire \subtractors[14]|auto_generated|op_1~1_sumout ;
wire \subtractors[13]|auto_generated|op_1~1_sumout ;
wire \subtractors[18]|auto_generated|op_1~5_sumout ;
wire \subtractors[18]|auto_generated|op_1~9_sumout ;
wire \subtractors[17]|auto_generated|op_1~5_sumout ;
wire \subtractors[18]|auto_generated|op_1~13_sumout ;
wire \subtractors[17]|auto_generated|op_1~9_sumout ;
wire \subtractors[18]|auto_generated|op_1~17_sumout ;
wire \subtractors[16]|auto_generated|op_1~5_sumout ;
wire \subtractors[17]|auto_generated|op_1~13_sumout ;
wire \subtractors[18]|auto_generated|op_1~21_sumout ;
wire \subtractors[16]|auto_generated|op_1~9_sumout ;
wire \subtractors[17]|auto_generated|op_1~17_sumout ;
wire \subtractors[18]|auto_generated|op_1~25_sumout ;
wire \subtractors[15]|auto_generated|op_1~5_sumout ;
wire \subtractors[16]|auto_generated|op_1~13_sumout ;
wire \subtractors[17]|auto_generated|op_1~21_sumout ;
wire \subtractors[18]|auto_generated|op_1~29_sumout ;
wire \subtractors[15]|auto_generated|op_1~9_sumout ;
wire \subtractors[16]|auto_generated|op_1~17_sumout ;
wire \subtractors[17]|auto_generated|op_1~25_sumout ;
wire \subtractors[18]|auto_generated|op_1~33_sumout ;
wire \subtractors[14]|auto_generated|op_1~5_sumout ;
wire \subtractors[15]|auto_generated|op_1~13_sumout ;
wire \subtractors[16]|auto_generated|op_1~21_sumout ;
wire \subtractors[17]|auto_generated|op_1~29_sumout ;
wire \subtractors[18]|auto_generated|op_1~37_sumout ;
wire \subtractors[14]|auto_generated|op_1~9_sumout ;
wire \subtractors[15]|auto_generated|op_1~17_sumout ;
wire \subtractors[16]|auto_generated|op_1~25_sumout ;
wire \subtractors[17]|auto_generated|op_1~33_sumout ;
wire \subtractors[18]|auto_generated|op_1~41_sumout ;
wire \subtractors[13]|auto_generated|op_1~5_sumout ;
wire \subtractors[14]|auto_generated|op_1~13_sumout ;
wire \subtractors[15]|auto_generated|op_1~21_sumout ;
wire \subtractors[16]|auto_generated|op_1~29_sumout ;
wire \subtractors[17]|auto_generated|op_1~37_sumout ;
wire \subtractors[18]|auto_generated|op_1~45_sumout ;
wire \subtractors[13]|auto_generated|op_1~9_sumout ;
wire \subtractors[14]|auto_generated|op_1~17_sumout ;
wire \subtractors[15]|auto_generated|op_1~25_sumout ;
wire \subtractors[16]|auto_generated|op_1~33_sumout ;
wire \subtractors[17]|auto_generated|op_1~41_sumout ;
wire \subtractors[18]|auto_generated|op_1~49_sumout ;
wire \r_dffe[18]|sr[0][13]~q ;
wire \subtractors[19]|auto_generated|op_1~69_sumout ;
wire \subtractors[20]|auto_generated|op_1~77_sumout ;
wire \subtractors[21]|auto_generated|op_1~85_sumout ;
wire \subtractors[22]|auto_generated|op_1~93_sumout ;
wire \subtractors[23]|auto_generated|op_1~101_sumout ;
wire \r_dffe[18]|sr[0][14]~q ;
wire \subtractors[19]|auto_generated|op_1~73_sumout ;
wire \subtractors[20]|auto_generated|op_1~81_sumout ;
wire \subtractors[21]|auto_generated|op_1~89_sumout ;
wire \subtractors[22]|auto_generated|op_1~97_sumout ;
wire \subtractors[23]|auto_generated|op_1~105_sumout ;
wire \r_dffe[18]|sr[0][15]~q ;
wire \subtractors[19]|auto_generated|op_1~77_sumout ;
wire \subtractors[20]|auto_generated|op_1~85_sumout ;
wire \subtractors[21]|auto_generated|op_1~93_sumout ;
wire \subtractors[22]|auto_generated|op_1~101_sumout ;
wire \r_dffe[18]|sr[0][16]~q ;
wire \subtractors[19]|auto_generated|op_1~81_sumout ;
wire \subtractors[20]|auto_generated|op_1~89_sumout ;
wire \subtractors[21]|auto_generated|op_1~97_sumout ;
wire \r_dffe[18]|sr[0][17]~q ;
wire \subtractors[19]|auto_generated|op_1~85_sumout ;
wire \subtractors[20]|auto_generated|op_1~93_sumout ;
wire \r_dffe[18]|sr[0][18]~q ;
wire \subtractors[19]|auto_generated|op_1~89_sumout ;
wire \r_dffe[18]|sr[0][19]~q ;
wire \subtractors[12]|auto_generated|op_1~1_sumout ;
wire \subtractors[11]|auto_generated|op_1~1_sumout ;
wire \subtractors[10]|auto_generated|op_1~1_sumout ;
wire \subtractors[9]|auto_generated|op_1~1_sumout ;
wire \subtractors[8]|auto_generated|op_1~1_sumout ;
wire \subtractors[13]|auto_generated|op_1~21_sumout ;
wire \subtractors[14]|auto_generated|op_1~29_sumout ;
wire \subtractors[15]|auto_generated|op_1~37_sumout ;
wire \subtractors[16]|auto_generated|op_1~45_sumout ;
wire \subtractors[17]|auto_generated|op_1~53_sumout ;
wire \subtractors[18]|auto_generated|op_1~61_sumout ;
wire \subtractors[13]|auto_generated|op_1~25_sumout ;
wire \subtractors[14]|auto_generated|op_1~33_sumout ;
wire \subtractors[15]|auto_generated|op_1~41_sumout ;
wire \subtractors[16]|auto_generated|op_1~49_sumout ;
wire \subtractors[17]|auto_generated|op_1~57_sumout ;
wire \subtractors[18]|auto_generated|op_1~65_sumout ;
wire \subtractors[13]|auto_generated|op_1~29_sumout ;
wire \subtractors[14]|auto_generated|op_1~37_sumout ;
wire \subtractors[15]|auto_generated|op_1~45_sumout ;
wire \subtractors[16]|auto_generated|op_1~53_sumout ;
wire \subtractors[17]|auto_generated|op_1~61_sumout ;
wire \subtractors[18]|auto_generated|op_1~69_sumout ;
wire \subtractors[13]|auto_generated|op_1~33_sumout ;
wire \subtractors[14]|auto_generated|op_1~41_sumout ;
wire \subtractors[15]|auto_generated|op_1~49_sumout ;
wire \subtractors[16]|auto_generated|op_1~57_sumout ;
wire \subtractors[17]|auto_generated|op_1~65_sumout ;
wire \subtractors[18]|auto_generated|op_1~73_sumout ;
wire \subtractors[13]|auto_generated|op_1~37_sumout ;
wire \subtractors[14]|auto_generated|op_1~45_sumout ;
wire \subtractors[15]|auto_generated|op_1~53_sumout ;
wire \subtractors[16]|auto_generated|op_1~61_sumout ;
wire \subtractors[17]|auto_generated|op_1~69_sumout ;
wire \subtractors[18]|auto_generated|op_1~77_sumout ;
wire \subtractors[13]|auto_generated|op_1~41_sumout ;
wire \subtractors[14]|auto_generated|op_1~49_sumout ;
wire \subtractors[15]|auto_generated|op_1~57_sumout ;
wire \subtractors[16]|auto_generated|op_1~65_sumout ;
wire \subtractors[17]|auto_generated|op_1~73_sumout ;
wire \subtractors[18]|auto_generated|op_1~81_sumout ;
wire \subtractors[13]|auto_generated|op_1~45_sumout ;
wire \subtractors[14]|auto_generated|op_1~53_sumout ;
wire \subtractors[15]|auto_generated|op_1~61_sumout ;
wire \subtractors[16]|auto_generated|op_1~69_sumout ;
wire \subtractors[17]|auto_generated|op_1~77_sumout ;
wire \subtractors[18]|auto_generated|op_1~85_sumout ;
wire \subtractors[13]|auto_generated|op_1~49_sumout ;
wire \subtractors[14]|auto_generated|op_1~57_sumout ;
wire \subtractors[15]|auto_generated|op_1~65_sumout ;
wire \subtractors[16]|auto_generated|op_1~73_sumout ;
wire \subtractors[17]|auto_generated|op_1~81_sumout ;
wire \subtractors[13]|auto_generated|op_1~53_sumout ;
wire \subtractors[14]|auto_generated|op_1~61_sumout ;
wire \subtractors[15]|auto_generated|op_1~69_sumout ;
wire \subtractors[16]|auto_generated|op_1~77_sumout ;
wire \subtractors[13]|auto_generated|op_1~57_sumout ;
wire \subtractors[14]|auto_generated|op_1~65_sumout ;
wire \subtractors[15]|auto_generated|op_1~73_sumout ;
wire \subtractors[13]|auto_generated|op_1~61_sumout ;
wire \subtractors[14]|auto_generated|op_1~69_sumout ;
wire \subtractors[13]|auto_generated|op_1~65_sumout ;
wire \subtractors[7]|auto_generated|op_1~1_sumout ;
wire \subtractors[6]|auto_generated|op_1~1_sumout ;
wire \subtractors[5]|auto_generated|op_1~1_sumout ;
wire \subtractors[4]|auto_generated|op_1~1_sumout ;
wire \subtractors[3]|auto_generated|op_1~1_sumout ;
wire \subtractors[12]|auto_generated|op_1~9_sumout ;
wire \subtractors[12]|auto_generated|op_1~13_sumout ;
wire \subtractors[11]|auto_generated|op_1~9_sumout ;
wire \subtractors[12]|auto_generated|op_1~17_sumout ;
wire \subtractors[11]|auto_generated|op_1~13_sumout ;
wire \subtractors[12]|auto_generated|op_1~21_sumout ;
wire \subtractors[10]|auto_generated|op_1~9_sumout ;
wire \subtractors[11]|auto_generated|op_1~17_sumout ;
wire \subtractors[12]|auto_generated|op_1~25_sumout ;
wire \subtractors[10]|auto_generated|op_1~13_sumout ;
wire \subtractors[11]|auto_generated|op_1~21_sumout ;
wire \subtractors[12]|auto_generated|op_1~29_sumout ;
wire \subtractors[9]|auto_generated|op_1~9_sumout ;
wire \subtractors[10]|auto_generated|op_1~17_sumout ;
wire \subtractors[11]|auto_generated|op_1~25_sumout ;
wire \subtractors[12]|auto_generated|op_1~33_sumout ;
wire \subtractors[9]|auto_generated|op_1~13_sumout ;
wire \subtractors[10]|auto_generated|op_1~21_sumout ;
wire \subtractors[11]|auto_generated|op_1~29_sumout ;
wire \subtractors[12]|auto_generated|op_1~37_sumout ;
wire \subtractors[8]|auto_generated|op_1~9_sumout ;
wire \subtractors[9]|auto_generated|op_1~17_sumout ;
wire \subtractors[10]|auto_generated|op_1~25_sumout ;
wire \subtractors[11]|auto_generated|op_1~33_sumout ;
wire \subtractors[12]|auto_generated|op_1~41_sumout ;
wire \subtractors[8]|auto_generated|op_1~13_sumout ;
wire \subtractors[9]|auto_generated|op_1~21_sumout ;
wire \subtractors[10]|auto_generated|op_1~29_sumout ;
wire \subtractors[11]|auto_generated|op_1~37_sumout ;
wire \subtractors[12]|auto_generated|op_1~45_sumout ;
wire \subtractors[8]|auto_generated|op_1~17_sumout ;
wire \subtractors[9]|auto_generated|op_1~25_sumout ;
wire \subtractors[10]|auto_generated|op_1~33_sumout ;
wire \subtractors[11]|auto_generated|op_1~41_sumout ;
wire \subtractors[12]|auto_generated|op_1~49_sumout ;
wire \subtractors[8]|auto_generated|op_1~21_sumout ;
wire \subtractors[9]|auto_generated|op_1~29_sumout ;
wire \subtractors[10]|auto_generated|op_1~37_sumout ;
wire \subtractors[11]|auto_generated|op_1~45_sumout ;
wire \subtractors[12]|auto_generated|op_1~53_sumout ;
wire \subtractors[8]|auto_generated|op_1~25_sumout ;
wire \subtractors[9]|auto_generated|op_1~33_sumout ;
wire \subtractors[10]|auto_generated|op_1~41_sumout ;
wire \subtractors[11]|auto_generated|op_1~49_sumout ;
wire \subtractors[12]|auto_generated|op_1~57_sumout ;
wire \subtractors[8]|auto_generated|op_1~29_sumout ;
wire \subtractors[9]|auto_generated|op_1~37_sumout ;
wire \subtractors[10]|auto_generated|op_1~45_sumout ;
wire \subtractors[11]|auto_generated|op_1~53_sumout ;
wire \subtractors[8]|auto_generated|op_1~33_sumout ;
wire \subtractors[9]|auto_generated|op_1~41_sumout ;
wire \subtractors[10]|auto_generated|op_1~49_sumout ;
wire \subtractors[8]|auto_generated|op_1~37_sumout ;
wire \subtractors[9]|auto_generated|op_1~45_sumout ;
wire \subtractors[8]|auto_generated|op_1~41_sumout ;
wire \subtractors[2]|auto_generated|op_1~1_sumout ;
wire \subtractors[7]|auto_generated|op_1~9_sumout ;
wire \subtractors[7]|auto_generated|op_1~13_sumout ;
wire \subtractors[6]|auto_generated|op_1~9_sumout ;
wire \subtractors[7]|auto_generated|op_1~17_sumout ;
wire \subtractors[6]|auto_generated|op_1~13_sumout ;
wire \subtractors[7]|auto_generated|op_1~21_sumout ;
wire \subtractors[5]|auto_generated|op_1~9_sumout ;
wire \subtractors[6]|auto_generated|op_1~17_sumout ;
wire \subtractors[7]|auto_generated|op_1~25_sumout ;
wire \subtractors[5]|auto_generated|op_1~13_sumout ;
wire \subtractors[6]|auto_generated|op_1~21_sumout ;
wire \subtractors[7]|auto_generated|op_1~29_sumout ;
wire \subtractors[4]|auto_generated|op_1~9_sumout ;
wire \subtractors[5]|auto_generated|op_1~17_sumout ;
wire \subtractors[6]|auto_generated|op_1~25_sumout ;
wire \subtractors[7]|auto_generated|op_1~33_sumout ;
wire \subtractors[4]|auto_generated|op_1~13_sumout ;
wire \subtractors[5]|auto_generated|op_1~21_sumout ;
wire \subtractors[6]|auto_generated|op_1~29_sumout ;
wire \subtractors[7]|auto_generated|op_1~37_sumout ;
wire \subtractors[3]|auto_generated|op_1~9_sumout ;
wire \subtractors[4]|auto_generated|op_1~17_sumout ;
wire \subtractors[5]|auto_generated|op_1~25_sumout ;
wire \subtractors[6]|auto_generated|op_1~33_sumout ;
wire \subtractors[3]|auto_generated|op_1~13_sumout ;
wire \subtractors[4]|auto_generated|op_1~21_sumout ;
wire \subtractors[5]|auto_generated|op_1~29_sumout ;
wire \subtractors[3]|auto_generated|op_1~17_sumout ;
wire \subtractors[4]|auto_generated|op_1~25_sumout ;
wire \subtractors[3]|auto_generated|op_1~21_sumout ;
wire \subtractors[2]|auto_generated|op_1~9_sumout ;
wire \subtractors[2]|auto_generated|op_1~13_sumout ;
wire \subtractors[2]|auto_generated|op_1~17_sumout ;
wire \a_delay|sr[4][0]~q ;
wire \a_delay|sr[4][1]~q ;
wire \a_delay|sr[4][2]~q ;
wire \a_delay|sr[4][3]~q ;
wire \r_dffe[23]|sr[0][0]~q ;
wire \r_dffe[23]|sr[0][1]~q ;
wire \b_dffe[18]|sr[0][0]~q ;
wire \b_dffe[18]|sr[0][1]~q ;
wire \b_dffe[18]|sr[0][2]~q ;
wire \b_dffe[18]|sr[0][3]~q ;
wire \b_dffe[18]|sr[0][4]~q ;
wire \b_dffe[18]|sr[0][5]~q ;
wire \b_dffe[18]|sr[0][6]~q ;
wire \b_dffe[18]|sr[0][7]~q ;
wire \b_dffe[18]|sr[0][8]~q ;
wire \b_dffe[18]|sr[0][9]~q ;
wire \b_dffe[18]|sr[0][10]~q ;
wire \b_dffe[18]|sr[0][11]~q ;
wire \b_dffe[18]|sr[0][12]~q ;
wire \b_dffe[18]|sr[0][13]~q ;
wire \b_dffe[18]|sr[0][14]~q ;
wire \b_dffe[18]|sr[0][15]~q ;
wire \b_dffe[18]|sr[0][16]~q ;
wire \b_dffe[18]|sr[0][17]~q ;
wire \b_dffe[18]|sr[0][18]~q ;
wire \a_delay|sr[3][4]~q ;
wire \_~27_combout ;
wire \a_delay|sr[3][5]~q ;
wire \_~28_combout ;
wire \a_delay|sr[3][6]~q ;
wire \_~29_combout ;
wire \a_delay|sr[3][7]~q ;
wire \_~30_combout ;
wire \a_delay|sr[3][8]~q ;
wire \_~31_combout ;
wire \a_delay|sr[3][9]~q ;
wire \_~32_combout ;
wire \_~33_combout ;
wire \a_delay|sr[3][10]~q ;
wire \_~34_combout ;
wire \_~35_combout ;
wire \a_delay|sr[3][11]~q ;
wire \_~36_combout ;
wire \_~37_combout ;
wire \_~38_combout ;
wire \a_delay|sr[3][12]~q ;
wire \_~39_combout ;
wire \_~40_combout ;
wire \_~41_combout ;
wire \a_delay|sr[3][13]~q ;
wire \_~42_combout ;
wire \_~43_combout ;
wire \_~44_combout ;
wire \_~45_combout ;
wire \r_dffe[18]|sr[0][0]~q ;
wire \_~46_combout ;
wire \_~47_combout ;
wire \_~48_combout ;
wire \_~49_combout ;
wire \r_dffe[18]|sr[0][1]~q ;
wire \_~50_combout ;
wire \_~51_combout ;
wire \_~52_combout ;
wire \_~53_combout ;
wire \_~54_combout ;
wire \_~55_combout ;
wire \_~56_combout ;
wire \_~57_combout ;
wire \_~58_combout ;
wire \_~59_combout ;
wire \_~60_combout ;
wire \_~61_combout ;
wire \_~62_combout ;
wire \_~63_combout ;
wire \_~64_combout ;
wire \_~65_combout ;
wire \_~66_combout ;
wire \_~67_combout ;
wire \_~68_combout ;
wire \_~69_combout ;
wire \_~70_combout ;
wire \_~71_combout ;
wire \_~72_combout ;
wire \_~73_combout ;
wire \_~74_combout ;
wire \_~75_combout ;
wire \_~76_combout ;
wire \_~77_combout ;
wire \_~78_combout ;
wire \_~79_combout ;
wire \_~80_combout ;
wire \_~81_combout ;
wire \_~82_combout ;
wire \_~83_combout ;
wire \_~84_combout ;
wire \_~85_combout ;
wire \_~86_combout ;
wire \_~87_combout ;
wire \_~88_combout ;
wire \_~89_combout ;
wire \_~90_combout ;
wire \_~91_combout ;
wire \_~92_combout ;
wire \_~93_combout ;
wire \_~94_combout ;
wire \_~95_combout ;
wire \_~96_combout ;
wire \_~97_combout ;
wire \b_dffe[12]|sr[0][0]~q ;
wire \b_dffe[12]|sr[0][1]~q ;
wire \b_dffe[12]|sr[0][2]~q ;
wire \b_dffe[12]|sr[0][3]~q ;
wire \b_dffe[12]|sr[0][4]~q ;
wire \b_dffe[12]|sr[0][5]~q ;
wire \b_dffe[12]|sr[0][6]~q ;
wire \b_dffe[12]|sr[0][7]~q ;
wire \b_dffe[12]|sr[0][8]~q ;
wire \b_dffe[12]|sr[0][9]~q ;
wire \b_dffe[12]|sr[0][10]~q ;
wire \b_dffe[12]|sr[0][11]~q ;
wire \b_dffe[12]|sr[0][12]~q ;
wire \a_delay|sr[2][14]~q ;
wire \_~98_combout ;
wire \a_delay|sr[2][15]~q ;
wire \_~99_combout ;
wire \a_delay|sr[2][16]~q ;
wire \_~100_combout ;
wire \a_delay|sr[2][17]~q ;
wire \_~101_combout ;
wire \a_delay|sr[2][18]~q ;
wire \_~102_combout ;
wire \a_delay|sr[2][19]~q ;
wire \_~103_combout ;
wire \_~104_combout ;
wire \a_delay|sr[2][20]~q ;
wire \_~105_combout ;
wire \_~106_combout ;
wire \a_delay|sr[2][21]~q ;
wire \_~107_combout ;
wire \_~108_combout ;
wire \_~109_combout ;
wire \a_delay|sr[2][22]~q ;
wire \_~110_combout ;
wire \_~111_combout ;
wire \_~112_combout ;
wire \a_delay|sr[2][23]~q ;
wire \_~113_combout ;
wire \_~114_combout ;
wire \_~115_combout ;
wire \_~116_combout ;
wire \a_delay|sr[2][24]~q ;
wire \_~117_combout ;
wire \_~118_combout ;
wire \_~119_combout ;
wire \_~120_combout ;
wire \a_delay|sr[2][25]~q ;
wire \_~121_combout ;
wire \_~122_combout ;
wire \_~123_combout ;
wire \_~124_combout ;
wire \_~125_combout ;
wire \r_dffe[12]|sr[0][0]~q ;
wire \_~126_combout ;
wire \_~127_combout ;
wire \_~128_combout ;
wire \_~129_combout ;
wire \_~130_combout ;
wire \_~131_combout ;
wire \_~132_combout ;
wire \_~133_combout ;
wire \_~134_combout ;
wire \_~135_combout ;
wire \_~136_combout ;
wire \_~137_combout ;
wire \_~138_combout ;
wire \_~139_combout ;
wire \_~140_combout ;
wire \_~141_combout ;
wire \_~142_combout ;
wire \_~143_combout ;
wire \_~144_combout ;
wire \b_dffe[7]|sr[0][0]~q ;
wire \b_dffe[7]|sr[0][1]~q ;
wire \b_dffe[7]|sr[0][2]~q ;
wire \b_dffe[7]|sr[0][3]~q ;
wire \b_dffe[7]|sr[0][4]~q ;
wire \b_dffe[7]|sr[0][5]~q ;
wire \b_dffe[7]|sr[0][6]~q ;
wire \b_dffe[7]|sr[0][7]~q ;
wire \a_delay|sr[1][26]~q ;
wire \_~145_combout ;
wire \r_dffe[12]|sr[0][1]~q ;
wire \_~146_combout ;
wire \_~147_combout ;
wire \_~148_combout ;
wire \_~149_combout ;
wire \_~150_combout ;
wire \r_dffe[12]|sr[0][2]~q ;
wire \_~151_combout ;
wire \_~152_combout ;
wire \_~153_combout ;
wire \_~154_combout ;
wire \_~155_combout ;
wire \r_dffe[12]|sr[0][3]~q ;
wire \_~156_combout ;
wire \_~157_combout ;
wire \_~158_combout ;
wire \_~159_combout ;
wire \_~160_combout ;
wire \r_dffe[12]|sr[0][4]~q ;
wire \_~161_combout ;
wire \_~162_combout ;
wire \_~163_combout ;
wire \_~164_combout ;
wire \_~165_combout ;
wire \r_dffe[12]|sr[0][5]~q ;
wire \_~166_combout ;
wire \_~167_combout ;
wire \_~168_combout ;
wire \_~169_combout ;
wire \_~170_combout ;
wire \r_dffe[12]|sr[0][6]~q ;
wire \_~171_combout ;
wire \_~172_combout ;
wire \_~173_combout ;
wire \_~174_combout ;
wire \_~175_combout ;
wire \r_dffe[12]|sr[0][7]~q ;
wire \_~176_combout ;
wire \_~177_combout ;
wire \_~178_combout ;
wire \_~179_combout ;
wire \_~180_combout ;
wire \r_dffe[12]|sr[0][8]~q ;
wire \_~181_combout ;
wire \_~182_combout ;
wire \_~183_combout ;
wire \_~184_combout ;
wire \r_dffe[12]|sr[0][9]~q ;
wire \_~185_combout ;
wire \_~186_combout ;
wire \_~187_combout ;
wire \r_dffe[12]|sr[0][10]~q ;
wire \_~188_combout ;
wire \_~189_combout ;
wire \r_dffe[12]|sr[0][11]~q ;
wire \_~190_combout ;
wire \r_dffe[12]|sr[0][12]~q ;
wire \r_dffe[12]|sr[0][13]~q ;
wire \b_dffe[2]|sr[0][0]~q ;
wire \b_dffe[2]|sr[0][1]~q ;
wire \b_dffe[2]|sr[0][2]~q ;
wire \a_delay|sr[1][27]~q ;
wire \_~191_combout ;
wire \a_delay|sr[1][28]~q ;
wire \_~192_combout ;
wire \a_delay|sr[1][29]~q ;
wire \_~193_combout ;
wire \a_delay|sr[1][30]~q ;
wire \_~194_combout ;
wire \a_delay|sr[1][31]~q ;
wire \_~195_combout ;
wire \_~196_combout ;
wire \a_delay|sr[1][32]~q ;
wire \_~197_combout ;
wire \_~198_combout ;
wire \a_delay|sr[1][33]~q ;
wire \_~199_combout ;
wire \_~200_combout ;
wire \_~201_combout ;
wire \a_delay|sr[1][34]~q ;
wire \_~202_combout ;
wire \_~203_combout ;
wire \_~204_combout ;
wire \a_delay|sr[1][35]~q ;
wire \_~205_combout ;
wire \_~206_combout ;
wire \_~207_combout ;
wire \_~208_combout ;
wire \r_dffe[7]|sr[0][0]~q ;
wire \_~209_combout ;
wire \_~210_combout ;
wire \_~211_combout ;
wire \_~212_combout ;
wire \r_dffe[7]|sr[0][1]~q ;
wire \_~213_combout ;
wire \_~214_combout ;
wire \_~215_combout ;
wire \_~216_combout ;
wire \r_dffe[7]|sr[0][2]~q ;
wire \_~217_combout ;
wire \_~218_combout ;
wire \_~219_combout ;
wire \_~220_combout ;
wire \r_dffe[7]|sr[0][3]~q ;
wire \_~221_combout ;
wire \_~222_combout ;
wire \_~223_combout ;
wire \_~224_combout ;
wire \r_dffe[7]|sr[0][4]~q ;
wire \_~225_combout ;
wire \_~226_combout ;
wire \_~227_combout ;
wire \r_dffe[7]|sr[0][5]~q ;
wire \_~228_combout ;
wire \_~229_combout ;
wire \r_dffe[7]|sr[0][6]~q ;
wire \_~230_combout ;
wire \r_dffe[7]|sr[0][7]~q ;
wire \r_dffe[7]|sr[0][8]~q ;
wire \subtractors[1]|auto_generated|op_1~0_combout ;
wire \subtractors[0]|auto_generated|op_1~0_combout ;
wire \a_delay|sr[0][36]~q ;
wire \_~231_combout ;
wire \a_delay|sr[0][37]~q ;
wire \_~232_combout ;
wire \a_delay|sr[0][38]~q ;
wire \_~233_combout ;
wire \a_delay|sr[0][39]~q ;
wire \_~234_combout ;
wire \a_delay|sr[0][40]~q ;
wire \_~235_combout ;
wire \a_delay|sr[0][41]~q ;
wire \_~236_combout ;
wire \_~237_combout ;
wire \a_delay|sr[0][42]~q ;
wire \_~238_combout ;
wire \_~239_combout ;
wire \a_delay|sr[0][43]~q ;
wire \_~240_combout ;
wire \_~241_combout ;
wire \_~242_combout ;
wire \a_delay|sr[0][44]~q ;
wire \_~243_combout ;
wire \_~244_combout ;
wire \_~245_combout ;
wire \a_delay|sr[0][45]~q ;
wire \_~246_combout ;
wire \_~247_combout ;
wire \_~248_combout ;
wire \r_dffe[2]|sr[0][0]~q ;
wire \_~249_combout ;
wire \_~250_combout ;
wire \r_dffe[2]|sr[0][1]~q ;
wire \_~251_combout ;
wire \r_dffe[2]|sr[0][2]~q ;
wire \r_dffe[2]|sr[0][3]~q ;
wire \_~252_combout ;
wire \_~253_combout ;
wire \_~254_combout ;
wire \_~255_combout ;
wire \subtractors[1]|auto_generated|op_1~1_combout ;


sqrt_52_lpm_add_sub_20 \subtractors[3] (
	.op_1(\subtractors[3]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[3]|auto_generated|op_1~9_sumout ),
	.op_12(\subtractors[3]|auto_generated|op_1~13_sumout ),
	.op_13(\subtractors[3]|auto_generated|op_1~17_sumout ),
	.op_14(\subtractors[3]|auto_generated|op_1~21_sumout ),
	.sr_0_0(\b_dffe[2]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[2]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[2]|sr[0][2]~q ),
	.sr_44_0(\a_delay|sr[0][44]~q ),
	.sr_45_0(\a_delay|sr[0][45]~q ),
	.sr_0_01(\r_dffe[2]|sr[0][0]~q ),
	.sr_1_01(\r_dffe[2]|sr[0][1]~q ),
	.sr_2_01(\r_dffe[2]|sr[0][2]~q ),
	.sr_3_0(\r_dffe[2]|sr[0][3]~q ));

sqrt_52_lpm_add_sub_21 \subtractors[4] (
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
	.sr_0_0(\b_dffe[2]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[2]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[2]|sr[0][2]~q ),
	.sr_42_0(\a_delay|sr[0][42]~q ),
	.sr_43_0(\a_delay|sr[0][43]~q ),
	.sr_44_0(\a_delay|sr[0][44]~q ),
	.sr_45_0(\a_delay|sr[0][45]~q ),
	.sr_0_01(\r_dffe[2]|sr[0][0]~q ),
	.sr_1_01(\r_dffe[2]|sr[0][1]~q ),
	.sr_2_01(\r_dffe[2]|sr[0][2]~q ));

sqrt_52_lpm_add_sub_22 \subtractors[5] (
	.op_1(\subtractors[5]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[4]|auto_generated|op_1~1_sumout ),
	.op_12(\subtractors[3]|auto_generated|op_1~1_sumout ),
	.op_13(\subtractors[5]|auto_generated|op_1~9_sumout ),
	.op_14(\subtractors[5]|auto_generated|op_1~13_sumout ),
	.op_15(\subtractors[4]|auto_generated|op_1~9_sumout ),
	.op_16(\subtractors[5]|auto_generated|op_1~17_sumout ),
	.op_17(\subtractors[4]|auto_generated|op_1~13_sumout ),
	.op_18(\subtractors[5]|auto_generated|op_1~21_sumout ),
	.op_19(\subtractors[4]|auto_generated|op_1~17_sumout ),
	.op_110(\subtractors[5]|auto_generated|op_1~25_sumout ),
	.op_111(\subtractors[4]|auto_generated|op_1~21_sumout ),
	.op_112(\subtractors[5]|auto_generated|op_1~29_sumout ),
	.op_113(\subtractors[4]|auto_generated|op_1~25_sumout ),
	.sr_0_0(\b_dffe[2]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[2]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[2]|sr[0][2]~q ),
	.sr_40_0(\a_delay|sr[0][40]~q ),
	.sr_41_0(\a_delay|sr[0][41]~q ),
	.sr_42_0(\a_delay|sr[0][42]~q ),
	.sr_43_0(\a_delay|sr[0][43]~q ),
	.sr_44_0(\a_delay|sr[0][44]~q ),
	._(\_~246_combout ),
	._1(\_~249_combout ),
	._2(\_~251_combout ));

sqrt_52_lpm_add_sub_23 \subtractors[6] (
	.op_1(\subtractors[6]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[5]|auto_generated|op_1~1_sumout ),
	.op_12(\subtractors[4]|auto_generated|op_1~1_sumout ),
	.op_13(\subtractors[3]|auto_generated|op_1~1_sumout ),
	.op_14(\subtractors[6]|auto_generated|op_1~9_sumout ),
	.op_15(\subtractors[6]|auto_generated|op_1~13_sumout ),
	.op_16(\subtractors[5]|auto_generated|op_1~9_sumout ),
	.op_17(\subtractors[6]|auto_generated|op_1~17_sumout ),
	.op_18(\subtractors[5]|auto_generated|op_1~13_sumout ),
	.op_19(\subtractors[6]|auto_generated|op_1~21_sumout ),
	.op_110(\subtractors[5]|auto_generated|op_1~17_sumout ),
	.op_111(\subtractors[6]|auto_generated|op_1~25_sumout ),
	.op_112(\subtractors[5]|auto_generated|op_1~21_sumout ),
	.op_113(\subtractors[6]|auto_generated|op_1~29_sumout ),
	.op_114(\subtractors[5]|auto_generated|op_1~25_sumout ),
	.op_115(\subtractors[6]|auto_generated|op_1~33_sumout ),
	.op_116(\subtractors[5]|auto_generated|op_1~29_sumout ),
	.sr_0_0(\b_dffe[2]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[2]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[2]|sr[0][2]~q ),
	.sr_38_0(\a_delay|sr[0][38]~q ),
	.sr_39_0(\a_delay|sr[0][39]~q ),
	.sr_40_0(\a_delay|sr[0][40]~q ),
	.sr_41_0(\a_delay|sr[0][41]~q ),
	.sr_42_0(\a_delay|sr[0][42]~q ),
	._(\_~240_combout ),
	._1(\_~243_combout ),
	._2(\_~247_combout ),
	._3(\_~250_combout ));

sqrt_52_lpm_add_sub_24 \subtractors[7] (
	.op_1(\subtractors[7]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[6]|auto_generated|op_1~1_sumout ),
	.op_12(\subtractors[5]|auto_generated|op_1~1_sumout ),
	.op_13(\subtractors[4]|auto_generated|op_1~1_sumout ),
	.op_14(\subtractors[3]|auto_generated|op_1~1_sumout ),
	.op_15(\subtractors[7]|auto_generated|op_1~9_sumout ),
	.op_16(\subtractors[7]|auto_generated|op_1~13_sumout ),
	.op_17(\subtractors[6]|auto_generated|op_1~9_sumout ),
	.op_18(\subtractors[7]|auto_generated|op_1~17_sumout ),
	.op_19(\subtractors[6]|auto_generated|op_1~13_sumout ),
	.op_110(\subtractors[7]|auto_generated|op_1~21_sumout ),
	.op_111(\subtractors[6]|auto_generated|op_1~17_sumout ),
	.op_112(\subtractors[7]|auto_generated|op_1~25_sumout ),
	.op_113(\subtractors[6]|auto_generated|op_1~21_sumout ),
	.op_114(\subtractors[7]|auto_generated|op_1~29_sumout ),
	.op_115(\subtractors[6]|auto_generated|op_1~25_sumout ),
	.op_116(\subtractors[7]|auto_generated|op_1~33_sumout ),
	.op_117(\subtractors[6]|auto_generated|op_1~29_sumout ),
	.op_118(\subtractors[7]|auto_generated|op_1~37_sumout ),
	.op_119(\subtractors[6]|auto_generated|op_1~33_sumout ),
	.sr_0_0(\b_dffe[2]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[2]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[2]|sr[0][2]~q ),
	.sr_36_0(\a_delay|sr[0][36]~q ),
	.sr_37_0(\a_delay|sr[0][37]~q ),
	.sr_38_0(\a_delay|sr[0][38]~q ),
	.sr_39_0(\a_delay|sr[0][39]~q ),
	.sr_40_0(\a_delay|sr[0][40]~q ),
	._(\_~236_combout ),
	._1(\_~238_combout ),
	._2(\_~241_combout ),
	._3(\_~244_combout ),
	._4(\_~248_combout ));

sqrt_52_lpm_add_sub_25 \subtractors[8] (
	.op_1(\subtractors[8]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[8]|auto_generated|op_1~9_sumout ),
	.op_12(\subtractors[8]|auto_generated|op_1~13_sumout ),
	.op_13(\subtractors[8]|auto_generated|op_1~17_sumout ),
	.op_14(\subtractors[8]|auto_generated|op_1~21_sumout ),
	.op_15(\subtractors[8]|auto_generated|op_1~25_sumout ),
	.op_16(\subtractors[8]|auto_generated|op_1~29_sumout ),
	.op_17(\subtractors[8]|auto_generated|op_1~33_sumout ),
	.op_18(\subtractors[8]|auto_generated|op_1~37_sumout ),
	.op_19(\subtractors[8]|auto_generated|op_1~41_sumout ),
	.sr_0_0(\b_dffe[7]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[7]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[7]|sr[0][2]~q ),
	.sr_3_0(\b_dffe[7]|sr[0][3]~q ),
	.sr_4_0(\b_dffe[7]|sr[0][4]~q ),
	.sr_5_0(\b_dffe[7]|sr[0][5]~q ),
	.sr_6_0(\b_dffe[7]|sr[0][6]~q ),
	.sr_7_0(\b_dffe[7]|sr[0][7]~q ),
	.sr_34_1(\a_delay|sr[1][34]~q ),
	.sr_35_1(\a_delay|sr[1][35]~q ),
	.sr_0_01(\r_dffe[7]|sr[0][0]~q ),
	.sr_1_01(\r_dffe[7]|sr[0][1]~q ),
	.sr_2_01(\r_dffe[7]|sr[0][2]~q ),
	.sr_3_01(\r_dffe[7]|sr[0][3]~q ),
	.sr_4_01(\r_dffe[7]|sr[0][4]~q ),
	.sr_5_01(\r_dffe[7]|sr[0][5]~q ),
	.sr_6_01(\r_dffe[7]|sr[0][6]~q ),
	.sr_7_01(\r_dffe[7]|sr[0][7]~q ),
	.sr_8_0(\r_dffe[7]|sr[0][8]~q ));

sqrt_52_lpm_add_sub_26 \subtractors[9] (
	.op_1(\subtractors[9]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[8]|auto_generated|op_1~1_sumout ),
	.op_12(\subtractors[9]|auto_generated|op_1~9_sumout ),
	.op_13(\subtractors[9]|auto_generated|op_1~13_sumout ),
	.op_14(\subtractors[8]|auto_generated|op_1~9_sumout ),
	.op_15(\subtractors[9]|auto_generated|op_1~17_sumout ),
	.op_16(\subtractors[8]|auto_generated|op_1~13_sumout ),
	.op_17(\subtractors[9]|auto_generated|op_1~21_sumout ),
	.op_18(\subtractors[8]|auto_generated|op_1~17_sumout ),
	.op_19(\subtractors[9]|auto_generated|op_1~25_sumout ),
	.op_110(\subtractors[8]|auto_generated|op_1~21_sumout ),
	.op_111(\subtractors[9]|auto_generated|op_1~29_sumout ),
	.op_112(\subtractors[8]|auto_generated|op_1~25_sumout ),
	.op_113(\subtractors[9]|auto_generated|op_1~33_sumout ),
	.op_114(\subtractors[8]|auto_generated|op_1~29_sumout ),
	.op_115(\subtractors[9]|auto_generated|op_1~37_sumout ),
	.op_116(\subtractors[8]|auto_generated|op_1~33_sumout ),
	.op_117(\subtractors[9]|auto_generated|op_1~41_sumout ),
	.op_118(\subtractors[8]|auto_generated|op_1~37_sumout ),
	.op_119(\subtractors[9]|auto_generated|op_1~45_sumout ),
	.op_120(\subtractors[8]|auto_generated|op_1~41_sumout ),
	.sr_0_0(\b_dffe[7]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[7]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[7]|sr[0][2]~q ),
	.sr_3_0(\b_dffe[7]|sr[0][3]~q ),
	.sr_4_0(\b_dffe[7]|sr[0][4]~q ),
	.sr_5_0(\b_dffe[7]|sr[0][5]~q ),
	.sr_6_0(\b_dffe[7]|sr[0][6]~q ),
	.sr_7_0(\b_dffe[7]|sr[0][7]~q ),
	.sr_32_1(\a_delay|sr[1][32]~q ),
	.sr_33_1(\a_delay|sr[1][33]~q ),
	.sr_34_1(\a_delay|sr[1][34]~q ),
	.sr_35_1(\a_delay|sr[1][35]~q ),
	.sr_0_01(\r_dffe[7]|sr[0][0]~q ),
	.sr_1_01(\r_dffe[7]|sr[0][1]~q ),
	.sr_2_01(\r_dffe[7]|sr[0][2]~q ),
	.sr_3_01(\r_dffe[7]|sr[0][3]~q ),
	.sr_4_01(\r_dffe[7]|sr[0][4]~q ),
	.sr_5_01(\r_dffe[7]|sr[0][5]~q ),
	.sr_6_01(\r_dffe[7]|sr[0][6]~q ),
	.sr_7_01(\r_dffe[7]|sr[0][7]~q ));

sqrt_52_lpm_add_sub_2 \subtractors[10] (
	.op_1(\subtractors[10]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[9]|auto_generated|op_1~1_sumout ),
	.op_12(\subtractors[8]|auto_generated|op_1~1_sumout ),
	.op_13(\subtractors[10]|auto_generated|op_1~9_sumout ),
	.op_14(\subtractors[10]|auto_generated|op_1~13_sumout ),
	.op_15(\subtractors[9]|auto_generated|op_1~9_sumout ),
	.op_16(\subtractors[10]|auto_generated|op_1~17_sumout ),
	.op_17(\subtractors[9]|auto_generated|op_1~13_sumout ),
	.op_18(\subtractors[10]|auto_generated|op_1~21_sumout ),
	.op_19(\subtractors[9]|auto_generated|op_1~17_sumout ),
	.op_110(\subtractors[10]|auto_generated|op_1~25_sumout ),
	.op_111(\subtractors[9]|auto_generated|op_1~21_sumout ),
	.op_112(\subtractors[10]|auto_generated|op_1~29_sumout ),
	.op_113(\subtractors[9]|auto_generated|op_1~25_sumout ),
	.op_114(\subtractors[10]|auto_generated|op_1~33_sumout ),
	.op_115(\subtractors[9]|auto_generated|op_1~29_sumout ),
	.op_116(\subtractors[10]|auto_generated|op_1~37_sumout ),
	.op_117(\subtractors[9]|auto_generated|op_1~33_sumout ),
	.op_118(\subtractors[10]|auto_generated|op_1~41_sumout ),
	.op_119(\subtractors[9]|auto_generated|op_1~37_sumout ),
	.op_120(\subtractors[10]|auto_generated|op_1~45_sumout ),
	.op_121(\subtractors[9]|auto_generated|op_1~41_sumout ),
	.op_122(\subtractors[10]|auto_generated|op_1~49_sumout ),
	.op_123(\subtractors[9]|auto_generated|op_1~45_sumout ),
	.sr_0_0(\b_dffe[7]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[7]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[7]|sr[0][2]~q ),
	.sr_3_0(\b_dffe[7]|sr[0][3]~q ),
	.sr_4_0(\b_dffe[7]|sr[0][4]~q ),
	.sr_5_0(\b_dffe[7]|sr[0][5]~q ),
	.sr_6_0(\b_dffe[7]|sr[0][6]~q ),
	.sr_7_0(\b_dffe[7]|sr[0][7]~q ),
	.sr_30_1(\a_delay|sr[1][30]~q ),
	.sr_31_1(\a_delay|sr[1][31]~q ),
	.sr_32_1(\a_delay|sr[1][32]~q ),
	.sr_33_1(\a_delay|sr[1][33]~q ),
	.sr_34_1(\a_delay|sr[1][34]~q ),
	._(\_~205_combout ),
	._1(\_~209_combout ),
	._2(\_~213_combout ),
	._3(\_~217_combout ),
	._4(\_~221_combout ),
	._5(\_~225_combout ),
	._6(\_~228_combout ),
	._7(\_~230_combout ));

sqrt_52_lpm_add_sub_3 \subtractors[11] (
	.op_1(\subtractors[11]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[10]|auto_generated|op_1~1_sumout ),
	.op_12(\subtractors[9]|auto_generated|op_1~1_sumout ),
	.op_13(\subtractors[8]|auto_generated|op_1~1_sumout ),
	.op_14(\subtractors[11]|auto_generated|op_1~9_sumout ),
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
	.op_120(\subtractors[10]|auto_generated|op_1~37_sumout ),
	.op_121(\subtractors[11]|auto_generated|op_1~45_sumout ),
	.op_122(\subtractors[10]|auto_generated|op_1~41_sumout ),
	.op_123(\subtractors[11]|auto_generated|op_1~49_sumout ),
	.op_124(\subtractors[10]|auto_generated|op_1~45_sumout ),
	.op_125(\subtractors[11]|auto_generated|op_1~53_sumout ),
	.op_126(\subtractors[10]|auto_generated|op_1~49_sumout ),
	.sr_0_0(\b_dffe[7]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[7]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[7]|sr[0][2]~q ),
	.sr_3_0(\b_dffe[7]|sr[0][3]~q ),
	.sr_4_0(\b_dffe[7]|sr[0][4]~q ),
	.sr_5_0(\b_dffe[7]|sr[0][5]~q ),
	.sr_6_0(\b_dffe[7]|sr[0][6]~q ),
	.sr_7_0(\b_dffe[7]|sr[0][7]~q ),
	.sr_28_1(\a_delay|sr[1][28]~q ),
	.sr_29_1(\a_delay|sr[1][29]~q ),
	.sr_30_1(\a_delay|sr[1][30]~q ),
	.sr_31_1(\a_delay|sr[1][31]~q ),
	.sr_32_1(\a_delay|sr[1][32]~q ),
	._(\_~199_combout ),
	._1(\_~202_combout ),
	._2(\_~206_combout ),
	._3(\_~210_combout ),
	._4(\_~214_combout ),
	._5(\_~218_combout ),
	._6(\_~222_combout ),
	._7(\_~226_combout ),
	._8(\_~229_combout ));

sqrt_52_lpm_add_sub_4 \subtractors[12] (
	.op_1(\subtractors[12]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[11]|auto_generated|op_1~1_sumout ),
	.op_12(\subtractors[10]|auto_generated|op_1~1_sumout ),
	.op_13(\subtractors[9]|auto_generated|op_1~1_sumout ),
	.op_14(\subtractors[8]|auto_generated|op_1~1_sumout ),
	.op_15(\subtractors[12]|auto_generated|op_1~9_sumout ),
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
	.op_125(\subtractors[11]|auto_generated|op_1~45_sumout ),
	.op_126(\subtractors[12]|auto_generated|op_1~53_sumout ),
	.op_127(\subtractors[11]|auto_generated|op_1~49_sumout ),
	.op_128(\subtractors[12]|auto_generated|op_1~57_sumout ),
	.op_129(\subtractors[11]|auto_generated|op_1~53_sumout ),
	.sr_0_0(\b_dffe[7]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[7]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[7]|sr[0][2]~q ),
	.sr_3_0(\b_dffe[7]|sr[0][3]~q ),
	.sr_4_0(\b_dffe[7]|sr[0][4]~q ),
	.sr_5_0(\b_dffe[7]|sr[0][5]~q ),
	.sr_6_0(\b_dffe[7]|sr[0][6]~q ),
	.sr_7_0(\b_dffe[7]|sr[0][7]~q ),
	.sr_26_1(\a_delay|sr[1][26]~q ),
	.sr_27_1(\a_delay|sr[1][27]~q ),
	.sr_28_1(\a_delay|sr[1][28]~q ),
	.sr_29_1(\a_delay|sr[1][29]~q ),
	.sr_30_1(\a_delay|sr[1][30]~q ),
	._(\_~195_combout ),
	._1(\_~197_combout ),
	._2(\_~200_combout ),
	._3(\_~203_combout ),
	._4(\_~207_combout ),
	._5(\_~211_combout ),
	._6(\_~215_combout ),
	._7(\_~219_combout ),
	._8(\_~223_combout ),
	._9(\_~227_combout ));

sqrt_52_dffpipe_5 \b_dffe[12] (
	.op_1(\subtractors[12]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[11]|auto_generated|op_1~1_sumout ),
	.op_12(\subtractors[10]|auto_generated|op_1~1_sumout ),
	.op_13(\subtractors[9]|auto_generated|op_1~1_sumout ),
	.op_14(\subtractors[8]|auto_generated|op_1~1_sumout ),
	.sr_0_0(\b_dffe[12]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[12]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[12]|sr[0][2]~q ),
	.sr_3_0(\b_dffe[12]|sr[0][3]~q ),
	.sr_4_0(\b_dffe[12]|sr[0][4]~q ),
	.sr_5_0(\b_dffe[12]|sr[0][5]~q ),
	.sr_6_0(\b_dffe[12]|sr[0][6]~q ),
	.sr_7_0(\b_dffe[12]|sr[0][7]~q ),
	.sr_8_0(\b_dffe[12]|sr[0][8]~q ),
	.sr_9_0(\b_dffe[12]|sr[0][9]~q ),
	.sr_10_0(\b_dffe[12]|sr[0][10]~q ),
	.sr_11_0(\b_dffe[12]|sr[0][11]~q ),
	.sr_12_0(\b_dffe[12]|sr[0][12]~q ),
	.sr_0_01(\b_dffe[7]|sr[0][0]~q ),
	.sr_1_01(\b_dffe[7]|sr[0][1]~q ),
	.sr_2_01(\b_dffe[7]|sr[0][2]~q ),
	.sr_3_01(\b_dffe[7]|sr[0][3]~q ),
	.sr_4_01(\b_dffe[7]|sr[0][4]~q ),
	.sr_5_01(\b_dffe[7]|sr[0][5]~q ),
	.sr_6_01(\b_dffe[7]|sr[0][6]~q ),
	.sr_7_01(\b_dffe[7]|sr[0][7]~q ),
	.clock(clk),
	.ena(ena));

sqrt_52_dffpipe_11 \b_dffe[18] (
	.op_1(\subtractors[18]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[17]|auto_generated|op_1~1_sumout ),
	.op_12(\subtractors[16]|auto_generated|op_1~1_sumout ),
	.op_13(\subtractors[15]|auto_generated|op_1~1_sumout ),
	.op_14(\subtractors[14]|auto_generated|op_1~1_sumout ),
	.op_15(\subtractors[13]|auto_generated|op_1~1_sumout ),
	.sr_0_0(\b_dffe[18]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[18]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[18]|sr[0][2]~q ),
	.sr_3_0(\b_dffe[18]|sr[0][3]~q ),
	.sr_4_0(\b_dffe[18]|sr[0][4]~q ),
	.sr_5_0(\b_dffe[18]|sr[0][5]~q ),
	.sr_6_0(\b_dffe[18]|sr[0][6]~q ),
	.sr_7_0(\b_dffe[18]|sr[0][7]~q ),
	.sr_8_0(\b_dffe[18]|sr[0][8]~q ),
	.sr_9_0(\b_dffe[18]|sr[0][9]~q ),
	.sr_10_0(\b_dffe[18]|sr[0][10]~q ),
	.sr_11_0(\b_dffe[18]|sr[0][11]~q ),
	.sr_12_0(\b_dffe[18]|sr[0][12]~q ),
	.sr_13_0(\b_dffe[18]|sr[0][13]~q ),
	.sr_14_0(\b_dffe[18]|sr[0][14]~q ),
	.sr_15_0(\b_dffe[18]|sr[0][15]~q ),
	.sr_16_0(\b_dffe[18]|sr[0][16]~q ),
	.sr_17_0(\b_dffe[18]|sr[0][17]~q ),
	.sr_18_0(\b_dffe[18]|sr[0][18]~q ),
	.sr_0_01(\b_dffe[12]|sr[0][0]~q ),
	.sr_1_01(\b_dffe[12]|sr[0][1]~q ),
	.sr_2_01(\b_dffe[12]|sr[0][2]~q ),
	.sr_3_01(\b_dffe[12]|sr[0][3]~q ),
	.sr_4_01(\b_dffe[12]|sr[0][4]~q ),
	.sr_5_01(\b_dffe[12]|sr[0][5]~q ),
	.sr_6_01(\b_dffe[12]|sr[0][6]~q ),
	.sr_7_01(\b_dffe[12]|sr[0][7]~q ),
	.sr_8_01(\b_dffe[12]|sr[0][8]~q ),
	.sr_9_01(\b_dffe[12]|sr[0][9]~q ),
	.sr_10_01(\b_dffe[12]|sr[0][10]~q ),
	.sr_11_01(\b_dffe[12]|sr[0][11]~q ),
	.sr_12_01(\b_dffe[12]|sr[0][12]~q ),
	.clock(clk),
	.ena(ena));

sqrt_52_dffpipe_17 \b_dffe[23] (
	.op_1(\subtractors[23]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[22]|auto_generated|op_1~1_sumout ),
	.op_12(\subtractors[21]|auto_generated|op_1~1_sumout ),
	.op_13(\subtractors[20]|auto_generated|op_1~1_sumout ),
	.op_14(\subtractors[19]|auto_generated|op_1~1_sumout ),
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
	.sr_13_0(sr_13_0),
	.sr_14_0(sr_14_0),
	.sr_15_0(sr_15_0),
	.sr_16_0(sr_16_0),
	.sr_17_0(sr_17_0),
	.sr_18_0(sr_18_0),
	.sr_19_0(sr_19_0),
	.sr_20_0(sr_20_0),
	.sr_21_0(sr_21_0),
	.sr_22_0(sr_22_0),
	.sr_23_0(sr_23_0),
	.sr_0_01(\b_dffe[18]|sr[0][0]~q ),
	.sr_1_01(\b_dffe[18]|sr[0][1]~q ),
	.sr_2_01(\b_dffe[18]|sr[0][2]~q ),
	.sr_3_01(\b_dffe[18]|sr[0][3]~q ),
	.sr_4_01(\b_dffe[18]|sr[0][4]~q ),
	.sr_5_01(\b_dffe[18]|sr[0][5]~q ),
	.sr_6_01(\b_dffe[18]|sr[0][6]~q ),
	.sr_7_01(\b_dffe[18]|sr[0][7]~q ),
	.sr_8_01(\b_dffe[18]|sr[0][8]~q ),
	.sr_9_01(\b_dffe[18]|sr[0][9]~q ),
	.sr_10_01(\b_dffe[18]|sr[0][10]~q ),
	.sr_11_01(\b_dffe[18]|sr[0][11]~q ),
	.sr_12_01(\b_dffe[18]|sr[0][12]~q ),
	.sr_13_01(\b_dffe[18]|sr[0][13]~q ),
	.sr_14_01(\b_dffe[18]|sr[0][14]~q ),
	.sr_15_01(\b_dffe[18]|sr[0][15]~q ),
	.sr_16_01(\b_dffe[18]|sr[0][16]~q ),
	.sr_17_01(\b_dffe[18]|sr[0][17]~q ),
	.sr_18_01(\b_dffe[18]|sr[0][18]~q ),
	.clock(clk),
	.ena(ena));

sqrt_52_dffpipe_1 a_delay(
	.sr_0_4(\a_delay|sr[4][0]~q ),
	.sr_1_4(\a_delay|sr[4][1]~q ),
	.sr_2_4(\a_delay|sr[4][2]~q ),
	.sr_3_4(\a_delay|sr[4][3]~q ),
	.sr_4_3(\a_delay|sr[3][4]~q ),
	.sr_5_3(\a_delay|sr[3][5]~q ),
	.sr_6_3(\a_delay|sr[3][6]~q ),
	.sr_7_3(\a_delay|sr[3][7]~q ),
	.sr_8_3(\a_delay|sr[3][8]~q ),
	.sr_9_3(\a_delay|sr[3][9]~q ),
	.sr_10_3(\a_delay|sr[3][10]~q ),
	.sr_11_3(\a_delay|sr[3][11]~q ),
	.sr_12_3(\a_delay|sr[3][12]~q ),
	.sr_13_3(\a_delay|sr[3][13]~q ),
	.sr_14_2(\a_delay|sr[2][14]~q ),
	.sr_15_2(\a_delay|sr[2][15]~q ),
	.sr_16_2(\a_delay|sr[2][16]~q ),
	.sr_17_2(\a_delay|sr[2][17]~q ),
	.sr_18_2(\a_delay|sr[2][18]~q ),
	.sr_19_2(\a_delay|sr[2][19]~q ),
	.sr_20_2(\a_delay|sr[2][20]~q ),
	.sr_21_2(\a_delay|sr[2][21]~q ),
	.sr_22_2(\a_delay|sr[2][22]~q ),
	.sr_23_2(\a_delay|sr[2][23]~q ),
	.sr_24_2(\a_delay|sr[2][24]~q ),
	.sr_25_2(\a_delay|sr[2][25]~q ),
	.sr_26_1(\a_delay|sr[1][26]~q ),
	.sr_27_1(\a_delay|sr[1][27]~q ),
	.sr_28_1(\a_delay|sr[1][28]~q ),
	.sr_29_1(\a_delay|sr[1][29]~q ),
	.sr_30_1(\a_delay|sr[1][30]~q ),
	.sr_31_1(\a_delay|sr[1][31]~q ),
	.sr_32_1(\a_delay|sr[1][32]~q ),
	.sr_33_1(\a_delay|sr[1][33]~q ),
	.sr_34_1(\a_delay|sr[1][34]~q ),
	.sr_35_1(\a_delay|sr[1][35]~q ),
	.sr_36_0(\a_delay|sr[0][36]~q ),
	.sr_37_0(\a_delay|sr[0][37]~q ),
	.sr_38_0(\a_delay|sr[0][38]~q ),
	.sr_39_0(\a_delay|sr[0][39]~q ),
	.sr_40_0(\a_delay|sr[0][40]~q ),
	.sr_41_0(\a_delay|sr[0][41]~q ),
	.sr_42_0(\a_delay|sr[0][42]~q ),
	.sr_43_0(\a_delay|sr[0][43]~q ),
	.sr_44_0(\a_delay|sr[0][44]~q ),
	.sr_45_0(\a_delay|sr[0][45]~q ),
	.clock(clk),
	.ena(ena),
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
	.radical_21(radical_21),
	.radical_22(radical_22),
	.radical_23(radical_23),
	.radical_24(radical_24),
	.radical_25(radical_25),
	.radical_26(radical_26),
	.radical_27(radical_27),
	.radical_28(radical_28),
	.radical_29(radical_29),
	.radical_30(radical_30),
	.radical_31(radical_31),
	.radical_32(radical_32),
	.radical_33(radical_33),
	.radical_34(radical_34),
	.radical_35(radical_35),
	.radical_36(radical_36),
	.radical_37(radical_37),
	.radical_38(radical_38),
	.radical_39(radical_39),
	.radical_40(radical_40),
	.radical_41(radical_41),
	.radical_42(radical_42),
	.radical_43(radical_43),
	.radical_44(radical_44),
	.radical_45(radical_45));

sqrt_52_lpm_add_sub_1 \subtractors[0] (
	.op_1(\subtractors[0]|auto_generated|op_1~0_combout ),
	.radical_50(radical_50),
	.radical_51(radical_51));

sqrt_52_lpm_add_sub_12 \subtractors[1] (
	.op_1(\subtractors[1]|auto_generated|op_1~0_combout ),
	.op_11(\subtractors[1]|auto_generated|op_1~1_combout ),
	.radical_50(radical_50),
	.radical_48(radical_48),
	.radical_49(radical_49),
	.radical_51(radical_51));

sqrt_52_lpm_add_sub_19 \subtractors[2] (
	.op_1(\subtractors[2]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[2]|auto_generated|op_1~9_sumout ),
	.op_12(\subtractors[2]|auto_generated|op_1~13_sumout ),
	.op_13(\subtractors[2]|auto_generated|op_1~17_sumout ),
	.op_14(\subtractors[1]|auto_generated|op_1~0_combout ),
	.op_15(\subtractors[1]|auto_generated|op_1~1_combout ),
	.radical_50(radical_50),
	.radical_48(radical_48),
	.radical_49(radical_49),
	.radical_51(radical_51),
	.radical_46(radical_46),
	.radical_47(radical_47));

sqrt_52_dffpipe_38 \r_dffe[18] (
	.sr_2_0(\r_dffe[18]|sr[0][2]~q ),
	.sr_3_0(\r_dffe[18]|sr[0][3]~q ),
	.sr_4_0(\r_dffe[18]|sr[0][4]~q ),
	.sr_5_0(\r_dffe[18]|sr[0][5]~q ),
	.sr_6_0(\r_dffe[18]|sr[0][6]~q ),
	.sr_7_0(\r_dffe[18]|sr[0][7]~q ),
	.sr_8_0(\r_dffe[18]|sr[0][8]~q ),
	.sr_9_0(\r_dffe[18]|sr[0][9]~q ),
	.sr_10_0(\r_dffe[18]|sr[0][10]~q ),
	.sr_11_0(\r_dffe[18]|sr[0][11]~q ),
	.sr_12_0(\r_dffe[18]|sr[0][12]~q ),
	.op_1(\subtractors[18]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[18]|auto_generated|op_1~9_sumout ),
	.op_12(\subtractors[18]|auto_generated|op_1~13_sumout ),
	.op_13(\subtractors[18]|auto_generated|op_1~17_sumout ),
	.op_14(\subtractors[18]|auto_generated|op_1~21_sumout ),
	.op_15(\subtractors[18]|auto_generated|op_1~25_sumout ),
	.op_16(\subtractors[18]|auto_generated|op_1~29_sumout ),
	.op_17(\subtractors[18]|auto_generated|op_1~33_sumout ),
	.op_18(\subtractors[18]|auto_generated|op_1~37_sumout ),
	.op_19(\subtractors[18]|auto_generated|op_1~41_sumout ),
	.op_110(\subtractors[18]|auto_generated|op_1~45_sumout ),
	.op_111(\subtractors[18]|auto_generated|op_1~49_sumout ),
	.sr_13_0(\r_dffe[18]|sr[0][13]~q ),
	.sr_14_0(\r_dffe[18]|sr[0][14]~q ),
	.sr_15_0(\r_dffe[18]|sr[0][15]~q ),
	.sr_16_0(\r_dffe[18]|sr[0][16]~q ),
	.sr_17_0(\r_dffe[18]|sr[0][17]~q ),
	.sr_18_0(\r_dffe[18]|sr[0][18]~q ),
	.sr_19_0(\r_dffe[18]|sr[0][19]~q ),
	.op_112(\subtractors[18]|auto_generated|op_1~61_sumout ),
	.op_113(\subtractors[18]|auto_generated|op_1~65_sumout ),
	.op_114(\subtractors[18]|auto_generated|op_1~69_sumout ),
	.op_115(\subtractors[18]|auto_generated|op_1~73_sumout ),
	.op_116(\subtractors[18]|auto_generated|op_1~77_sumout ),
	.op_117(\subtractors[18]|auto_generated|op_1~81_sumout ),
	.op_118(\subtractors[18]|auto_generated|op_1~85_sumout ),
	.sr_0_0(\r_dffe[18]|sr[0][0]~q ),
	.sr_1_0(\r_dffe[18]|sr[0][1]~q ),
	._(\_~98_combout ),
	._1(\_~99_combout ),
	._2(\_~100_combout ),
	._3(\_~101_combout ),
	._4(\_~102_combout ),
	._5(\_~104_combout ),
	._6(\_~106_combout ),
	._7(\_~109_combout ),
	._8(\_~112_combout ),
	._9(\_~116_combout ),
	._10(\_~120_combout ),
	._11(\_~125_combout ),
	._12(\_~130_combout ),
	._13(\_~150_combout ),
	._14(\_~155_combout ),
	._15(\_~160_combout ),
	._16(\_~165_combout ),
	._17(\_~170_combout ),
	._18(\_~175_combout ),
	._19(\_~180_combout ),
	.clock(clk),
	.ena(ena));

sqrt_52_dffpipe_44 \r_dffe[23] (
	.sr_2_0(\r_dffe[23]|sr[0][2]~q ),
	.sr_3_0(\r_dffe[23]|sr[0][3]~q ),
	.sr_4_0(\r_dffe[23]|sr[0][4]~q ),
	.sr_5_0(\r_dffe[23]|sr[0][5]~q ),
	.sr_6_0(\r_dffe[23]|sr[0][6]~q ),
	.sr_7_0(\r_dffe[23]|sr[0][7]~q ),
	.sr_8_0(\r_dffe[23]|sr[0][8]~q ),
	.sr_9_0(\r_dffe[23]|sr[0][9]~q ),
	.sr_10_0(\r_dffe[23]|sr[0][10]~q ),
	.sr_11_0(\r_dffe[23]|sr[0][11]~q ),
	.sr_12_0(\r_dffe[23]|sr[0][12]~q ),
	.sr_13_0(\r_dffe[23]|sr[0][13]~q ),
	.sr_14_0(\r_dffe[23]|sr[0][14]~q ),
	.sr_15_0(\r_dffe[23]|sr[0][15]~q ),
	.sr_16_0(\r_dffe[23]|sr[0][16]~q ),
	.sr_17_0(\r_dffe[23]|sr[0][17]~q ),
	.sr_18_0(\r_dffe[23]|sr[0][18]~q ),
	.sr_19_0(\r_dffe[23]|sr[0][19]~q ),
	.sr_20_0(\r_dffe[23]|sr[0][20]~q ),
	.sr_21_0(\r_dffe[23]|sr[0][21]~q ),
	.sr_22_0(\r_dffe[23]|sr[0][22]~q ),
	.op_1(\subtractors[23]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[23]|auto_generated|op_1~9_sumout ),
	.op_12(\subtractors[23]|auto_generated|op_1~13_sumout ),
	.op_13(\subtractors[23]|auto_generated|op_1~17_sumout ),
	.op_14(\subtractors[23]|auto_generated|op_1~21_sumout ),
	.op_15(\subtractors[23]|auto_generated|op_1~25_sumout ),
	.op_16(\subtractors[23]|auto_generated|op_1~29_sumout ),
	.op_17(\subtractors[23]|auto_generated|op_1~33_sumout ),
	.op_18(\subtractors[23]|auto_generated|op_1~37_sumout ),
	.op_19(\subtractors[23]|auto_generated|op_1~41_sumout ),
	.op_110(\subtractors[23]|auto_generated|op_1~45_sumout ),
	.op_111(\subtractors[23]|auto_generated|op_1~49_sumout ),
	.op_112(\subtractors[23]|auto_generated|op_1~53_sumout ),
	.op_113(\subtractors[23]|auto_generated|op_1~57_sumout ),
	.op_114(\subtractors[23]|auto_generated|op_1~61_sumout ),
	.op_115(\subtractors[23]|auto_generated|op_1~65_sumout ),
	.op_116(\subtractors[23]|auto_generated|op_1~69_sumout ),
	.op_117(\subtractors[23]|auto_generated|op_1~73_sumout ),
	.op_118(\subtractors[23]|auto_generated|op_1~77_sumout ),
	.op_119(\subtractors[23]|auto_generated|op_1~81_sumout ),
	.op_120(\subtractors[23]|auto_generated|op_1~85_sumout ),
	.op_121(\subtractors[23]|auto_generated|op_1~89_sumout ),
	.sr_23_0(\r_dffe[23]|sr[0][23]~q ),
	.sr_24_0(\r_dffe[23]|sr[0][24]~q ),
	.op_122(\subtractors[23]|auto_generated|op_1~101_sumout ),
	.op_123(\subtractors[23]|auto_generated|op_1~105_sumout ),
	.sr_0_0(\r_dffe[23]|sr[0][0]~q ),
	.sr_1_0(\r_dffe[23]|sr[0][1]~q ),
	._(\_~27_combout ),
	._1(\_~28_combout ),
	._2(\_~29_combout ),
	._3(\_~30_combout ),
	._4(\_~31_combout ),
	._5(\_~33_combout ),
	._6(\_~35_combout ),
	._7(\_~38_combout ),
	._8(\_~41_combout ),
	._9(\_~45_combout ),
	._10(\_~49_combout ),
	._11(\_~53_combout ),
	._12(\_~57_combout ),
	._13(\_~61_combout ),
	._14(\_~65_combout ),
	._15(\_~69_combout ),
	._16(\_~73_combout ),
	._17(\_~77_combout ),
	._18(\_~81_combout ),
	._19(\_~85_combout ),
	._20(\_~89_combout ),
	._21(\_~93_combout ),
	._22(\_~97_combout ),
	._23(\_~134_combout ),
	._24(\_~138_combout ),
	.clock(clk),
	.ena(ena));

sqrt_52_dffpipe_20 \b_dffe[2] (
	.op_1(\subtractors[2]|auto_generated|op_1~1_sumout ),
	.sr_0_0(\b_dffe[2]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[2]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[2]|sr[0][2]~q ),
	.op_11(\subtractors[1]|auto_generated|op_1~0_combout ),
	.op_12(\subtractors[0]|auto_generated|op_1~0_combout ),
	.clock(clk),
	.ena(ena));

sqrt_52_dffpipe_25 \b_dffe[7] (
	.op_1(\subtractors[7]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[6]|auto_generated|op_1~1_sumout ),
	.op_12(\subtractors[5]|auto_generated|op_1~1_sumout ),
	.op_13(\subtractors[4]|auto_generated|op_1~1_sumout ),
	.op_14(\subtractors[3]|auto_generated|op_1~1_sumout ),
	.sr_0_0(\b_dffe[7]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[7]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[7]|sr[0][2]~q ),
	.sr_3_0(\b_dffe[7]|sr[0][3]~q ),
	.sr_4_0(\b_dffe[7]|sr[0][4]~q ),
	.sr_5_0(\b_dffe[7]|sr[0][5]~q ),
	.sr_6_0(\b_dffe[7]|sr[0][6]~q ),
	.sr_7_0(\b_dffe[7]|sr[0][7]~q ),
	.sr_0_01(\b_dffe[2]|sr[0][0]~q ),
	.sr_1_01(\b_dffe[2]|sr[0][1]~q ),
	.sr_2_01(\b_dffe[2]|sr[0][2]~q ),
	.clock(clk),
	.ena(ena));

sqrt_52_dffpipe_47 \r_dffe[2] (
	.sr_0_0(\r_dffe[2]|sr[0][0]~q ),
	.sr_1_0(\r_dffe[2]|sr[0][1]~q ),
	.sr_2_0(\r_dffe[2]|sr[0][2]~q ),
	.sr_3_0(\r_dffe[2]|sr[0][3]~q ),
	._(\_~252_combout ),
	._1(\_~253_combout ),
	._2(\_~254_combout ),
	._3(\_~255_combout ),
	.clock(clk),
	.ena(ena));

sqrt_52_dffpipe_52 \r_dffe[7] (
	.sr_0_0(\r_dffe[7]|sr[0][0]~q ),
	.sr_1_0(\r_dffe[7]|sr[0][1]~q ),
	.sr_2_0(\r_dffe[7]|sr[0][2]~q ),
	.sr_3_0(\r_dffe[7]|sr[0][3]~q ),
	.sr_4_0(\r_dffe[7]|sr[0][4]~q ),
	.sr_5_0(\r_dffe[7]|sr[0][5]~q ),
	.sr_6_0(\r_dffe[7]|sr[0][6]~q ),
	.sr_7_0(\r_dffe[7]|sr[0][7]~q ),
	.sr_8_0(\r_dffe[7]|sr[0][8]~q ),
	._(\_~231_combout ),
	._1(\_~232_combout ),
	._2(\_~233_combout ),
	._3(\_~234_combout ),
	._4(\_~235_combout ),
	._5(\_~237_combout ),
	._6(\_~239_combout ),
	._7(\_~242_combout ),
	._8(\_~245_combout ),
	.clock(clk),
	.ena(ena));

sqrt_52_dffpipe_32 \r_dffe[12] (
	.sr_0_0(\r_dffe[12]|sr[0][0]~q ),
	._(\_~145_combout ),
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
	.sr_13_0(\r_dffe[12]|sr[0][13]~q ),
	._1(\_~191_combout ),
	._2(\_~192_combout ),
	._3(\_~193_combout ),
	._4(\_~194_combout ),
	._5(\_~196_combout ),
	._6(\_~198_combout ),
	._7(\_~201_combout ),
	._8(\_~204_combout ),
	._9(\_~208_combout ),
	._10(\_~212_combout ),
	._11(\_~216_combout ),
	._12(\_~220_combout ),
	._13(\_~224_combout ),
	.clock(clk),
	.ena(ena));

sqrt_52_lpm_add_sub_5 \subtractors[13] (
	.op_1(\subtractors[13]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[13]|auto_generated|op_1~5_sumout ),
	.op_12(\subtractors[13]|auto_generated|op_1~9_sumout ),
	.op_13(\subtractors[13]|auto_generated|op_1~21_sumout ),
	.op_14(\subtractors[13]|auto_generated|op_1~25_sumout ),
	.op_15(\subtractors[13]|auto_generated|op_1~29_sumout ),
	.op_16(\subtractors[13]|auto_generated|op_1~33_sumout ),
	.op_17(\subtractors[13]|auto_generated|op_1~37_sumout ),
	.op_18(\subtractors[13]|auto_generated|op_1~41_sumout ),
	.op_19(\subtractors[13]|auto_generated|op_1~45_sumout ),
	.op_110(\subtractors[13]|auto_generated|op_1~49_sumout ),
	.op_111(\subtractors[13]|auto_generated|op_1~53_sumout ),
	.op_112(\subtractors[13]|auto_generated|op_1~57_sumout ),
	.op_113(\subtractors[13]|auto_generated|op_1~61_sumout ),
	.op_114(\subtractors[13]|auto_generated|op_1~65_sumout ),
	.sr_0_0(\b_dffe[12]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[12]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[12]|sr[0][2]~q ),
	.sr_3_0(\b_dffe[12]|sr[0][3]~q ),
	.sr_4_0(\b_dffe[12]|sr[0][4]~q ),
	.sr_5_0(\b_dffe[12]|sr[0][5]~q ),
	.sr_6_0(\b_dffe[12]|sr[0][6]~q ),
	.sr_7_0(\b_dffe[12]|sr[0][7]~q ),
	.sr_8_0(\b_dffe[12]|sr[0][8]~q ),
	.sr_9_0(\b_dffe[12]|sr[0][9]~q ),
	.sr_10_0(\b_dffe[12]|sr[0][10]~q ),
	.sr_11_0(\b_dffe[12]|sr[0][11]~q ),
	.sr_12_0(\b_dffe[12]|sr[0][12]~q ),
	.sr_24_2(\a_delay|sr[2][24]~q ),
	.sr_25_2(\a_delay|sr[2][25]~q ),
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

sqrt_52_lpm_add_sub_6 \subtractors[14] (
	.op_1(\subtractors[14]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[13]|auto_generated|op_1~1_sumout ),
	.op_12(\subtractors[14]|auto_generated|op_1~5_sumout ),
	.op_13(\subtractors[14]|auto_generated|op_1~9_sumout ),
	.op_14(\subtractors[13]|auto_generated|op_1~5_sumout ),
	.op_15(\subtractors[14]|auto_generated|op_1~13_sumout ),
	.op_16(\subtractors[13]|auto_generated|op_1~9_sumout ),
	.op_17(\subtractors[14]|auto_generated|op_1~17_sumout ),
	.op_18(\subtractors[13]|auto_generated|op_1~21_sumout ),
	.op_19(\subtractors[14]|auto_generated|op_1~29_sumout ),
	.op_110(\subtractors[13]|auto_generated|op_1~25_sumout ),
	.op_111(\subtractors[14]|auto_generated|op_1~33_sumout ),
	.op_112(\subtractors[13]|auto_generated|op_1~29_sumout ),
	.op_113(\subtractors[14]|auto_generated|op_1~37_sumout ),
	.op_114(\subtractors[13]|auto_generated|op_1~33_sumout ),
	.op_115(\subtractors[14]|auto_generated|op_1~41_sumout ),
	.op_116(\subtractors[13]|auto_generated|op_1~37_sumout ),
	.op_117(\subtractors[14]|auto_generated|op_1~45_sumout ),
	.op_118(\subtractors[13]|auto_generated|op_1~41_sumout ),
	.op_119(\subtractors[14]|auto_generated|op_1~49_sumout ),
	.op_120(\subtractors[13]|auto_generated|op_1~45_sumout ),
	.op_121(\subtractors[14]|auto_generated|op_1~53_sumout ),
	.op_122(\subtractors[13]|auto_generated|op_1~49_sumout ),
	.op_123(\subtractors[14]|auto_generated|op_1~57_sumout ),
	.op_124(\subtractors[13]|auto_generated|op_1~53_sumout ),
	.op_125(\subtractors[14]|auto_generated|op_1~61_sumout ),
	.op_126(\subtractors[13]|auto_generated|op_1~57_sumout ),
	.op_127(\subtractors[14]|auto_generated|op_1~65_sumout ),
	.op_128(\subtractors[13]|auto_generated|op_1~61_sumout ),
	.op_129(\subtractors[14]|auto_generated|op_1~69_sumout ),
	.op_130(\subtractors[13]|auto_generated|op_1~65_sumout ),
	.sr_0_0(\b_dffe[12]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[12]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[12]|sr[0][2]~q ),
	.sr_3_0(\b_dffe[12]|sr[0][3]~q ),
	.sr_4_0(\b_dffe[12]|sr[0][4]~q ),
	.sr_5_0(\b_dffe[12]|sr[0][5]~q ),
	.sr_6_0(\b_dffe[12]|sr[0][6]~q ),
	.sr_7_0(\b_dffe[12]|sr[0][7]~q ),
	.sr_8_0(\b_dffe[12]|sr[0][8]~q ),
	.sr_9_0(\b_dffe[12]|sr[0][9]~q ),
	.sr_10_0(\b_dffe[12]|sr[0][10]~q ),
	.sr_11_0(\b_dffe[12]|sr[0][11]~q ),
	.sr_12_0(\b_dffe[12]|sr[0][12]~q ),
	.sr_22_2(\a_delay|sr[2][22]~q ),
	.sr_23_2(\a_delay|sr[2][23]~q ),
	.sr_24_2(\a_delay|sr[2][24]~q ),
	.sr_25_2(\a_delay|sr[2][25]~q ),
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
	.sr_12_01(\r_dffe[12]|sr[0][12]~q ));

sqrt_52_lpm_add_sub_7 \subtractors[15] (
	.op_1(\subtractors[15]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[14]|auto_generated|op_1~1_sumout ),
	.op_12(\subtractors[13]|auto_generated|op_1~1_sumout ),
	.op_13(\subtractors[15]|auto_generated|op_1~5_sumout ),
	.op_14(\subtractors[15]|auto_generated|op_1~9_sumout ),
	.op_15(\subtractors[14]|auto_generated|op_1~5_sumout ),
	.op_16(\subtractors[15]|auto_generated|op_1~13_sumout ),
	.op_17(\subtractors[14]|auto_generated|op_1~9_sumout ),
	.op_18(\subtractors[15]|auto_generated|op_1~17_sumout ),
	.op_19(\subtractors[14]|auto_generated|op_1~13_sumout ),
	.op_110(\subtractors[15]|auto_generated|op_1~21_sumout ),
	.op_111(\subtractors[14]|auto_generated|op_1~17_sumout ),
	.op_112(\subtractors[15]|auto_generated|op_1~25_sumout ),
	.op_113(\subtractors[14]|auto_generated|op_1~29_sumout ),
	.op_114(\subtractors[15]|auto_generated|op_1~37_sumout ),
	.op_115(\subtractors[14]|auto_generated|op_1~33_sumout ),
	.op_116(\subtractors[15]|auto_generated|op_1~41_sumout ),
	.op_117(\subtractors[14]|auto_generated|op_1~37_sumout ),
	.op_118(\subtractors[15]|auto_generated|op_1~45_sumout ),
	.op_119(\subtractors[14]|auto_generated|op_1~41_sumout ),
	.op_120(\subtractors[15]|auto_generated|op_1~49_sumout ),
	.op_121(\subtractors[14]|auto_generated|op_1~45_sumout ),
	.op_122(\subtractors[15]|auto_generated|op_1~53_sumout ),
	.op_123(\subtractors[14]|auto_generated|op_1~49_sumout ),
	.op_124(\subtractors[15]|auto_generated|op_1~57_sumout ),
	.op_125(\subtractors[14]|auto_generated|op_1~53_sumout ),
	.op_126(\subtractors[15]|auto_generated|op_1~61_sumout ),
	.op_127(\subtractors[14]|auto_generated|op_1~57_sumout ),
	.op_128(\subtractors[15]|auto_generated|op_1~65_sumout ),
	.op_129(\subtractors[14]|auto_generated|op_1~61_sumout ),
	.op_130(\subtractors[15]|auto_generated|op_1~69_sumout ),
	.op_131(\subtractors[14]|auto_generated|op_1~65_sumout ),
	.op_132(\subtractors[15]|auto_generated|op_1~73_sumout ),
	.op_133(\subtractors[14]|auto_generated|op_1~69_sumout ),
	.sr_0_0(\b_dffe[12]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[12]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[12]|sr[0][2]~q ),
	.sr_3_0(\b_dffe[12]|sr[0][3]~q ),
	.sr_4_0(\b_dffe[12]|sr[0][4]~q ),
	.sr_5_0(\b_dffe[12]|sr[0][5]~q ),
	.sr_6_0(\b_dffe[12]|sr[0][6]~q ),
	.sr_7_0(\b_dffe[12]|sr[0][7]~q ),
	.sr_8_0(\b_dffe[12]|sr[0][8]~q ),
	.sr_9_0(\b_dffe[12]|sr[0][9]~q ),
	.sr_10_0(\b_dffe[12]|sr[0][10]~q ),
	.sr_11_0(\b_dffe[12]|sr[0][11]~q ),
	.sr_12_0(\b_dffe[12]|sr[0][12]~q ),
	.sr_20_2(\a_delay|sr[2][20]~q ),
	.sr_21_2(\a_delay|sr[2][21]~q ),
	.sr_22_2(\a_delay|sr[2][22]~q ),
	.sr_23_2(\a_delay|sr[2][23]~q ),
	.sr_24_2(\a_delay|sr[2][24]~q ),
	._(\_~121_combout ),
	._1(\_~126_combout ),
	._2(\_~146_combout ),
	._3(\_~151_combout ),
	._4(\_~156_combout ),
	._5(\_~161_combout ),
	._6(\_~166_combout ),
	._7(\_~171_combout ),
	._8(\_~176_combout ),
	._9(\_~181_combout ),
	._10(\_~185_combout ),
	._11(\_~188_combout ),
	._12(\_~190_combout ));

sqrt_52_lpm_add_sub_8 \subtractors[16] (
	.op_1(\subtractors[16]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[15]|auto_generated|op_1~1_sumout ),
	.op_12(\subtractors[14]|auto_generated|op_1~1_sumout ),
	.op_13(\subtractors[13]|auto_generated|op_1~1_sumout ),
	.op_14(\subtractors[16]|auto_generated|op_1~5_sumout ),
	.op_15(\subtractors[16]|auto_generated|op_1~9_sumout ),
	.op_16(\subtractors[15]|auto_generated|op_1~5_sumout ),
	.op_17(\subtractors[16]|auto_generated|op_1~13_sumout ),
	.op_18(\subtractors[15]|auto_generated|op_1~9_sumout ),
	.op_19(\subtractors[16]|auto_generated|op_1~17_sumout ),
	.op_110(\subtractors[15]|auto_generated|op_1~13_sumout ),
	.op_111(\subtractors[16]|auto_generated|op_1~21_sumout ),
	.op_112(\subtractors[15]|auto_generated|op_1~17_sumout ),
	.op_113(\subtractors[16]|auto_generated|op_1~25_sumout ),
	.op_114(\subtractors[15]|auto_generated|op_1~21_sumout ),
	.op_115(\subtractors[16]|auto_generated|op_1~29_sumout ),
	.op_116(\subtractors[15]|auto_generated|op_1~25_sumout ),
	.op_117(\subtractors[16]|auto_generated|op_1~33_sumout ),
	.op_118(\subtractors[15]|auto_generated|op_1~37_sumout ),
	.op_119(\subtractors[16]|auto_generated|op_1~45_sumout ),
	.op_120(\subtractors[15]|auto_generated|op_1~41_sumout ),
	.op_121(\subtractors[16]|auto_generated|op_1~49_sumout ),
	.op_122(\subtractors[15]|auto_generated|op_1~45_sumout ),
	.op_123(\subtractors[16]|auto_generated|op_1~53_sumout ),
	.op_124(\subtractors[15]|auto_generated|op_1~49_sumout ),
	.op_125(\subtractors[16]|auto_generated|op_1~57_sumout ),
	.op_126(\subtractors[15]|auto_generated|op_1~53_sumout ),
	.op_127(\subtractors[16]|auto_generated|op_1~61_sumout ),
	.op_128(\subtractors[15]|auto_generated|op_1~57_sumout ),
	.op_129(\subtractors[16]|auto_generated|op_1~65_sumout ),
	.op_130(\subtractors[15]|auto_generated|op_1~61_sumout ),
	.op_131(\subtractors[16]|auto_generated|op_1~69_sumout ),
	.op_132(\subtractors[15]|auto_generated|op_1~65_sumout ),
	.op_133(\subtractors[16]|auto_generated|op_1~73_sumout ),
	.op_134(\subtractors[15]|auto_generated|op_1~69_sumout ),
	.op_135(\subtractors[16]|auto_generated|op_1~77_sumout ),
	.op_136(\subtractors[15]|auto_generated|op_1~73_sumout ),
	.sr_0_0(\b_dffe[12]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[12]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[12]|sr[0][2]~q ),
	.sr_3_0(\b_dffe[12]|sr[0][3]~q ),
	.sr_4_0(\b_dffe[12]|sr[0][4]~q ),
	.sr_5_0(\b_dffe[12]|sr[0][5]~q ),
	.sr_6_0(\b_dffe[12]|sr[0][6]~q ),
	.sr_7_0(\b_dffe[12]|sr[0][7]~q ),
	.sr_8_0(\b_dffe[12]|sr[0][8]~q ),
	.sr_9_0(\b_dffe[12]|sr[0][9]~q ),
	.sr_10_0(\b_dffe[12]|sr[0][10]~q ),
	.sr_11_0(\b_dffe[12]|sr[0][11]~q ),
	.sr_12_0(\b_dffe[12]|sr[0][12]~q ),
	.sr_18_2(\a_delay|sr[2][18]~q ),
	.sr_19_2(\a_delay|sr[2][19]~q ),
	.sr_20_2(\a_delay|sr[2][20]~q ),
	.sr_21_2(\a_delay|sr[2][21]~q ),
	.sr_22_2(\a_delay|sr[2][22]~q ),
	._(\_~113_combout ),
	._1(\_~117_combout ),
	._2(\_~122_combout ),
	._3(\_~127_combout ),
	._4(\_~147_combout ),
	._5(\_~152_combout ),
	._6(\_~157_combout ),
	._7(\_~162_combout ),
	._8(\_~167_combout ),
	._9(\_~172_combout ),
	._10(\_~177_combout ),
	._11(\_~182_combout ),
	._12(\_~186_combout ),
	._13(\_~189_combout ));

sqrt_52_lpm_add_sub_9 \subtractors[17] (
	.op_1(\subtractors[17]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[16]|auto_generated|op_1~1_sumout ),
	.op_12(\subtractors[15]|auto_generated|op_1~1_sumout ),
	.op_13(\subtractors[14]|auto_generated|op_1~1_sumout ),
	.op_14(\subtractors[13]|auto_generated|op_1~1_sumout ),
	.op_15(\subtractors[17]|auto_generated|op_1~5_sumout ),
	.op_16(\subtractors[17]|auto_generated|op_1~9_sumout ),
	.op_17(\subtractors[16]|auto_generated|op_1~5_sumout ),
	.op_18(\subtractors[17]|auto_generated|op_1~13_sumout ),
	.op_19(\subtractors[16]|auto_generated|op_1~9_sumout ),
	.op_110(\subtractors[17]|auto_generated|op_1~17_sumout ),
	.op_111(\subtractors[16]|auto_generated|op_1~13_sumout ),
	.op_112(\subtractors[17]|auto_generated|op_1~21_sumout ),
	.op_113(\subtractors[16]|auto_generated|op_1~17_sumout ),
	.op_114(\subtractors[17]|auto_generated|op_1~25_sumout ),
	.op_115(\subtractors[16]|auto_generated|op_1~21_sumout ),
	.op_116(\subtractors[17]|auto_generated|op_1~29_sumout ),
	.op_117(\subtractors[16]|auto_generated|op_1~25_sumout ),
	.op_118(\subtractors[17]|auto_generated|op_1~33_sumout ),
	.op_119(\subtractors[16]|auto_generated|op_1~29_sumout ),
	.op_120(\subtractors[17]|auto_generated|op_1~37_sumout ),
	.op_121(\subtractors[16]|auto_generated|op_1~33_sumout ),
	.op_122(\subtractors[17]|auto_generated|op_1~41_sumout ),
	.op_123(\subtractors[16]|auto_generated|op_1~45_sumout ),
	.op_124(\subtractors[17]|auto_generated|op_1~53_sumout ),
	.op_125(\subtractors[16]|auto_generated|op_1~49_sumout ),
	.op_126(\subtractors[17]|auto_generated|op_1~57_sumout ),
	.op_127(\subtractors[16]|auto_generated|op_1~53_sumout ),
	.op_128(\subtractors[17]|auto_generated|op_1~61_sumout ),
	.op_129(\subtractors[16]|auto_generated|op_1~57_sumout ),
	.op_130(\subtractors[17]|auto_generated|op_1~65_sumout ),
	.op_131(\subtractors[16]|auto_generated|op_1~61_sumout ),
	.op_132(\subtractors[17]|auto_generated|op_1~69_sumout ),
	.op_133(\subtractors[16]|auto_generated|op_1~65_sumout ),
	.op_134(\subtractors[17]|auto_generated|op_1~73_sumout ),
	.op_135(\subtractors[16]|auto_generated|op_1~69_sumout ),
	.op_136(\subtractors[17]|auto_generated|op_1~77_sumout ),
	.op_137(\subtractors[16]|auto_generated|op_1~73_sumout ),
	.op_138(\subtractors[17]|auto_generated|op_1~81_sumout ),
	.op_139(\subtractors[16]|auto_generated|op_1~77_sumout ),
	.sr_0_0(\b_dffe[12]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[12]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[12]|sr[0][2]~q ),
	.sr_3_0(\b_dffe[12]|sr[0][3]~q ),
	.sr_4_0(\b_dffe[12]|sr[0][4]~q ),
	.sr_5_0(\b_dffe[12]|sr[0][5]~q ),
	.sr_6_0(\b_dffe[12]|sr[0][6]~q ),
	.sr_7_0(\b_dffe[12]|sr[0][7]~q ),
	.sr_8_0(\b_dffe[12]|sr[0][8]~q ),
	.sr_9_0(\b_dffe[12]|sr[0][9]~q ),
	.sr_10_0(\b_dffe[12]|sr[0][10]~q ),
	.sr_11_0(\b_dffe[12]|sr[0][11]~q ),
	.sr_12_0(\b_dffe[12]|sr[0][12]~q ),
	.sr_16_2(\a_delay|sr[2][16]~q ),
	.sr_17_2(\a_delay|sr[2][17]~q ),
	.sr_18_2(\a_delay|sr[2][18]~q ),
	.sr_19_2(\a_delay|sr[2][19]~q ),
	.sr_20_2(\a_delay|sr[2][20]~q ),
	._(\_~107_combout ),
	._1(\_~110_combout ),
	._2(\_~114_combout ),
	._3(\_~118_combout ),
	._4(\_~123_combout ),
	._5(\_~128_combout ),
	._6(\_~148_combout ),
	._7(\_~153_combout ),
	._8(\_~158_combout ),
	._9(\_~163_combout ),
	._10(\_~168_combout ),
	._11(\_~173_combout ),
	._12(\_~178_combout ),
	._13(\_~183_combout ),
	._14(\_~187_combout ));

sqrt_52_lpm_add_sub_10 \subtractors[18] (
	.op_1(\subtractors[18]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[17]|auto_generated|op_1~1_sumout ),
	.op_12(\subtractors[16]|auto_generated|op_1~1_sumout ),
	.op_13(\subtractors[15]|auto_generated|op_1~1_sumout ),
	.op_14(\subtractors[14]|auto_generated|op_1~1_sumout ),
	.op_15(\subtractors[13]|auto_generated|op_1~1_sumout ),
	.op_16(\subtractors[18]|auto_generated|op_1~5_sumout ),
	.op_17(\subtractors[18]|auto_generated|op_1~9_sumout ),
	.op_18(\subtractors[17]|auto_generated|op_1~5_sumout ),
	.op_19(\subtractors[18]|auto_generated|op_1~13_sumout ),
	.op_110(\subtractors[17]|auto_generated|op_1~9_sumout ),
	.op_111(\subtractors[18]|auto_generated|op_1~17_sumout ),
	.op_112(\subtractors[17]|auto_generated|op_1~13_sumout ),
	.op_113(\subtractors[18]|auto_generated|op_1~21_sumout ),
	.op_114(\subtractors[17]|auto_generated|op_1~17_sumout ),
	.op_115(\subtractors[18]|auto_generated|op_1~25_sumout ),
	.op_116(\subtractors[17]|auto_generated|op_1~21_sumout ),
	.op_117(\subtractors[18]|auto_generated|op_1~29_sumout ),
	.op_118(\subtractors[17]|auto_generated|op_1~25_sumout ),
	.op_119(\subtractors[18]|auto_generated|op_1~33_sumout ),
	.op_120(\subtractors[17]|auto_generated|op_1~29_sumout ),
	.op_121(\subtractors[18]|auto_generated|op_1~37_sumout ),
	.op_122(\subtractors[17]|auto_generated|op_1~33_sumout ),
	.op_123(\subtractors[18]|auto_generated|op_1~41_sumout ),
	.op_124(\subtractors[17]|auto_generated|op_1~37_sumout ),
	.op_125(\subtractors[18]|auto_generated|op_1~45_sumout ),
	.op_126(\subtractors[17]|auto_generated|op_1~41_sumout ),
	.op_127(\subtractors[18]|auto_generated|op_1~49_sumout ),
	.op_128(\subtractors[17]|auto_generated|op_1~53_sumout ),
	.op_129(\subtractors[18]|auto_generated|op_1~61_sumout ),
	.op_130(\subtractors[17]|auto_generated|op_1~57_sumout ),
	.op_131(\subtractors[18]|auto_generated|op_1~65_sumout ),
	.op_132(\subtractors[17]|auto_generated|op_1~61_sumout ),
	.op_133(\subtractors[18]|auto_generated|op_1~69_sumout ),
	.op_134(\subtractors[17]|auto_generated|op_1~65_sumout ),
	.op_135(\subtractors[18]|auto_generated|op_1~73_sumout ),
	.op_136(\subtractors[17]|auto_generated|op_1~69_sumout ),
	.op_137(\subtractors[18]|auto_generated|op_1~77_sumout ),
	.op_138(\subtractors[17]|auto_generated|op_1~73_sumout ),
	.op_139(\subtractors[18]|auto_generated|op_1~81_sumout ),
	.op_140(\subtractors[17]|auto_generated|op_1~77_sumout ),
	.op_141(\subtractors[18]|auto_generated|op_1~85_sumout ),
	.op_142(\subtractors[17]|auto_generated|op_1~81_sumout ),
	.sr_0_0(\b_dffe[12]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[12]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[12]|sr[0][2]~q ),
	.sr_3_0(\b_dffe[12]|sr[0][3]~q ),
	.sr_4_0(\b_dffe[12]|sr[0][4]~q ),
	.sr_5_0(\b_dffe[12]|sr[0][5]~q ),
	.sr_6_0(\b_dffe[12]|sr[0][6]~q ),
	.sr_7_0(\b_dffe[12]|sr[0][7]~q ),
	.sr_8_0(\b_dffe[12]|sr[0][8]~q ),
	.sr_9_0(\b_dffe[12]|sr[0][9]~q ),
	.sr_10_0(\b_dffe[12]|sr[0][10]~q ),
	.sr_11_0(\b_dffe[12]|sr[0][11]~q ),
	.sr_12_0(\b_dffe[12]|sr[0][12]~q ),
	.sr_14_2(\a_delay|sr[2][14]~q ),
	.sr_15_2(\a_delay|sr[2][15]~q ),
	.sr_16_2(\a_delay|sr[2][16]~q ),
	.sr_17_2(\a_delay|sr[2][17]~q ),
	.sr_18_2(\a_delay|sr[2][18]~q ),
	._(\_~103_combout ),
	._1(\_~105_combout ),
	._2(\_~108_combout ),
	._3(\_~111_combout ),
	._4(\_~115_combout ),
	._5(\_~119_combout ),
	._6(\_~124_combout ),
	._7(\_~129_combout ),
	._8(\_~149_combout ),
	._9(\_~154_combout ),
	._10(\_~159_combout ),
	._11(\_~164_combout ),
	._12(\_~169_combout ),
	._13(\_~174_combout ),
	._14(\_~179_combout ),
	._15(\_~184_combout ));

sqrt_52_lpm_add_sub_11 \subtractors[19] (
	.op_1(\subtractors[19]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[19]|auto_generated|op_1~5_sumout ),
	.op_12(\subtractors[19]|auto_generated|op_1~9_sumout ),
	.op_13(\subtractors[19]|auto_generated|op_1~13_sumout ),
	.sr_2_0(\r_dffe[18]|sr[0][2]~q ),
	.op_14(\subtractors[19]|auto_generated|op_1~17_sumout ),
	.sr_3_0(\r_dffe[18]|sr[0][3]~q ),
	.op_15(\subtractors[19]|auto_generated|op_1~21_sumout ),
	.sr_4_0(\r_dffe[18]|sr[0][4]~q ),
	.op_16(\subtractors[19]|auto_generated|op_1~25_sumout ),
	.sr_5_0(\r_dffe[18]|sr[0][5]~q ),
	.op_17(\subtractors[19]|auto_generated|op_1~29_sumout ),
	.sr_6_0(\r_dffe[18]|sr[0][6]~q ),
	.op_18(\subtractors[19]|auto_generated|op_1~33_sumout ),
	.sr_7_0(\r_dffe[18]|sr[0][7]~q ),
	.op_19(\subtractors[19]|auto_generated|op_1~37_sumout ),
	.sr_8_0(\r_dffe[18]|sr[0][8]~q ),
	.op_110(\subtractors[19]|auto_generated|op_1~41_sumout ),
	.sr_9_0(\r_dffe[18]|sr[0][9]~q ),
	.op_111(\subtractors[19]|auto_generated|op_1~45_sumout ),
	.sr_10_0(\r_dffe[18]|sr[0][10]~q ),
	.op_112(\subtractors[19]|auto_generated|op_1~49_sumout ),
	.sr_11_0(\r_dffe[18]|sr[0][11]~q ),
	.op_113(\subtractors[19]|auto_generated|op_1~53_sumout ),
	.sr_12_0(\r_dffe[18]|sr[0][12]~q ),
	.op_114(\subtractors[19]|auto_generated|op_1~57_sumout ),
	.sr_13_0(\r_dffe[18]|sr[0][13]~q ),
	.op_115(\subtractors[19]|auto_generated|op_1~69_sumout ),
	.sr_14_0(\r_dffe[18]|sr[0][14]~q ),
	.op_116(\subtractors[19]|auto_generated|op_1~73_sumout ),
	.sr_15_0(\r_dffe[18]|sr[0][15]~q ),
	.op_117(\subtractors[19]|auto_generated|op_1~77_sumout ),
	.sr_16_0(\r_dffe[18]|sr[0][16]~q ),
	.op_118(\subtractors[19]|auto_generated|op_1~81_sumout ),
	.sr_17_0(\r_dffe[18]|sr[0][17]~q ),
	.op_119(\subtractors[19]|auto_generated|op_1~85_sumout ),
	.sr_18_0(\r_dffe[18]|sr[0][18]~q ),
	.op_120(\subtractors[19]|auto_generated|op_1~89_sumout ),
	.sr_19_0(\r_dffe[18]|sr[0][19]~q ),
	.sr_0_0(\b_dffe[18]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[18]|sr[0][1]~q ),
	.sr_2_01(\b_dffe[18]|sr[0][2]~q ),
	.sr_3_01(\b_dffe[18]|sr[0][3]~q ),
	.sr_4_01(\b_dffe[18]|sr[0][4]~q ),
	.sr_5_01(\b_dffe[18]|sr[0][5]~q ),
	.sr_6_01(\b_dffe[18]|sr[0][6]~q ),
	.sr_7_01(\b_dffe[18]|sr[0][7]~q ),
	.sr_8_01(\b_dffe[18]|sr[0][8]~q ),
	.sr_9_01(\b_dffe[18]|sr[0][9]~q ),
	.sr_10_01(\b_dffe[18]|sr[0][10]~q ),
	.sr_11_01(\b_dffe[18]|sr[0][11]~q ),
	.sr_12_01(\b_dffe[18]|sr[0][12]~q ),
	.sr_13_01(\b_dffe[18]|sr[0][13]~q ),
	.sr_14_01(\b_dffe[18]|sr[0][14]~q ),
	.sr_15_01(\b_dffe[18]|sr[0][15]~q ),
	.sr_16_01(\b_dffe[18]|sr[0][16]~q ),
	.sr_17_01(\b_dffe[18]|sr[0][17]~q ),
	.sr_18_01(\b_dffe[18]|sr[0][18]~q ),
	.sr_12_3(\a_delay|sr[3][12]~q ),
	.sr_13_3(\a_delay|sr[3][13]~q ),
	.sr_0_01(\r_dffe[18]|sr[0][0]~q ),
	.sr_1_01(\r_dffe[18]|sr[0][1]~q ));

sqrt_52_lpm_add_sub_13 \subtractors[20] (
	.op_1(\subtractors[20]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[19]|auto_generated|op_1~1_sumout ),
	.op_12(\subtractors[20]|auto_generated|op_1~5_sumout ),
	.op_13(\subtractors[20]|auto_generated|op_1~9_sumout ),
	.op_14(\subtractors[19]|auto_generated|op_1~5_sumout ),
	.op_15(\subtractors[20]|auto_generated|op_1~13_sumout ),
	.op_16(\subtractors[19]|auto_generated|op_1~9_sumout ),
	.op_17(\subtractors[20]|auto_generated|op_1~17_sumout ),
	.op_18(\subtractors[19]|auto_generated|op_1~13_sumout ),
	.op_19(\subtractors[20]|auto_generated|op_1~21_sumout ),
	.sr_2_0(\r_dffe[18]|sr[0][2]~q ),
	.op_110(\subtractors[19]|auto_generated|op_1~17_sumout ),
	.op_111(\subtractors[20]|auto_generated|op_1~25_sumout ),
	.sr_3_0(\r_dffe[18]|sr[0][3]~q ),
	.op_112(\subtractors[19]|auto_generated|op_1~21_sumout ),
	.op_113(\subtractors[20]|auto_generated|op_1~29_sumout ),
	.sr_4_0(\r_dffe[18]|sr[0][4]~q ),
	.op_114(\subtractors[19]|auto_generated|op_1~25_sumout ),
	.op_115(\subtractors[20]|auto_generated|op_1~33_sumout ),
	.sr_5_0(\r_dffe[18]|sr[0][5]~q ),
	.op_116(\subtractors[19]|auto_generated|op_1~29_sumout ),
	.op_117(\subtractors[20]|auto_generated|op_1~37_sumout ),
	.sr_6_0(\r_dffe[18]|sr[0][6]~q ),
	.op_118(\subtractors[19]|auto_generated|op_1~33_sumout ),
	.op_119(\subtractors[20]|auto_generated|op_1~41_sumout ),
	.sr_7_0(\r_dffe[18]|sr[0][7]~q ),
	.op_120(\subtractors[19]|auto_generated|op_1~37_sumout ),
	.op_121(\subtractors[20]|auto_generated|op_1~45_sumout ),
	.sr_8_0(\r_dffe[18]|sr[0][8]~q ),
	.op_122(\subtractors[19]|auto_generated|op_1~41_sumout ),
	.op_123(\subtractors[20]|auto_generated|op_1~49_sumout ),
	.sr_9_0(\r_dffe[18]|sr[0][9]~q ),
	.op_124(\subtractors[19]|auto_generated|op_1~45_sumout ),
	.op_125(\subtractors[20]|auto_generated|op_1~53_sumout ),
	.sr_10_0(\r_dffe[18]|sr[0][10]~q ),
	.op_126(\subtractors[19]|auto_generated|op_1~49_sumout ),
	.op_127(\subtractors[20]|auto_generated|op_1~57_sumout ),
	.sr_11_0(\r_dffe[18]|sr[0][11]~q ),
	.op_128(\subtractors[19]|auto_generated|op_1~53_sumout ),
	.op_129(\subtractors[20]|auto_generated|op_1~61_sumout ),
	.sr_12_0(\r_dffe[18]|sr[0][12]~q ),
	.op_130(\subtractors[19]|auto_generated|op_1~57_sumout ),
	.op_131(\subtractors[20]|auto_generated|op_1~65_sumout ),
	.sr_13_0(\r_dffe[18]|sr[0][13]~q ),
	.op_132(\subtractors[19]|auto_generated|op_1~69_sumout ),
	.op_133(\subtractors[20]|auto_generated|op_1~77_sumout ),
	.sr_14_0(\r_dffe[18]|sr[0][14]~q ),
	.op_134(\subtractors[19]|auto_generated|op_1~73_sumout ),
	.op_135(\subtractors[20]|auto_generated|op_1~81_sumout ),
	.sr_15_0(\r_dffe[18]|sr[0][15]~q ),
	.op_136(\subtractors[19]|auto_generated|op_1~77_sumout ),
	.op_137(\subtractors[20]|auto_generated|op_1~85_sumout ),
	.sr_16_0(\r_dffe[18]|sr[0][16]~q ),
	.op_138(\subtractors[19]|auto_generated|op_1~81_sumout ),
	.op_139(\subtractors[20]|auto_generated|op_1~89_sumout ),
	.sr_17_0(\r_dffe[18]|sr[0][17]~q ),
	.op_140(\subtractors[19]|auto_generated|op_1~85_sumout ),
	.op_141(\subtractors[20]|auto_generated|op_1~93_sumout ),
	.sr_18_0(\r_dffe[18]|sr[0][18]~q ),
	.op_142(\subtractors[19]|auto_generated|op_1~89_sumout ),
	.sr_0_0(\b_dffe[18]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[18]|sr[0][1]~q ),
	.sr_2_01(\b_dffe[18]|sr[0][2]~q ),
	.sr_3_01(\b_dffe[18]|sr[0][3]~q ),
	.sr_4_01(\b_dffe[18]|sr[0][4]~q ),
	.sr_5_01(\b_dffe[18]|sr[0][5]~q ),
	.sr_6_01(\b_dffe[18]|sr[0][6]~q ),
	.sr_7_01(\b_dffe[18]|sr[0][7]~q ),
	.sr_8_01(\b_dffe[18]|sr[0][8]~q ),
	.sr_9_01(\b_dffe[18]|sr[0][9]~q ),
	.sr_10_01(\b_dffe[18]|sr[0][10]~q ),
	.sr_11_01(\b_dffe[18]|sr[0][11]~q ),
	.sr_12_01(\b_dffe[18]|sr[0][12]~q ),
	.sr_13_01(\b_dffe[18]|sr[0][13]~q ),
	.sr_14_01(\b_dffe[18]|sr[0][14]~q ),
	.sr_15_01(\b_dffe[18]|sr[0][15]~q ),
	.sr_16_01(\b_dffe[18]|sr[0][16]~q ),
	.sr_17_01(\b_dffe[18]|sr[0][17]~q ),
	.sr_18_01(\b_dffe[18]|sr[0][18]~q ),
	.sr_10_3(\a_delay|sr[3][10]~q ),
	.sr_11_3(\a_delay|sr[3][11]~q ),
	.sr_12_3(\a_delay|sr[3][12]~q ),
	.sr_13_3(\a_delay|sr[3][13]~q ),
	.sr_0_01(\r_dffe[18]|sr[0][0]~q ),
	.sr_1_01(\r_dffe[18]|sr[0][1]~q ));

sqrt_52_lpm_add_sub_14 \subtractors[21] (
	.op_1(\subtractors[21]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[20]|auto_generated|op_1~1_sumout ),
	.op_12(\subtractors[19]|auto_generated|op_1~1_sumout ),
	.op_13(\subtractors[21]|auto_generated|op_1~5_sumout ),
	.op_14(\subtractors[21]|auto_generated|op_1~9_sumout ),
	.op_15(\subtractors[20]|auto_generated|op_1~5_sumout ),
	.op_16(\subtractors[21]|auto_generated|op_1~13_sumout ),
	.op_17(\subtractors[20]|auto_generated|op_1~9_sumout ),
	.op_18(\subtractors[21]|auto_generated|op_1~17_sumout ),
	.op_19(\subtractors[20]|auto_generated|op_1~13_sumout ),
	.op_110(\subtractors[21]|auto_generated|op_1~21_sumout ),
	.op_111(\subtractors[20]|auto_generated|op_1~17_sumout ),
	.op_112(\subtractors[21]|auto_generated|op_1~25_sumout ),
	.op_113(\subtractors[20]|auto_generated|op_1~21_sumout ),
	.op_114(\subtractors[21]|auto_generated|op_1~29_sumout ),
	.op_115(\subtractors[20]|auto_generated|op_1~25_sumout ),
	.op_116(\subtractors[21]|auto_generated|op_1~33_sumout ),
	.op_117(\subtractors[20]|auto_generated|op_1~29_sumout ),
	.op_118(\subtractors[21]|auto_generated|op_1~37_sumout ),
	.op_119(\subtractors[20]|auto_generated|op_1~33_sumout ),
	.op_120(\subtractors[21]|auto_generated|op_1~41_sumout ),
	.op_121(\subtractors[20]|auto_generated|op_1~37_sumout ),
	.op_122(\subtractors[21]|auto_generated|op_1~45_sumout ),
	.op_123(\subtractors[20]|auto_generated|op_1~41_sumout ),
	.op_124(\subtractors[21]|auto_generated|op_1~49_sumout ),
	.op_125(\subtractors[20]|auto_generated|op_1~45_sumout ),
	.op_126(\subtractors[21]|auto_generated|op_1~53_sumout ),
	.op_127(\subtractors[20]|auto_generated|op_1~49_sumout ),
	.op_128(\subtractors[21]|auto_generated|op_1~57_sumout ),
	.op_129(\subtractors[20]|auto_generated|op_1~53_sumout ),
	.op_130(\subtractors[21]|auto_generated|op_1~61_sumout ),
	.op_131(\subtractors[20]|auto_generated|op_1~57_sumout ),
	.op_132(\subtractors[21]|auto_generated|op_1~65_sumout ),
	.op_133(\subtractors[20]|auto_generated|op_1~61_sumout ),
	.op_134(\subtractors[21]|auto_generated|op_1~69_sumout ),
	.op_135(\subtractors[20]|auto_generated|op_1~65_sumout ),
	.op_136(\subtractors[21]|auto_generated|op_1~73_sumout ),
	.op_137(\subtractors[20]|auto_generated|op_1~77_sumout ),
	.op_138(\subtractors[21]|auto_generated|op_1~85_sumout ),
	.op_139(\subtractors[20]|auto_generated|op_1~81_sumout ),
	.op_140(\subtractors[21]|auto_generated|op_1~89_sumout ),
	.op_141(\subtractors[20]|auto_generated|op_1~85_sumout ),
	.op_142(\subtractors[21]|auto_generated|op_1~93_sumout ),
	.op_143(\subtractors[20]|auto_generated|op_1~89_sumout ),
	.op_144(\subtractors[21]|auto_generated|op_1~97_sumout ),
	.op_145(\subtractors[20]|auto_generated|op_1~93_sumout ),
	.sr_0_0(\b_dffe[18]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[18]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[18]|sr[0][2]~q ),
	.sr_3_0(\b_dffe[18]|sr[0][3]~q ),
	.sr_4_0(\b_dffe[18]|sr[0][4]~q ),
	.sr_5_0(\b_dffe[18]|sr[0][5]~q ),
	.sr_6_0(\b_dffe[18]|sr[0][6]~q ),
	.sr_7_0(\b_dffe[18]|sr[0][7]~q ),
	.sr_8_0(\b_dffe[18]|sr[0][8]~q ),
	.sr_9_0(\b_dffe[18]|sr[0][9]~q ),
	.sr_10_0(\b_dffe[18]|sr[0][10]~q ),
	.sr_11_0(\b_dffe[18]|sr[0][11]~q ),
	.sr_12_0(\b_dffe[18]|sr[0][12]~q ),
	.sr_13_0(\b_dffe[18]|sr[0][13]~q ),
	.sr_14_0(\b_dffe[18]|sr[0][14]~q ),
	.sr_15_0(\b_dffe[18]|sr[0][15]~q ),
	.sr_16_0(\b_dffe[18]|sr[0][16]~q ),
	.sr_17_0(\b_dffe[18]|sr[0][17]~q ),
	.sr_18_0(\b_dffe[18]|sr[0][18]~q ),
	.sr_8_3(\a_delay|sr[3][8]~q ),
	.sr_9_3(\a_delay|sr[3][9]~q ),
	.sr_10_3(\a_delay|sr[3][10]~q ),
	.sr_11_3(\a_delay|sr[3][11]~q ),
	.sr_12_3(\a_delay|sr[3][12]~q ),
	._(\_~42_combout ),
	._1(\_~46_combout ),
	._2(\_~50_combout ),
	._3(\_~54_combout ),
	._4(\_~58_combout ),
	._5(\_~62_combout ),
	._6(\_~66_combout ),
	._7(\_~70_combout ),
	._8(\_~74_combout ),
	._9(\_~78_combout ),
	._10(\_~82_combout ),
	._11(\_~86_combout ),
	._12(\_~90_combout ),
	._13(\_~94_combout ),
	._14(\_~131_combout ),
	._15(\_~135_combout ),
	._16(\_~139_combout ),
	._17(\_~142_combout ),
	._18(\_~144_combout ));

sqrt_52_lpm_add_sub_15 \subtractors[22] (
	.op_1(\subtractors[22]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[21]|auto_generated|op_1~1_sumout ),
	.op_12(\subtractors[20]|auto_generated|op_1~1_sumout ),
	.op_13(\subtractors[19]|auto_generated|op_1~1_sumout ),
	.op_14(\subtractors[22]|auto_generated|op_1~5_sumout ),
	.op_15(\subtractors[22]|auto_generated|op_1~9_sumout ),
	.op_16(\subtractors[21]|auto_generated|op_1~5_sumout ),
	.op_17(\subtractors[22]|auto_generated|op_1~13_sumout ),
	.op_18(\subtractors[21]|auto_generated|op_1~9_sumout ),
	.op_19(\subtractors[22]|auto_generated|op_1~17_sumout ),
	.op_110(\subtractors[21]|auto_generated|op_1~13_sumout ),
	.op_111(\subtractors[22]|auto_generated|op_1~21_sumout ),
	.op_112(\subtractors[21]|auto_generated|op_1~17_sumout ),
	.op_113(\subtractors[22]|auto_generated|op_1~25_sumout ),
	.op_114(\subtractors[21]|auto_generated|op_1~21_sumout ),
	.op_115(\subtractors[22]|auto_generated|op_1~29_sumout ),
	.op_116(\subtractors[21]|auto_generated|op_1~25_sumout ),
	.op_117(\subtractors[22]|auto_generated|op_1~33_sumout ),
	.op_118(\subtractors[21]|auto_generated|op_1~29_sumout ),
	.op_119(\subtractors[22]|auto_generated|op_1~37_sumout ),
	.op_120(\subtractors[21]|auto_generated|op_1~33_sumout ),
	.op_121(\subtractors[22]|auto_generated|op_1~41_sumout ),
	.op_122(\subtractors[21]|auto_generated|op_1~37_sumout ),
	.op_123(\subtractors[22]|auto_generated|op_1~45_sumout ),
	.op_124(\subtractors[21]|auto_generated|op_1~41_sumout ),
	.op_125(\subtractors[22]|auto_generated|op_1~49_sumout ),
	.op_126(\subtractors[21]|auto_generated|op_1~45_sumout ),
	.op_127(\subtractors[22]|auto_generated|op_1~53_sumout ),
	.op_128(\subtractors[21]|auto_generated|op_1~49_sumout ),
	.op_129(\subtractors[22]|auto_generated|op_1~57_sumout ),
	.op_130(\subtractors[21]|auto_generated|op_1~53_sumout ),
	.op_131(\subtractors[22]|auto_generated|op_1~61_sumout ),
	.op_132(\subtractors[21]|auto_generated|op_1~57_sumout ),
	.op_133(\subtractors[22]|auto_generated|op_1~65_sumout ),
	.op_134(\subtractors[21]|auto_generated|op_1~61_sumout ),
	.op_135(\subtractors[22]|auto_generated|op_1~69_sumout ),
	.op_136(\subtractors[21]|auto_generated|op_1~65_sumout ),
	.op_137(\subtractors[22]|auto_generated|op_1~73_sumout ),
	.op_138(\subtractors[21]|auto_generated|op_1~69_sumout ),
	.op_139(\subtractors[22]|auto_generated|op_1~77_sumout ),
	.op_140(\subtractors[21]|auto_generated|op_1~73_sumout ),
	.op_141(\subtractors[22]|auto_generated|op_1~81_sumout ),
	.op_142(\subtractors[21]|auto_generated|op_1~85_sumout ),
	.op_143(\subtractors[22]|auto_generated|op_1~93_sumout ),
	.op_144(\subtractors[21]|auto_generated|op_1~89_sumout ),
	.op_145(\subtractors[22]|auto_generated|op_1~97_sumout ),
	.op_146(\subtractors[21]|auto_generated|op_1~93_sumout ),
	.op_147(\subtractors[22]|auto_generated|op_1~101_sumout ),
	.op_148(\subtractors[21]|auto_generated|op_1~97_sumout ),
	.sr_0_0(\b_dffe[18]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[18]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[18]|sr[0][2]~q ),
	.sr_3_0(\b_dffe[18]|sr[0][3]~q ),
	.sr_4_0(\b_dffe[18]|sr[0][4]~q ),
	.sr_5_0(\b_dffe[18]|sr[0][5]~q ),
	.sr_6_0(\b_dffe[18]|sr[0][6]~q ),
	.sr_7_0(\b_dffe[18]|sr[0][7]~q ),
	.sr_8_0(\b_dffe[18]|sr[0][8]~q ),
	.sr_9_0(\b_dffe[18]|sr[0][9]~q ),
	.sr_10_0(\b_dffe[18]|sr[0][10]~q ),
	.sr_11_0(\b_dffe[18]|sr[0][11]~q ),
	.sr_12_0(\b_dffe[18]|sr[0][12]~q ),
	.sr_13_0(\b_dffe[18]|sr[0][13]~q ),
	.sr_14_0(\b_dffe[18]|sr[0][14]~q ),
	.sr_15_0(\b_dffe[18]|sr[0][15]~q ),
	.sr_16_0(\b_dffe[18]|sr[0][16]~q ),
	.sr_17_0(\b_dffe[18]|sr[0][17]~q ),
	.sr_18_0(\b_dffe[18]|sr[0][18]~q ),
	.sr_6_3(\a_delay|sr[3][6]~q ),
	.sr_7_3(\a_delay|sr[3][7]~q ),
	.sr_8_3(\a_delay|sr[3][8]~q ),
	.sr_9_3(\a_delay|sr[3][9]~q ),
	.sr_10_3(\a_delay|sr[3][10]~q ),
	._(\_~36_combout ),
	._1(\_~39_combout ),
	._2(\_~43_combout ),
	._3(\_~47_combout ),
	._4(\_~51_combout ),
	._5(\_~55_combout ),
	._6(\_~59_combout ),
	._7(\_~63_combout ),
	._8(\_~67_combout ),
	._9(\_~71_combout ),
	._10(\_~75_combout ),
	._11(\_~79_combout ),
	._12(\_~83_combout ),
	._13(\_~87_combout ),
	._14(\_~91_combout ),
	._15(\_~95_combout ),
	._16(\_~132_combout ),
	._17(\_~136_combout ),
	._18(\_~140_combout ),
	._19(\_~143_combout ));

sqrt_52_lpm_add_sub_16 \subtractors[23] (
	.op_1(\subtractors[23]|auto_generated|op_1~1_sumout ),
	.op_11(\subtractors[22]|auto_generated|op_1~1_sumout ),
	.op_12(\subtractors[21]|auto_generated|op_1~1_sumout ),
	.op_13(\subtractors[20]|auto_generated|op_1~1_sumout ),
	.op_14(\subtractors[19]|auto_generated|op_1~1_sumout ),
	.op_15(\subtractors[23]|auto_generated|op_1~5_sumout ),
	.op_16(\subtractors[23]|auto_generated|op_1~9_sumout ),
	.op_17(\subtractors[22]|auto_generated|op_1~5_sumout ),
	.op_18(\subtractors[23]|auto_generated|op_1~13_sumout ),
	.op_19(\subtractors[22]|auto_generated|op_1~9_sumout ),
	.op_110(\subtractors[23]|auto_generated|op_1~17_sumout ),
	.op_111(\subtractors[22]|auto_generated|op_1~13_sumout ),
	.op_112(\subtractors[23]|auto_generated|op_1~21_sumout ),
	.op_113(\subtractors[22]|auto_generated|op_1~17_sumout ),
	.op_114(\subtractors[23]|auto_generated|op_1~25_sumout ),
	.op_115(\subtractors[22]|auto_generated|op_1~21_sumout ),
	.op_116(\subtractors[23]|auto_generated|op_1~29_sumout ),
	.op_117(\subtractors[22]|auto_generated|op_1~25_sumout ),
	.op_118(\subtractors[23]|auto_generated|op_1~33_sumout ),
	.op_119(\subtractors[22]|auto_generated|op_1~29_sumout ),
	.op_120(\subtractors[23]|auto_generated|op_1~37_sumout ),
	.op_121(\subtractors[22]|auto_generated|op_1~33_sumout ),
	.op_122(\subtractors[23]|auto_generated|op_1~41_sumout ),
	.op_123(\subtractors[22]|auto_generated|op_1~37_sumout ),
	.op_124(\subtractors[23]|auto_generated|op_1~45_sumout ),
	.op_125(\subtractors[22]|auto_generated|op_1~41_sumout ),
	.op_126(\subtractors[23]|auto_generated|op_1~49_sumout ),
	.op_127(\subtractors[22]|auto_generated|op_1~45_sumout ),
	.op_128(\subtractors[23]|auto_generated|op_1~53_sumout ),
	.op_129(\subtractors[22]|auto_generated|op_1~49_sumout ),
	.op_130(\subtractors[23]|auto_generated|op_1~57_sumout ),
	.op_131(\subtractors[22]|auto_generated|op_1~53_sumout ),
	.op_132(\subtractors[23]|auto_generated|op_1~61_sumout ),
	.op_133(\subtractors[22]|auto_generated|op_1~57_sumout ),
	.op_134(\subtractors[23]|auto_generated|op_1~65_sumout ),
	.op_135(\subtractors[22]|auto_generated|op_1~61_sumout ),
	.op_136(\subtractors[23]|auto_generated|op_1~69_sumout ),
	.op_137(\subtractors[22]|auto_generated|op_1~65_sumout ),
	.op_138(\subtractors[23]|auto_generated|op_1~73_sumout ),
	.op_139(\subtractors[22]|auto_generated|op_1~69_sumout ),
	.op_140(\subtractors[23]|auto_generated|op_1~77_sumout ),
	.op_141(\subtractors[22]|auto_generated|op_1~73_sumout ),
	.op_142(\subtractors[23]|auto_generated|op_1~81_sumout ),
	.op_143(\subtractors[22]|auto_generated|op_1~77_sumout ),
	.op_144(\subtractors[23]|auto_generated|op_1~85_sumout ),
	.op_145(\subtractors[22]|auto_generated|op_1~81_sumout ),
	.op_146(\subtractors[23]|auto_generated|op_1~89_sumout ),
	.op_147(\subtractors[22]|auto_generated|op_1~93_sumout ),
	.op_148(\subtractors[23]|auto_generated|op_1~101_sumout ),
	.op_149(\subtractors[22]|auto_generated|op_1~97_sumout ),
	.op_150(\subtractors[23]|auto_generated|op_1~105_sumout ),
	.op_151(\subtractors[22]|auto_generated|op_1~101_sumout ),
	.sr_0_0(\b_dffe[18]|sr[0][0]~q ),
	.sr_1_0(\b_dffe[18]|sr[0][1]~q ),
	.sr_2_0(\b_dffe[18]|sr[0][2]~q ),
	.sr_3_0(\b_dffe[18]|sr[0][3]~q ),
	.sr_4_0(\b_dffe[18]|sr[0][4]~q ),
	.sr_5_0(\b_dffe[18]|sr[0][5]~q ),
	.sr_6_0(\b_dffe[18]|sr[0][6]~q ),
	.sr_7_0(\b_dffe[18]|sr[0][7]~q ),
	.sr_8_0(\b_dffe[18]|sr[0][8]~q ),
	.sr_9_0(\b_dffe[18]|sr[0][9]~q ),
	.sr_10_0(\b_dffe[18]|sr[0][10]~q ),
	.sr_11_0(\b_dffe[18]|sr[0][11]~q ),
	.sr_12_0(\b_dffe[18]|sr[0][12]~q ),
	.sr_13_0(\b_dffe[18]|sr[0][13]~q ),
	.sr_14_0(\b_dffe[18]|sr[0][14]~q ),
	.sr_15_0(\b_dffe[18]|sr[0][15]~q ),
	.sr_16_0(\b_dffe[18]|sr[0][16]~q ),
	.sr_17_0(\b_dffe[18]|sr[0][17]~q ),
	.sr_18_0(\b_dffe[18]|sr[0][18]~q ),
	.sr_4_3(\a_delay|sr[3][4]~q ),
	.sr_5_3(\a_delay|sr[3][5]~q ),
	.sr_6_3(\a_delay|sr[3][6]~q ),
	.sr_7_3(\a_delay|sr[3][7]~q ),
	.sr_8_3(\a_delay|sr[3][8]~q ),
	._(\_~32_combout ),
	._1(\_~34_combout ),
	._2(\_~37_combout ),
	._3(\_~40_combout ),
	._4(\_~44_combout ),
	._5(\_~48_combout ),
	._6(\_~52_combout ),
	._7(\_~56_combout ),
	._8(\_~60_combout ),
	._9(\_~64_combout ),
	._10(\_~68_combout ),
	._11(\_~72_combout ),
	._12(\_~76_combout ),
	._13(\_~80_combout ),
	._14(\_~84_combout ),
	._15(\_~88_combout ),
	._16(\_~92_combout ),
	._17(\_~96_combout ),
	._18(\_~133_combout ),
	._19(\_~137_combout ),
	._20(\_~141_combout ));

sqrt_52_lpm_add_sub_17 \subtractors[24] (
	.op_1(op_11),
	.op_11(\subtractors[24]|auto_generated|op_1~5_sumout ),
	.op_12(\subtractors[24]|auto_generated|op_1~9_sumout ),
	.op_13(\subtractors[24]|auto_generated|op_1~13_sumout ),
	.sr_2_0(\r_dffe[23]|sr[0][2]~q ),
	.op_14(\subtractors[24]|auto_generated|op_1~17_sumout ),
	.sr_3_0(\r_dffe[23]|sr[0][3]~q ),
	.op_15(\subtractors[24]|auto_generated|op_1~21_sumout ),
	.sr_4_0(\r_dffe[23]|sr[0][4]~q ),
	.op_16(\subtractors[24]|auto_generated|op_1~25_sumout ),
	.sr_5_0(\r_dffe[23]|sr[0][5]~q ),
	.op_17(\subtractors[24]|auto_generated|op_1~29_sumout ),
	.sr_6_0(\r_dffe[23]|sr[0][6]~q ),
	.op_18(\subtractors[24]|auto_generated|op_1~33_sumout ),
	.sr_7_0(\r_dffe[23]|sr[0][7]~q ),
	.op_19(\subtractors[24]|auto_generated|op_1~37_sumout ),
	.sr_8_0(\r_dffe[23]|sr[0][8]~q ),
	.op_110(\subtractors[24]|auto_generated|op_1~41_sumout ),
	.sr_9_0(\r_dffe[23]|sr[0][9]~q ),
	.op_111(\subtractors[24]|auto_generated|op_1~45_sumout ),
	.sr_10_0(\r_dffe[23]|sr[0][10]~q ),
	.op_112(\subtractors[24]|auto_generated|op_1~49_sumout ),
	.sr_11_0(\r_dffe[23]|sr[0][11]~q ),
	.op_113(\subtractors[24]|auto_generated|op_1~53_sumout ),
	.sr_12_0(\r_dffe[23]|sr[0][12]~q ),
	.op_114(\subtractors[24]|auto_generated|op_1~57_sumout ),
	.sr_13_0(\r_dffe[23]|sr[0][13]~q ),
	.op_115(\subtractors[24]|auto_generated|op_1~61_sumout ),
	.sr_14_0(\r_dffe[23]|sr[0][14]~q ),
	.op_116(\subtractors[24]|auto_generated|op_1~65_sumout ),
	.sr_15_0(\r_dffe[23]|sr[0][15]~q ),
	.op_117(\subtractors[24]|auto_generated|op_1~69_sumout ),
	.sr_16_0(\r_dffe[23]|sr[0][16]~q ),
	.op_118(\subtractors[24]|auto_generated|op_1~73_sumout ),
	.sr_17_0(\r_dffe[23]|sr[0][17]~q ),
	.op_119(\subtractors[24]|auto_generated|op_1~77_sumout ),
	.sr_18_0(\r_dffe[23]|sr[0][18]~q ),
	.op_120(\subtractors[24]|auto_generated|op_1~81_sumout ),
	.sr_19_0(\r_dffe[23]|sr[0][19]~q ),
	.op_121(\subtractors[24]|auto_generated|op_1~85_sumout ),
	.sr_20_0(\r_dffe[23]|sr[0][20]~q ),
	.op_122(\subtractors[24]|auto_generated|op_1~89_sumout ),
	.sr_21_0(\r_dffe[23]|sr[0][21]~q ),
	.op_123(\subtractors[24]|auto_generated|op_1~93_sumout ),
	.sr_22_0(\r_dffe[23]|sr[0][22]~q ),
	.op_124(\subtractors[24]|auto_generated|op_1~97_sumout ),
	.sr_23_0(\r_dffe[23]|sr[0][23]~q ),
	.op_125(\subtractors[24]|auto_generated|op_1~109_sumout ),
	.sr_24_0(\r_dffe[23]|sr[0][24]~q ),
	.sr_0_0(sr_0_0),
	.sr_1_0(sr_1_0),
	.sr_2_01(sr_2_0),
	.sr_3_01(sr_3_0),
	.sr_4_01(sr_4_0),
	.sr_5_01(sr_5_0),
	.sr_6_01(sr_6_0),
	.sr_7_01(sr_7_0),
	.sr_8_01(sr_8_0),
	.sr_9_01(sr_9_0),
	.sr_10_01(sr_10_0),
	.sr_11_01(sr_11_0),
	.sr_12_01(sr_12_0),
	.sr_13_01(sr_13_0),
	.sr_14_01(sr_14_0),
	.sr_15_01(sr_15_0),
	.sr_16_01(sr_16_0),
	.sr_17_01(sr_17_0),
	.sr_18_01(sr_18_0),
	.sr_19_01(sr_19_0),
	.sr_20_01(sr_20_0),
	.sr_21_01(sr_21_0),
	.sr_22_01(sr_22_0),
	.sr_23_01(sr_23_0),
	.sr_2_4(\a_delay|sr[4][2]~q ),
	.sr_3_4(\a_delay|sr[4][3]~q ),
	.sr_0_01(\r_dffe[23]|sr[0][0]~q ),
	.sr_1_01(\r_dffe[23]|sr[0][1]~q ));

sqrt_52_lpm_add_sub_18 \subtractors[25] (
	.op_1(op_1),
	.op_11(op_11),
	.op_12(\subtractors[25]|auto_generated|op_1~5_sumout ),
	.op_13(\subtractors[25]|auto_generated|op_1~9_sumout ),
	.op_14(\subtractors[24]|auto_generated|op_1~5_sumout ),
	.op_15(\subtractors[25]|auto_generated|op_1~13_sumout ),
	.op_16(\subtractors[24]|auto_generated|op_1~9_sumout ),
	.op_17(\subtractors[25]|auto_generated|op_1~17_sumout ),
	.op_18(\subtractors[24]|auto_generated|op_1~13_sumout ),
	.op_19(\subtractors[25]|auto_generated|op_1~21_sumout ),
	.sr_2_0(\r_dffe[23]|sr[0][2]~q ),
	.op_110(\subtractors[24]|auto_generated|op_1~17_sumout ),
	.op_111(\subtractors[25]|auto_generated|op_1~25_sumout ),
	.sr_3_0(\r_dffe[23]|sr[0][3]~q ),
	.op_112(\subtractors[24]|auto_generated|op_1~21_sumout ),
	.op_113(\subtractors[25]|auto_generated|op_1~29_sumout ),
	.sr_4_0(\r_dffe[23]|sr[0][4]~q ),
	.op_114(\subtractors[24]|auto_generated|op_1~25_sumout ),
	.op_115(\subtractors[25]|auto_generated|op_1~33_sumout ),
	.sr_5_0(\r_dffe[23]|sr[0][5]~q ),
	.op_116(\subtractors[24]|auto_generated|op_1~29_sumout ),
	.op_117(\subtractors[25]|auto_generated|op_1~37_sumout ),
	.sr_6_0(\r_dffe[23]|sr[0][6]~q ),
	.op_118(\subtractors[24]|auto_generated|op_1~33_sumout ),
	.op_119(\subtractors[25]|auto_generated|op_1~41_sumout ),
	.sr_7_0(\r_dffe[23]|sr[0][7]~q ),
	.op_120(\subtractors[24]|auto_generated|op_1~37_sumout ),
	.op_121(\subtractors[25]|auto_generated|op_1~45_sumout ),
	.sr_8_0(\r_dffe[23]|sr[0][8]~q ),
	.op_122(\subtractors[24]|auto_generated|op_1~41_sumout ),
	.op_123(\subtractors[25]|auto_generated|op_1~49_sumout ),
	.sr_9_0(\r_dffe[23]|sr[0][9]~q ),
	.op_124(\subtractors[24]|auto_generated|op_1~45_sumout ),
	.op_125(\subtractors[25]|auto_generated|op_1~53_sumout ),
	.sr_10_0(\r_dffe[23]|sr[0][10]~q ),
	.op_126(\subtractors[24]|auto_generated|op_1~49_sumout ),
	.op_127(\subtractors[25]|auto_generated|op_1~57_sumout ),
	.sr_11_0(\r_dffe[23]|sr[0][11]~q ),
	.op_128(\subtractors[24]|auto_generated|op_1~53_sumout ),
	.op_129(\subtractors[25]|auto_generated|op_1~61_sumout ),
	.sr_12_0(\r_dffe[23]|sr[0][12]~q ),
	.op_130(\subtractors[24]|auto_generated|op_1~57_sumout ),
	.op_131(\subtractors[25]|auto_generated|op_1~65_sumout ),
	.sr_13_0(\r_dffe[23]|sr[0][13]~q ),
	.op_132(\subtractors[24]|auto_generated|op_1~61_sumout ),
	.op_133(\subtractors[25]|auto_generated|op_1~69_sumout ),
	.sr_14_0(\r_dffe[23]|sr[0][14]~q ),
	.op_134(\subtractors[24]|auto_generated|op_1~65_sumout ),
	.op_135(\subtractors[25]|auto_generated|op_1~73_sumout ),
	.sr_15_0(\r_dffe[23]|sr[0][15]~q ),
	.op_136(\subtractors[24]|auto_generated|op_1~69_sumout ),
	.op_137(\subtractors[25]|auto_generated|op_1~77_sumout ),
	.sr_16_0(\r_dffe[23]|sr[0][16]~q ),
	.op_138(\subtractors[24]|auto_generated|op_1~73_sumout ),
	.op_139(\subtractors[25]|auto_generated|op_1~81_sumout ),
	.sr_17_0(\r_dffe[23]|sr[0][17]~q ),
	.op_140(\subtractors[24]|auto_generated|op_1~77_sumout ),
	.op_141(\subtractors[25]|auto_generated|op_1~85_sumout ),
	.sr_18_0(\r_dffe[23]|sr[0][18]~q ),
	.op_142(\subtractors[24]|auto_generated|op_1~81_sumout ),
	.op_143(\subtractors[25]|auto_generated|op_1~89_sumout ),
	.sr_19_0(\r_dffe[23]|sr[0][19]~q ),
	.op_144(\subtractors[24]|auto_generated|op_1~85_sumout ),
	.op_145(\subtractors[25]|auto_generated|op_1~93_sumout ),
	.sr_20_0(\r_dffe[23]|sr[0][20]~q ),
	.op_146(\subtractors[24]|auto_generated|op_1~89_sumout ),
	.op_147(\subtractors[25]|auto_generated|op_1~97_sumout ),
	.sr_21_0(\r_dffe[23]|sr[0][21]~q ),
	.op_148(\subtractors[24]|auto_generated|op_1~93_sumout ),
	.op_149(\subtractors[25]|auto_generated|op_1~101_sumout ),
	.sr_22_0(\r_dffe[23]|sr[0][22]~q ),
	.op_150(\subtractors[24]|auto_generated|op_1~97_sumout ),
	.op_151(\subtractors[25]|auto_generated|op_1~105_sumout ),
	.sr_23_0(\r_dffe[23]|sr[0][23]~q ),
	.op_152(\subtractors[24]|auto_generated|op_1~109_sumout ),
	.sr_0_0(sr_0_0),
	.sr_1_0(sr_1_0),
	.sr_2_01(sr_2_0),
	.sr_3_01(sr_3_0),
	.sr_4_01(sr_4_0),
	.sr_5_01(sr_5_0),
	.sr_6_01(sr_6_0),
	.sr_7_01(sr_7_0),
	.sr_8_01(sr_8_0),
	.sr_9_01(sr_9_0),
	.sr_10_01(sr_10_0),
	.sr_11_01(sr_11_0),
	.sr_12_01(sr_12_0),
	.sr_13_01(sr_13_0),
	.sr_14_01(sr_14_0),
	.sr_15_01(sr_15_0),
	.sr_16_01(sr_16_0),
	.sr_17_01(sr_17_0),
	.sr_18_01(sr_18_0),
	.sr_19_01(sr_19_0),
	.sr_20_01(sr_20_0),
	.sr_21_01(sr_21_0),
	.sr_22_01(sr_22_0),
	.sr_23_01(sr_23_0),
	.sr_0_4(\a_delay|sr[4][0]~q ),
	.sr_1_4(\a_delay|sr[4][1]~q ),
	.sr_2_4(\a_delay|sr[4][2]~q ),
	.sr_3_4(\a_delay|sr[4][3]~q ),
	.sr_0_01(\r_dffe[23]|sr[0][0]~q ),
	.sr_1_01(\r_dffe[23]|sr[0][1]~q ));

cyclonev_lcell_comb \_~27 (
	.dataa(!\a_delay|sr[3][4]~q ),
	.datab(!\subtractors[23]|auto_generated|op_1~1_sumout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~27_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~27 .extended_lut = "off";
defparam \_~27 .lut_mask = 64'h9999999999999999;
defparam \_~27 .shared_arith = "off";

cyclonev_lcell_comb \_~28 (
	.dataa(!\a_delay|sr[3][5]~q ),
	.datab(!\subtractors[23]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[23]|auto_generated|op_1~5_sumout ),
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
	.dataa(!\a_delay|sr[3][6]~q ),
	.datab(!\subtractors[22]|auto_generated|op_1~1_sumout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~29_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~29 .extended_lut = "off";
defparam \_~29 .lut_mask = 64'h9999999999999999;
defparam \_~29 .shared_arith = "off";

cyclonev_lcell_comb \_~30 (
	.dataa(!\a_delay|sr[3][7]~q ),
	.datab(!\subtractors[22]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[22]|auto_generated|op_1~5_sumout ),
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
	.dataa(!\a_delay|sr[3][8]~q ),
	.datab(!\subtractors[21]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[22]|auto_generated|op_1~1_sumout ),
	.datad(!\subtractors[22]|auto_generated|op_1~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~31_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~31 .extended_lut = "off";
defparam \_~31 .lut_mask = 64'h09F909F909F909F9;
defparam \_~31 .shared_arith = "off";

cyclonev_lcell_comb \_~32 (
	.dataa(!\a_delay|sr[3][9]~q ),
	.datab(!\subtractors[21]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[21]|auto_generated|op_1~5_sumout ),
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
	.dataa(!\subtractors[22]|auto_generated|op_1~1_sumout ),
	.datab(!\_~32_combout ),
	.datac(!\subtractors[22]|auto_generated|op_1~13_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~33_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~33 .extended_lut = "off";
defparam \_~33 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~33 .shared_arith = "off";

cyclonev_lcell_comb \_~34 (
	.dataa(!\a_delay|sr[3][10]~q ),
	.datab(!\subtractors[20]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[21]|auto_generated|op_1~1_sumout ),
	.datad(!\subtractors[21]|auto_generated|op_1~9_sumout ),
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
defparam \_~34 .lut_mask = 64'h09F909F909F909F9;
defparam \_~34 .shared_arith = "off";

cyclonev_lcell_comb \_~35 (
	.dataa(!\subtractors[22]|auto_generated|op_1~1_sumout ),
	.datab(!\_~34_combout ),
	.datac(!\subtractors[22]|auto_generated|op_1~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~35_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~35 .extended_lut = "off";
defparam \_~35 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~35 .shared_arith = "off";

cyclonev_lcell_comb \_~36 (
	.dataa(!\a_delay|sr[3][11]~q ),
	.datab(!\subtractors[20]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[20]|auto_generated|op_1~5_sumout ),
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
defparam \_~36 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~36 .shared_arith = "off";

cyclonev_lcell_comb \_~37 (
	.dataa(!\subtractors[21]|auto_generated|op_1~1_sumout ),
	.datab(!\_~36_combout ),
	.datac(!\subtractors[21]|auto_generated|op_1~13_sumout ),
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
defparam \_~37 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~37 .shared_arith = "off";

cyclonev_lcell_comb \_~38 (
	.dataa(!\subtractors[22]|auto_generated|op_1~1_sumout ),
	.datab(!\_~37_combout ),
	.datac(!\subtractors[22]|auto_generated|op_1~21_sumout ),
	.datad(gnd),
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
defparam \_~38 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~38 .shared_arith = "off";

cyclonev_lcell_comb \_~39 (
	.dataa(!\a_delay|sr[3][12]~q ),
	.datab(!\subtractors[19]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[20]|auto_generated|op_1~1_sumout ),
	.datad(!\subtractors[20]|auto_generated|op_1~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~39_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~39 .extended_lut = "off";
defparam \_~39 .lut_mask = 64'h09F909F909F909F9;
defparam \_~39 .shared_arith = "off";

cyclonev_lcell_comb \_~40 (
	.dataa(!\subtractors[21]|auto_generated|op_1~1_sumout ),
	.datab(!\_~39_combout ),
	.datac(!\subtractors[21]|auto_generated|op_1~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~40_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~40 .extended_lut = "off";
defparam \_~40 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~40 .shared_arith = "off";

cyclonev_lcell_comb \_~41 (
	.dataa(!\subtractors[22]|auto_generated|op_1~1_sumout ),
	.datab(!\_~40_combout ),
	.datac(!\subtractors[22]|auto_generated|op_1~25_sumout ),
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
defparam \_~41 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~41 .shared_arith = "off";

cyclonev_lcell_comb \_~42 (
	.dataa(!\a_delay|sr[3][13]~q ),
	.datab(!\subtractors[19]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[19]|auto_generated|op_1~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~42_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~42 .extended_lut = "off";
defparam \_~42 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~42 .shared_arith = "off";

cyclonev_lcell_comb \_~43 (
	.dataa(!\subtractors[20]|auto_generated|op_1~1_sumout ),
	.datab(!\_~42_combout ),
	.datac(!\subtractors[20]|auto_generated|op_1~13_sumout ),
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
defparam \_~43 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~43 .shared_arith = "off";

cyclonev_lcell_comb \_~44 (
	.dataa(!\subtractors[21]|auto_generated|op_1~1_sumout ),
	.datab(!\_~43_combout ),
	.datac(!\subtractors[21]|auto_generated|op_1~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~44_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~44 .extended_lut = "off";
defparam \_~44 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~44 .shared_arith = "off";

cyclonev_lcell_comb \_~45 (
	.dataa(!\subtractors[22]|auto_generated|op_1~1_sumout ),
	.datab(!\_~44_combout ),
	.datac(!\subtractors[22]|auto_generated|op_1~29_sumout ),
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
defparam \_~45 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~45 .shared_arith = "off";

cyclonev_lcell_comb \_~46 (
	.dataa(!\r_dffe[18]|sr[0][0]~q ),
	.datab(!\subtractors[19]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[19]|auto_generated|op_1~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~46_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~46 .extended_lut = "off";
defparam \_~46 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~46 .shared_arith = "off";

cyclonev_lcell_comb \_~47 (
	.dataa(!\subtractors[20]|auto_generated|op_1~1_sumout ),
	.datab(!\_~46_combout ),
	.datac(!\subtractors[20]|auto_generated|op_1~17_sumout ),
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
defparam \_~47 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~47 .shared_arith = "off";

cyclonev_lcell_comb \_~48 (
	.dataa(!\subtractors[21]|auto_generated|op_1~1_sumout ),
	.datab(!\_~47_combout ),
	.datac(!\subtractors[21]|auto_generated|op_1~25_sumout ),
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
defparam \_~48 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~48 .shared_arith = "off";

cyclonev_lcell_comb \_~49 (
	.dataa(!\subtractors[22]|auto_generated|op_1~1_sumout ),
	.datab(!\_~48_combout ),
	.datac(!\subtractors[22]|auto_generated|op_1~33_sumout ),
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
defparam \_~49 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~49 .shared_arith = "off";

cyclonev_lcell_comb \_~50 (
	.dataa(!\r_dffe[18]|sr[0][1]~q ),
	.datab(!\subtractors[19]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[19]|auto_generated|op_1~13_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~50_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~50 .extended_lut = "off";
defparam \_~50 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~50 .shared_arith = "off";

cyclonev_lcell_comb \_~51 (
	.dataa(!\subtractors[20]|auto_generated|op_1~1_sumout ),
	.datab(!\_~50_combout ),
	.datac(!\subtractors[20]|auto_generated|op_1~21_sumout ),
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
defparam \_~51 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~51 .shared_arith = "off";

cyclonev_lcell_comb \_~52 (
	.dataa(!\subtractors[21]|auto_generated|op_1~1_sumout ),
	.datab(!\_~51_combout ),
	.datac(!\subtractors[21]|auto_generated|op_1~29_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~52_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~52 .extended_lut = "off";
defparam \_~52 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~52 .shared_arith = "off";

cyclonev_lcell_comb \_~53 (
	.dataa(!\subtractors[22]|auto_generated|op_1~1_sumout ),
	.datab(!\_~52_combout ),
	.datac(!\subtractors[22]|auto_generated|op_1~37_sumout ),
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
defparam \_~53 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~53 .shared_arith = "off";

cyclonev_lcell_comb \_~54 (
	.dataa(!\r_dffe[18]|sr[0][2]~q ),
	.datab(!\subtractors[19]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[19]|auto_generated|op_1~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~54_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~54 .extended_lut = "off";
defparam \_~54 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~54 .shared_arith = "off";

cyclonev_lcell_comb \_~55 (
	.dataa(!\subtractors[20]|auto_generated|op_1~1_sumout ),
	.datab(!\_~54_combout ),
	.datac(!\subtractors[20]|auto_generated|op_1~25_sumout ),
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
defparam \_~55 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~55 .shared_arith = "off";

cyclonev_lcell_comb \_~56 (
	.dataa(!\subtractors[21]|auto_generated|op_1~1_sumout ),
	.datab(!\_~55_combout ),
	.datac(!\subtractors[21]|auto_generated|op_1~33_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~56_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~56 .extended_lut = "off";
defparam \_~56 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~56 .shared_arith = "off";

cyclonev_lcell_comb \_~57 (
	.dataa(!\subtractors[22]|auto_generated|op_1~1_sumout ),
	.datab(!\_~56_combout ),
	.datac(!\subtractors[22]|auto_generated|op_1~41_sumout ),
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
defparam \_~57 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~57 .shared_arith = "off";

cyclonev_lcell_comb \_~58 (
	.dataa(!\r_dffe[18]|sr[0][3]~q ),
	.datab(!\subtractors[19]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[19]|auto_generated|op_1~21_sumout ),
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
	.dataa(!\subtractors[20]|auto_generated|op_1~1_sumout ),
	.datab(!\_~58_combout ),
	.datac(!\subtractors[20]|auto_generated|op_1~29_sumout ),
	.datad(gnd),
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
defparam \_~59 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~59 .shared_arith = "off";

cyclonev_lcell_comb \_~60 (
	.dataa(!\subtractors[21]|auto_generated|op_1~1_sumout ),
	.datab(!\_~59_combout ),
	.datac(!\subtractors[21]|auto_generated|op_1~37_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~60_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~60 .extended_lut = "off";
defparam \_~60 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~60 .shared_arith = "off";

cyclonev_lcell_comb \_~61 (
	.dataa(!\subtractors[22]|auto_generated|op_1~1_sumout ),
	.datab(!\_~60_combout ),
	.datac(!\subtractors[22]|auto_generated|op_1~45_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~61_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~61 .extended_lut = "off";
defparam \_~61 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~61 .shared_arith = "off";

cyclonev_lcell_comb \_~62 (
	.dataa(!\r_dffe[18]|sr[0][4]~q ),
	.datab(!\subtractors[19]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[19]|auto_generated|op_1~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~62_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~62 .extended_lut = "off";
defparam \_~62 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~62 .shared_arith = "off";

cyclonev_lcell_comb \_~63 (
	.dataa(!\subtractors[20]|auto_generated|op_1~1_sumout ),
	.datab(!\_~62_combout ),
	.datac(!\subtractors[20]|auto_generated|op_1~33_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~63_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~63 .extended_lut = "off";
defparam \_~63 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~63 .shared_arith = "off";

cyclonev_lcell_comb \_~64 (
	.dataa(!\subtractors[21]|auto_generated|op_1~1_sumout ),
	.datab(!\_~63_combout ),
	.datac(!\subtractors[21]|auto_generated|op_1~41_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~64_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~64 .extended_lut = "off";
defparam \_~64 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~64 .shared_arith = "off";

cyclonev_lcell_comb \_~65 (
	.dataa(!\subtractors[22]|auto_generated|op_1~1_sumout ),
	.datab(!\_~64_combout ),
	.datac(!\subtractors[22]|auto_generated|op_1~49_sumout ),
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
defparam \_~65 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~65 .shared_arith = "off";

cyclonev_lcell_comb \_~66 (
	.dataa(!\r_dffe[18]|sr[0][5]~q ),
	.datab(!\subtractors[19]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[19]|auto_generated|op_1~29_sumout ),
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
defparam \_~66 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~66 .shared_arith = "off";

cyclonev_lcell_comb \_~67 (
	.dataa(!\subtractors[20]|auto_generated|op_1~1_sumout ),
	.datab(!\_~66_combout ),
	.datac(!\subtractors[20]|auto_generated|op_1~37_sumout ),
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
defparam \_~67 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~67 .shared_arith = "off";

cyclonev_lcell_comb \_~68 (
	.dataa(!\subtractors[21]|auto_generated|op_1~1_sumout ),
	.datab(!\_~67_combout ),
	.datac(!\subtractors[21]|auto_generated|op_1~45_sumout ),
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
defparam \_~68 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~68 .shared_arith = "off";

cyclonev_lcell_comb \_~69 (
	.dataa(!\subtractors[22]|auto_generated|op_1~1_sumout ),
	.datab(!\_~68_combout ),
	.datac(!\subtractors[22]|auto_generated|op_1~53_sumout ),
	.datad(gnd),
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
defparam \_~69 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~69 .shared_arith = "off";

cyclonev_lcell_comb \_~70 (
	.dataa(!\r_dffe[18]|sr[0][6]~q ),
	.datab(!\subtractors[19]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[19]|auto_generated|op_1~33_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~70_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~70 .extended_lut = "off";
defparam \_~70 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~70 .shared_arith = "off";

cyclonev_lcell_comb \_~71 (
	.dataa(!\subtractors[20]|auto_generated|op_1~1_sumout ),
	.datab(!\_~70_combout ),
	.datac(!\subtractors[20]|auto_generated|op_1~41_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~71_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~71 .extended_lut = "off";
defparam \_~71 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~71 .shared_arith = "off";

cyclonev_lcell_comb \_~72 (
	.dataa(!\subtractors[21]|auto_generated|op_1~1_sumout ),
	.datab(!\_~71_combout ),
	.datac(!\subtractors[21]|auto_generated|op_1~49_sumout ),
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
defparam \_~72 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~72 .shared_arith = "off";

cyclonev_lcell_comb \_~73 (
	.dataa(!\subtractors[22]|auto_generated|op_1~1_sumout ),
	.datab(!\_~72_combout ),
	.datac(!\subtractors[22]|auto_generated|op_1~57_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~73_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~73 .extended_lut = "off";
defparam \_~73 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~73 .shared_arith = "off";

cyclonev_lcell_comb \_~74 (
	.dataa(!\r_dffe[18]|sr[0][7]~q ),
	.datab(!\subtractors[19]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[19]|auto_generated|op_1~37_sumout ),
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
defparam \_~74 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~74 .shared_arith = "off";

cyclonev_lcell_comb \_~75 (
	.dataa(!\subtractors[20]|auto_generated|op_1~1_sumout ),
	.datab(!\_~74_combout ),
	.datac(!\subtractors[20]|auto_generated|op_1~45_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~75_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~75 .extended_lut = "off";
defparam \_~75 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~75 .shared_arith = "off";

cyclonev_lcell_comb \_~76 (
	.dataa(!\subtractors[21]|auto_generated|op_1~1_sumout ),
	.datab(!\_~75_combout ),
	.datac(!\subtractors[21]|auto_generated|op_1~53_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~76_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~76 .extended_lut = "off";
defparam \_~76 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~76 .shared_arith = "off";

cyclonev_lcell_comb \_~77 (
	.dataa(!\subtractors[22]|auto_generated|op_1~1_sumout ),
	.datab(!\_~76_combout ),
	.datac(!\subtractors[22]|auto_generated|op_1~61_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~77_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~77 .extended_lut = "off";
defparam \_~77 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~77 .shared_arith = "off";

cyclonev_lcell_comb \_~78 (
	.dataa(!\r_dffe[18]|sr[0][8]~q ),
	.datab(!\subtractors[19]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[19]|auto_generated|op_1~41_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~78_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~78 .extended_lut = "off";
defparam \_~78 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~78 .shared_arith = "off";

cyclonev_lcell_comb \_~79 (
	.dataa(!\subtractors[20]|auto_generated|op_1~1_sumout ),
	.datab(!\_~78_combout ),
	.datac(!\subtractors[20]|auto_generated|op_1~49_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~79_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~79 .extended_lut = "off";
defparam \_~79 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~79 .shared_arith = "off";

cyclonev_lcell_comb \_~80 (
	.dataa(!\subtractors[21]|auto_generated|op_1~1_sumout ),
	.datab(!\_~79_combout ),
	.datac(!\subtractors[21]|auto_generated|op_1~57_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~80_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~80 .extended_lut = "off";
defparam \_~80 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~80 .shared_arith = "off";

cyclonev_lcell_comb \_~81 (
	.dataa(!\subtractors[22]|auto_generated|op_1~1_sumout ),
	.datab(!\_~80_combout ),
	.datac(!\subtractors[22]|auto_generated|op_1~65_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~81_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~81 .extended_lut = "off";
defparam \_~81 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~81 .shared_arith = "off";

cyclonev_lcell_comb \_~82 (
	.dataa(!\r_dffe[18]|sr[0][9]~q ),
	.datab(!\subtractors[19]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[19]|auto_generated|op_1~45_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~82_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~82 .extended_lut = "off";
defparam \_~82 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~82 .shared_arith = "off";

cyclonev_lcell_comb \_~83 (
	.dataa(!\subtractors[20]|auto_generated|op_1~1_sumout ),
	.datab(!\_~82_combout ),
	.datac(!\subtractors[20]|auto_generated|op_1~53_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~83_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~83 .extended_lut = "off";
defparam \_~83 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~83 .shared_arith = "off";

cyclonev_lcell_comb \_~84 (
	.dataa(!\subtractors[21]|auto_generated|op_1~1_sumout ),
	.datab(!\_~83_combout ),
	.datac(!\subtractors[21]|auto_generated|op_1~61_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~84_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~84 .extended_lut = "off";
defparam \_~84 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~84 .shared_arith = "off";

cyclonev_lcell_comb \_~85 (
	.dataa(!\subtractors[22]|auto_generated|op_1~1_sumout ),
	.datab(!\_~84_combout ),
	.datac(!\subtractors[22]|auto_generated|op_1~69_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~85_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~85 .extended_lut = "off";
defparam \_~85 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~85 .shared_arith = "off";

cyclonev_lcell_comb \_~86 (
	.dataa(!\r_dffe[18]|sr[0][10]~q ),
	.datab(!\subtractors[19]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[19]|auto_generated|op_1~49_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~86_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~86 .extended_lut = "off";
defparam \_~86 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~86 .shared_arith = "off";

cyclonev_lcell_comb \_~87 (
	.dataa(!\subtractors[20]|auto_generated|op_1~1_sumout ),
	.datab(!\_~86_combout ),
	.datac(!\subtractors[20]|auto_generated|op_1~57_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~87_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~87 .extended_lut = "off";
defparam \_~87 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~87 .shared_arith = "off";

cyclonev_lcell_comb \_~88 (
	.dataa(!\subtractors[21]|auto_generated|op_1~1_sumout ),
	.datab(!\_~87_combout ),
	.datac(!\subtractors[21]|auto_generated|op_1~65_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~88_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~88 .extended_lut = "off";
defparam \_~88 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~88 .shared_arith = "off";

cyclonev_lcell_comb \_~89 (
	.dataa(!\subtractors[22]|auto_generated|op_1~1_sumout ),
	.datab(!\_~88_combout ),
	.datac(!\subtractors[22]|auto_generated|op_1~73_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~89_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~89 .extended_lut = "off";
defparam \_~89 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~89 .shared_arith = "off";

cyclonev_lcell_comb \_~90 (
	.dataa(!\r_dffe[18]|sr[0][11]~q ),
	.datab(!\subtractors[19]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[19]|auto_generated|op_1~53_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~90_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~90 .extended_lut = "off";
defparam \_~90 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~90 .shared_arith = "off";

cyclonev_lcell_comb \_~91 (
	.dataa(!\subtractors[20]|auto_generated|op_1~1_sumout ),
	.datab(!\_~90_combout ),
	.datac(!\subtractors[20]|auto_generated|op_1~61_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~91_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~91 .extended_lut = "off";
defparam \_~91 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~91 .shared_arith = "off";

cyclonev_lcell_comb \_~92 (
	.dataa(!\subtractors[21]|auto_generated|op_1~1_sumout ),
	.datab(!\_~91_combout ),
	.datac(!\subtractors[21]|auto_generated|op_1~69_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~92_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~92 .extended_lut = "off";
defparam \_~92 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~92 .shared_arith = "off";

cyclonev_lcell_comb \_~93 (
	.dataa(!\subtractors[22]|auto_generated|op_1~1_sumout ),
	.datab(!\_~92_combout ),
	.datac(!\subtractors[22]|auto_generated|op_1~77_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~93_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~93 .extended_lut = "off";
defparam \_~93 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~93 .shared_arith = "off";

cyclonev_lcell_comb \_~94 (
	.dataa(!\r_dffe[18]|sr[0][12]~q ),
	.datab(!\subtractors[19]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[19]|auto_generated|op_1~57_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~94_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~94 .extended_lut = "off";
defparam \_~94 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~94 .shared_arith = "off";

cyclonev_lcell_comb \_~95 (
	.dataa(!\subtractors[20]|auto_generated|op_1~1_sumout ),
	.datab(!\_~94_combout ),
	.datac(!\subtractors[20]|auto_generated|op_1~65_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~95_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~95 .extended_lut = "off";
defparam \_~95 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~95 .shared_arith = "off";

cyclonev_lcell_comb \_~96 (
	.dataa(!\subtractors[21]|auto_generated|op_1~1_sumout ),
	.datab(!\_~95_combout ),
	.datac(!\subtractors[21]|auto_generated|op_1~73_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~96_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~96 .extended_lut = "off";
defparam \_~96 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~96 .shared_arith = "off";

cyclonev_lcell_comb \_~97 (
	.dataa(!\subtractors[22]|auto_generated|op_1~1_sumout ),
	.datab(!\_~96_combout ),
	.datac(!\subtractors[22]|auto_generated|op_1~81_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~97_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~97 .extended_lut = "off";
defparam \_~97 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~97 .shared_arith = "off";

cyclonev_lcell_comb \_~98 (
	.dataa(!\a_delay|sr[2][14]~q ),
	.datab(!\subtractors[18]|auto_generated|op_1~1_sumout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~98_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~98 .extended_lut = "off";
defparam \_~98 .lut_mask = 64'h9999999999999999;
defparam \_~98 .shared_arith = "off";

cyclonev_lcell_comb \_~99 (
	.dataa(!\a_delay|sr[2][15]~q ),
	.datab(!\subtractors[18]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[18]|auto_generated|op_1~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~99_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~99 .extended_lut = "off";
defparam \_~99 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~99 .shared_arith = "off";

cyclonev_lcell_comb \_~100 (
	.dataa(!\a_delay|sr[2][16]~q ),
	.datab(!\subtractors[17]|auto_generated|op_1~1_sumout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~100_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~100 .extended_lut = "off";
defparam \_~100 .lut_mask = 64'h9999999999999999;
defparam \_~100 .shared_arith = "off";

cyclonev_lcell_comb \_~101 (
	.dataa(!\a_delay|sr[2][17]~q ),
	.datab(!\subtractors[17]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[17]|auto_generated|op_1~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~101_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~101 .extended_lut = "off";
defparam \_~101 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~101 .shared_arith = "off";

cyclonev_lcell_comb \_~102 (
	.dataa(!\a_delay|sr[2][18]~q ),
	.datab(!\subtractors[16]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[17]|auto_generated|op_1~1_sumout ),
	.datad(!\subtractors[17]|auto_generated|op_1~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~102_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~102 .extended_lut = "off";
defparam \_~102 .lut_mask = 64'h09F909F909F909F9;
defparam \_~102 .shared_arith = "off";

cyclonev_lcell_comb \_~103 (
	.dataa(!\a_delay|sr[2][19]~q ),
	.datab(!\subtractors[16]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[16]|auto_generated|op_1~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~103_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~103 .extended_lut = "off";
defparam \_~103 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~103 .shared_arith = "off";

cyclonev_lcell_comb \_~104 (
	.dataa(!\subtractors[17]|auto_generated|op_1~1_sumout ),
	.datab(!\_~103_combout ),
	.datac(!\subtractors[17]|auto_generated|op_1~13_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~104_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~104 .extended_lut = "off";
defparam \_~104 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~104 .shared_arith = "off";

cyclonev_lcell_comb \_~105 (
	.dataa(!\a_delay|sr[2][20]~q ),
	.datab(!\subtractors[15]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[16]|auto_generated|op_1~1_sumout ),
	.datad(!\subtractors[16]|auto_generated|op_1~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~105_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~105 .extended_lut = "off";
defparam \_~105 .lut_mask = 64'h09F909F909F909F9;
defparam \_~105 .shared_arith = "off";

cyclonev_lcell_comb \_~106 (
	.dataa(!\subtractors[17]|auto_generated|op_1~1_sumout ),
	.datab(!\_~105_combout ),
	.datac(!\subtractors[17]|auto_generated|op_1~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~106_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~106 .extended_lut = "off";
defparam \_~106 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~106 .shared_arith = "off";

cyclonev_lcell_comb \_~107 (
	.dataa(!\a_delay|sr[2][21]~q ),
	.datab(!\subtractors[15]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[15]|auto_generated|op_1~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~107_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~107 .extended_lut = "off";
defparam \_~107 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~107 .shared_arith = "off";

cyclonev_lcell_comb \_~108 (
	.dataa(!\subtractors[16]|auto_generated|op_1~1_sumout ),
	.datab(!\_~107_combout ),
	.datac(!\subtractors[16]|auto_generated|op_1~13_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~108_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~108 .extended_lut = "off";
defparam \_~108 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~108 .shared_arith = "off";

cyclonev_lcell_comb \_~109 (
	.dataa(!\subtractors[17]|auto_generated|op_1~1_sumout ),
	.datab(!\_~108_combout ),
	.datac(!\subtractors[17]|auto_generated|op_1~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~109_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~109 .extended_lut = "off";
defparam \_~109 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~109 .shared_arith = "off";

cyclonev_lcell_comb \_~110 (
	.dataa(!\a_delay|sr[2][22]~q ),
	.datab(!\subtractors[14]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[15]|auto_generated|op_1~1_sumout ),
	.datad(!\subtractors[15]|auto_generated|op_1~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~110_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~110 .extended_lut = "off";
defparam \_~110 .lut_mask = 64'h09F909F909F909F9;
defparam \_~110 .shared_arith = "off";

cyclonev_lcell_comb \_~111 (
	.dataa(!\subtractors[16]|auto_generated|op_1~1_sumout ),
	.datab(!\_~110_combout ),
	.datac(!\subtractors[16]|auto_generated|op_1~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~111_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~111 .extended_lut = "off";
defparam \_~111 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~111 .shared_arith = "off";

cyclonev_lcell_comb \_~112 (
	.dataa(!\subtractors[17]|auto_generated|op_1~1_sumout ),
	.datab(!\_~111_combout ),
	.datac(!\subtractors[17]|auto_generated|op_1~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~112_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~112 .extended_lut = "off";
defparam \_~112 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~112 .shared_arith = "off";

cyclonev_lcell_comb \_~113 (
	.dataa(!\a_delay|sr[2][23]~q ),
	.datab(!\subtractors[14]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[14]|auto_generated|op_1~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~113_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~113 .extended_lut = "off";
defparam \_~113 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~113 .shared_arith = "off";

cyclonev_lcell_comb \_~114 (
	.dataa(!\subtractors[15]|auto_generated|op_1~1_sumout ),
	.datab(!\_~113_combout ),
	.datac(!\subtractors[15]|auto_generated|op_1~13_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~114_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~114 .extended_lut = "off";
defparam \_~114 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~114 .shared_arith = "off";

cyclonev_lcell_comb \_~115 (
	.dataa(!\subtractors[16]|auto_generated|op_1~1_sumout ),
	.datab(!\_~114_combout ),
	.datac(!\subtractors[16]|auto_generated|op_1~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~115_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~115 .extended_lut = "off";
defparam \_~115 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~115 .shared_arith = "off";

cyclonev_lcell_comb \_~116 (
	.dataa(!\subtractors[17]|auto_generated|op_1~1_sumout ),
	.datab(!\_~115_combout ),
	.datac(!\subtractors[17]|auto_generated|op_1~29_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~116_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~116 .extended_lut = "off";
defparam \_~116 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~116 .shared_arith = "off";

cyclonev_lcell_comb \_~117 (
	.dataa(!\a_delay|sr[2][24]~q ),
	.datab(!\subtractors[13]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[14]|auto_generated|op_1~1_sumout ),
	.datad(!\subtractors[14]|auto_generated|op_1~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~117_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~117 .extended_lut = "off";
defparam \_~117 .lut_mask = 64'h09F909F909F909F9;
defparam \_~117 .shared_arith = "off";

cyclonev_lcell_comb \_~118 (
	.dataa(!\subtractors[15]|auto_generated|op_1~1_sumout ),
	.datab(!\_~117_combout ),
	.datac(!\subtractors[15]|auto_generated|op_1~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~118_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~118 .extended_lut = "off";
defparam \_~118 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~118 .shared_arith = "off";

cyclonev_lcell_comb \_~119 (
	.dataa(!\subtractors[16]|auto_generated|op_1~1_sumout ),
	.datab(!\_~118_combout ),
	.datac(!\subtractors[16]|auto_generated|op_1~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~119_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~119 .extended_lut = "off";
defparam \_~119 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~119 .shared_arith = "off";

cyclonev_lcell_comb \_~120 (
	.dataa(!\subtractors[17]|auto_generated|op_1~1_sumout ),
	.datab(!\_~119_combout ),
	.datac(!\subtractors[17]|auto_generated|op_1~33_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~120_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~120 .extended_lut = "off";
defparam \_~120 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~120 .shared_arith = "off";

cyclonev_lcell_comb \_~121 (
	.dataa(!\a_delay|sr[2][25]~q ),
	.datab(!\subtractors[13]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[13]|auto_generated|op_1~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~121_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~121 .extended_lut = "off";
defparam \_~121 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~121 .shared_arith = "off";

cyclonev_lcell_comb \_~122 (
	.dataa(!\subtractors[14]|auto_generated|op_1~1_sumout ),
	.datab(!\_~121_combout ),
	.datac(!\subtractors[14]|auto_generated|op_1~13_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~122_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~122 .extended_lut = "off";
defparam \_~122 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~122 .shared_arith = "off";

cyclonev_lcell_comb \_~123 (
	.dataa(!\subtractors[15]|auto_generated|op_1~1_sumout ),
	.datab(!\_~122_combout ),
	.datac(!\subtractors[15]|auto_generated|op_1~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~123_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~123 .extended_lut = "off";
defparam \_~123 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~123 .shared_arith = "off";

cyclonev_lcell_comb \_~124 (
	.dataa(!\subtractors[16]|auto_generated|op_1~1_sumout ),
	.datab(!\_~123_combout ),
	.datac(!\subtractors[16]|auto_generated|op_1~29_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~124_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~124 .extended_lut = "off";
defparam \_~124 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~124 .shared_arith = "off";

cyclonev_lcell_comb \_~125 (
	.dataa(!\subtractors[17]|auto_generated|op_1~1_sumout ),
	.datab(!\_~124_combout ),
	.datac(!\subtractors[17]|auto_generated|op_1~37_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~125_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~125 .extended_lut = "off";
defparam \_~125 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~125 .shared_arith = "off";

cyclonev_lcell_comb \_~126 (
	.dataa(!\r_dffe[12]|sr[0][0]~q ),
	.datab(!\subtractors[13]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[13]|auto_generated|op_1~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~126_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~126 .extended_lut = "off";
defparam \_~126 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~126 .shared_arith = "off";

cyclonev_lcell_comb \_~127 (
	.dataa(!\subtractors[14]|auto_generated|op_1~1_sumout ),
	.datab(!\_~126_combout ),
	.datac(!\subtractors[14]|auto_generated|op_1~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~127_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~127 .extended_lut = "off";
defparam \_~127 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~127 .shared_arith = "off";

cyclonev_lcell_comb \_~128 (
	.dataa(!\subtractors[15]|auto_generated|op_1~1_sumout ),
	.datab(!\_~127_combout ),
	.datac(!\subtractors[15]|auto_generated|op_1~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~128_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~128 .extended_lut = "off";
defparam \_~128 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~128 .shared_arith = "off";

cyclonev_lcell_comb \_~129 (
	.dataa(!\subtractors[16]|auto_generated|op_1~1_sumout ),
	.datab(!\_~128_combout ),
	.datac(!\subtractors[16]|auto_generated|op_1~33_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~129_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~129 .extended_lut = "off";
defparam \_~129 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~129 .shared_arith = "off";

cyclonev_lcell_comb \_~130 (
	.dataa(!\subtractors[17]|auto_generated|op_1~1_sumout ),
	.datab(!\_~129_combout ),
	.datac(!\subtractors[17]|auto_generated|op_1~41_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~130_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~130 .extended_lut = "off";
defparam \_~130 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~130 .shared_arith = "off";

cyclonev_lcell_comb \_~131 (
	.dataa(!\r_dffe[18]|sr[0][13]~q ),
	.datab(!\subtractors[19]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[19]|auto_generated|op_1~69_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~131_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~131 .extended_lut = "off";
defparam \_~131 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~131 .shared_arith = "off";

cyclonev_lcell_comb \_~132 (
	.dataa(!\subtractors[20]|auto_generated|op_1~1_sumout ),
	.datab(!\_~131_combout ),
	.datac(!\subtractors[20]|auto_generated|op_1~77_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~132_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~132 .extended_lut = "off";
defparam \_~132 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~132 .shared_arith = "off";

cyclonev_lcell_comb \_~133 (
	.dataa(!\subtractors[21]|auto_generated|op_1~1_sumout ),
	.datab(!\_~132_combout ),
	.datac(!\subtractors[21]|auto_generated|op_1~85_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~133_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~133 .extended_lut = "off";
defparam \_~133 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~133 .shared_arith = "off";

cyclonev_lcell_comb \_~134 (
	.dataa(!\subtractors[22]|auto_generated|op_1~1_sumout ),
	.datab(!\_~133_combout ),
	.datac(!\subtractors[22]|auto_generated|op_1~93_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~134_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~134 .extended_lut = "off";
defparam \_~134 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~134 .shared_arith = "off";

cyclonev_lcell_comb \_~135 (
	.dataa(!\r_dffe[18]|sr[0][14]~q ),
	.datab(!\subtractors[19]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[19]|auto_generated|op_1~73_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~135_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~135 .extended_lut = "off";
defparam \_~135 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~135 .shared_arith = "off";

cyclonev_lcell_comb \_~136 (
	.dataa(!\subtractors[20]|auto_generated|op_1~1_sumout ),
	.datab(!\_~135_combout ),
	.datac(!\subtractors[20]|auto_generated|op_1~81_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~136_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~136 .extended_lut = "off";
defparam \_~136 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~136 .shared_arith = "off";

cyclonev_lcell_comb \_~137 (
	.dataa(!\subtractors[21]|auto_generated|op_1~1_sumout ),
	.datab(!\_~136_combout ),
	.datac(!\subtractors[21]|auto_generated|op_1~89_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~137_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~137 .extended_lut = "off";
defparam \_~137 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~137 .shared_arith = "off";

cyclonev_lcell_comb \_~138 (
	.dataa(!\subtractors[22]|auto_generated|op_1~1_sumout ),
	.datab(!\_~137_combout ),
	.datac(!\subtractors[22]|auto_generated|op_1~97_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~138_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~138 .extended_lut = "off";
defparam \_~138 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~138 .shared_arith = "off";

cyclonev_lcell_comb \_~139 (
	.dataa(!\r_dffe[18]|sr[0][15]~q ),
	.datab(!\subtractors[19]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[19]|auto_generated|op_1~77_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~139_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~139 .extended_lut = "off";
defparam \_~139 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~139 .shared_arith = "off";

cyclonev_lcell_comb \_~140 (
	.dataa(!\subtractors[20]|auto_generated|op_1~1_sumout ),
	.datab(!\_~139_combout ),
	.datac(!\subtractors[20]|auto_generated|op_1~85_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~140_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~140 .extended_lut = "off";
defparam \_~140 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~140 .shared_arith = "off";

cyclonev_lcell_comb \_~141 (
	.dataa(!\subtractors[21]|auto_generated|op_1~1_sumout ),
	.datab(!\_~140_combout ),
	.datac(!\subtractors[21]|auto_generated|op_1~93_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~141_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~141 .extended_lut = "off";
defparam \_~141 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~141 .shared_arith = "off";

cyclonev_lcell_comb \_~142 (
	.dataa(!\r_dffe[18]|sr[0][16]~q ),
	.datab(!\subtractors[19]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[19]|auto_generated|op_1~81_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~142_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~142 .extended_lut = "off";
defparam \_~142 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~142 .shared_arith = "off";

cyclonev_lcell_comb \_~143 (
	.dataa(!\subtractors[20]|auto_generated|op_1~1_sumout ),
	.datab(!\_~142_combout ),
	.datac(!\subtractors[20]|auto_generated|op_1~89_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~143_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~143 .extended_lut = "off";
defparam \_~143 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~143 .shared_arith = "off";

cyclonev_lcell_comb \_~144 (
	.dataa(!\r_dffe[18]|sr[0][17]~q ),
	.datab(!\subtractors[19]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[19]|auto_generated|op_1~85_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~144_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~144 .extended_lut = "off";
defparam \_~144 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~144 .shared_arith = "off";

cyclonev_lcell_comb \_~145 (
	.dataa(!\a_delay|sr[1][26]~q ),
	.datab(!\subtractors[12]|auto_generated|op_1~1_sumout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~145_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~145 .extended_lut = "off";
defparam \_~145 .lut_mask = 64'h9999999999999999;
defparam \_~145 .shared_arith = "off";

cyclonev_lcell_comb \_~146 (
	.dataa(!\r_dffe[12]|sr[0][1]~q ),
	.datab(!\subtractors[13]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[13]|auto_generated|op_1~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~146_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~146 .extended_lut = "off";
defparam \_~146 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~146 .shared_arith = "off";

cyclonev_lcell_comb \_~147 (
	.dataa(!\subtractors[14]|auto_generated|op_1~1_sumout ),
	.datab(!\_~146_combout ),
	.datac(!\subtractors[14]|auto_generated|op_1~29_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~147_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~147 .extended_lut = "off";
defparam \_~147 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~147 .shared_arith = "off";

cyclonev_lcell_comb \_~148 (
	.dataa(!\subtractors[15]|auto_generated|op_1~1_sumout ),
	.datab(!\_~147_combout ),
	.datac(!\subtractors[15]|auto_generated|op_1~37_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~148_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~148 .extended_lut = "off";
defparam \_~148 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~148 .shared_arith = "off";

cyclonev_lcell_comb \_~149 (
	.dataa(!\subtractors[16]|auto_generated|op_1~1_sumout ),
	.datab(!\_~148_combout ),
	.datac(!\subtractors[16]|auto_generated|op_1~45_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~149_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~149 .extended_lut = "off";
defparam \_~149 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~149 .shared_arith = "off";

cyclonev_lcell_comb \_~150 (
	.dataa(!\subtractors[17]|auto_generated|op_1~1_sumout ),
	.datab(!\_~149_combout ),
	.datac(!\subtractors[17]|auto_generated|op_1~53_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~150_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~150 .extended_lut = "off";
defparam \_~150 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~150 .shared_arith = "off";

cyclonev_lcell_comb \_~151 (
	.dataa(!\r_dffe[12]|sr[0][2]~q ),
	.datab(!\subtractors[13]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[13]|auto_generated|op_1~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~151_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~151 .extended_lut = "off";
defparam \_~151 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~151 .shared_arith = "off";

cyclonev_lcell_comb \_~152 (
	.dataa(!\subtractors[14]|auto_generated|op_1~1_sumout ),
	.datab(!\_~151_combout ),
	.datac(!\subtractors[14]|auto_generated|op_1~33_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~152_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~152 .extended_lut = "off";
defparam \_~152 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~152 .shared_arith = "off";

cyclonev_lcell_comb \_~153 (
	.dataa(!\subtractors[15]|auto_generated|op_1~1_sumout ),
	.datab(!\_~152_combout ),
	.datac(!\subtractors[15]|auto_generated|op_1~41_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~153_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~153 .extended_lut = "off";
defparam \_~153 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~153 .shared_arith = "off";

cyclonev_lcell_comb \_~154 (
	.dataa(!\subtractors[16]|auto_generated|op_1~1_sumout ),
	.datab(!\_~153_combout ),
	.datac(!\subtractors[16]|auto_generated|op_1~49_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~154_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~154 .extended_lut = "off";
defparam \_~154 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~154 .shared_arith = "off";

cyclonev_lcell_comb \_~155 (
	.dataa(!\subtractors[17]|auto_generated|op_1~1_sumout ),
	.datab(!\_~154_combout ),
	.datac(!\subtractors[17]|auto_generated|op_1~57_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~155_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~155 .extended_lut = "off";
defparam \_~155 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~155 .shared_arith = "off";

cyclonev_lcell_comb \_~156 (
	.dataa(!\r_dffe[12]|sr[0][3]~q ),
	.datab(!\subtractors[13]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[13]|auto_generated|op_1~29_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~156_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~156 .extended_lut = "off";
defparam \_~156 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~156 .shared_arith = "off";

cyclonev_lcell_comb \_~157 (
	.dataa(!\subtractors[14]|auto_generated|op_1~1_sumout ),
	.datab(!\_~156_combout ),
	.datac(!\subtractors[14]|auto_generated|op_1~37_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~157_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~157 .extended_lut = "off";
defparam \_~157 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~157 .shared_arith = "off";

cyclonev_lcell_comb \_~158 (
	.dataa(!\subtractors[15]|auto_generated|op_1~1_sumout ),
	.datab(!\_~157_combout ),
	.datac(!\subtractors[15]|auto_generated|op_1~45_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~158_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~158 .extended_lut = "off";
defparam \_~158 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~158 .shared_arith = "off";

cyclonev_lcell_comb \_~159 (
	.dataa(!\subtractors[16]|auto_generated|op_1~1_sumout ),
	.datab(!\_~158_combout ),
	.datac(!\subtractors[16]|auto_generated|op_1~53_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~159_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~159 .extended_lut = "off";
defparam \_~159 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~159 .shared_arith = "off";

cyclonev_lcell_comb \_~160 (
	.dataa(!\subtractors[17]|auto_generated|op_1~1_sumout ),
	.datab(!\_~159_combout ),
	.datac(!\subtractors[17]|auto_generated|op_1~61_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~160_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~160 .extended_lut = "off";
defparam \_~160 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~160 .shared_arith = "off";

cyclonev_lcell_comb \_~161 (
	.dataa(!\r_dffe[12]|sr[0][4]~q ),
	.datab(!\subtractors[13]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[13]|auto_generated|op_1~33_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~161_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~161 .extended_lut = "off";
defparam \_~161 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~161 .shared_arith = "off";

cyclonev_lcell_comb \_~162 (
	.dataa(!\subtractors[14]|auto_generated|op_1~1_sumout ),
	.datab(!\_~161_combout ),
	.datac(!\subtractors[14]|auto_generated|op_1~41_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~162_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~162 .extended_lut = "off";
defparam \_~162 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~162 .shared_arith = "off";

cyclonev_lcell_comb \_~163 (
	.dataa(!\subtractors[15]|auto_generated|op_1~1_sumout ),
	.datab(!\_~162_combout ),
	.datac(!\subtractors[15]|auto_generated|op_1~49_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~163_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~163 .extended_lut = "off";
defparam \_~163 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~163 .shared_arith = "off";

cyclonev_lcell_comb \_~164 (
	.dataa(!\subtractors[16]|auto_generated|op_1~1_sumout ),
	.datab(!\_~163_combout ),
	.datac(!\subtractors[16]|auto_generated|op_1~57_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~164_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~164 .extended_lut = "off";
defparam \_~164 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~164 .shared_arith = "off";

cyclonev_lcell_comb \_~165 (
	.dataa(!\subtractors[17]|auto_generated|op_1~1_sumout ),
	.datab(!\_~164_combout ),
	.datac(!\subtractors[17]|auto_generated|op_1~65_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~165_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~165 .extended_lut = "off";
defparam \_~165 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~165 .shared_arith = "off";

cyclonev_lcell_comb \_~166 (
	.dataa(!\r_dffe[12]|sr[0][5]~q ),
	.datab(!\subtractors[13]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[13]|auto_generated|op_1~37_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~166_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~166 .extended_lut = "off";
defparam \_~166 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~166 .shared_arith = "off";

cyclonev_lcell_comb \_~167 (
	.dataa(!\subtractors[14]|auto_generated|op_1~1_sumout ),
	.datab(!\_~166_combout ),
	.datac(!\subtractors[14]|auto_generated|op_1~45_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~167_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~167 .extended_lut = "off";
defparam \_~167 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~167 .shared_arith = "off";

cyclonev_lcell_comb \_~168 (
	.dataa(!\subtractors[15]|auto_generated|op_1~1_sumout ),
	.datab(!\_~167_combout ),
	.datac(!\subtractors[15]|auto_generated|op_1~53_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~168_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~168 .extended_lut = "off";
defparam \_~168 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~168 .shared_arith = "off";

cyclonev_lcell_comb \_~169 (
	.dataa(!\subtractors[16]|auto_generated|op_1~1_sumout ),
	.datab(!\_~168_combout ),
	.datac(!\subtractors[16]|auto_generated|op_1~61_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~169_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~169 .extended_lut = "off";
defparam \_~169 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~169 .shared_arith = "off";

cyclonev_lcell_comb \_~170 (
	.dataa(!\subtractors[17]|auto_generated|op_1~1_sumout ),
	.datab(!\_~169_combout ),
	.datac(!\subtractors[17]|auto_generated|op_1~69_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~170_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~170 .extended_lut = "off";
defparam \_~170 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~170 .shared_arith = "off";

cyclonev_lcell_comb \_~171 (
	.dataa(!\r_dffe[12]|sr[0][6]~q ),
	.datab(!\subtractors[13]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[13]|auto_generated|op_1~41_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~171_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~171 .extended_lut = "off";
defparam \_~171 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~171 .shared_arith = "off";

cyclonev_lcell_comb \_~172 (
	.dataa(!\subtractors[14]|auto_generated|op_1~1_sumout ),
	.datab(!\_~171_combout ),
	.datac(!\subtractors[14]|auto_generated|op_1~49_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~172_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~172 .extended_lut = "off";
defparam \_~172 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~172 .shared_arith = "off";

cyclonev_lcell_comb \_~173 (
	.dataa(!\subtractors[15]|auto_generated|op_1~1_sumout ),
	.datab(!\_~172_combout ),
	.datac(!\subtractors[15]|auto_generated|op_1~57_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~173_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~173 .extended_lut = "off";
defparam \_~173 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~173 .shared_arith = "off";

cyclonev_lcell_comb \_~174 (
	.dataa(!\subtractors[16]|auto_generated|op_1~1_sumout ),
	.datab(!\_~173_combout ),
	.datac(!\subtractors[16]|auto_generated|op_1~65_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~174_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~174 .extended_lut = "off";
defparam \_~174 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~174 .shared_arith = "off";

cyclonev_lcell_comb \_~175 (
	.dataa(!\subtractors[17]|auto_generated|op_1~1_sumout ),
	.datab(!\_~174_combout ),
	.datac(!\subtractors[17]|auto_generated|op_1~73_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~175_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~175 .extended_lut = "off";
defparam \_~175 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~175 .shared_arith = "off";

cyclonev_lcell_comb \_~176 (
	.dataa(!\r_dffe[12]|sr[0][7]~q ),
	.datab(!\subtractors[13]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[13]|auto_generated|op_1~45_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~176_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~176 .extended_lut = "off";
defparam \_~176 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~176 .shared_arith = "off";

cyclonev_lcell_comb \_~177 (
	.dataa(!\subtractors[14]|auto_generated|op_1~1_sumout ),
	.datab(!\_~176_combout ),
	.datac(!\subtractors[14]|auto_generated|op_1~53_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~177_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~177 .extended_lut = "off";
defparam \_~177 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~177 .shared_arith = "off";

cyclonev_lcell_comb \_~178 (
	.dataa(!\subtractors[15]|auto_generated|op_1~1_sumout ),
	.datab(!\_~177_combout ),
	.datac(!\subtractors[15]|auto_generated|op_1~61_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~178_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~178 .extended_lut = "off";
defparam \_~178 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~178 .shared_arith = "off";

cyclonev_lcell_comb \_~179 (
	.dataa(!\subtractors[16]|auto_generated|op_1~1_sumout ),
	.datab(!\_~178_combout ),
	.datac(!\subtractors[16]|auto_generated|op_1~69_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~179_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~179 .extended_lut = "off";
defparam \_~179 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~179 .shared_arith = "off";

cyclonev_lcell_comb \_~180 (
	.dataa(!\subtractors[17]|auto_generated|op_1~1_sumout ),
	.datab(!\_~179_combout ),
	.datac(!\subtractors[17]|auto_generated|op_1~77_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~180_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~180 .extended_lut = "off";
defparam \_~180 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~180 .shared_arith = "off";

cyclonev_lcell_comb \_~181 (
	.dataa(!\r_dffe[12]|sr[0][8]~q ),
	.datab(!\subtractors[13]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[13]|auto_generated|op_1~49_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~181_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~181 .extended_lut = "off";
defparam \_~181 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~181 .shared_arith = "off";

cyclonev_lcell_comb \_~182 (
	.dataa(!\subtractors[14]|auto_generated|op_1~1_sumout ),
	.datab(!\_~181_combout ),
	.datac(!\subtractors[14]|auto_generated|op_1~57_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~182_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~182 .extended_lut = "off";
defparam \_~182 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~182 .shared_arith = "off";

cyclonev_lcell_comb \_~183 (
	.dataa(!\subtractors[15]|auto_generated|op_1~1_sumout ),
	.datab(!\_~182_combout ),
	.datac(!\subtractors[15]|auto_generated|op_1~65_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~183_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~183 .extended_lut = "off";
defparam \_~183 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~183 .shared_arith = "off";

cyclonev_lcell_comb \_~184 (
	.dataa(!\subtractors[16]|auto_generated|op_1~1_sumout ),
	.datab(!\_~183_combout ),
	.datac(!\subtractors[16]|auto_generated|op_1~73_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~184_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~184 .extended_lut = "off";
defparam \_~184 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~184 .shared_arith = "off";

cyclonev_lcell_comb \_~185 (
	.dataa(!\r_dffe[12]|sr[0][9]~q ),
	.datab(!\subtractors[13]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[13]|auto_generated|op_1~53_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~185_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~185 .extended_lut = "off";
defparam \_~185 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~185 .shared_arith = "off";

cyclonev_lcell_comb \_~186 (
	.dataa(!\subtractors[14]|auto_generated|op_1~1_sumout ),
	.datab(!\_~185_combout ),
	.datac(!\subtractors[14]|auto_generated|op_1~61_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~186_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~186 .extended_lut = "off";
defparam \_~186 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~186 .shared_arith = "off";

cyclonev_lcell_comb \_~187 (
	.dataa(!\subtractors[15]|auto_generated|op_1~1_sumout ),
	.datab(!\_~186_combout ),
	.datac(!\subtractors[15]|auto_generated|op_1~69_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~187_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~187 .extended_lut = "off";
defparam \_~187 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~187 .shared_arith = "off";

cyclonev_lcell_comb \_~188 (
	.dataa(!\r_dffe[12]|sr[0][10]~q ),
	.datab(!\subtractors[13]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[13]|auto_generated|op_1~57_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~188_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~188 .extended_lut = "off";
defparam \_~188 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~188 .shared_arith = "off";

cyclonev_lcell_comb \_~189 (
	.dataa(!\subtractors[14]|auto_generated|op_1~1_sumout ),
	.datab(!\_~188_combout ),
	.datac(!\subtractors[14]|auto_generated|op_1~65_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~189_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~189 .extended_lut = "off";
defparam \_~189 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~189 .shared_arith = "off";

cyclonev_lcell_comb \_~190 (
	.dataa(!\r_dffe[12]|sr[0][11]~q ),
	.datab(!\subtractors[13]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[13]|auto_generated|op_1~61_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~190_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~190 .extended_lut = "off";
defparam \_~190 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~190 .shared_arith = "off";

cyclonev_lcell_comb \_~191 (
	.dataa(!\a_delay|sr[1][27]~q ),
	.datab(!\subtractors[12]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[12]|auto_generated|op_1~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~191_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~191 .extended_lut = "off";
defparam \_~191 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~191 .shared_arith = "off";

cyclonev_lcell_comb \_~192 (
	.dataa(!\a_delay|sr[1][28]~q ),
	.datab(!\subtractors[11]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[12]|auto_generated|op_1~1_sumout ),
	.datad(!\subtractors[12]|auto_generated|op_1~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~192_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~192 .extended_lut = "off";
defparam \_~192 .lut_mask = 64'h09F909F909F909F9;
defparam \_~192 .shared_arith = "off";

cyclonev_lcell_comb \_~193 (
	.dataa(!\a_delay|sr[1][29]~q ),
	.datab(!\subtractors[11]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[11]|auto_generated|op_1~9_sumout ),
	.datad(!\subtractors[12]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[12]|auto_generated|op_1~17_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~193_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~193 .extended_lut = "off";
defparam \_~193 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~193 .shared_arith = "off";

cyclonev_lcell_comb \_~194 (
	.dataa(!\a_delay|sr[1][30]~q ),
	.datab(!\subtractors[10]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[11]|auto_generated|op_1~1_sumout ),
	.datad(!\subtractors[11]|auto_generated|op_1~13_sumout ),
	.datae(!\subtractors[12]|auto_generated|op_1~1_sumout ),
	.dataf(!\subtractors[12]|auto_generated|op_1~21_sumout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~194_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~194 .extended_lut = "off";
defparam \_~194 .lut_mask = 64'h000009F9FFFF09F9;
defparam \_~194 .shared_arith = "off";

cyclonev_lcell_comb \_~195 (
	.dataa(!\a_delay|sr[1][31]~q ),
	.datab(!\subtractors[10]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[10]|auto_generated|op_1~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~195_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~195 .extended_lut = "off";
defparam \_~195 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~195 .shared_arith = "off";

cyclonev_lcell_comb \_~196 (
	.dataa(!\subtractors[11]|auto_generated|op_1~1_sumout ),
	.datab(!\_~195_combout ),
	.datac(!\subtractors[11]|auto_generated|op_1~17_sumout ),
	.datad(!\subtractors[12]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[12]|auto_generated|op_1~25_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~196_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~196 .extended_lut = "off";
defparam \_~196 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~196 .shared_arith = "off";

cyclonev_lcell_comb \_~197 (
	.dataa(!\a_delay|sr[1][32]~q ),
	.datab(!\subtractors[9]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[10]|auto_generated|op_1~1_sumout ),
	.datad(!\subtractors[10]|auto_generated|op_1~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~197_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~197 .extended_lut = "off";
defparam \_~197 .lut_mask = 64'h09F909F909F909F9;
defparam \_~197 .shared_arith = "off";

cyclonev_lcell_comb \_~198 (
	.dataa(!\subtractors[11]|auto_generated|op_1~1_sumout ),
	.datab(!\_~197_combout ),
	.datac(!\subtractors[11]|auto_generated|op_1~21_sumout ),
	.datad(!\subtractors[12]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[12]|auto_generated|op_1~29_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~198_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~198 .extended_lut = "off";
defparam \_~198 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~198 .shared_arith = "off";

cyclonev_lcell_comb \_~199 (
	.dataa(!\a_delay|sr[1][33]~q ),
	.datab(!\subtractors[9]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[9]|auto_generated|op_1~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~199_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~199 .extended_lut = "off";
defparam \_~199 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~199 .shared_arith = "off";

cyclonev_lcell_comb \_~200 (
	.dataa(!\subtractors[10]|auto_generated|op_1~1_sumout ),
	.datab(!\_~199_combout ),
	.datac(!\subtractors[10]|auto_generated|op_1~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~200_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~200 .extended_lut = "off";
defparam \_~200 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~200 .shared_arith = "off";

cyclonev_lcell_comb \_~201 (
	.dataa(!\subtractors[11]|auto_generated|op_1~1_sumout ),
	.datab(!\_~200_combout ),
	.datac(!\subtractors[11]|auto_generated|op_1~25_sumout ),
	.datad(!\subtractors[12]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[12]|auto_generated|op_1~33_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~201_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~201 .extended_lut = "off";
defparam \_~201 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~201 .shared_arith = "off";

cyclonev_lcell_comb \_~202 (
	.dataa(!\a_delay|sr[1][34]~q ),
	.datab(!\subtractors[8]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[9]|auto_generated|op_1~1_sumout ),
	.datad(!\subtractors[9]|auto_generated|op_1~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~202_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~202 .extended_lut = "off";
defparam \_~202 .lut_mask = 64'h09F909F909F909F9;
defparam \_~202 .shared_arith = "off";

cyclonev_lcell_comb \_~203 (
	.dataa(!\subtractors[10]|auto_generated|op_1~1_sumout ),
	.datab(!\_~202_combout ),
	.datac(!\subtractors[10]|auto_generated|op_1~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~203_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~203 .extended_lut = "off";
defparam \_~203 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~203 .shared_arith = "off";

cyclonev_lcell_comb \_~204 (
	.dataa(!\subtractors[11]|auto_generated|op_1~1_sumout ),
	.datab(!\_~203_combout ),
	.datac(!\subtractors[11]|auto_generated|op_1~29_sumout ),
	.datad(!\subtractors[12]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[12]|auto_generated|op_1~37_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~204_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~204 .extended_lut = "off";
defparam \_~204 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~204 .shared_arith = "off";

cyclonev_lcell_comb \_~205 (
	.dataa(!\a_delay|sr[1][35]~q ),
	.datab(!\subtractors[8]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[8]|auto_generated|op_1~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~205_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~205 .extended_lut = "off";
defparam \_~205 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~205 .shared_arith = "off";

cyclonev_lcell_comb \_~206 (
	.dataa(!\subtractors[9]|auto_generated|op_1~1_sumout ),
	.datab(!\_~205_combout ),
	.datac(!\subtractors[9]|auto_generated|op_1~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~206_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~206 .extended_lut = "off";
defparam \_~206 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~206 .shared_arith = "off";

cyclonev_lcell_comb \_~207 (
	.dataa(!\subtractors[10]|auto_generated|op_1~1_sumout ),
	.datab(!\_~206_combout ),
	.datac(!\subtractors[10]|auto_generated|op_1~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~207_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~207 .extended_lut = "off";
defparam \_~207 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~207 .shared_arith = "off";

cyclonev_lcell_comb \_~208 (
	.dataa(!\subtractors[11]|auto_generated|op_1~1_sumout ),
	.datab(!\_~207_combout ),
	.datac(!\subtractors[11]|auto_generated|op_1~33_sumout ),
	.datad(!\subtractors[12]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[12]|auto_generated|op_1~41_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~208_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~208 .extended_lut = "off";
defparam \_~208 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~208 .shared_arith = "off";

cyclonev_lcell_comb \_~209 (
	.dataa(!\r_dffe[7]|sr[0][0]~q ),
	.datab(!\subtractors[8]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[8]|auto_generated|op_1~13_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~209_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~209 .extended_lut = "off";
defparam \_~209 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~209 .shared_arith = "off";

cyclonev_lcell_comb \_~210 (
	.dataa(!\subtractors[9]|auto_generated|op_1~1_sumout ),
	.datab(!\_~209_combout ),
	.datac(!\subtractors[9]|auto_generated|op_1~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~210_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~210 .extended_lut = "off";
defparam \_~210 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~210 .shared_arith = "off";

cyclonev_lcell_comb \_~211 (
	.dataa(!\subtractors[10]|auto_generated|op_1~1_sumout ),
	.datab(!\_~210_combout ),
	.datac(!\subtractors[10]|auto_generated|op_1~29_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~211_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~211 .extended_lut = "off";
defparam \_~211 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~211 .shared_arith = "off";

cyclonev_lcell_comb \_~212 (
	.dataa(!\subtractors[11]|auto_generated|op_1~1_sumout ),
	.datab(!\_~211_combout ),
	.datac(!\subtractors[11]|auto_generated|op_1~37_sumout ),
	.datad(!\subtractors[12]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[12]|auto_generated|op_1~45_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~212_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~212 .extended_lut = "off";
defparam \_~212 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~212 .shared_arith = "off";

cyclonev_lcell_comb \_~213 (
	.dataa(!\r_dffe[7]|sr[0][1]~q ),
	.datab(!\subtractors[8]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[8]|auto_generated|op_1~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~213_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~213 .extended_lut = "off";
defparam \_~213 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~213 .shared_arith = "off";

cyclonev_lcell_comb \_~214 (
	.dataa(!\subtractors[9]|auto_generated|op_1~1_sumout ),
	.datab(!\_~213_combout ),
	.datac(!\subtractors[9]|auto_generated|op_1~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~214_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~214 .extended_lut = "off";
defparam \_~214 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~214 .shared_arith = "off";

cyclonev_lcell_comb \_~215 (
	.dataa(!\subtractors[10]|auto_generated|op_1~1_sumout ),
	.datab(!\_~214_combout ),
	.datac(!\subtractors[10]|auto_generated|op_1~33_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~215_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~215 .extended_lut = "off";
defparam \_~215 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~215 .shared_arith = "off";

cyclonev_lcell_comb \_~216 (
	.dataa(!\subtractors[11]|auto_generated|op_1~1_sumout ),
	.datab(!\_~215_combout ),
	.datac(!\subtractors[11]|auto_generated|op_1~41_sumout ),
	.datad(!\subtractors[12]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[12]|auto_generated|op_1~49_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~216_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~216 .extended_lut = "off";
defparam \_~216 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~216 .shared_arith = "off";

cyclonev_lcell_comb \_~217 (
	.dataa(!\r_dffe[7]|sr[0][2]~q ),
	.datab(!\subtractors[8]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[8]|auto_generated|op_1~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~217_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~217 .extended_lut = "off";
defparam \_~217 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~217 .shared_arith = "off";

cyclonev_lcell_comb \_~218 (
	.dataa(!\subtractors[9]|auto_generated|op_1~1_sumout ),
	.datab(!\_~217_combout ),
	.datac(!\subtractors[9]|auto_generated|op_1~29_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~218_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~218 .extended_lut = "off";
defparam \_~218 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~218 .shared_arith = "off";

cyclonev_lcell_comb \_~219 (
	.dataa(!\subtractors[10]|auto_generated|op_1~1_sumout ),
	.datab(!\_~218_combout ),
	.datac(!\subtractors[10]|auto_generated|op_1~37_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~219_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~219 .extended_lut = "off";
defparam \_~219 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~219 .shared_arith = "off";

cyclonev_lcell_comb \_~220 (
	.dataa(!\subtractors[11]|auto_generated|op_1~1_sumout ),
	.datab(!\_~219_combout ),
	.datac(!\subtractors[11]|auto_generated|op_1~45_sumout ),
	.datad(!\subtractors[12]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[12]|auto_generated|op_1~53_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~220_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~220 .extended_lut = "off";
defparam \_~220 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~220 .shared_arith = "off";

cyclonev_lcell_comb \_~221 (
	.dataa(!\r_dffe[7]|sr[0][3]~q ),
	.datab(!\subtractors[8]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[8]|auto_generated|op_1~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~221_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~221 .extended_lut = "off";
defparam \_~221 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~221 .shared_arith = "off";

cyclonev_lcell_comb \_~222 (
	.dataa(!\subtractors[9]|auto_generated|op_1~1_sumout ),
	.datab(!\_~221_combout ),
	.datac(!\subtractors[9]|auto_generated|op_1~33_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~222_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~222 .extended_lut = "off";
defparam \_~222 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~222 .shared_arith = "off";

cyclonev_lcell_comb \_~223 (
	.dataa(!\subtractors[10]|auto_generated|op_1~1_sumout ),
	.datab(!\_~222_combout ),
	.datac(!\subtractors[10]|auto_generated|op_1~41_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~223_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~223 .extended_lut = "off";
defparam \_~223 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~223 .shared_arith = "off";

cyclonev_lcell_comb \_~224 (
	.dataa(!\subtractors[11]|auto_generated|op_1~1_sumout ),
	.datab(!\_~223_combout ),
	.datac(!\subtractors[11]|auto_generated|op_1~49_sumout ),
	.datad(!\subtractors[12]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[12]|auto_generated|op_1~57_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~224_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~224 .extended_lut = "off";
defparam \_~224 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~224 .shared_arith = "off";

cyclonev_lcell_comb \_~225 (
	.dataa(!\r_dffe[7]|sr[0][4]~q ),
	.datab(!\subtractors[8]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[8]|auto_generated|op_1~29_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~225_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~225 .extended_lut = "off";
defparam \_~225 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~225 .shared_arith = "off";

cyclonev_lcell_comb \_~226 (
	.dataa(!\subtractors[9]|auto_generated|op_1~1_sumout ),
	.datab(!\_~225_combout ),
	.datac(!\subtractors[9]|auto_generated|op_1~37_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~226_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~226 .extended_lut = "off";
defparam \_~226 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~226 .shared_arith = "off";

cyclonev_lcell_comb \_~227 (
	.dataa(!\subtractors[10]|auto_generated|op_1~1_sumout ),
	.datab(!\_~226_combout ),
	.datac(!\subtractors[10]|auto_generated|op_1~45_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~227_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~227 .extended_lut = "off";
defparam \_~227 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~227 .shared_arith = "off";

cyclonev_lcell_comb \_~228 (
	.dataa(!\r_dffe[7]|sr[0][5]~q ),
	.datab(!\subtractors[8]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[8]|auto_generated|op_1~33_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~228_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~228 .extended_lut = "off";
defparam \_~228 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~228 .shared_arith = "off";

cyclonev_lcell_comb \_~229 (
	.dataa(!\subtractors[9]|auto_generated|op_1~1_sumout ),
	.datab(!\_~228_combout ),
	.datac(!\subtractors[9]|auto_generated|op_1~41_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~229_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~229 .extended_lut = "off";
defparam \_~229 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~229 .shared_arith = "off";

cyclonev_lcell_comb \_~230 (
	.dataa(!\r_dffe[7]|sr[0][6]~q ),
	.datab(!\subtractors[8]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[8]|auto_generated|op_1~37_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~230_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~230 .extended_lut = "off";
defparam \_~230 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~230 .shared_arith = "off";

cyclonev_lcell_comb \_~231 (
	.dataa(!\a_delay|sr[0][36]~q ),
	.datab(!\subtractors[7]|auto_generated|op_1~1_sumout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~231_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~231 .extended_lut = "off";
defparam \_~231 .lut_mask = 64'h9999999999999999;
defparam \_~231 .shared_arith = "off";

cyclonev_lcell_comb \_~232 (
	.dataa(!\a_delay|sr[0][37]~q ),
	.datab(!\subtractors[7]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[7]|auto_generated|op_1~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~232_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~232 .extended_lut = "off";
defparam \_~232 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~232 .shared_arith = "off";

cyclonev_lcell_comb \_~233 (
	.dataa(!\a_delay|sr[0][38]~q ),
	.datab(!\subtractors[6]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[7]|auto_generated|op_1~1_sumout ),
	.datad(!\subtractors[7]|auto_generated|op_1~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~233_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~233 .extended_lut = "off";
defparam \_~233 .lut_mask = 64'h09F909F909F909F9;
defparam \_~233 .shared_arith = "off";

cyclonev_lcell_comb \_~234 (
	.dataa(!\a_delay|sr[0][39]~q ),
	.datab(!\subtractors[6]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[6]|auto_generated|op_1~9_sumout ),
	.datad(!\subtractors[7]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[7]|auto_generated|op_1~17_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~234_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~234 .extended_lut = "off";
defparam \_~234 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~234 .shared_arith = "off";

cyclonev_lcell_comb \_~235 (
	.dataa(!\a_delay|sr[0][40]~q ),
	.datab(!\subtractors[5]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[6]|auto_generated|op_1~1_sumout ),
	.datad(!\subtractors[6]|auto_generated|op_1~13_sumout ),
	.datae(!\subtractors[7]|auto_generated|op_1~1_sumout ),
	.dataf(!\subtractors[7]|auto_generated|op_1~21_sumout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~235_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~235 .extended_lut = "off";
defparam \_~235 .lut_mask = 64'h000009F9FFFF09F9;
defparam \_~235 .shared_arith = "off";

cyclonev_lcell_comb \_~236 (
	.dataa(!\a_delay|sr[0][41]~q ),
	.datab(!\subtractors[5]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[5]|auto_generated|op_1~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~236_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~236 .extended_lut = "off";
defparam \_~236 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~236 .shared_arith = "off";

cyclonev_lcell_comb \_~237 (
	.dataa(!\subtractors[6]|auto_generated|op_1~1_sumout ),
	.datab(!\_~236_combout ),
	.datac(!\subtractors[6]|auto_generated|op_1~17_sumout ),
	.datad(!\subtractors[7]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[7]|auto_generated|op_1~25_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~237_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~237 .extended_lut = "off";
defparam \_~237 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~237 .shared_arith = "off";

cyclonev_lcell_comb \_~238 (
	.dataa(!\a_delay|sr[0][42]~q ),
	.datab(!\subtractors[4]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[5]|auto_generated|op_1~1_sumout ),
	.datad(!\subtractors[5]|auto_generated|op_1~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~238_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~238 .extended_lut = "off";
defparam \_~238 .lut_mask = 64'h09F909F909F909F9;
defparam \_~238 .shared_arith = "off";

cyclonev_lcell_comb \_~239 (
	.dataa(!\subtractors[6]|auto_generated|op_1~1_sumout ),
	.datab(!\_~238_combout ),
	.datac(!\subtractors[6]|auto_generated|op_1~21_sumout ),
	.datad(!\subtractors[7]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[7]|auto_generated|op_1~29_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~239_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~239 .extended_lut = "off";
defparam \_~239 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~239 .shared_arith = "off";

cyclonev_lcell_comb \_~240 (
	.dataa(!\a_delay|sr[0][43]~q ),
	.datab(!\subtractors[4]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[4]|auto_generated|op_1~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~240_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~240 .extended_lut = "off";
defparam \_~240 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~240 .shared_arith = "off";

cyclonev_lcell_comb \_~241 (
	.dataa(!\subtractors[5]|auto_generated|op_1~1_sumout ),
	.datab(!\_~240_combout ),
	.datac(!\subtractors[5]|auto_generated|op_1~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~241_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~241 .extended_lut = "off";
defparam \_~241 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~241 .shared_arith = "off";

cyclonev_lcell_comb \_~242 (
	.dataa(!\subtractors[6]|auto_generated|op_1~1_sumout ),
	.datab(!\_~241_combout ),
	.datac(!\subtractors[6]|auto_generated|op_1~25_sumout ),
	.datad(!\subtractors[7]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[7]|auto_generated|op_1~33_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~242_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~242 .extended_lut = "off";
defparam \_~242 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~242 .shared_arith = "off";

cyclonev_lcell_comb \_~243 (
	.dataa(!\a_delay|sr[0][44]~q ),
	.datab(!\subtractors[3]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[4]|auto_generated|op_1~1_sumout ),
	.datad(!\subtractors[4]|auto_generated|op_1~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~243_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~243 .extended_lut = "off";
defparam \_~243 .lut_mask = 64'h09F909F909F909F9;
defparam \_~243 .shared_arith = "off";

cyclonev_lcell_comb \_~244 (
	.dataa(!\subtractors[5]|auto_generated|op_1~1_sumout ),
	.datab(!\_~243_combout ),
	.datac(!\subtractors[5]|auto_generated|op_1~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~244_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~244 .extended_lut = "off";
defparam \_~244 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~244 .shared_arith = "off";

cyclonev_lcell_comb \_~245 (
	.dataa(!\subtractors[6]|auto_generated|op_1~1_sumout ),
	.datab(!\_~244_combout ),
	.datac(!\subtractors[6]|auto_generated|op_1~29_sumout ),
	.datad(!\subtractors[7]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[7]|auto_generated|op_1~37_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~245_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~245 .extended_lut = "off";
defparam \_~245 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~245 .shared_arith = "off";

cyclonev_lcell_comb \_~246 (
	.dataa(!\a_delay|sr[0][45]~q ),
	.datab(!\subtractors[3]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[3]|auto_generated|op_1~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~246_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~246 .extended_lut = "off";
defparam \_~246 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~246 .shared_arith = "off";

cyclonev_lcell_comb \_~247 (
	.dataa(!\subtractors[4]|auto_generated|op_1~1_sumout ),
	.datab(!\_~246_combout ),
	.datac(!\subtractors[4]|auto_generated|op_1~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~247_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~247 .extended_lut = "off";
defparam \_~247 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~247 .shared_arith = "off";

cyclonev_lcell_comb \_~248 (
	.dataa(!\subtractors[5]|auto_generated|op_1~1_sumout ),
	.datab(!\_~247_combout ),
	.datac(!\subtractors[5]|auto_generated|op_1~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~248_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~248 .extended_lut = "off";
defparam \_~248 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~248 .shared_arith = "off";

cyclonev_lcell_comb \_~249 (
	.dataa(!\r_dffe[2]|sr[0][0]~q ),
	.datab(!\subtractors[3]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[3]|auto_generated|op_1~13_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~249_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~249 .extended_lut = "off";
defparam \_~249 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~249 .shared_arith = "off";

cyclonev_lcell_comb \_~250 (
	.dataa(!\subtractors[4]|auto_generated|op_1~1_sumout ),
	.datab(!\_~249_combout ),
	.datac(!\subtractors[4]|auto_generated|op_1~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~250_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~250 .extended_lut = "off";
defparam \_~250 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~250 .shared_arith = "off";

cyclonev_lcell_comb \_~251 (
	.dataa(!\r_dffe[2]|sr[0][1]~q ),
	.datab(!\subtractors[3]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[3]|auto_generated|op_1~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~251_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~251 .extended_lut = "off";
defparam \_~251 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~251 .shared_arith = "off";

cyclonev_lcell_comb \_~252 (
	.dataa(!radical_46),
	.datab(!\subtractors[2]|auto_generated|op_1~1_sumout ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~252_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~252 .extended_lut = "off";
defparam \_~252 .lut_mask = 64'h9999999999999999;
defparam \_~252 .shared_arith = "off";

cyclonev_lcell_comb \_~253 (
	.dataa(!radical_47),
	.datab(!\subtractors[2]|auto_generated|op_1~1_sumout ),
	.datac(!\subtractors[2]|auto_generated|op_1~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~253_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~253 .extended_lut = "off";
defparam \_~253 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~253 .shared_arith = "off";

cyclonev_lcell_comb \_~254 (
	.dataa(!radical_48),
	.datab(!\subtractors[1]|auto_generated|op_1~0_combout ),
	.datac(!\subtractors[2]|auto_generated|op_1~1_sumout ),
	.datad(!\subtractors[2]|auto_generated|op_1~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~254_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~254 .extended_lut = "off";
defparam \_~254 .lut_mask = 64'h06F606F606F606F6;
defparam \_~254 .shared_arith = "off";

cyclonev_lcell_comb \_~255 (
	.dataa(!radical_48),
	.datab(!radical_49),
	.datac(!\subtractors[1]|auto_generated|op_1~0_combout ),
	.datad(!\subtractors[2]|auto_generated|op_1~1_sumout ),
	.datae(!\subtractors[2]|auto_generated|op_1~17_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~255_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~255 .extended_lut = "off";
defparam \_~255 .lut_mask = 64'h0039FF390039FF39;
defparam \_~255 .shared_arith = "off";

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
	.datac(!\subtractors[25]|auto_generated|op_1~5_sumout ),
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
	.dataa(!\a_delay|sr[4][2]~q ),
	.datab(!op_11),
	.datac(!op_1),
	.datad(!\subtractors[25]|auto_generated|op_1~9_sumout ),
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
defparam \_~2 .lut_mask = 64'h09F909F909F909F9;
defparam \_~2 .shared_arith = "off";

cyclonev_lcell_comb \_~3 (
	.dataa(!\a_delay|sr[4][3]~q ),
	.datab(!op_11),
	.datac(!\subtractors[24]|auto_generated|op_1~5_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[25]|auto_generated|op_1~13_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_3),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~3 .extended_lut = "off";
defparam \_~3 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~3 .shared_arith = "off";

cyclonev_lcell_comb \_~4 (
	.dataa(!\r_dffe[23]|sr[0][0]~q ),
	.datab(!op_11),
	.datac(!\subtractors[24]|auto_generated|op_1~9_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[25]|auto_generated|op_1~17_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_4),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~4 .extended_lut = "off";
defparam \_~4 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~4 .shared_arith = "off";

cyclonev_lcell_comb \_~5 (
	.dataa(!\r_dffe[23]|sr[0][1]~q ),
	.datab(!op_11),
	.datac(!\subtractors[24]|auto_generated|op_1~13_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[25]|auto_generated|op_1~21_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_5),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~5 .extended_lut = "off";
defparam \_~5 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~5 .shared_arith = "off";

cyclonev_lcell_comb \_~6 (
	.dataa(!\r_dffe[23]|sr[0][2]~q ),
	.datab(!op_11),
	.datac(!\subtractors[24]|auto_generated|op_1~17_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[25]|auto_generated|op_1~25_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_6),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~6 .extended_lut = "off";
defparam \_~6 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~6 .shared_arith = "off";

cyclonev_lcell_comb \_~7 (
	.dataa(!\r_dffe[23]|sr[0][3]~q ),
	.datab(!op_11),
	.datac(!\subtractors[24]|auto_generated|op_1~21_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[25]|auto_generated|op_1~29_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_7),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~7 .extended_lut = "off";
defparam \_~7 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~7 .shared_arith = "off";

cyclonev_lcell_comb \_~8 (
	.dataa(!\r_dffe[23]|sr[0][4]~q ),
	.datab(!op_11),
	.datac(!\subtractors[24]|auto_generated|op_1~25_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[25]|auto_generated|op_1~33_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_8),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~8 .extended_lut = "off";
defparam \_~8 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~8 .shared_arith = "off";

cyclonev_lcell_comb \_~9 (
	.dataa(!\r_dffe[23]|sr[0][5]~q ),
	.datab(!op_11),
	.datac(!\subtractors[24]|auto_generated|op_1~29_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[25]|auto_generated|op_1~37_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_9),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~9 .extended_lut = "off";
defparam \_~9 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~9 .shared_arith = "off";

cyclonev_lcell_comb \_~10 (
	.dataa(!\r_dffe[23]|sr[0][6]~q ),
	.datab(!op_11),
	.datac(!\subtractors[24]|auto_generated|op_1~33_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[25]|auto_generated|op_1~41_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_10),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~10 .extended_lut = "off";
defparam \_~10 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~10 .shared_arith = "off";

cyclonev_lcell_comb \_~11 (
	.dataa(!\r_dffe[23]|sr[0][7]~q ),
	.datab(!op_11),
	.datac(!\subtractors[24]|auto_generated|op_1~37_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[25]|auto_generated|op_1~45_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_11),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~11 .extended_lut = "off";
defparam \_~11 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~11 .shared_arith = "off";

cyclonev_lcell_comb \_~12 (
	.dataa(!\r_dffe[23]|sr[0][8]~q ),
	.datab(!op_11),
	.datac(!\subtractors[24]|auto_generated|op_1~41_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[25]|auto_generated|op_1~49_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_12),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~12 .extended_lut = "off";
defparam \_~12 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~12 .shared_arith = "off";

cyclonev_lcell_comb \_~13 (
	.dataa(!\r_dffe[23]|sr[0][9]~q ),
	.datab(!op_11),
	.datac(!\subtractors[24]|auto_generated|op_1~45_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[25]|auto_generated|op_1~53_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_13),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~13 .extended_lut = "off";
defparam \_~13 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~13 .shared_arith = "off";

cyclonev_lcell_comb \_~14 (
	.dataa(!\r_dffe[23]|sr[0][10]~q ),
	.datab(!op_11),
	.datac(!\subtractors[24]|auto_generated|op_1~49_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[25]|auto_generated|op_1~57_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_14),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~14 .extended_lut = "off";
defparam \_~14 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~14 .shared_arith = "off";

cyclonev_lcell_comb \_~15 (
	.dataa(!\r_dffe[23]|sr[0][11]~q ),
	.datab(!op_11),
	.datac(!\subtractors[24]|auto_generated|op_1~53_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[25]|auto_generated|op_1~61_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_15),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~15 .extended_lut = "off";
defparam \_~15 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~15 .shared_arith = "off";

cyclonev_lcell_comb \_~16 (
	.dataa(!\r_dffe[23]|sr[0][12]~q ),
	.datab(!op_11),
	.datac(!\subtractors[24]|auto_generated|op_1~57_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[25]|auto_generated|op_1~65_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_16),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~16 .extended_lut = "off";
defparam \_~16 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~16 .shared_arith = "off";

cyclonev_lcell_comb \_~17 (
	.dataa(!\r_dffe[23]|sr[0][13]~q ),
	.datab(!op_11),
	.datac(!\subtractors[24]|auto_generated|op_1~61_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[25]|auto_generated|op_1~69_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_17),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~17 .extended_lut = "off";
defparam \_~17 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~17 .shared_arith = "off";

cyclonev_lcell_comb \_~18 (
	.dataa(!\r_dffe[23]|sr[0][14]~q ),
	.datab(!op_11),
	.datac(!\subtractors[24]|auto_generated|op_1~65_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[25]|auto_generated|op_1~73_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_18),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~18 .extended_lut = "off";
defparam \_~18 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~18 .shared_arith = "off";

cyclonev_lcell_comb \_~19 (
	.dataa(!\r_dffe[23]|sr[0][15]~q ),
	.datab(!op_11),
	.datac(!\subtractors[24]|auto_generated|op_1~69_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[25]|auto_generated|op_1~77_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_19),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~19 .extended_lut = "off";
defparam \_~19 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~19 .shared_arith = "off";

cyclonev_lcell_comb \_~20 (
	.dataa(!\r_dffe[23]|sr[0][16]~q ),
	.datab(!op_11),
	.datac(!\subtractors[24]|auto_generated|op_1~73_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[25]|auto_generated|op_1~81_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_20),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~20 .extended_lut = "off";
defparam \_~20 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~20 .shared_arith = "off";

cyclonev_lcell_comb \_~21 (
	.dataa(!\r_dffe[23]|sr[0][17]~q ),
	.datab(!op_11),
	.datac(!\subtractors[24]|auto_generated|op_1~77_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[25]|auto_generated|op_1~85_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_21),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~21 .extended_lut = "off";
defparam \_~21 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~21 .shared_arith = "off";

cyclonev_lcell_comb \_~22 (
	.dataa(!\r_dffe[23]|sr[0][18]~q ),
	.datab(!op_11),
	.datac(!\subtractors[24]|auto_generated|op_1~81_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[25]|auto_generated|op_1~89_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_22),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~22 .extended_lut = "off";
defparam \_~22 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~22 .shared_arith = "off";

cyclonev_lcell_comb \_~23 (
	.dataa(!\r_dffe[23]|sr[0][19]~q ),
	.datab(!op_11),
	.datac(!\subtractors[24]|auto_generated|op_1~85_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[25]|auto_generated|op_1~93_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_23),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~23 .extended_lut = "off";
defparam \_~23 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~23 .shared_arith = "off";

cyclonev_lcell_comb \_~24 (
	.dataa(!\r_dffe[23]|sr[0][20]~q ),
	.datab(!op_11),
	.datac(!\subtractors[24]|auto_generated|op_1~89_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[25]|auto_generated|op_1~97_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_24),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~24 .extended_lut = "off";
defparam \_~24 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~24 .shared_arith = "off";

cyclonev_lcell_comb \_~25 (
	.dataa(!\r_dffe[23]|sr[0][21]~q ),
	.datab(!op_11),
	.datac(!\subtractors[24]|auto_generated|op_1~93_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[25]|auto_generated|op_1~101_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_25),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~25 .extended_lut = "off";
defparam \_~25 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~25 .shared_arith = "off";

cyclonev_lcell_comb \_~26 (
	.dataa(!\r_dffe[23]|sr[0][22]~q ),
	.datab(!op_11),
	.datac(!\subtractors[24]|auto_generated|op_1~97_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[25]|auto_generated|op_1~105_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_26),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~26 .extended_lut = "off";
defparam \_~26 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~26 .shared_arith = "off";

endmodule

module sqrt_52_dffpipe_1 (
	sr_0_4,
	sr_1_4,
	sr_2_4,
	sr_3_4,
	sr_4_3,
	sr_5_3,
	sr_6_3,
	sr_7_3,
	sr_8_3,
	sr_9_3,
	sr_10_3,
	sr_11_3,
	sr_12_3,
	sr_13_3,
	sr_14_2,
	sr_15_2,
	sr_16_2,
	sr_17_2,
	sr_18_2,
	sr_19_2,
	sr_20_2,
	sr_21_2,
	sr_22_2,
	sr_23_2,
	sr_24_2,
	sr_25_2,
	sr_26_1,
	sr_27_1,
	sr_28_1,
	sr_29_1,
	sr_30_1,
	sr_31_1,
	sr_32_1,
	sr_33_1,
	sr_34_1,
	sr_35_1,
	sr_36_0,
	sr_37_0,
	sr_38_0,
	sr_39_0,
	sr_40_0,
	sr_41_0,
	sr_42_0,
	sr_43_0,
	sr_44_0,
	sr_45_0,
	clock,
	ena,
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
	radical_21,
	radical_22,
	radical_23,
	radical_24,
	radical_25,
	radical_26,
	radical_27,
	radical_28,
	radical_29,
	radical_30,
	radical_31,
	radical_32,
	radical_33,
	radical_34,
	radical_35,
	radical_36,
	radical_37,
	radical_38,
	radical_39,
	radical_40,
	radical_41,
	radical_42,
	radical_43,
	radical_44,
	radical_45)/* synthesis synthesis_greybox=0 */;
output 	sr_0_4;
output 	sr_1_4;
output 	sr_2_4;
output 	sr_3_4;
output 	sr_4_3;
output 	sr_5_3;
output 	sr_6_3;
output 	sr_7_3;
output 	sr_8_3;
output 	sr_9_3;
output 	sr_10_3;
output 	sr_11_3;
output 	sr_12_3;
output 	sr_13_3;
output 	sr_14_2;
output 	sr_15_2;
output 	sr_16_2;
output 	sr_17_2;
output 	sr_18_2;
output 	sr_19_2;
output 	sr_20_2;
output 	sr_21_2;
output 	sr_22_2;
output 	sr_23_2;
output 	sr_24_2;
output 	sr_25_2;
output 	sr_26_1;
output 	sr_27_1;
output 	sr_28_1;
output 	sr_29_1;
output 	sr_30_1;
output 	sr_31_1;
output 	sr_32_1;
output 	sr_33_1;
output 	sr_34_1;
output 	sr_35_1;
output 	sr_36_0;
output 	sr_37_0;
output 	sr_38_0;
output 	sr_39_0;
output 	sr_40_0;
output 	sr_41_0;
output 	sr_42_0;
output 	sr_43_0;
output 	sr_44_0;
output 	sr_45_0;
input 	clock;
input 	ena;
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
input 	radical_22;
input 	radical_23;
input 	radical_24;
input 	radical_25;
input 	radical_26;
input 	radical_27;
input 	radical_28;
input 	radical_29;
input 	radical_30;
input 	radical_31;
input 	radical_32;
input 	radical_33;
input 	radical_34;
input 	radical_35;
input 	radical_36;
input 	radical_37;
input 	radical_38;
input 	radical_39;
input 	radical_40;
input 	radical_41;
input 	radical_42;
input 	radical_43;
input 	radical_44;
input 	radical_45;

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
wire \sr[3][2]~q ;
wire \sr[0][3]~q ;
wire \sr[1][3]~q ;
wire \sr[2][3]~q ;
wire \sr[3][3]~q ;
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
wire \sr[2][8]~q ;
wire \sr[0][9]~q ;
wire \sr[1][9]~q ;
wire \sr[2][9]~q ;
wire \sr[0][10]~q ;
wire \sr[1][10]~q ;
wire \sr[2][10]~q ;
wire \sr[0][11]~q ;
wire \sr[1][11]~q ;
wire \sr[2][11]~q ;
wire \sr[0][12]~q ;
wire \sr[1][12]~q ;
wire \sr[2][12]~q ;
wire \sr[0][13]~q ;
wire \sr[1][13]~q ;
wire \sr[2][13]~q ;
wire \sr[0][14]~q ;
wire \sr[1][14]~q ;
wire \sr[0][15]~q ;
wire \sr[1][15]~q ;
wire \sr[0][16]~q ;
wire \sr[1][16]~q ;
wire \sr[0][17]~q ;
wire \sr[1][17]~q ;
wire \sr[0][18]~q ;
wire \sr[1][18]~q ;
wire \sr[0][19]~q ;
wire \sr[1][19]~q ;
wire \sr[0][20]~q ;
wire \sr[1][20]~q ;
wire \sr[0][21]~q ;
wire \sr[1][21]~q ;
wire \sr[0][22]~q ;
wire \sr[1][22]~q ;
wire \sr[0][23]~q ;
wire \sr[1][23]~q ;
wire \sr[0][24]~q ;
wire \sr[1][24]~q ;
wire \sr[0][25]~q ;
wire \sr[1][25]~q ;
wire \sr[0][26]~q ;
wire \sr[0][27]~q ;
wire \sr[0][28]~q ;
wire \sr[0][29]~q ;
wire \sr[0][30]~q ;
wire \sr[0][31]~q ;
wire \sr[0][32]~q ;
wire \sr[0][33]~q ;
wire \sr[0][34]~q ;
wire \sr[0][35]~q ;


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

dffeas \sr[4][2] (
	.clk(clock),
	.d(\sr[3][2]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_2_4),
	.prn(vcc));
defparam \sr[4][2] .is_wysiwyg = "true";
defparam \sr[4][2] .power_up = "low";

dffeas \sr[4][3] (
	.clk(clock),
	.d(\sr[3][3]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_3_4),
	.prn(vcc));
defparam \sr[4][3] .is_wysiwyg = "true";
defparam \sr[4][3] .power_up = "low";

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

dffeas \sr[3][8] (
	.clk(clock),
	.d(\sr[2][8]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_8_3),
	.prn(vcc));
defparam \sr[3][8] .is_wysiwyg = "true";
defparam \sr[3][8] .power_up = "low";

dffeas \sr[3][9] (
	.clk(clock),
	.d(\sr[2][9]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_9_3),
	.prn(vcc));
defparam \sr[3][9] .is_wysiwyg = "true";
defparam \sr[3][9] .power_up = "low";

dffeas \sr[3][10] (
	.clk(clock),
	.d(\sr[2][10]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_10_3),
	.prn(vcc));
defparam \sr[3][10] .is_wysiwyg = "true";
defparam \sr[3][10] .power_up = "low";

dffeas \sr[3][11] (
	.clk(clock),
	.d(\sr[2][11]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_11_3),
	.prn(vcc));
defparam \sr[3][11] .is_wysiwyg = "true";
defparam \sr[3][11] .power_up = "low";

dffeas \sr[3][12] (
	.clk(clock),
	.d(\sr[2][12]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_12_3),
	.prn(vcc));
defparam \sr[3][12] .is_wysiwyg = "true";
defparam \sr[3][12] .power_up = "low";

dffeas \sr[3][13] (
	.clk(clock),
	.d(\sr[2][13]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_13_3),
	.prn(vcc));
defparam \sr[3][13] .is_wysiwyg = "true";
defparam \sr[3][13] .power_up = "low";

dffeas \sr[2][14] (
	.clk(clock),
	.d(\sr[1][14]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_14_2),
	.prn(vcc));
defparam \sr[2][14] .is_wysiwyg = "true";
defparam \sr[2][14] .power_up = "low";

dffeas \sr[2][15] (
	.clk(clock),
	.d(\sr[1][15]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_15_2),
	.prn(vcc));
defparam \sr[2][15] .is_wysiwyg = "true";
defparam \sr[2][15] .power_up = "low";

dffeas \sr[2][16] (
	.clk(clock),
	.d(\sr[1][16]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_16_2),
	.prn(vcc));
defparam \sr[2][16] .is_wysiwyg = "true";
defparam \sr[2][16] .power_up = "low";

dffeas \sr[2][17] (
	.clk(clock),
	.d(\sr[1][17]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_17_2),
	.prn(vcc));
defparam \sr[2][17] .is_wysiwyg = "true";
defparam \sr[2][17] .power_up = "low";

dffeas \sr[2][18] (
	.clk(clock),
	.d(\sr[1][18]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_18_2),
	.prn(vcc));
defparam \sr[2][18] .is_wysiwyg = "true";
defparam \sr[2][18] .power_up = "low";

dffeas \sr[2][19] (
	.clk(clock),
	.d(\sr[1][19]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_19_2),
	.prn(vcc));
defparam \sr[2][19] .is_wysiwyg = "true";
defparam \sr[2][19] .power_up = "low";

dffeas \sr[2][20] (
	.clk(clock),
	.d(\sr[1][20]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_20_2),
	.prn(vcc));
defparam \sr[2][20] .is_wysiwyg = "true";
defparam \sr[2][20] .power_up = "low";

dffeas \sr[2][21] (
	.clk(clock),
	.d(\sr[1][21]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_21_2),
	.prn(vcc));
defparam \sr[2][21] .is_wysiwyg = "true";
defparam \sr[2][21] .power_up = "low";

dffeas \sr[2][22] (
	.clk(clock),
	.d(\sr[1][22]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_22_2),
	.prn(vcc));
defparam \sr[2][22] .is_wysiwyg = "true";
defparam \sr[2][22] .power_up = "low";

dffeas \sr[2][23] (
	.clk(clock),
	.d(\sr[1][23]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_23_2),
	.prn(vcc));
defparam \sr[2][23] .is_wysiwyg = "true";
defparam \sr[2][23] .power_up = "low";

dffeas \sr[2][24] (
	.clk(clock),
	.d(\sr[1][24]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_24_2),
	.prn(vcc));
defparam \sr[2][24] .is_wysiwyg = "true";
defparam \sr[2][24] .power_up = "low";

dffeas \sr[2][25] (
	.clk(clock),
	.d(\sr[1][25]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_25_2),
	.prn(vcc));
defparam \sr[2][25] .is_wysiwyg = "true";
defparam \sr[2][25] .power_up = "low";

dffeas \sr[1][26] (
	.clk(clock),
	.d(\sr[0][26]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_26_1),
	.prn(vcc));
defparam \sr[1][26] .is_wysiwyg = "true";
defparam \sr[1][26] .power_up = "low";

dffeas \sr[1][27] (
	.clk(clock),
	.d(\sr[0][27]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_27_1),
	.prn(vcc));
defparam \sr[1][27] .is_wysiwyg = "true";
defparam \sr[1][27] .power_up = "low";

dffeas \sr[1][28] (
	.clk(clock),
	.d(\sr[0][28]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_28_1),
	.prn(vcc));
defparam \sr[1][28] .is_wysiwyg = "true";
defparam \sr[1][28] .power_up = "low";

dffeas \sr[1][29] (
	.clk(clock),
	.d(\sr[0][29]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_29_1),
	.prn(vcc));
defparam \sr[1][29] .is_wysiwyg = "true";
defparam \sr[1][29] .power_up = "low";

dffeas \sr[1][30] (
	.clk(clock),
	.d(\sr[0][30]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_30_1),
	.prn(vcc));
defparam \sr[1][30] .is_wysiwyg = "true";
defparam \sr[1][30] .power_up = "low";

dffeas \sr[1][31] (
	.clk(clock),
	.d(\sr[0][31]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_31_1),
	.prn(vcc));
defparam \sr[1][31] .is_wysiwyg = "true";
defparam \sr[1][31] .power_up = "low";

dffeas \sr[1][32] (
	.clk(clock),
	.d(\sr[0][32]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_32_1),
	.prn(vcc));
defparam \sr[1][32] .is_wysiwyg = "true";
defparam \sr[1][32] .power_up = "low";

dffeas \sr[1][33] (
	.clk(clock),
	.d(\sr[0][33]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_33_1),
	.prn(vcc));
defparam \sr[1][33] .is_wysiwyg = "true";
defparam \sr[1][33] .power_up = "low";

dffeas \sr[1][34] (
	.clk(clock),
	.d(\sr[0][34]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_34_1),
	.prn(vcc));
defparam \sr[1][34] .is_wysiwyg = "true";
defparam \sr[1][34] .power_up = "low";

dffeas \sr[1][35] (
	.clk(clock),
	.d(\sr[0][35]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_35_1),
	.prn(vcc));
defparam \sr[1][35] .is_wysiwyg = "true";
defparam \sr[1][35] .power_up = "low";

dffeas \sr[0][36] (
	.clk(clock),
	.d(radical_36),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_36_0),
	.prn(vcc));
defparam \sr[0][36] .is_wysiwyg = "true";
defparam \sr[0][36] .power_up = "low";

dffeas \sr[0][37] (
	.clk(clock),
	.d(radical_37),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_37_0),
	.prn(vcc));
defparam \sr[0][37] .is_wysiwyg = "true";
defparam \sr[0][37] .power_up = "low";

dffeas \sr[0][38] (
	.clk(clock),
	.d(radical_38),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_38_0),
	.prn(vcc));
defparam \sr[0][38] .is_wysiwyg = "true";
defparam \sr[0][38] .power_up = "low";

dffeas \sr[0][39] (
	.clk(clock),
	.d(radical_39),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_39_0),
	.prn(vcc));
defparam \sr[0][39] .is_wysiwyg = "true";
defparam \sr[0][39] .power_up = "low";

dffeas \sr[0][40] (
	.clk(clock),
	.d(radical_40),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_40_0),
	.prn(vcc));
defparam \sr[0][40] .is_wysiwyg = "true";
defparam \sr[0][40] .power_up = "low";

dffeas \sr[0][41] (
	.clk(clock),
	.d(radical_41),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_41_0),
	.prn(vcc));
defparam \sr[0][41] .is_wysiwyg = "true";
defparam \sr[0][41] .power_up = "low";

dffeas \sr[0][42] (
	.clk(clock),
	.d(radical_42),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_42_0),
	.prn(vcc));
defparam \sr[0][42] .is_wysiwyg = "true";
defparam \sr[0][42] .power_up = "low";

dffeas \sr[0][43] (
	.clk(clock),
	.d(radical_43),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_43_0),
	.prn(vcc));
defparam \sr[0][43] .is_wysiwyg = "true";
defparam \sr[0][43] .power_up = "low";

dffeas \sr[0][44] (
	.clk(clock),
	.d(radical_44),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_44_0),
	.prn(vcc));
defparam \sr[0][44] .is_wysiwyg = "true";
defparam \sr[0][44] .power_up = "low";

dffeas \sr[0][45] (
	.clk(clock),
	.d(radical_45),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_45_0),
	.prn(vcc));
defparam \sr[0][45] .is_wysiwyg = "true";
defparam \sr[0][45] .power_up = "low";

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

dffeas \sr[3][2] (
	.clk(clock),
	.d(\sr[2][2]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[3][2]~q ),
	.prn(vcc));
defparam \sr[3][2] .is_wysiwyg = "true";
defparam \sr[3][2] .power_up = "low";

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

dffeas \sr[3][3] (
	.clk(clock),
	.d(\sr[2][3]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[3][3]~q ),
	.prn(vcc));
defparam \sr[3][3] .is_wysiwyg = "true";
defparam \sr[3][3] .power_up = "low";

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

dffeas \sr[2][8] (
	.clk(clock),
	.d(\sr[1][8]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[2][8]~q ),
	.prn(vcc));
defparam \sr[2][8] .is_wysiwyg = "true";
defparam \sr[2][8] .power_up = "low";

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

dffeas \sr[2][9] (
	.clk(clock),
	.d(\sr[1][9]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[2][9]~q ),
	.prn(vcc));
defparam \sr[2][9] .is_wysiwyg = "true";
defparam \sr[2][9] .power_up = "low";

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

dffeas \sr[2][10] (
	.clk(clock),
	.d(\sr[1][10]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[2][10]~q ),
	.prn(vcc));
defparam \sr[2][10] .is_wysiwyg = "true";
defparam \sr[2][10] .power_up = "low";

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

dffeas \sr[2][11] (
	.clk(clock),
	.d(\sr[1][11]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[2][11]~q ),
	.prn(vcc));
defparam \sr[2][11] .is_wysiwyg = "true";
defparam \sr[2][11] .power_up = "low";

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

dffeas \sr[2][12] (
	.clk(clock),
	.d(\sr[1][12]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[2][12]~q ),
	.prn(vcc));
defparam \sr[2][12] .is_wysiwyg = "true";
defparam \sr[2][12] .power_up = "low";

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

dffeas \sr[2][13] (
	.clk(clock),
	.d(\sr[1][13]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[2][13]~q ),
	.prn(vcc));
defparam \sr[2][13] .is_wysiwyg = "true";
defparam \sr[2][13] .power_up = "low";

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

dffeas \sr[1][14] (
	.clk(clock),
	.d(\sr[0][14]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[1][14]~q ),
	.prn(vcc));
defparam \sr[1][14] .is_wysiwyg = "true";
defparam \sr[1][14] .power_up = "low";

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

dffeas \sr[1][15] (
	.clk(clock),
	.d(\sr[0][15]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[1][15]~q ),
	.prn(vcc));
defparam \sr[1][15] .is_wysiwyg = "true";
defparam \sr[1][15] .power_up = "low";

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

dffeas \sr[1][16] (
	.clk(clock),
	.d(\sr[0][16]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[1][16]~q ),
	.prn(vcc));
defparam \sr[1][16] .is_wysiwyg = "true";
defparam \sr[1][16] .power_up = "low";

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

dffeas \sr[1][17] (
	.clk(clock),
	.d(\sr[0][17]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[1][17]~q ),
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
	.q(\sr[0][18]~q ),
	.prn(vcc));
defparam \sr[0][18] .is_wysiwyg = "true";
defparam \sr[0][18] .power_up = "low";

dffeas \sr[1][18] (
	.clk(clock),
	.d(\sr[0][18]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[1][18]~q ),
	.prn(vcc));
defparam \sr[1][18] .is_wysiwyg = "true";
defparam \sr[1][18] .power_up = "low";

dffeas \sr[0][19] (
	.clk(clock),
	.d(radical_19),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][19]~q ),
	.prn(vcc));
defparam \sr[0][19] .is_wysiwyg = "true";
defparam \sr[0][19] .power_up = "low";

dffeas \sr[1][19] (
	.clk(clock),
	.d(\sr[0][19]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[1][19]~q ),
	.prn(vcc));
defparam \sr[1][19] .is_wysiwyg = "true";
defparam \sr[1][19] .power_up = "low";

dffeas \sr[0][20] (
	.clk(clock),
	.d(radical_20),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][20]~q ),
	.prn(vcc));
defparam \sr[0][20] .is_wysiwyg = "true";
defparam \sr[0][20] .power_up = "low";

dffeas \sr[1][20] (
	.clk(clock),
	.d(\sr[0][20]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[1][20]~q ),
	.prn(vcc));
defparam \sr[1][20] .is_wysiwyg = "true";
defparam \sr[1][20] .power_up = "low";

dffeas \sr[0][21] (
	.clk(clock),
	.d(radical_21),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][21]~q ),
	.prn(vcc));
defparam \sr[0][21] .is_wysiwyg = "true";
defparam \sr[0][21] .power_up = "low";

dffeas \sr[1][21] (
	.clk(clock),
	.d(\sr[0][21]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[1][21]~q ),
	.prn(vcc));
defparam \sr[1][21] .is_wysiwyg = "true";
defparam \sr[1][21] .power_up = "low";

dffeas \sr[0][22] (
	.clk(clock),
	.d(radical_22),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][22]~q ),
	.prn(vcc));
defparam \sr[0][22] .is_wysiwyg = "true";
defparam \sr[0][22] .power_up = "low";

dffeas \sr[1][22] (
	.clk(clock),
	.d(\sr[0][22]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[1][22]~q ),
	.prn(vcc));
defparam \sr[1][22] .is_wysiwyg = "true";
defparam \sr[1][22] .power_up = "low";

dffeas \sr[0][23] (
	.clk(clock),
	.d(radical_23),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][23]~q ),
	.prn(vcc));
defparam \sr[0][23] .is_wysiwyg = "true";
defparam \sr[0][23] .power_up = "low";

dffeas \sr[1][23] (
	.clk(clock),
	.d(\sr[0][23]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[1][23]~q ),
	.prn(vcc));
defparam \sr[1][23] .is_wysiwyg = "true";
defparam \sr[1][23] .power_up = "low";

dffeas \sr[0][24] (
	.clk(clock),
	.d(radical_24),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][24]~q ),
	.prn(vcc));
defparam \sr[0][24] .is_wysiwyg = "true";
defparam \sr[0][24] .power_up = "low";

dffeas \sr[1][24] (
	.clk(clock),
	.d(\sr[0][24]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[1][24]~q ),
	.prn(vcc));
defparam \sr[1][24] .is_wysiwyg = "true";
defparam \sr[1][24] .power_up = "low";

dffeas \sr[0][25] (
	.clk(clock),
	.d(radical_25),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][25]~q ),
	.prn(vcc));
defparam \sr[0][25] .is_wysiwyg = "true";
defparam \sr[0][25] .power_up = "low";

dffeas \sr[1][25] (
	.clk(clock),
	.d(\sr[0][25]~q ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[1][25]~q ),
	.prn(vcc));
defparam \sr[1][25] .is_wysiwyg = "true";
defparam \sr[1][25] .power_up = "low";

dffeas \sr[0][26] (
	.clk(clock),
	.d(radical_26),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][26]~q ),
	.prn(vcc));
defparam \sr[0][26] .is_wysiwyg = "true";
defparam \sr[0][26] .power_up = "low";

dffeas \sr[0][27] (
	.clk(clock),
	.d(radical_27),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][27]~q ),
	.prn(vcc));
defparam \sr[0][27] .is_wysiwyg = "true";
defparam \sr[0][27] .power_up = "low";

dffeas \sr[0][28] (
	.clk(clock),
	.d(radical_28),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][28]~q ),
	.prn(vcc));
defparam \sr[0][28] .is_wysiwyg = "true";
defparam \sr[0][28] .power_up = "low";

dffeas \sr[0][29] (
	.clk(clock),
	.d(radical_29),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][29]~q ),
	.prn(vcc));
defparam \sr[0][29] .is_wysiwyg = "true";
defparam \sr[0][29] .power_up = "low";

dffeas \sr[0][30] (
	.clk(clock),
	.d(radical_30),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][30]~q ),
	.prn(vcc));
defparam \sr[0][30] .is_wysiwyg = "true";
defparam \sr[0][30] .power_up = "low";

dffeas \sr[0][31] (
	.clk(clock),
	.d(radical_31),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][31]~q ),
	.prn(vcc));
defparam \sr[0][31] .is_wysiwyg = "true";
defparam \sr[0][31] .power_up = "low";

dffeas \sr[0][32] (
	.clk(clock),
	.d(radical_32),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][32]~q ),
	.prn(vcc));
defparam \sr[0][32] .is_wysiwyg = "true";
defparam \sr[0][32] .power_up = "low";

dffeas \sr[0][33] (
	.clk(clock),
	.d(radical_33),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][33]~q ),
	.prn(vcc));
defparam \sr[0][33] .is_wysiwyg = "true";
defparam \sr[0][33] .power_up = "low";

dffeas \sr[0][34] (
	.clk(clock),
	.d(radical_34),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][34]~q ),
	.prn(vcc));
defparam \sr[0][34] .is_wysiwyg = "true";
defparam \sr[0][34] .power_up = "low";

dffeas \sr[0][35] (
	.clk(clock),
	.d(radical_35),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(\sr[0][35]~q ),
	.prn(vcc));
defparam \sr[0][35] .is_wysiwyg = "true";
defparam \sr[0][35] .power_up = "low";

endmodule

module sqrt_52_dffpipe_5 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
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
	clock,
	ena)/* synthesis synthesis_greybox=0 */;
input 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
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
wire \sr[0][3]~3_combout ;
wire \sr[0][4]~4_combout ;


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
	.d(\sr[0][3]~3_combout ),
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
	.d(\sr[0][4]~4_combout ),
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
	.d(sr_0_01),
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
	.d(sr_1_01),
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
	.d(sr_2_01),
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
	.d(sr_3_01),
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
	.d(sr_4_01),
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
	.d(sr_5_01),
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
	.d(sr_6_01),
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
	.d(sr_7_01),
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

cyclonev_lcell_comb \sr[0][3]~3 (
	.dataa(!op_13),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\sr[0][3]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \sr[0][3]~3 .extended_lut = "off";
defparam \sr[0][3]~3 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \sr[0][3]~3 .shared_arith = "off";

cyclonev_lcell_comb \sr[0][4]~4 (
	.dataa(!op_14),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\sr[0][4]~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \sr[0][4]~4 .extended_lut = "off";
defparam \sr[0][4]~4 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \sr[0][4]~4 .shared_arith = "off";

endmodule

module sqrt_52_dffpipe_11 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
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
	sr_13_0,
	sr_14_0,
	sr_15_0,
	sr_16_0,
	sr_17_0,
	sr_18_0,
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
	clock,
	ena)/* synthesis synthesis_greybox=0 */;
input 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
input 	op_15;
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
output 	sr_13_0;
output 	sr_14_0;
output 	sr_15_0;
output 	sr_16_0;
output 	sr_17_0;
output 	sr_18_0;
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
wire \sr[0][3]~3_combout ;
wire \sr[0][4]~4_combout ;
wire \sr[0][5]~5_combout ;


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
	.d(\sr[0][3]~3_combout ),
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
	.d(\sr[0][4]~4_combout ),
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
	.d(\sr[0][5]~5_combout ),
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
	.d(sr_0_01),
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
	.d(sr_1_01),
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
	.d(sr_2_01),
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
	.d(sr_3_01),
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
	.d(sr_4_01),
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
	.d(sr_5_01),
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
	.d(sr_6_01),
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
	.d(sr_7_01),
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

dffeas \sr[0][14] (
	.clk(clock),
	.d(sr_8_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_14_0),
	.prn(vcc));
defparam \sr[0][14] .is_wysiwyg = "true";
defparam \sr[0][14] .power_up = "low";

dffeas \sr[0][15] (
	.clk(clock),
	.d(sr_9_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_15_0),
	.prn(vcc));
defparam \sr[0][15] .is_wysiwyg = "true";
defparam \sr[0][15] .power_up = "low";

dffeas \sr[0][16] (
	.clk(clock),
	.d(sr_10_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_16_0),
	.prn(vcc));
defparam \sr[0][16] .is_wysiwyg = "true";
defparam \sr[0][16] .power_up = "low";

dffeas \sr[0][17] (
	.clk(clock),
	.d(sr_11_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_17_0),
	.prn(vcc));
defparam \sr[0][17] .is_wysiwyg = "true";
defparam \sr[0][17] .power_up = "low";

dffeas \sr[0][18] (
	.clk(clock),
	.d(sr_12_01),
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

cyclonev_lcell_comb \sr[0][3]~3 (
	.dataa(!op_13),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\sr[0][3]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \sr[0][3]~3 .extended_lut = "off";
defparam \sr[0][3]~3 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \sr[0][3]~3 .shared_arith = "off";

cyclonev_lcell_comb \sr[0][4]~4 (
	.dataa(!op_14),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\sr[0][4]~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \sr[0][4]~4 .extended_lut = "off";
defparam \sr[0][4]~4 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \sr[0][4]~4 .shared_arith = "off";

cyclonev_lcell_comb \sr[0][5]~5 (
	.dataa(!op_15),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\sr[0][5]~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \sr[0][5]~5 .extended_lut = "off";
defparam \sr[0][5]~5 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \sr[0][5]~5 .shared_arith = "off";

endmodule

module sqrt_52_dffpipe_17 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
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
	sr_13_0,
	sr_14_0,
	sr_15_0,
	sr_16_0,
	sr_17_0,
	sr_18_0,
	sr_19_0,
	sr_20_0,
	sr_21_0,
	sr_22_0,
	sr_23_0,
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
	sr_13_01,
	sr_14_01,
	sr_15_01,
	sr_16_01,
	sr_17_01,
	sr_18_01,
	clock,
	ena)/* synthesis synthesis_greybox=0 */;
input 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
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
output 	sr_13_0;
output 	sr_14_0;
output 	sr_15_0;
output 	sr_16_0;
output 	sr_17_0;
output 	sr_18_0;
output 	sr_19_0;
output 	sr_20_0;
output 	sr_21_0;
output 	sr_22_0;
output 	sr_23_0;
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
input 	sr_13_01;
input 	sr_14_01;
input 	sr_15_01;
input 	sr_16_01;
input 	sr_17_01;
input 	sr_18_01;
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
wire \sr[0][3]~3_combout ;
wire \sr[0][4]~4_combout ;


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
	.d(\sr[0][3]~3_combout ),
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
	.d(\sr[0][4]~4_combout ),
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
	.d(sr_0_01),
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
	.d(sr_1_01),
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
	.d(sr_2_01),
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
	.d(sr_3_01),
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
	.d(sr_4_01),
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
	.d(sr_5_01),
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
	.d(sr_6_01),
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
	.d(sr_7_01),
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
	.d(sr_8_01),
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

dffeas \sr[0][14] (
	.clk(clock),
	.d(sr_9_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_14_0),
	.prn(vcc));
defparam \sr[0][14] .is_wysiwyg = "true";
defparam \sr[0][14] .power_up = "low";

dffeas \sr[0][15] (
	.clk(clock),
	.d(sr_10_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_15_0),
	.prn(vcc));
defparam \sr[0][15] .is_wysiwyg = "true";
defparam \sr[0][15] .power_up = "low";

dffeas \sr[0][16] (
	.clk(clock),
	.d(sr_11_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_16_0),
	.prn(vcc));
defparam \sr[0][16] .is_wysiwyg = "true";
defparam \sr[0][16] .power_up = "low";

dffeas \sr[0][17] (
	.clk(clock),
	.d(sr_12_01),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(sr_17_0),
	.prn(vcc));
defparam \sr[0][17] .is_wysiwyg = "true";
defparam \sr[0][17] .power_up = "low";

dffeas \sr[0][18] (
	.clk(clock),
	.d(sr_13_01),
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
	.d(sr_14_01),
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
	.d(sr_15_01),
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
	.d(sr_16_01),
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

dffeas \sr[0][22] (
	.clk(clock),
	.d(sr_17_01),
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

dffeas \sr[0][23] (
	.clk(clock),
	.d(sr_18_01),
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

cyclonev_lcell_comb \sr[0][3]~3 (
	.dataa(!op_13),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\sr[0][3]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \sr[0][3]~3 .extended_lut = "off";
defparam \sr[0][3]~3 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \sr[0][3]~3 .shared_arith = "off";

cyclonev_lcell_comb \sr[0][4]~4 (
	.dataa(!op_14),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\sr[0][4]~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \sr[0][4]~4 .extended_lut = "off";
defparam \sr[0][4]~4 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \sr[0][4]~4 .shared_arith = "off";

endmodule

module sqrt_52_dffpipe_20 (
	op_1,
	sr_0_0,
	sr_1_0,
	sr_2_0,
	op_11,
	op_12,
	clock,
	ena)/* synthesis synthesis_greybox=0 */;
input 	op_1;
output 	sr_0_0;
output 	sr_1_0;
output 	sr_2_0;
input 	op_11;
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
	.d(op_11),
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

endmodule

module sqrt_52_dffpipe_25 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_7_0,
	sr_0_01,
	sr_1_01,
	sr_2_01,
	clock,
	ena)/* synthesis synthesis_greybox=0 */;
input 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
output 	sr_0_0;
output 	sr_1_0;
output 	sr_2_0;
output 	sr_3_0;
output 	sr_4_0;
output 	sr_5_0;
output 	sr_6_0;
output 	sr_7_0;
input 	sr_0_01;
input 	sr_1_01;
input 	sr_2_01;
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
wire \sr[0][3]~3_combout ;
wire \sr[0][4]~4_combout ;


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
	.d(\sr[0][3]~3_combout ),
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
	.d(\sr[0][4]~4_combout ),
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
	.d(sr_0_01),
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
	.d(sr_1_01),
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
	.d(sr_2_01),
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

cyclonev_lcell_comb \sr[0][3]~3 (
	.dataa(!op_13),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\sr[0][3]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \sr[0][3]~3 .extended_lut = "off";
defparam \sr[0][3]~3 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \sr[0][3]~3 .shared_arith = "off";

cyclonev_lcell_comb \sr[0][4]~4 (
	.dataa(!op_14),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\sr[0][4]~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \sr[0][4]~4 .extended_lut = "off";
defparam \sr[0][4]~4 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \sr[0][4]~4 .shared_arith = "off";

endmodule

module sqrt_52_dffpipe_32 (
	sr_0_0,
	_,
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
	sr_13_0,
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
output 	sr_8_0;
output 	sr_9_0;
output 	sr_10_0;
output 	sr_11_0;
output 	sr_12_0;
output 	sr_13_0;
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

module sqrt_52_dffpipe_38 (
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
	sr_13_0,
	sr_14_0,
	sr_15_0,
	sr_16_0,
	sr_17_0,
	sr_18_0,
	sr_19_0,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	sr_0_0,
	sr_1_0,
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
	_15,
	_16,
	_17,
	_18,
	_19,
	clock,
	ena)/* synthesis synthesis_greybox=0 */;
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
input 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
input 	op_15;
input 	op_16;
input 	op_17;
input 	op_18;
input 	op_19;
input 	op_110;
input 	op_111;
output 	sr_13_0;
output 	sr_14_0;
output 	sr_15_0;
output 	sr_16_0;
output 	sr_17_0;
output 	sr_18_0;
output 	sr_19_0;
input 	op_112;
input 	op_113;
input 	op_114;
input 	op_115;
input 	op_116;
input 	op_117;
input 	op_118;
output 	sr_0_0;
output 	sr_1_0;
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
input 	_13;
input 	_14;
input 	_15;
input 	_16;
input 	_17;
input 	_18;
input 	_19;
input 	clock;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \sr[0][2] (
	.clk(clock),
	.d(_2),
	.asdata(op_11),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_2_0),
	.prn(vcc));
defparam \sr[0][2] .is_wysiwyg = "true";
defparam \sr[0][2] .power_up = "low";

dffeas \sr[0][3] (
	.clk(clock),
	.d(_3),
	.asdata(op_12),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_3_0),
	.prn(vcc));
defparam \sr[0][3] .is_wysiwyg = "true";
defparam \sr[0][3] .power_up = "low";

dffeas \sr[0][4] (
	.clk(clock),
	.d(_4),
	.asdata(op_13),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_4_0),
	.prn(vcc));
defparam \sr[0][4] .is_wysiwyg = "true";
defparam \sr[0][4] .power_up = "low";

dffeas \sr[0][5] (
	.clk(clock),
	.d(_5),
	.asdata(op_14),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_5_0),
	.prn(vcc));
defparam \sr[0][5] .is_wysiwyg = "true";
defparam \sr[0][5] .power_up = "low";

dffeas \sr[0][6] (
	.clk(clock),
	.d(_6),
	.asdata(op_15),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_6_0),
	.prn(vcc));
defparam \sr[0][6] .is_wysiwyg = "true";
defparam \sr[0][6] .power_up = "low";

dffeas \sr[0][7] (
	.clk(clock),
	.d(_7),
	.asdata(op_16),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_7_0),
	.prn(vcc));
defparam \sr[0][7] .is_wysiwyg = "true";
defparam \sr[0][7] .power_up = "low";

dffeas \sr[0][8] (
	.clk(clock),
	.d(_8),
	.asdata(op_17),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_8_0),
	.prn(vcc));
defparam \sr[0][8] .is_wysiwyg = "true";
defparam \sr[0][8] .power_up = "low";

dffeas \sr[0][9] (
	.clk(clock),
	.d(_9),
	.asdata(op_18),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_9_0),
	.prn(vcc));
defparam \sr[0][9] .is_wysiwyg = "true";
defparam \sr[0][9] .power_up = "low";

dffeas \sr[0][10] (
	.clk(clock),
	.d(_10),
	.asdata(op_19),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_10_0),
	.prn(vcc));
defparam \sr[0][10] .is_wysiwyg = "true";
defparam \sr[0][10] .power_up = "low";

dffeas \sr[0][11] (
	.clk(clock),
	.d(_11),
	.asdata(op_110),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_11_0),
	.prn(vcc));
defparam \sr[0][11] .is_wysiwyg = "true";
defparam \sr[0][11] .power_up = "low";

dffeas \sr[0][12] (
	.clk(clock),
	.d(_12),
	.asdata(op_111),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_12_0),
	.prn(vcc));
defparam \sr[0][12] .is_wysiwyg = "true";
defparam \sr[0][12] .power_up = "low";

dffeas \sr[0][13] (
	.clk(clock),
	.d(_13),
	.asdata(op_112),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_13_0),
	.prn(vcc));
defparam \sr[0][13] .is_wysiwyg = "true";
defparam \sr[0][13] .power_up = "low";

dffeas \sr[0][14] (
	.clk(clock),
	.d(_14),
	.asdata(op_113),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_14_0),
	.prn(vcc));
defparam \sr[0][14] .is_wysiwyg = "true";
defparam \sr[0][14] .power_up = "low";

dffeas \sr[0][15] (
	.clk(clock),
	.d(_15),
	.asdata(op_114),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_15_0),
	.prn(vcc));
defparam \sr[0][15] .is_wysiwyg = "true";
defparam \sr[0][15] .power_up = "low";

dffeas \sr[0][16] (
	.clk(clock),
	.d(_16),
	.asdata(op_115),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_16_0),
	.prn(vcc));
defparam \sr[0][16] .is_wysiwyg = "true";
defparam \sr[0][16] .power_up = "low";

dffeas \sr[0][17] (
	.clk(clock),
	.d(_17),
	.asdata(op_116),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_17_0),
	.prn(vcc));
defparam \sr[0][17] .is_wysiwyg = "true";
defparam \sr[0][17] .power_up = "low";

dffeas \sr[0][18] (
	.clk(clock),
	.d(_18),
	.asdata(op_117),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_18_0),
	.prn(vcc));
defparam \sr[0][18] .is_wysiwyg = "true";
defparam \sr[0][18] .power_up = "low";

dffeas \sr[0][19] (
	.clk(clock),
	.d(_19),
	.asdata(op_118),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_19_0),
	.prn(vcc));
defparam \sr[0][19] .is_wysiwyg = "true";
defparam \sr[0][19] .power_up = "low";

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

endmodule

module sqrt_52_dffpipe_44 (
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
	sr_13_0,
	sr_14_0,
	sr_15_0,
	sr_16_0,
	sr_17_0,
	sr_18_0,
	sr_19_0,
	sr_20_0,
	sr_21_0,
	sr_22_0,
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
	sr_23_0,
	sr_24_0,
	op_122,
	op_123,
	sr_0_0,
	sr_1_0,
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
	_15,
	_16,
	_17,
	_18,
	_19,
	_20,
	_21,
	_22,
	_23,
	_24,
	clock,
	ena)/* synthesis synthesis_greybox=0 */;
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
output 	sr_13_0;
output 	sr_14_0;
output 	sr_15_0;
output 	sr_16_0;
output 	sr_17_0;
output 	sr_18_0;
output 	sr_19_0;
output 	sr_20_0;
output 	sr_21_0;
output 	sr_22_0;
input 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
input 	op_15;
input 	op_16;
input 	op_17;
input 	op_18;
input 	op_19;
input 	op_110;
input 	op_111;
input 	op_112;
input 	op_113;
input 	op_114;
input 	op_115;
input 	op_116;
input 	op_117;
input 	op_118;
input 	op_119;
input 	op_120;
input 	op_121;
output 	sr_23_0;
output 	sr_24_0;
input 	op_122;
input 	op_123;
output 	sr_0_0;
output 	sr_1_0;
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
input 	_13;
input 	_14;
input 	_15;
input 	_16;
input 	_17;
input 	_18;
input 	_19;
input 	_20;
input 	_21;
input 	_22;
input 	_23;
input 	_24;
input 	clock;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \sr[0][2] (
	.clk(clock),
	.d(_2),
	.asdata(op_11),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_2_0),
	.prn(vcc));
defparam \sr[0][2] .is_wysiwyg = "true";
defparam \sr[0][2] .power_up = "low";

dffeas \sr[0][3] (
	.clk(clock),
	.d(_3),
	.asdata(op_12),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_3_0),
	.prn(vcc));
defparam \sr[0][3] .is_wysiwyg = "true";
defparam \sr[0][3] .power_up = "low";

dffeas \sr[0][4] (
	.clk(clock),
	.d(_4),
	.asdata(op_13),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_4_0),
	.prn(vcc));
defparam \sr[0][4] .is_wysiwyg = "true";
defparam \sr[0][4] .power_up = "low";

dffeas \sr[0][5] (
	.clk(clock),
	.d(_5),
	.asdata(op_14),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_5_0),
	.prn(vcc));
defparam \sr[0][5] .is_wysiwyg = "true";
defparam \sr[0][5] .power_up = "low";

dffeas \sr[0][6] (
	.clk(clock),
	.d(_6),
	.asdata(op_15),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_6_0),
	.prn(vcc));
defparam \sr[0][6] .is_wysiwyg = "true";
defparam \sr[0][6] .power_up = "low";

dffeas \sr[0][7] (
	.clk(clock),
	.d(_7),
	.asdata(op_16),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_7_0),
	.prn(vcc));
defparam \sr[0][7] .is_wysiwyg = "true";
defparam \sr[0][7] .power_up = "low";

dffeas \sr[0][8] (
	.clk(clock),
	.d(_8),
	.asdata(op_17),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_8_0),
	.prn(vcc));
defparam \sr[0][8] .is_wysiwyg = "true";
defparam \sr[0][8] .power_up = "low";

dffeas \sr[0][9] (
	.clk(clock),
	.d(_9),
	.asdata(op_18),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_9_0),
	.prn(vcc));
defparam \sr[0][9] .is_wysiwyg = "true";
defparam \sr[0][9] .power_up = "low";

dffeas \sr[0][10] (
	.clk(clock),
	.d(_10),
	.asdata(op_19),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_10_0),
	.prn(vcc));
defparam \sr[0][10] .is_wysiwyg = "true";
defparam \sr[0][10] .power_up = "low";

dffeas \sr[0][11] (
	.clk(clock),
	.d(_11),
	.asdata(op_110),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_11_0),
	.prn(vcc));
defparam \sr[0][11] .is_wysiwyg = "true";
defparam \sr[0][11] .power_up = "low";

dffeas \sr[0][12] (
	.clk(clock),
	.d(_12),
	.asdata(op_111),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_12_0),
	.prn(vcc));
defparam \sr[0][12] .is_wysiwyg = "true";
defparam \sr[0][12] .power_up = "low";

dffeas \sr[0][13] (
	.clk(clock),
	.d(_13),
	.asdata(op_112),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_13_0),
	.prn(vcc));
defparam \sr[0][13] .is_wysiwyg = "true";
defparam \sr[0][13] .power_up = "low";

dffeas \sr[0][14] (
	.clk(clock),
	.d(_14),
	.asdata(op_113),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_14_0),
	.prn(vcc));
defparam \sr[0][14] .is_wysiwyg = "true";
defparam \sr[0][14] .power_up = "low";

dffeas \sr[0][15] (
	.clk(clock),
	.d(_15),
	.asdata(op_114),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_15_0),
	.prn(vcc));
defparam \sr[0][15] .is_wysiwyg = "true";
defparam \sr[0][15] .power_up = "low";

dffeas \sr[0][16] (
	.clk(clock),
	.d(_16),
	.asdata(op_115),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_16_0),
	.prn(vcc));
defparam \sr[0][16] .is_wysiwyg = "true";
defparam \sr[0][16] .power_up = "low";

dffeas \sr[0][17] (
	.clk(clock),
	.d(_17),
	.asdata(op_116),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_17_0),
	.prn(vcc));
defparam \sr[0][17] .is_wysiwyg = "true";
defparam \sr[0][17] .power_up = "low";

dffeas \sr[0][18] (
	.clk(clock),
	.d(_18),
	.asdata(op_117),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_18_0),
	.prn(vcc));
defparam \sr[0][18] .is_wysiwyg = "true";
defparam \sr[0][18] .power_up = "low";

dffeas \sr[0][19] (
	.clk(clock),
	.d(_19),
	.asdata(op_118),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_19_0),
	.prn(vcc));
defparam \sr[0][19] .is_wysiwyg = "true";
defparam \sr[0][19] .power_up = "low";

dffeas \sr[0][20] (
	.clk(clock),
	.d(_20),
	.asdata(op_119),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_20_0),
	.prn(vcc));
defparam \sr[0][20] .is_wysiwyg = "true";
defparam \sr[0][20] .power_up = "low";

dffeas \sr[0][21] (
	.clk(clock),
	.d(_21),
	.asdata(op_120),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_21_0),
	.prn(vcc));
defparam \sr[0][21] .is_wysiwyg = "true";
defparam \sr[0][21] .power_up = "low";

dffeas \sr[0][22] (
	.clk(clock),
	.d(_22),
	.asdata(op_121),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_22_0),
	.prn(vcc));
defparam \sr[0][22] .is_wysiwyg = "true";
defparam \sr[0][22] .power_up = "low";

dffeas \sr[0][23] (
	.clk(clock),
	.d(_23),
	.asdata(op_122),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_23_0),
	.prn(vcc));
defparam \sr[0][23] .is_wysiwyg = "true";
defparam \sr[0][23] .power_up = "low";

dffeas \sr[0][24] (
	.clk(clock),
	.d(_24),
	.asdata(op_123),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!op_1),
	.ena(ena),
	.q(sr_24_0),
	.prn(vcc));
defparam \sr[0][24] .is_wysiwyg = "true";
defparam \sr[0][24] .power_up = "low";

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

endmodule

module sqrt_52_dffpipe_47 (
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	_,
	_1,
	_2,
	_3,
	clock,
	ena)/* synthesis synthesis_greybox=0 */;
output 	sr_0_0;
output 	sr_1_0;
output 	sr_2_0;
output 	sr_3_0;
input 	_;
input 	_1;
input 	_2;
input 	_3;
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

endmodule

module sqrt_52_dffpipe_52 (
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_7_0,
	sr_8_0,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	_6,
	_7,
	_8,
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
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	_5;
input 	_6;
input 	_7;
input 	_8;
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

endmodule

module sqrt_52_lpm_add_sub_1 (
	op_1,
	radical_50,
	radical_51)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	radical_50;
input 	radical_51;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_52_add_sub_qhc auto_generated(
	.op_1(op_1),
	.radical_50(radical_50),
	.radical_51(radical_51));

endmodule

module sqrt_52_add_sub_qhc (
	op_1,
	radical_50,
	radical_51)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	radical_50;
input 	radical_51;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



cyclonev_lcell_comb \op_1~0 (
	.dataa(!radical_50),
	.datab(!radical_51),
	.datac(gnd),
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
defparam \op_1~0 .lut_mask = 64'h7777777777777777;
defparam \op_1~0 .shared_arith = "off";

endmodule

module sqrt_52_lpm_add_sub_2 (
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
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_7_0,
	sr_30_1,
	sr_31_1,
	sr_32_1,
	sr_33_1,
	sr_34_1,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	_6,
	_7)/* synthesis synthesis_greybox=0 */;
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
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_3_0;
input 	sr_4_0;
input 	sr_5_0;
input 	sr_6_0;
input 	sr_7_0;
input 	sr_30_1;
input 	sr_31_1;
input 	sr_32_1;
input 	sr_33_1;
input 	sr_34_1;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	_5;
input 	_6;
input 	_7;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_52_add_sub_pjc auto_generated(
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
	.sr_0_0(sr_0_0),
	.sr_1_0(sr_1_0),
	.sr_2_0(sr_2_0),
	.sr_3_0(sr_3_0),
	.sr_4_0(sr_4_0),
	.sr_5_0(sr_5_0),
	.sr_6_0(sr_6_0),
	.sr_7_0(sr_7_0),
	.sr_30_1(sr_30_1),
	.sr_31_1(sr_31_1),
	.sr_32_1(sr_32_1),
	.sr_33_1(sr_33_1),
	.sr_34_1(sr_34_1),
	._(_),
	._1(_1),
	._2(_2),
	._3(_3),
	._4(_4),
	._5(_5),
	._6(_6),
	._7(_7));

endmodule

module sqrt_52_add_sub_pjc (
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
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_7_0,
	sr_30_1,
	sr_31_1,
	sr_32_1,
	sr_33_1,
	sr_34_1,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	_6,
	_7)/* synthesis synthesis_greybox=0 */;
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
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_3_0;
input 	sr_4_0;
input 	sr_5_0;
input 	sr_6_0;
input 	sr_7_0;
input 	sr_30_1;
input 	sr_31_1;
input 	sr_32_1;
input 	sr_33_1;
input 	sr_34_1;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	_5;
input 	_6;
input 	_7;

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
wire \op_1~38 ;
wire \op_1~42 ;
wire \op_1~46 ;
wire \op_1~50 ;
wire \op_1~6_cout ;
wire \op_1~54_cout ;


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
	.datad(!sr_31_1),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~54_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_13),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h00000000000000FF;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_32_1),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_14),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_33_1),
	.datad(!op_15),
	.datae(gnd),
	.dataf(!op_12),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_16),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!op_11),
	.datab(!sr_34_1),
	.datac(!op_12),
	.datad(!op_17),
	.datae(gnd),
	.dataf(!sr_0_0),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_18),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h000000FF000041EB;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_),
	.datad(!op_19),
	.datae(gnd),
	.dataf(!sr_1_0),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_110),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~29 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_1),
	.datad(!op_111),
	.datae(gnd),
	.dataf(!sr_2_0),
	.datag(gnd),
	.cin(\op_1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_112),
	.cout(\op_1~30 ),
	.shareout());
defparam \op_1~29 .extended_lut = "off";
defparam \op_1~29 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~29 .shared_arith = "off";

cyclonev_lcell_comb \op_1~33 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_2),
	.datad(!op_113),
	.datae(gnd),
	.dataf(!sr_3_0),
	.datag(gnd),
	.cin(\op_1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_114),
	.cout(\op_1~34 ),
	.shareout());
defparam \op_1~33 .extended_lut = "off";
defparam \op_1~33 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~33 .shared_arith = "off";

cyclonev_lcell_comb \op_1~37 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_3),
	.datad(!op_115),
	.datae(gnd),
	.dataf(!sr_4_0),
	.datag(gnd),
	.cin(\op_1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_116),
	.cout(\op_1~38 ),
	.shareout());
defparam \op_1~37 .extended_lut = "off";
defparam \op_1~37 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~37 .shared_arith = "off";

cyclonev_lcell_comb \op_1~41 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_4),
	.datad(!op_117),
	.datae(gnd),
	.dataf(!sr_5_0),
	.datag(gnd),
	.cin(\op_1~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_118),
	.cout(\op_1~42 ),
	.shareout());
defparam \op_1~41 .extended_lut = "off";
defparam \op_1~41 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~41 .shared_arith = "off";

cyclonev_lcell_comb \op_1~45 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_5),
	.datad(!op_119),
	.datae(gnd),
	.dataf(!sr_6_0),
	.datag(gnd),
	.cin(\op_1~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_120),
	.cout(\op_1~46 ),
	.shareout());
defparam \op_1~45 .extended_lut = "off";
defparam \op_1~45 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~45 .shared_arith = "off";

cyclonev_lcell_comb \op_1~49 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_6),
	.datad(!op_121),
	.datae(gnd),
	.dataf(!sr_7_0),
	.datag(gnd),
	.cin(\op_1~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_122),
	.cout(\op_1~50 ),
	.shareout());
defparam \op_1~49 .extended_lut = "off";
defparam \op_1~49 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~49 .shared_arith = "off";

cyclonev_lcell_comb \op_1~6 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_7),
	.datad(!op_123),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~6_cout ),
	.shareout());
defparam \op_1~6 .extended_lut = "off";
defparam \op_1~6 .lut_mask = 64'h00000000000005AF;
defparam \op_1~6 .shared_arith = "off";

cyclonev_lcell_comb \op_1~54 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_30_1),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~54_cout ),
	.shareout());
defparam \op_1~54 .extended_lut = "off";
defparam \op_1~54 .lut_mask = 64'h00000000000000FF;
defparam \op_1~54 .shared_arith = "off";

endmodule

module sqrt_52_lpm_add_sub_3 (
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
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_7_0,
	sr_28_1,
	sr_29_1,
	sr_30_1,
	sr_31_1,
	sr_32_1,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	_6,
	_7,
	_8)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
output 	op_14;
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
output 	op_125;
input 	op_126;
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_3_0;
input 	sr_4_0;
input 	sr_5_0;
input 	sr_6_0;
input 	sr_7_0;
input 	sr_28_1;
input 	sr_29_1;
input 	sr_30_1;
input 	sr_31_1;
input 	sr_32_1;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	_5;
input 	_6;
input 	_7;
input 	_8;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_52_add_sub_ojc auto_generated(
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
	.sr_0_0(sr_0_0),
	.sr_1_0(sr_1_0),
	.sr_2_0(sr_2_0),
	.sr_3_0(sr_3_0),
	.sr_4_0(sr_4_0),
	.sr_5_0(sr_5_0),
	.sr_6_0(sr_6_0),
	.sr_7_0(sr_7_0),
	.sr_28_1(sr_28_1),
	.sr_29_1(sr_29_1),
	.sr_30_1(sr_30_1),
	.sr_31_1(sr_31_1),
	.sr_32_1(sr_32_1),
	._(_),
	._1(_1),
	._2(_2),
	._3(_3),
	._4(_4),
	._5(_5),
	._6(_6),
	._7(_7),
	._8(_8));

endmodule

module sqrt_52_add_sub_ojc (
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
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_7_0,
	sr_28_1,
	sr_29_1,
	sr_30_1,
	sr_31_1,
	sr_32_1,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	_6,
	_7,
	_8)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
output 	op_14;
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
output 	op_125;
input 	op_126;
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_3_0;
input 	sr_4_0;
input 	sr_5_0;
input 	sr_6_0;
input 	sr_7_0;
input 	sr_28_1;
input 	sr_29_1;
input 	sr_30_1;
input 	sr_31_1;
input 	sr_32_1;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	_5;
input 	_6;
input 	_7;
input 	_8;

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
wire \op_1~38 ;
wire \op_1~42 ;
wire \op_1~46 ;
wire \op_1~50 ;
wire \op_1~54 ;
wire \op_1~6_cout ;
wire \op_1~58_cout ;


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
	.datad(!sr_29_1),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~58_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_14),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h00000000000000FF;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_30_1),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_15),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_31_1),
	.datad(!op_16),
	.datae(gnd),
	.dataf(!op_12),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_17),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!op_11),
	.datab(!sr_32_1),
	.datac(!op_12),
	.datad(!op_18),
	.datae(gnd),
	.dataf(!op_13),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_19),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h0000FF00000041EB;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_),
	.datad(!op_110),
	.datae(gnd),
	.dataf(!sr_0_0),
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
	.datac(!_1),
	.datad(!op_112),
	.datae(gnd),
	.dataf(!sr_1_0),
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
	.datac(!_2),
	.datad(!op_114),
	.datae(gnd),
	.dataf(!sr_2_0),
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
	.datac(!_3),
	.datad(!op_116),
	.datae(gnd),
	.dataf(!sr_3_0),
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
	.datac(!_4),
	.datad(!op_118),
	.datae(gnd),
	.dataf(!sr_4_0),
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

cyclonev_lcell_comb \op_1~45 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_5),
	.datad(!op_120),
	.datae(gnd),
	.dataf(!sr_5_0),
	.datag(gnd),
	.cin(\op_1~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_121),
	.cout(\op_1~46 ),
	.shareout());
defparam \op_1~45 .extended_lut = "off";
defparam \op_1~45 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~45 .shared_arith = "off";

cyclonev_lcell_comb \op_1~49 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_6),
	.datad(!op_122),
	.datae(gnd),
	.dataf(!sr_6_0),
	.datag(gnd),
	.cin(\op_1~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_123),
	.cout(\op_1~50 ),
	.shareout());
defparam \op_1~49 .extended_lut = "off";
defparam \op_1~49 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~49 .shared_arith = "off";

cyclonev_lcell_comb \op_1~53 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_7),
	.datad(!op_124),
	.datae(gnd),
	.dataf(!sr_7_0),
	.datag(gnd),
	.cin(\op_1~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_125),
	.cout(\op_1~54 ),
	.shareout());
defparam \op_1~53 .extended_lut = "off";
defparam \op_1~53 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~53 .shared_arith = "off";

cyclonev_lcell_comb \op_1~6 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_8),
	.datad(!op_126),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~6_cout ),
	.shareout());
defparam \op_1~6 .extended_lut = "off";
defparam \op_1~6 .lut_mask = 64'h00000000000005AF;
defparam \op_1~6 .shared_arith = "off";

cyclonev_lcell_comb \op_1~58 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_28_1),
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

module sqrt_52_lpm_add_sub_4 (
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
	op_128,
	op_129,
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_7_0,
	sr_26_1,
	sr_27_1,
	sr_28_1,
	sr_29_1,
	sr_30_1,
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
input 	op_13;
input 	op_14;
output 	op_15;
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
output 	op_128;
input 	op_129;
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_3_0;
input 	sr_4_0;
input 	sr_5_0;
input 	sr_6_0;
input 	sr_7_0;
input 	sr_26_1;
input 	sr_27_1;
input 	sr_28_1;
input 	sr_29_1;
input 	sr_30_1;
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



sqrt_52_add_sub_njc auto_generated(
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
	.op_128(op_128),
	.op_129(op_129),
	.sr_0_0(sr_0_0),
	.sr_1_0(sr_1_0),
	.sr_2_0(sr_2_0),
	.sr_3_0(sr_3_0),
	.sr_4_0(sr_4_0),
	.sr_5_0(sr_5_0),
	.sr_6_0(sr_6_0),
	.sr_7_0(sr_7_0),
	.sr_26_1(sr_26_1),
	.sr_27_1(sr_27_1),
	.sr_28_1(sr_28_1),
	.sr_29_1(sr_29_1),
	.sr_30_1(sr_30_1),
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

module sqrt_52_add_sub_njc (
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
	op_128,
	op_129,
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_7_0,
	sr_26_1,
	sr_27_1,
	sr_28_1,
	sr_29_1,
	sr_30_1,
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
input 	op_13;
input 	op_14;
output 	op_15;
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
output 	op_128;
input 	op_129;
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_3_0;
input 	sr_4_0;
input 	sr_5_0;
input 	sr_6_0;
input 	sr_7_0;
input 	sr_26_1;
input 	sr_27_1;
input 	sr_28_1;
input 	sr_29_1;
input 	sr_30_1;
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
wire \op_1~6_cout ;
wire \op_1~62_cout ;


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
	.datad(!sr_27_1),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~62_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_15),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h00000000000000FF;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_28_1),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_16),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_29_1),
	.datad(!op_17),
	.datae(gnd),
	.dataf(!op_12),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_18),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!op_11),
	.datab(!sr_30_1),
	.datac(!op_12),
	.datad(!op_19),
	.datae(gnd),
	.dataf(!op_13),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_110),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h0000FF00000041EB;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_),
	.datad(!op_111),
	.datae(gnd),
	.dataf(!op_14),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_112),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~29 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_1),
	.datad(!op_113),
	.datae(gnd),
	.dataf(!sr_0_0),
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
	.datac(!_2),
	.datad(!op_115),
	.datae(gnd),
	.dataf(!sr_1_0),
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
	.datac(!_3),
	.datad(!op_117),
	.datae(gnd),
	.dataf(!sr_2_0),
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
	.datac(!_4),
	.datad(!op_119),
	.datae(gnd),
	.dataf(!sr_3_0),
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
	.datac(!_5),
	.datad(!op_121),
	.datae(gnd),
	.dataf(!sr_4_0),
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
	.datac(!_6),
	.datad(!op_123),
	.datae(gnd),
	.dataf(!sr_5_0),
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

cyclonev_lcell_comb \op_1~53 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_7),
	.datad(!op_125),
	.datae(gnd),
	.dataf(!sr_6_0),
	.datag(gnd),
	.cin(\op_1~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_126),
	.cout(\op_1~54 ),
	.shareout());
defparam \op_1~53 .extended_lut = "off";
defparam \op_1~53 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~53 .shared_arith = "off";

cyclonev_lcell_comb \op_1~57 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_8),
	.datad(!op_127),
	.datae(gnd),
	.dataf(!sr_7_0),
	.datag(gnd),
	.cin(\op_1~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_128),
	.cout(\op_1~58 ),
	.shareout());
defparam \op_1~57 .extended_lut = "off";
defparam \op_1~57 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~57 .shared_arith = "off";

cyclonev_lcell_comb \op_1~6 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_9),
	.datad(!op_129),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~6_cout ),
	.shareout());
defparam \op_1~6 .extended_lut = "off";
defparam \op_1~6 .lut_mask = 64'h00000000000005AF;
defparam \op_1~6 .shared_arith = "off";

cyclonev_lcell_comb \op_1~62 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_26_1),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~62_cout ),
	.shareout());
defparam \op_1~62 .extended_lut = "off";
defparam \op_1~62 .lut_mask = 64'h00000000000000FF;
defparam \op_1~62 .shared_arith = "off";

endmodule

module sqrt_52_lpm_add_sub_5 (
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
	sr_24_2,
	sr_25_2,
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
input 	sr_24_2;
input 	sr_25_2;
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



sqrt_52_add_sub_mjc auto_generated(
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
	.sr_24_2(sr_24_2),
	.sr_25_2(sr_25_2),
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

module sqrt_52_add_sub_mjc (
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
	sr_24_2,
	sr_25_2,
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
input 	sr_24_2;
input 	sr_25_2;
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
wire \op_1~62 ;
wire \op_1~66 ;
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
	.datad(!sr_25_2),
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

cyclonev_lcell_comb \op_1~45 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_7_01),
	.datae(gnd),
	.dataf(!sr_7_0),
	.datag(gnd),
	.cin(\op_1~42 ),
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

cyclonev_lcell_comb \op_1~57 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_10_01),
	.datae(gnd),
	.dataf(!sr_10_0),
	.datag(gnd),
	.cin(\op_1~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_112),
	.cout(\op_1~58 ),
	.shareout());
defparam \op_1~57 .extended_lut = "off";
defparam \op_1~57 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~57 .shared_arith = "off";

cyclonev_lcell_comb \op_1~61 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_11_01),
	.datae(gnd),
	.dataf(!sr_11_0),
	.datag(gnd),
	.cin(\op_1~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_113),
	.cout(\op_1~62 ),
	.shareout());
defparam \op_1~61 .extended_lut = "off";
defparam \op_1~61 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~61 .shared_arith = "off";

cyclonev_lcell_comb \op_1~65 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_12_01),
	.datae(gnd),
	.dataf(!sr_12_0),
	.datag(gnd),
	.cin(\op_1~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_114),
	.cout(\op_1~66 ),
	.shareout());
defparam \op_1~65 .extended_lut = "off";
defparam \op_1~65 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~65 .shared_arith = "off";

cyclonev_lcell_comb \op_1~14 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_13_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~66 ),
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
	.datad(!sr_24_2),
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

module sqrt_52_lpm_add_sub_6 (
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
	op_128,
	op_129,
	op_130,
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
	sr_22_2,
	sr_23_2,
	sr_24_2,
	sr_25_2,
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
	sr_12_01)/* synthesis synthesis_greybox=0 */;
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
output 	op_125;
input 	op_126;
output 	op_127;
input 	op_128;
output 	op_129;
input 	op_130;
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
input 	sr_22_2;
input 	sr_23_2;
input 	sr_24_2;
input 	sr_25_2;
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

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_52_add_sub_ljc auto_generated(
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
	.op_128(op_128),
	.op_129(op_129),
	.op_130(op_130),
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
	.sr_22_2(sr_22_2),
	.sr_23_2(sr_23_2),
	.sr_24_2(sr_24_2),
	.sr_25_2(sr_25_2),
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
	.sr_12_01(sr_12_01));

endmodule

module sqrt_52_add_sub_ljc (
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
	op_128,
	op_129,
	op_130,
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
	sr_22_2,
	sr_23_2,
	sr_24_2,
	sr_25_2,
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
	sr_12_01)/* synthesis synthesis_greybox=0 */;
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
output 	op_125;
input 	op_126;
output 	op_127;
input 	op_128;
output 	op_129;
input 	op_130;
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
input 	sr_22_2;
input 	sr_23_2;
input 	sr_24_2;
input 	sr_25_2;
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
wire \op_1~50 ;
wire \op_1~54 ;
wire \op_1~58 ;
wire \op_1~62 ;
wire \op_1~66 ;
wire \op_1~70 ;
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
	.datad(!sr_23_2),
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
	.datad(!sr_24_2),
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
	.datac(!sr_25_2),
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

cyclonev_lcell_comb \op_1~49 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_6_01),
	.datad(!op_118),
	.datae(gnd),
	.dataf(!sr_7_0),
	.datag(gnd),
	.cin(\op_1~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_119),
	.cout(\op_1~50 ),
	.shareout());
defparam \op_1~49 .extended_lut = "off";
defparam \op_1~49 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~49 .shared_arith = "off";

cyclonev_lcell_comb \op_1~53 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_7_01),
	.datad(!op_120),
	.datae(gnd),
	.dataf(!sr_8_0),
	.datag(gnd),
	.cin(\op_1~50 ),
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

cyclonev_lcell_comb \op_1~61 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_9_01),
	.datad(!op_124),
	.datae(gnd),
	.dataf(!sr_10_0),
	.datag(gnd),
	.cin(\op_1~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_125),
	.cout(\op_1~62 ),
	.shareout());
defparam \op_1~61 .extended_lut = "off";
defparam \op_1~61 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~61 .shared_arith = "off";

cyclonev_lcell_comb \op_1~65 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_10_01),
	.datad(!op_126),
	.datae(gnd),
	.dataf(!sr_11_0),
	.datag(gnd),
	.cin(\op_1~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_127),
	.cout(\op_1~66 ),
	.shareout());
defparam \op_1~65 .extended_lut = "off";
defparam \op_1~65 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~65 .shared_arith = "off";

cyclonev_lcell_comb \op_1~69 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_11_01),
	.datad(!op_128),
	.datae(gnd),
	.dataf(!sr_12_0),
	.datag(gnd),
	.cin(\op_1~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_129),
	.cout(\op_1~70 ),
	.shareout());
defparam \op_1~69 .extended_lut = "off";
defparam \op_1~69 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~69 .shared_arith = "off";

cyclonev_lcell_comb \op_1~22 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_12_01),
	.datad(!op_130),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~70 ),
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
	.datad(!sr_22_2),
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

module sqrt_52_lpm_add_sub_7 (
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
	op_128,
	op_129,
	op_130,
	op_131,
	op_132,
	op_133,
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
	sr_20_2,
	sr_21_2,
	sr_22_2,
	sr_23_2,
	sr_24_2,
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
	_12)/* synthesis synthesis_greybox=0 */;
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
output 	op_128;
input 	op_129;
output 	op_130;
input 	op_131;
output 	op_132;
input 	op_133;
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
input 	sr_20_2;
input 	sr_21_2;
input 	sr_22_2;
input 	sr_23_2;
input 	sr_24_2;
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

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_52_add_sub_kjc auto_generated(
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
	.op_128(op_128),
	.op_129(op_129),
	.op_130(op_130),
	.op_131(op_131),
	.op_132(op_132),
	.op_133(op_133),
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
	.sr_20_2(sr_20_2),
	.sr_21_2(sr_21_2),
	.sr_22_2(sr_22_2),
	.sr_23_2(sr_23_2),
	.sr_24_2(sr_24_2),
	._(_),
	._1(_1),
	._2(_2),
	._3(_3),
	._4(_4),
	._5(_5),
	._6(_6),
	._7(_7),
	._8(_8),
	._9(_9),
	._10(_10),
	._11(_11),
	._12(_12));

endmodule

module sqrt_52_add_sub_kjc (
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
	op_128,
	op_129,
	op_130,
	op_131,
	op_132,
	op_133,
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
	sr_20_2,
	sr_21_2,
	sr_22_2,
	sr_23_2,
	sr_24_2,
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
	_12)/* synthesis synthesis_greybox=0 */;
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
output 	op_128;
input 	op_129;
output 	op_130;
input 	op_131;
output 	op_132;
input 	op_133;
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
input 	sr_20_2;
input 	sr_21_2;
input 	sr_22_2;
input 	sr_23_2;
input 	sr_24_2;
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
wire \op_1~54 ;
wire \op_1~58 ;
wire \op_1~62 ;
wire \op_1~66 ;
wire \op_1~70 ;
wire \op_1~74 ;
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
	.datad(!sr_21_2),
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
	.datad(!sr_22_2),
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
	.datac(!sr_23_2),
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
	.datab(!sr_24_2),
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

cyclonev_lcell_comb \op_1~53 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_6),
	.datad(!op_121),
	.datae(gnd),
	.dataf(!sr_7_0),
	.datag(gnd),
	.cin(\op_1~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_122),
	.cout(\op_1~54 ),
	.shareout());
defparam \op_1~53 .extended_lut = "off";
defparam \op_1~53 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~53 .shared_arith = "off";

cyclonev_lcell_comb \op_1~57 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_7),
	.datad(!op_123),
	.datae(gnd),
	.dataf(!sr_8_0),
	.datag(gnd),
	.cin(\op_1~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_124),
	.cout(\op_1~58 ),
	.shareout());
defparam \op_1~57 .extended_lut = "off";
defparam \op_1~57 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~57 .shared_arith = "off";

cyclonev_lcell_comb \op_1~61 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_8),
	.datad(!op_125),
	.datae(gnd),
	.dataf(!sr_9_0),
	.datag(gnd),
	.cin(\op_1~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_126),
	.cout(\op_1~62 ),
	.shareout());
defparam \op_1~61 .extended_lut = "off";
defparam \op_1~61 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~61 .shared_arith = "off";

cyclonev_lcell_comb \op_1~65 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_9),
	.datad(!op_127),
	.datae(gnd),
	.dataf(!sr_10_0),
	.datag(gnd),
	.cin(\op_1~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_128),
	.cout(\op_1~66 ),
	.shareout());
defparam \op_1~65 .extended_lut = "off";
defparam \op_1~65 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~65 .shared_arith = "off";

cyclonev_lcell_comb \op_1~69 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_10),
	.datad(!op_129),
	.datae(gnd),
	.dataf(!sr_11_0),
	.datag(gnd),
	.cin(\op_1~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_130),
	.cout(\op_1~70 ),
	.shareout());
defparam \op_1~69 .extended_lut = "off";
defparam \op_1~69 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~69 .shared_arith = "off";

cyclonev_lcell_comb \op_1~73 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_11),
	.datad(!op_131),
	.datae(gnd),
	.dataf(!sr_12_0),
	.datag(gnd),
	.cin(\op_1~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_132),
	.cout(\op_1~74 ),
	.shareout());
defparam \op_1~73 .extended_lut = "off";
defparam \op_1~73 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~73 .shared_arith = "off";

cyclonev_lcell_comb \op_1~30 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_12),
	.datad(!op_133),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~74 ),
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
	.datad(!sr_20_2),
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

module sqrt_52_lpm_add_sub_8 (
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
	op_128,
	op_129,
	op_130,
	op_131,
	op_132,
	op_133,
	op_134,
	op_135,
	op_136,
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
	sr_18_2,
	sr_19_2,
	sr_20_2,
	sr_21_2,
	sr_22_2,
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
	_13)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
output 	op_14;
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
output 	op_125;
input 	op_126;
output 	op_127;
input 	op_128;
output 	op_129;
input 	op_130;
output 	op_131;
input 	op_132;
output 	op_133;
input 	op_134;
output 	op_135;
input 	op_136;
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
input 	sr_18_2;
input 	sr_19_2;
input 	sr_20_2;
input 	sr_21_2;
input 	sr_22_2;
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
input 	_13;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_52_add_sub_jjc auto_generated(
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
	.op_128(op_128),
	.op_129(op_129),
	.op_130(op_130),
	.op_131(op_131),
	.op_132(op_132),
	.op_133(op_133),
	.op_134(op_134),
	.op_135(op_135),
	.op_136(op_136),
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
	.sr_18_2(sr_18_2),
	.sr_19_2(sr_19_2),
	.sr_20_2(sr_20_2),
	.sr_21_2(sr_21_2),
	.sr_22_2(sr_22_2),
	._(_),
	._1(_1),
	._2(_2),
	._3(_3),
	._4(_4),
	._5(_5),
	._6(_6),
	._7(_7),
	._8(_8),
	._9(_9),
	._10(_10),
	._11(_11),
	._12(_12),
	._13(_13));

endmodule

module sqrt_52_add_sub_jjc (
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
	op_128,
	op_129,
	op_130,
	op_131,
	op_132,
	op_133,
	op_134,
	op_135,
	op_136,
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
	sr_18_2,
	sr_19_2,
	sr_20_2,
	sr_21_2,
	sr_22_2,
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
	_13)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
output 	op_14;
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
output 	op_125;
input 	op_126;
output 	op_127;
input 	op_128;
output 	op_129;
input 	op_130;
output 	op_131;
input 	op_132;
output 	op_133;
input 	op_134;
output 	op_135;
input 	op_136;
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
input 	sr_18_2;
input 	sr_19_2;
input 	sr_20_2;
input 	sr_21_2;
input 	sr_22_2;
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
input 	_13;

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
wire \op_1~58 ;
wire \op_1~62 ;
wire \op_1~66 ;
wire \op_1~70 ;
wire \op_1~74 ;
wire \op_1~78 ;
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
	.datad(!sr_19_2),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~42_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_14),
	.cout(\op_1~6 ),
	.shareout());
defparam \op_1~5 .extended_lut = "off";
defparam \op_1~5 .lut_mask = 64'h00000000000000FF;
defparam \op_1~5 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_20_2),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_15),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_21_2),
	.datad(!op_16),
	.datae(gnd),
	.dataf(!op_12),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_17),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_11),
	.datab(!sr_22_2),
	.datac(!op_12),
	.datad(!op_18),
	.datae(gnd),
	.dataf(!op_13),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_19),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h0000FF00000041EB;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_),
	.datad(!op_110),
	.datae(gnd),
	.dataf(!sr_0_0),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_111),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_1),
	.datad(!op_112),
	.datae(gnd),
	.dataf(!sr_1_0),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_113),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~29 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_2),
	.datad(!op_114),
	.datae(gnd),
	.dataf(!sr_2_0),
	.datag(gnd),
	.cin(\op_1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_115),
	.cout(\op_1~30 ),
	.shareout());
defparam \op_1~29 .extended_lut = "off";
defparam \op_1~29 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~29 .shared_arith = "off";

cyclonev_lcell_comb \op_1~33 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_3),
	.datad(!op_116),
	.datae(gnd),
	.dataf(!sr_3_0),
	.datag(gnd),
	.cin(\op_1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_117),
	.cout(\op_1~34 ),
	.shareout());
defparam \op_1~33 .extended_lut = "off";
defparam \op_1~33 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~33 .shared_arith = "off";

cyclonev_lcell_comb \op_1~45 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_4),
	.datad(!op_118),
	.datae(gnd),
	.dataf(!sr_4_0),
	.datag(gnd),
	.cin(\op_1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_119),
	.cout(\op_1~46 ),
	.shareout());
defparam \op_1~45 .extended_lut = "off";
defparam \op_1~45 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~45 .shared_arith = "off";

cyclonev_lcell_comb \op_1~49 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_5),
	.datad(!op_120),
	.datae(gnd),
	.dataf(!sr_5_0),
	.datag(gnd),
	.cin(\op_1~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_121),
	.cout(\op_1~50 ),
	.shareout());
defparam \op_1~49 .extended_lut = "off";
defparam \op_1~49 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~49 .shared_arith = "off";

cyclonev_lcell_comb \op_1~53 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_6),
	.datad(!op_122),
	.datae(gnd),
	.dataf(!sr_6_0),
	.datag(gnd),
	.cin(\op_1~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_123),
	.cout(\op_1~54 ),
	.shareout());
defparam \op_1~53 .extended_lut = "off";
defparam \op_1~53 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~53 .shared_arith = "off";

cyclonev_lcell_comb \op_1~57 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_7),
	.datad(!op_124),
	.datae(gnd),
	.dataf(!sr_7_0),
	.datag(gnd),
	.cin(\op_1~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_125),
	.cout(\op_1~58 ),
	.shareout());
defparam \op_1~57 .extended_lut = "off";
defparam \op_1~57 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~57 .shared_arith = "off";

cyclonev_lcell_comb \op_1~61 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_8),
	.datad(!op_126),
	.datae(gnd),
	.dataf(!sr_8_0),
	.datag(gnd),
	.cin(\op_1~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_127),
	.cout(\op_1~62 ),
	.shareout());
defparam \op_1~61 .extended_lut = "off";
defparam \op_1~61 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~61 .shared_arith = "off";

cyclonev_lcell_comb \op_1~65 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_9),
	.datad(!op_128),
	.datae(gnd),
	.dataf(!sr_9_0),
	.datag(gnd),
	.cin(\op_1~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_129),
	.cout(\op_1~66 ),
	.shareout());
defparam \op_1~65 .extended_lut = "off";
defparam \op_1~65 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~65 .shared_arith = "off";

cyclonev_lcell_comb \op_1~69 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_10),
	.datad(!op_130),
	.datae(gnd),
	.dataf(!sr_10_0),
	.datag(gnd),
	.cin(\op_1~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_131),
	.cout(\op_1~70 ),
	.shareout());
defparam \op_1~69 .extended_lut = "off";
defparam \op_1~69 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~69 .shared_arith = "off";

cyclonev_lcell_comb \op_1~73 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_11),
	.datad(!op_132),
	.datae(gnd),
	.dataf(!sr_11_0),
	.datag(gnd),
	.cin(\op_1~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_133),
	.cout(\op_1~74 ),
	.shareout());
defparam \op_1~73 .extended_lut = "off";
defparam \op_1~73 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~73 .shared_arith = "off";

cyclonev_lcell_comb \op_1~77 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_12),
	.datad(!op_134),
	.datae(gnd),
	.dataf(!sr_12_0),
	.datag(gnd),
	.cin(\op_1~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_135),
	.cout(\op_1~78 ),
	.shareout());
defparam \op_1~77 .extended_lut = "off";
defparam \op_1~77 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~77 .shared_arith = "off";

cyclonev_lcell_comb \op_1~38 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_13),
	.datad(!op_136),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~38_cout ),
	.shareout());
defparam \op_1~38 .extended_lut = "off";
defparam \op_1~38 .lut_mask = 64'h00000000000005AF;
defparam \op_1~38 .shared_arith = "off";

cyclonev_lcell_comb \op_1~42 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_18_2),
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

module sqrt_52_lpm_add_sub_9 (
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
	op_128,
	op_129,
	op_130,
	op_131,
	op_132,
	op_133,
	op_134,
	op_135,
	op_136,
	op_137,
	op_138,
	op_139,
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
	sr_16_2,
	sr_17_2,
	sr_18_2,
	sr_19_2,
	sr_20_2,
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
	_14)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
output 	op_15;
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
output 	op_128;
input 	op_129;
output 	op_130;
input 	op_131;
output 	op_132;
input 	op_133;
output 	op_134;
input 	op_135;
output 	op_136;
input 	op_137;
output 	op_138;
input 	op_139;
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
input 	sr_16_2;
input 	sr_17_2;
input 	sr_18_2;
input 	sr_19_2;
input 	sr_20_2;
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
input 	_13;
input 	_14;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_52_add_sub_ajc auto_generated(
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
	.op_128(op_128),
	.op_129(op_129),
	.op_130(op_130),
	.op_131(op_131),
	.op_132(op_132),
	.op_133(op_133),
	.op_134(op_134),
	.op_135(op_135),
	.op_136(op_136),
	.op_137(op_137),
	.op_138(op_138),
	.op_139(op_139),
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
	.sr_16_2(sr_16_2),
	.sr_17_2(sr_17_2),
	.sr_18_2(sr_18_2),
	.sr_19_2(sr_19_2),
	.sr_20_2(sr_20_2),
	._(_),
	._1(_1),
	._2(_2),
	._3(_3),
	._4(_4),
	._5(_5),
	._6(_6),
	._7(_7),
	._8(_8),
	._9(_9),
	._10(_10),
	._11(_11),
	._12(_12),
	._13(_13),
	._14(_14));

endmodule

module sqrt_52_add_sub_ajc (
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
	op_128,
	op_129,
	op_130,
	op_131,
	op_132,
	op_133,
	op_134,
	op_135,
	op_136,
	op_137,
	op_138,
	op_139,
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
	sr_16_2,
	sr_17_2,
	sr_18_2,
	sr_19_2,
	sr_20_2,
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
	_14)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
output 	op_15;
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
output 	op_128;
input 	op_129;
output 	op_130;
input 	op_131;
output 	op_132;
input 	op_133;
output 	op_134;
input 	op_135;
output 	op_136;
input 	op_137;
output 	op_138;
input 	op_139;
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
input 	sr_16_2;
input 	sr_17_2;
input 	sr_18_2;
input 	sr_19_2;
input 	sr_20_2;
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
input 	_13;
input 	_14;

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
wire \op_1~62 ;
wire \op_1~66 ;
wire \op_1~70 ;
wire \op_1~74 ;
wire \op_1~78 ;
wire \op_1~82 ;
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
	.datad(!sr_17_2),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~50_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_15),
	.cout(\op_1~6 ),
	.shareout());
defparam \op_1~5 .extended_lut = "off";
defparam \op_1~5 .lut_mask = 64'h00000000000000FF;
defparam \op_1~5 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_18_2),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_16),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_19_2),
	.datad(!op_17),
	.datae(gnd),
	.dataf(!op_12),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_18),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_11),
	.datab(!sr_20_2),
	.datac(!op_12),
	.datad(!op_19),
	.datae(gnd),
	.dataf(!op_13),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_110),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h0000FF00000041EB;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_),
	.datad(!op_111),
	.datae(gnd),
	.dataf(!op_14),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_112),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_1),
	.datad(!op_113),
	.datae(gnd),
	.dataf(!sr_0_0),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_114),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~29 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_2),
	.datad(!op_115),
	.datae(gnd),
	.dataf(!sr_1_0),
	.datag(gnd),
	.cin(\op_1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_116),
	.cout(\op_1~30 ),
	.shareout());
defparam \op_1~29 .extended_lut = "off";
defparam \op_1~29 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~29 .shared_arith = "off";

cyclonev_lcell_comb \op_1~33 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_3),
	.datad(!op_117),
	.datae(gnd),
	.dataf(!sr_2_0),
	.datag(gnd),
	.cin(\op_1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_118),
	.cout(\op_1~34 ),
	.shareout());
defparam \op_1~33 .extended_lut = "off";
defparam \op_1~33 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~33 .shared_arith = "off";

cyclonev_lcell_comb \op_1~37 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_4),
	.datad(!op_119),
	.datae(gnd),
	.dataf(!sr_3_0),
	.datag(gnd),
	.cin(\op_1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_120),
	.cout(\op_1~38 ),
	.shareout());
defparam \op_1~37 .extended_lut = "off";
defparam \op_1~37 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~37 .shared_arith = "off";

cyclonev_lcell_comb \op_1~41 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_5),
	.datad(!op_121),
	.datae(gnd),
	.dataf(!sr_4_0),
	.datag(gnd),
	.cin(\op_1~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_122),
	.cout(\op_1~42 ),
	.shareout());
defparam \op_1~41 .extended_lut = "off";
defparam \op_1~41 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~41 .shared_arith = "off";

cyclonev_lcell_comb \op_1~53 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_6),
	.datad(!op_123),
	.datae(gnd),
	.dataf(!sr_5_0),
	.datag(gnd),
	.cin(\op_1~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_124),
	.cout(\op_1~54 ),
	.shareout());
defparam \op_1~53 .extended_lut = "off";
defparam \op_1~53 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~53 .shared_arith = "off";

cyclonev_lcell_comb \op_1~57 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_7),
	.datad(!op_125),
	.datae(gnd),
	.dataf(!sr_6_0),
	.datag(gnd),
	.cin(\op_1~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_126),
	.cout(\op_1~58 ),
	.shareout());
defparam \op_1~57 .extended_lut = "off";
defparam \op_1~57 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~57 .shared_arith = "off";

cyclonev_lcell_comb \op_1~61 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_8),
	.datad(!op_127),
	.datae(gnd),
	.dataf(!sr_7_0),
	.datag(gnd),
	.cin(\op_1~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_128),
	.cout(\op_1~62 ),
	.shareout());
defparam \op_1~61 .extended_lut = "off";
defparam \op_1~61 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~61 .shared_arith = "off";

cyclonev_lcell_comb \op_1~65 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_9),
	.datad(!op_129),
	.datae(gnd),
	.dataf(!sr_8_0),
	.datag(gnd),
	.cin(\op_1~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_130),
	.cout(\op_1~66 ),
	.shareout());
defparam \op_1~65 .extended_lut = "off";
defparam \op_1~65 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~65 .shared_arith = "off";

cyclonev_lcell_comb \op_1~69 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_10),
	.datad(!op_131),
	.datae(gnd),
	.dataf(!sr_9_0),
	.datag(gnd),
	.cin(\op_1~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_132),
	.cout(\op_1~70 ),
	.shareout());
defparam \op_1~69 .extended_lut = "off";
defparam \op_1~69 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~69 .shared_arith = "off";

cyclonev_lcell_comb \op_1~73 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_11),
	.datad(!op_133),
	.datae(gnd),
	.dataf(!sr_10_0),
	.datag(gnd),
	.cin(\op_1~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_134),
	.cout(\op_1~74 ),
	.shareout());
defparam \op_1~73 .extended_lut = "off";
defparam \op_1~73 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~73 .shared_arith = "off";

cyclonev_lcell_comb \op_1~77 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_12),
	.datad(!op_135),
	.datae(gnd),
	.dataf(!sr_11_0),
	.datag(gnd),
	.cin(\op_1~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_136),
	.cout(\op_1~78 ),
	.shareout());
defparam \op_1~77 .extended_lut = "off";
defparam \op_1~77 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~77 .shared_arith = "off";

cyclonev_lcell_comb \op_1~81 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_13),
	.datad(!op_137),
	.datae(gnd),
	.dataf(!sr_12_0),
	.datag(gnd),
	.cin(\op_1~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_138),
	.cout(\op_1~82 ),
	.shareout());
defparam \op_1~81 .extended_lut = "off";
defparam \op_1~81 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~81 .shared_arith = "off";

cyclonev_lcell_comb \op_1~46 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_14),
	.datad(!op_139),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~82 ),
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
	.datad(!sr_16_2),
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

module sqrt_52_lpm_add_sub_10 (
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
	op_128,
	op_129,
	op_130,
	op_131,
	op_132,
	op_133,
	op_134,
	op_135,
	op_136,
	op_137,
	op_138,
	op_139,
	op_140,
	op_141,
	op_142,
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
	sr_14_2,
	sr_15_2,
	sr_16_2,
	sr_17_2,
	sr_18_2,
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
	_15)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
input 	op_15;
output 	op_16;
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
output 	op_125;
input 	op_126;
output 	op_127;
input 	op_128;
output 	op_129;
input 	op_130;
output 	op_131;
input 	op_132;
output 	op_133;
input 	op_134;
output 	op_135;
input 	op_136;
output 	op_137;
input 	op_138;
output 	op_139;
input 	op_140;
output 	op_141;
input 	op_142;
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
input 	sr_14_2;
input 	sr_15_2;
input 	sr_16_2;
input 	sr_17_2;
input 	sr_18_2;
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
input 	_13;
input 	_14;
input 	_15;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_52_add_sub_bjc auto_generated(
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
	.op_128(op_128),
	.op_129(op_129),
	.op_130(op_130),
	.op_131(op_131),
	.op_132(op_132),
	.op_133(op_133),
	.op_134(op_134),
	.op_135(op_135),
	.op_136(op_136),
	.op_137(op_137),
	.op_138(op_138),
	.op_139(op_139),
	.op_140(op_140),
	.op_141(op_141),
	.op_142(op_142),
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
	.sr_14_2(sr_14_2),
	.sr_15_2(sr_15_2),
	.sr_16_2(sr_16_2),
	.sr_17_2(sr_17_2),
	.sr_18_2(sr_18_2),
	._(_),
	._1(_1),
	._2(_2),
	._3(_3),
	._4(_4),
	._5(_5),
	._6(_6),
	._7(_7),
	._8(_8),
	._9(_9),
	._10(_10),
	._11(_11),
	._12(_12),
	._13(_13),
	._14(_14),
	._15(_15));

endmodule

module sqrt_52_add_sub_bjc (
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
	op_128,
	op_129,
	op_130,
	op_131,
	op_132,
	op_133,
	op_134,
	op_135,
	op_136,
	op_137,
	op_138,
	op_139,
	op_140,
	op_141,
	op_142,
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
	sr_14_2,
	sr_15_2,
	sr_16_2,
	sr_17_2,
	sr_18_2,
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
	_15)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
input 	op_15;
output 	op_16;
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
output 	op_125;
input 	op_126;
output 	op_127;
input 	op_128;
output 	op_129;
input 	op_130;
output 	op_131;
input 	op_132;
output 	op_133;
input 	op_134;
output 	op_135;
input 	op_136;
output 	op_137;
input 	op_138;
output 	op_139;
input 	op_140;
output 	op_141;
input 	op_142;
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
input 	sr_14_2;
input 	sr_15_2;
input 	sr_16_2;
input 	sr_17_2;
input 	sr_18_2;
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
input 	_13;
input 	_14;
input 	_15;

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
wire \op_1~66 ;
wire \op_1~70 ;
wire \op_1~74 ;
wire \op_1~78 ;
wire \op_1~82 ;
wire \op_1~86 ;
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
	.datad(!sr_15_2),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~58_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_16),
	.cout(\op_1~6 ),
	.shareout());
defparam \op_1~5 .extended_lut = "off";
defparam \op_1~5 .lut_mask = 64'h00000000000000FF;
defparam \op_1~5 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_16_2),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_17),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_17_2),
	.datad(!op_18),
	.datae(gnd),
	.dataf(!op_12),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_19),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_11),
	.datab(!sr_18_2),
	.datac(!op_12),
	.datad(!op_110),
	.datae(gnd),
	.dataf(!op_13),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_111),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h0000FF00000041EB;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_),
	.datad(!op_112),
	.datae(gnd),
	.dataf(!op_14),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_113),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_1),
	.datad(!op_114),
	.datae(gnd),
	.dataf(!op_15),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_115),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~29 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_2),
	.datad(!op_116),
	.datae(gnd),
	.dataf(!sr_0_0),
	.datag(gnd),
	.cin(\op_1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_117),
	.cout(\op_1~30 ),
	.shareout());
defparam \op_1~29 .extended_lut = "off";
defparam \op_1~29 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~29 .shared_arith = "off";

cyclonev_lcell_comb \op_1~33 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_3),
	.datad(!op_118),
	.datae(gnd),
	.dataf(!sr_1_0),
	.datag(gnd),
	.cin(\op_1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_119),
	.cout(\op_1~34 ),
	.shareout());
defparam \op_1~33 .extended_lut = "off";
defparam \op_1~33 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~33 .shared_arith = "off";

cyclonev_lcell_comb \op_1~37 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_4),
	.datad(!op_120),
	.datae(gnd),
	.dataf(!sr_2_0),
	.datag(gnd),
	.cin(\op_1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_121),
	.cout(\op_1~38 ),
	.shareout());
defparam \op_1~37 .extended_lut = "off";
defparam \op_1~37 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~37 .shared_arith = "off";

cyclonev_lcell_comb \op_1~41 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_5),
	.datad(!op_122),
	.datae(gnd),
	.dataf(!sr_3_0),
	.datag(gnd),
	.cin(\op_1~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_123),
	.cout(\op_1~42 ),
	.shareout());
defparam \op_1~41 .extended_lut = "off";
defparam \op_1~41 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~41 .shared_arith = "off";

cyclonev_lcell_comb \op_1~45 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_6),
	.datad(!op_124),
	.datae(gnd),
	.dataf(!sr_4_0),
	.datag(gnd),
	.cin(\op_1~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_125),
	.cout(\op_1~46 ),
	.shareout());
defparam \op_1~45 .extended_lut = "off";
defparam \op_1~45 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~45 .shared_arith = "off";

cyclonev_lcell_comb \op_1~49 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_7),
	.datad(!op_126),
	.datae(gnd),
	.dataf(!sr_5_0),
	.datag(gnd),
	.cin(\op_1~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_127),
	.cout(\op_1~50 ),
	.shareout());
defparam \op_1~49 .extended_lut = "off";
defparam \op_1~49 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~49 .shared_arith = "off";

cyclonev_lcell_comb \op_1~61 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_8),
	.datad(!op_128),
	.datae(gnd),
	.dataf(!sr_6_0),
	.datag(gnd),
	.cin(\op_1~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_129),
	.cout(\op_1~62 ),
	.shareout());
defparam \op_1~61 .extended_lut = "off";
defparam \op_1~61 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~61 .shared_arith = "off";

cyclonev_lcell_comb \op_1~65 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_9),
	.datad(!op_130),
	.datae(gnd),
	.dataf(!sr_7_0),
	.datag(gnd),
	.cin(\op_1~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_131),
	.cout(\op_1~66 ),
	.shareout());
defparam \op_1~65 .extended_lut = "off";
defparam \op_1~65 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~65 .shared_arith = "off";

cyclonev_lcell_comb \op_1~69 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_10),
	.datad(!op_132),
	.datae(gnd),
	.dataf(!sr_8_0),
	.datag(gnd),
	.cin(\op_1~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_133),
	.cout(\op_1~70 ),
	.shareout());
defparam \op_1~69 .extended_lut = "off";
defparam \op_1~69 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~69 .shared_arith = "off";

cyclonev_lcell_comb \op_1~73 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_11),
	.datad(!op_134),
	.datae(gnd),
	.dataf(!sr_9_0),
	.datag(gnd),
	.cin(\op_1~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_135),
	.cout(\op_1~74 ),
	.shareout());
defparam \op_1~73 .extended_lut = "off";
defparam \op_1~73 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~73 .shared_arith = "off";

cyclonev_lcell_comb \op_1~77 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_12),
	.datad(!op_136),
	.datae(gnd),
	.dataf(!sr_10_0),
	.datag(gnd),
	.cin(\op_1~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_137),
	.cout(\op_1~78 ),
	.shareout());
defparam \op_1~77 .extended_lut = "off";
defparam \op_1~77 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~77 .shared_arith = "off";

cyclonev_lcell_comb \op_1~81 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_13),
	.datad(!op_138),
	.datae(gnd),
	.dataf(!sr_11_0),
	.datag(gnd),
	.cin(\op_1~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_139),
	.cout(\op_1~82 ),
	.shareout());
defparam \op_1~81 .extended_lut = "off";
defparam \op_1~81 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~81 .shared_arith = "off";

cyclonev_lcell_comb \op_1~85 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_14),
	.datad(!op_140),
	.datae(gnd),
	.dataf(!sr_12_0),
	.datag(gnd),
	.cin(\op_1~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_141),
	.cout(\op_1~86 ),
	.shareout());
defparam \op_1~85 .extended_lut = "off";
defparam \op_1~85 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~85 .shared_arith = "off";

cyclonev_lcell_comb \op_1~54 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_15),
	.datad(!op_142),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~86 ),
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
	.datad(!sr_14_2),
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

module sqrt_52_lpm_add_sub_11 (
	op_1,
	op_11,
	op_12,
	op_13,
	sr_2_0,
	op_14,
	sr_3_0,
	op_15,
	sr_4_0,
	op_16,
	sr_5_0,
	op_17,
	sr_6_0,
	op_18,
	sr_7_0,
	op_19,
	sr_8_0,
	op_110,
	sr_9_0,
	op_111,
	sr_10_0,
	op_112,
	sr_11_0,
	op_113,
	sr_12_0,
	op_114,
	sr_13_0,
	op_115,
	sr_14_0,
	op_116,
	sr_15_0,
	op_117,
	sr_16_0,
	op_118,
	sr_17_0,
	op_119,
	sr_18_0,
	op_120,
	sr_19_0,
	sr_0_0,
	sr_1_0,
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
	sr_13_01,
	sr_14_01,
	sr_15_01,
	sr_16_01,
	sr_17_01,
	sr_18_01,
	sr_12_3,
	sr_13_3,
	sr_0_01,
	sr_1_01)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
output 	op_12;
output 	op_13;
input 	sr_2_0;
output 	op_14;
input 	sr_3_0;
output 	op_15;
input 	sr_4_0;
output 	op_16;
input 	sr_5_0;
output 	op_17;
input 	sr_6_0;
output 	op_18;
input 	sr_7_0;
output 	op_19;
input 	sr_8_0;
output 	op_110;
input 	sr_9_0;
output 	op_111;
input 	sr_10_0;
output 	op_112;
input 	sr_11_0;
output 	op_113;
input 	sr_12_0;
output 	op_114;
input 	sr_13_0;
output 	op_115;
input 	sr_14_0;
output 	op_116;
input 	sr_15_0;
output 	op_117;
input 	sr_16_0;
output 	op_118;
input 	sr_17_0;
output 	op_119;
input 	sr_18_0;
output 	op_120;
input 	sr_19_0;
input 	sr_0_0;
input 	sr_1_0;
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
input 	sr_13_01;
input 	sr_14_01;
input 	sr_15_01;
input 	sr_16_01;
input 	sr_17_01;
input 	sr_18_01;
input 	sr_12_3;
input 	sr_13_3;
input 	sr_0_01;
input 	sr_1_01;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_52_add_sub_cjc auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.sr_2_0(sr_2_0),
	.op_14(op_14),
	.sr_3_0(sr_3_0),
	.op_15(op_15),
	.sr_4_0(sr_4_0),
	.op_16(op_16),
	.sr_5_0(sr_5_0),
	.op_17(op_17),
	.sr_6_0(sr_6_0),
	.op_18(op_18),
	.sr_7_0(sr_7_0),
	.op_19(op_19),
	.sr_8_0(sr_8_0),
	.op_110(op_110),
	.sr_9_0(sr_9_0),
	.op_111(op_111),
	.sr_10_0(sr_10_0),
	.op_112(op_112),
	.sr_11_0(sr_11_0),
	.op_113(op_113),
	.sr_12_0(sr_12_0),
	.op_114(op_114),
	.sr_13_0(sr_13_0),
	.op_115(op_115),
	.sr_14_0(sr_14_0),
	.op_116(op_116),
	.sr_15_0(sr_15_0),
	.op_117(op_117),
	.sr_16_0(sr_16_0),
	.op_118(op_118),
	.sr_17_0(sr_17_0),
	.op_119(op_119),
	.sr_18_0(sr_18_0),
	.op_120(op_120),
	.sr_19_0(sr_19_0),
	.sr_0_0(sr_0_0),
	.sr_1_0(sr_1_0),
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
	.sr_13_01(sr_13_01),
	.sr_14_01(sr_14_01),
	.sr_15_01(sr_15_01),
	.sr_16_01(sr_16_01),
	.sr_17_01(sr_17_01),
	.sr_18_01(sr_18_01),
	.sr_12_3(sr_12_3),
	.sr_13_3(sr_13_3),
	.sr_0_01(sr_0_01),
	.sr_1_01(sr_1_01));

endmodule

module sqrt_52_add_sub_cjc (
	op_1,
	op_11,
	op_12,
	op_13,
	sr_2_0,
	op_14,
	sr_3_0,
	op_15,
	sr_4_0,
	op_16,
	sr_5_0,
	op_17,
	sr_6_0,
	op_18,
	sr_7_0,
	op_19,
	sr_8_0,
	op_110,
	sr_9_0,
	op_111,
	sr_10_0,
	op_112,
	sr_11_0,
	op_113,
	sr_12_0,
	op_114,
	sr_13_0,
	op_115,
	sr_14_0,
	op_116,
	sr_15_0,
	op_117,
	sr_16_0,
	op_118,
	sr_17_0,
	op_119,
	sr_18_0,
	op_120,
	sr_19_0,
	sr_0_0,
	sr_1_0,
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
	sr_13_01,
	sr_14_01,
	sr_15_01,
	sr_16_01,
	sr_17_01,
	sr_18_01,
	sr_12_3,
	sr_13_3,
	sr_0_01,
	sr_1_01)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
output 	op_12;
output 	op_13;
input 	sr_2_0;
output 	op_14;
input 	sr_3_0;
output 	op_15;
input 	sr_4_0;
output 	op_16;
input 	sr_5_0;
output 	op_17;
input 	sr_6_0;
output 	op_18;
input 	sr_7_0;
output 	op_19;
input 	sr_8_0;
output 	op_110;
input 	sr_9_0;
output 	op_111;
input 	sr_10_0;
output 	op_112;
input 	sr_11_0;
output 	op_113;
input 	sr_12_0;
output 	op_114;
input 	sr_13_0;
output 	op_115;
input 	sr_14_0;
output 	op_116;
input 	sr_15_0;
output 	op_117;
input 	sr_16_0;
output 	op_118;
input 	sr_17_0;
output 	op_119;
input 	sr_18_0;
output 	op_120;
input 	sr_19_0;
input 	sr_0_0;
input 	sr_1_0;
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
input 	sr_13_01;
input 	sr_14_01;
input 	sr_15_01;
input 	sr_16_01;
input 	sr_17_01;
input 	sr_18_01;
input 	sr_12_3;
input 	sr_13_3;
input 	sr_0_01;
input 	sr_1_01;

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
wire \op_1~70 ;
wire \op_1~74 ;
wire \op_1~78 ;
wire \op_1~82 ;
wire \op_1~86 ;
wire \op_1~90 ;
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
	.datad(!sr_13_3),
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
	.datad(!sr_2_0),
	.datae(gnd),
	.dataf(!sr_2_01),
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
	.datad(!sr_3_0),
	.datae(gnd),
	.dataf(!sr_3_01),
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
	.datad(!sr_4_0),
	.datae(gnd),
	.dataf(!sr_4_01),
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
	.datad(!sr_5_0),
	.datae(gnd),
	.dataf(!sr_5_01),
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
	.datad(!sr_6_0),
	.datae(gnd),
	.dataf(!sr_6_01),
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
	.datad(!sr_7_0),
	.datae(gnd),
	.dataf(!sr_7_01),
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
	.datad(!sr_8_0),
	.datae(gnd),
	.dataf(!sr_8_01),
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
	.datad(!sr_9_0),
	.datae(gnd),
	.dataf(!sr_9_01),
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
	.datad(!sr_10_0),
	.datae(gnd),
	.dataf(!sr_10_01),
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
	.datad(!sr_11_0),
	.datae(gnd),
	.dataf(!sr_11_01),
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
	.datad(!sr_12_0),
	.datae(gnd),
	.dataf(!sr_12_01),
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

cyclonev_lcell_comb \op_1~69 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_13_0),
	.datae(gnd),
	.dataf(!sr_13_01),
	.datag(gnd),
	.cin(\op_1~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_115),
	.cout(\op_1~70 ),
	.shareout());
defparam \op_1~69 .extended_lut = "off";
defparam \op_1~69 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~69 .shared_arith = "off";

cyclonev_lcell_comb \op_1~73 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_14_0),
	.datae(gnd),
	.dataf(!sr_14_01),
	.datag(gnd),
	.cin(\op_1~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_116),
	.cout(\op_1~74 ),
	.shareout());
defparam \op_1~73 .extended_lut = "off";
defparam \op_1~73 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~73 .shared_arith = "off";

cyclonev_lcell_comb \op_1~77 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_15_0),
	.datae(gnd),
	.dataf(!sr_15_01),
	.datag(gnd),
	.cin(\op_1~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_117),
	.cout(\op_1~78 ),
	.shareout());
defparam \op_1~77 .extended_lut = "off";
defparam \op_1~77 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~77 .shared_arith = "off";

cyclonev_lcell_comb \op_1~81 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_16_0),
	.datae(gnd),
	.dataf(!sr_16_01),
	.datag(gnd),
	.cin(\op_1~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_118),
	.cout(\op_1~82 ),
	.shareout());
defparam \op_1~81 .extended_lut = "off";
defparam \op_1~81 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~81 .shared_arith = "off";

cyclonev_lcell_comb \op_1~85 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_17_0),
	.datae(gnd),
	.dataf(!sr_17_01),
	.datag(gnd),
	.cin(\op_1~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_119),
	.cout(\op_1~86 ),
	.shareout());
defparam \op_1~85 .extended_lut = "off";
defparam \op_1~85 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~85 .shared_arith = "off";

cyclonev_lcell_comb \op_1~89 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_18_0),
	.datae(gnd),
	.dataf(!sr_18_01),
	.datag(gnd),
	.cin(\op_1~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_120),
	.cout(\op_1~90 ),
	.shareout());
defparam \op_1~89 .extended_lut = "off";
defparam \op_1~89 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~89 .shared_arith = "off";

cyclonev_lcell_comb \op_1~62 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_19_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~90 ),
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
	.datad(!sr_12_3),
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

module sqrt_52_lpm_add_sub_12 (
	op_1,
	op_11,
	radical_50,
	radical_48,
	radical_49,
	radical_51)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
input 	radical_50;
input 	radical_48;
input 	radical_49;
input 	radical_51;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_52_add_sub_shc auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.radical_50(radical_50),
	.radical_48(radical_48),
	.radical_49(radical_49),
	.radical_51(radical_51));

endmodule

module sqrt_52_add_sub_shc (
	op_1,
	op_11,
	radical_50,
	radical_48,
	radical_49,
	radical_51)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
input 	radical_50;
input 	radical_48;
input 	radical_49;
input 	radical_51;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



cyclonev_lcell_comb \op_1~0 (
	.dataa(!radical_50),
	.datab(!radical_48),
	.datac(!radical_49),
	.datad(!radical_51),
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
defparam \op_1~0 .lut_mask = 64'h2A7F2A7F2A7F2A7F;
defparam \op_1~0 .shared_arith = "off";

cyclonev_lcell_comb \op_1~1 (
	.dataa(!radical_50),
	.datab(!radical_48),
	.datac(!radical_49),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(op_11),
	.sumout(),
	.cout(),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'h6A6A6A6A6A6A6A6A;
defparam \op_1~1 .shared_arith = "off";

endmodule

module sqrt_52_lpm_add_sub_13 (
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
	sr_2_0,
	op_110,
	op_111,
	sr_3_0,
	op_112,
	op_113,
	sr_4_0,
	op_114,
	op_115,
	sr_5_0,
	op_116,
	op_117,
	sr_6_0,
	op_118,
	op_119,
	sr_7_0,
	op_120,
	op_121,
	sr_8_0,
	op_122,
	op_123,
	sr_9_0,
	op_124,
	op_125,
	sr_10_0,
	op_126,
	op_127,
	sr_11_0,
	op_128,
	op_129,
	sr_12_0,
	op_130,
	op_131,
	sr_13_0,
	op_132,
	op_133,
	sr_14_0,
	op_134,
	op_135,
	sr_15_0,
	op_136,
	op_137,
	sr_16_0,
	op_138,
	op_139,
	sr_17_0,
	op_140,
	op_141,
	sr_18_0,
	op_142,
	sr_0_0,
	sr_1_0,
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
	sr_13_01,
	sr_14_01,
	sr_15_01,
	sr_16_01,
	sr_17_01,
	sr_18_01,
	sr_10_3,
	sr_11_3,
	sr_12_3,
	sr_13_3,
	sr_0_01,
	sr_1_01)/* synthesis synthesis_greybox=0 */;
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
input 	sr_2_0;
input 	op_110;
output 	op_111;
input 	sr_3_0;
input 	op_112;
output 	op_113;
input 	sr_4_0;
input 	op_114;
output 	op_115;
input 	sr_5_0;
input 	op_116;
output 	op_117;
input 	sr_6_0;
input 	op_118;
output 	op_119;
input 	sr_7_0;
input 	op_120;
output 	op_121;
input 	sr_8_0;
input 	op_122;
output 	op_123;
input 	sr_9_0;
input 	op_124;
output 	op_125;
input 	sr_10_0;
input 	op_126;
output 	op_127;
input 	sr_11_0;
input 	op_128;
output 	op_129;
input 	sr_12_0;
input 	op_130;
output 	op_131;
input 	sr_13_0;
input 	op_132;
output 	op_133;
input 	sr_14_0;
input 	op_134;
output 	op_135;
input 	sr_15_0;
input 	op_136;
output 	op_137;
input 	sr_16_0;
input 	op_138;
output 	op_139;
input 	sr_17_0;
input 	op_140;
output 	op_141;
input 	sr_18_0;
input 	op_142;
input 	sr_0_0;
input 	sr_1_0;
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
input 	sr_13_01;
input 	sr_14_01;
input 	sr_15_01;
input 	sr_16_01;
input 	sr_17_01;
input 	sr_18_01;
input 	sr_10_3;
input 	sr_11_3;
input 	sr_12_3;
input 	sr_13_3;
input 	sr_0_01;
input 	sr_1_01;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_52_add_sub_djc auto_generated(
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
	.sr_2_0(sr_2_0),
	.op_110(op_110),
	.op_111(op_111),
	.sr_3_0(sr_3_0),
	.op_112(op_112),
	.op_113(op_113),
	.sr_4_0(sr_4_0),
	.op_114(op_114),
	.op_115(op_115),
	.sr_5_0(sr_5_0),
	.op_116(op_116),
	.op_117(op_117),
	.sr_6_0(sr_6_0),
	.op_118(op_118),
	.op_119(op_119),
	.sr_7_0(sr_7_0),
	.op_120(op_120),
	.op_121(op_121),
	.sr_8_0(sr_8_0),
	.op_122(op_122),
	.op_123(op_123),
	.sr_9_0(sr_9_0),
	.op_124(op_124),
	.op_125(op_125),
	.sr_10_0(sr_10_0),
	.op_126(op_126),
	.op_127(op_127),
	.sr_11_0(sr_11_0),
	.op_128(op_128),
	.op_129(op_129),
	.sr_12_0(sr_12_0),
	.op_130(op_130),
	.op_131(op_131),
	.sr_13_0(sr_13_0),
	.op_132(op_132),
	.op_133(op_133),
	.sr_14_0(sr_14_0),
	.op_134(op_134),
	.op_135(op_135),
	.sr_15_0(sr_15_0),
	.op_136(op_136),
	.op_137(op_137),
	.sr_16_0(sr_16_0),
	.op_138(op_138),
	.op_139(op_139),
	.sr_17_0(sr_17_0),
	.op_140(op_140),
	.op_141(op_141),
	.sr_18_0(sr_18_0),
	.op_142(op_142),
	.sr_0_0(sr_0_0),
	.sr_1_0(sr_1_0),
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
	.sr_13_01(sr_13_01),
	.sr_14_01(sr_14_01),
	.sr_15_01(sr_15_01),
	.sr_16_01(sr_16_01),
	.sr_17_01(sr_17_01),
	.sr_18_01(sr_18_01),
	.sr_10_3(sr_10_3),
	.sr_11_3(sr_11_3),
	.sr_12_3(sr_12_3),
	.sr_13_3(sr_13_3),
	.sr_0_01(sr_0_01),
	.sr_1_01(sr_1_01));

endmodule

module sqrt_52_add_sub_djc (
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
	sr_2_0,
	op_110,
	op_111,
	sr_3_0,
	op_112,
	op_113,
	sr_4_0,
	op_114,
	op_115,
	sr_5_0,
	op_116,
	op_117,
	sr_6_0,
	op_118,
	op_119,
	sr_7_0,
	op_120,
	op_121,
	sr_8_0,
	op_122,
	op_123,
	sr_9_0,
	op_124,
	op_125,
	sr_10_0,
	op_126,
	op_127,
	sr_11_0,
	op_128,
	op_129,
	sr_12_0,
	op_130,
	op_131,
	sr_13_0,
	op_132,
	op_133,
	sr_14_0,
	op_134,
	op_135,
	sr_15_0,
	op_136,
	op_137,
	sr_16_0,
	op_138,
	op_139,
	sr_17_0,
	op_140,
	op_141,
	sr_18_0,
	op_142,
	sr_0_0,
	sr_1_0,
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
	sr_13_01,
	sr_14_01,
	sr_15_01,
	sr_16_01,
	sr_17_01,
	sr_18_01,
	sr_10_3,
	sr_11_3,
	sr_12_3,
	sr_13_3,
	sr_0_01,
	sr_1_01)/* synthesis synthesis_greybox=0 */;
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
input 	sr_2_0;
input 	op_110;
output 	op_111;
input 	sr_3_0;
input 	op_112;
output 	op_113;
input 	sr_4_0;
input 	op_114;
output 	op_115;
input 	sr_5_0;
input 	op_116;
output 	op_117;
input 	sr_6_0;
input 	op_118;
output 	op_119;
input 	sr_7_0;
input 	op_120;
output 	op_121;
input 	sr_8_0;
input 	op_122;
output 	op_123;
input 	sr_9_0;
input 	op_124;
output 	op_125;
input 	sr_10_0;
input 	op_126;
output 	op_127;
input 	sr_11_0;
input 	op_128;
output 	op_129;
input 	sr_12_0;
input 	op_130;
output 	op_131;
input 	sr_13_0;
input 	op_132;
output 	op_133;
input 	sr_14_0;
input 	op_134;
output 	op_135;
input 	sr_15_0;
input 	op_136;
output 	op_137;
input 	sr_16_0;
input 	op_138;
output 	op_139;
input 	sr_17_0;
input 	op_140;
output 	op_141;
input 	sr_18_0;
input 	op_142;
input 	sr_0_0;
input 	sr_1_0;
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
input 	sr_13_01;
input 	sr_14_01;
input 	sr_15_01;
input 	sr_16_01;
input 	sr_17_01;
input 	sr_18_01;
input 	sr_10_3;
input 	sr_11_3;
input 	sr_12_3;
input 	sr_13_3;
input 	sr_0_01;
input 	sr_1_01;

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
wire \op_1~62 ;
wire \op_1~66 ;
wire \op_1~78 ;
wire \op_1~82 ;
wire \op_1~86 ;
wire \op_1~90 ;
wire \op_1~94 ;
wire \op_1~70_cout ;
wire \op_1~74_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~70_cout ),
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
	.datad(!sr_11_3),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~74_cout ),
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
	.datad(!sr_12_3),
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
	.datac(!sr_13_3),
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
	.dataf(!sr_2_01),
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
	.datac(!sr_2_0),
	.datad(!op_110),
	.datae(gnd),
	.dataf(!sr_3_01),
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
	.datac(!sr_3_0),
	.datad(!op_112),
	.datae(gnd),
	.dataf(!sr_4_01),
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
	.datac(!sr_4_0),
	.datad(!op_114),
	.datae(gnd),
	.dataf(!sr_5_01),
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
	.datac(!sr_5_0),
	.datad(!op_116),
	.datae(gnd),
	.dataf(!sr_6_01),
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
	.datac(!sr_6_0),
	.datad(!op_118),
	.datae(gnd),
	.dataf(!sr_7_01),
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

cyclonev_lcell_comb \op_1~45 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_7_0),
	.datad(!op_120),
	.datae(gnd),
	.dataf(!sr_8_01),
	.datag(gnd),
	.cin(\op_1~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_121),
	.cout(\op_1~46 ),
	.shareout());
defparam \op_1~45 .extended_lut = "off";
defparam \op_1~45 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~45 .shared_arith = "off";

cyclonev_lcell_comb \op_1~49 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_8_0),
	.datad(!op_122),
	.datae(gnd),
	.dataf(!sr_9_01),
	.datag(gnd),
	.cin(\op_1~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_123),
	.cout(\op_1~50 ),
	.shareout());
defparam \op_1~49 .extended_lut = "off";
defparam \op_1~49 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~49 .shared_arith = "off";

cyclonev_lcell_comb \op_1~53 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_9_0),
	.datad(!op_124),
	.datae(gnd),
	.dataf(!sr_10_01),
	.datag(gnd),
	.cin(\op_1~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_125),
	.cout(\op_1~54 ),
	.shareout());
defparam \op_1~53 .extended_lut = "off";
defparam \op_1~53 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~53 .shared_arith = "off";

cyclonev_lcell_comb \op_1~57 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_10_0),
	.datad(!op_126),
	.datae(gnd),
	.dataf(!sr_11_01),
	.datag(gnd),
	.cin(\op_1~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_127),
	.cout(\op_1~58 ),
	.shareout());
defparam \op_1~57 .extended_lut = "off";
defparam \op_1~57 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~57 .shared_arith = "off";

cyclonev_lcell_comb \op_1~61 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_11_0),
	.datad(!op_128),
	.datae(gnd),
	.dataf(!sr_12_01),
	.datag(gnd),
	.cin(\op_1~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_129),
	.cout(\op_1~62 ),
	.shareout());
defparam \op_1~61 .extended_lut = "off";
defparam \op_1~61 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~61 .shared_arith = "off";

cyclonev_lcell_comb \op_1~65 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_12_0),
	.datad(!op_130),
	.datae(gnd),
	.dataf(!sr_13_01),
	.datag(gnd),
	.cin(\op_1~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_131),
	.cout(\op_1~66 ),
	.shareout());
defparam \op_1~65 .extended_lut = "off";
defparam \op_1~65 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~65 .shared_arith = "off";

cyclonev_lcell_comb \op_1~77 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_13_0),
	.datad(!op_132),
	.datae(gnd),
	.dataf(!sr_14_01),
	.datag(gnd),
	.cin(\op_1~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_133),
	.cout(\op_1~78 ),
	.shareout());
defparam \op_1~77 .extended_lut = "off";
defparam \op_1~77 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~77 .shared_arith = "off";

cyclonev_lcell_comb \op_1~81 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_14_0),
	.datad(!op_134),
	.datae(gnd),
	.dataf(!sr_15_01),
	.datag(gnd),
	.cin(\op_1~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_135),
	.cout(\op_1~82 ),
	.shareout());
defparam \op_1~81 .extended_lut = "off";
defparam \op_1~81 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~81 .shared_arith = "off";

cyclonev_lcell_comb \op_1~85 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_15_0),
	.datad(!op_136),
	.datae(gnd),
	.dataf(!sr_16_01),
	.datag(gnd),
	.cin(\op_1~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_137),
	.cout(\op_1~86 ),
	.shareout());
defparam \op_1~85 .extended_lut = "off";
defparam \op_1~85 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~85 .shared_arith = "off";

cyclonev_lcell_comb \op_1~89 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_16_0),
	.datad(!op_138),
	.datae(gnd),
	.dataf(!sr_17_01),
	.datag(gnd),
	.cin(\op_1~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_139),
	.cout(\op_1~90 ),
	.shareout());
defparam \op_1~89 .extended_lut = "off";
defparam \op_1~89 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~89 .shared_arith = "off";

cyclonev_lcell_comb \op_1~93 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_17_0),
	.datad(!op_140),
	.datae(gnd),
	.dataf(!sr_18_01),
	.datag(gnd),
	.cin(\op_1~90 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_141),
	.cout(\op_1~94 ),
	.shareout());
defparam \op_1~93 .extended_lut = "off";
defparam \op_1~93 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~93 .shared_arith = "off";

cyclonev_lcell_comb \op_1~70 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_18_0),
	.datad(!op_142),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~94 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~70_cout ),
	.shareout());
defparam \op_1~70 .extended_lut = "off";
defparam \op_1~70 .lut_mask = 64'h00000000000005AF;
defparam \op_1~70 .shared_arith = "off";

cyclonev_lcell_comb \op_1~74 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_10_3),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~74_cout ),
	.shareout());
defparam \op_1~74 .extended_lut = "off";
defparam \op_1~74 .lut_mask = 64'h00000000000000FF;
defparam \op_1~74 .shared_arith = "off";

endmodule

module sqrt_52_lpm_add_sub_14 (
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
	op_128,
	op_129,
	op_130,
	op_131,
	op_132,
	op_133,
	op_134,
	op_135,
	op_136,
	op_137,
	op_138,
	op_139,
	op_140,
	op_141,
	op_142,
	op_143,
	op_144,
	op_145,
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
	sr_13_0,
	sr_14_0,
	sr_15_0,
	sr_16_0,
	sr_17_0,
	sr_18_0,
	sr_8_3,
	sr_9_3,
	sr_10_3,
	sr_11_3,
	sr_12_3,
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
	_15,
	_16,
	_17,
	_18)/* synthesis synthesis_greybox=0 */;
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
output 	op_128;
input 	op_129;
output 	op_130;
input 	op_131;
output 	op_132;
input 	op_133;
output 	op_134;
input 	op_135;
output 	op_136;
input 	op_137;
output 	op_138;
input 	op_139;
output 	op_140;
input 	op_141;
output 	op_142;
input 	op_143;
output 	op_144;
input 	op_145;
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
input 	sr_13_0;
input 	sr_14_0;
input 	sr_15_0;
input 	sr_16_0;
input 	sr_17_0;
input 	sr_18_0;
input 	sr_8_3;
input 	sr_9_3;
input 	sr_10_3;
input 	sr_11_3;
input 	sr_12_3;
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
input 	_13;
input 	_14;
input 	_15;
input 	_16;
input 	_17;
input 	_18;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_52_add_sub_ejc auto_generated(
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
	.op_128(op_128),
	.op_129(op_129),
	.op_130(op_130),
	.op_131(op_131),
	.op_132(op_132),
	.op_133(op_133),
	.op_134(op_134),
	.op_135(op_135),
	.op_136(op_136),
	.op_137(op_137),
	.op_138(op_138),
	.op_139(op_139),
	.op_140(op_140),
	.op_141(op_141),
	.op_142(op_142),
	.op_143(op_143),
	.op_144(op_144),
	.op_145(op_145),
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
	.sr_13_0(sr_13_0),
	.sr_14_0(sr_14_0),
	.sr_15_0(sr_15_0),
	.sr_16_0(sr_16_0),
	.sr_17_0(sr_17_0),
	.sr_18_0(sr_18_0),
	.sr_8_3(sr_8_3),
	.sr_9_3(sr_9_3),
	.sr_10_3(sr_10_3),
	.sr_11_3(sr_11_3),
	.sr_12_3(sr_12_3),
	._(_),
	._1(_1),
	._2(_2),
	._3(_3),
	._4(_4),
	._5(_5),
	._6(_6),
	._7(_7),
	._8(_8),
	._9(_9),
	._10(_10),
	._11(_11),
	._12(_12),
	._13(_13),
	._14(_14),
	._15(_15),
	._16(_16),
	._17(_17),
	._18(_18));

endmodule

module sqrt_52_add_sub_ejc (
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
	op_128,
	op_129,
	op_130,
	op_131,
	op_132,
	op_133,
	op_134,
	op_135,
	op_136,
	op_137,
	op_138,
	op_139,
	op_140,
	op_141,
	op_142,
	op_143,
	op_144,
	op_145,
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
	sr_13_0,
	sr_14_0,
	sr_15_0,
	sr_16_0,
	sr_17_0,
	sr_18_0,
	sr_8_3,
	sr_9_3,
	sr_10_3,
	sr_11_3,
	sr_12_3,
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
	_15,
	_16,
	_17,
	_18)/* synthesis synthesis_greybox=0 */;
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
output 	op_128;
input 	op_129;
output 	op_130;
input 	op_131;
output 	op_132;
input 	op_133;
output 	op_134;
input 	op_135;
output 	op_136;
input 	op_137;
output 	op_138;
input 	op_139;
output 	op_140;
input 	op_141;
output 	op_142;
input 	op_143;
output 	op_144;
input 	op_145;
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
input 	sr_13_0;
input 	sr_14_0;
input 	sr_15_0;
input 	sr_16_0;
input 	sr_17_0;
input 	sr_18_0;
input 	sr_8_3;
input 	sr_9_3;
input 	sr_10_3;
input 	sr_11_3;
input 	sr_12_3;
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
input 	_13;
input 	_14;
input 	_15;
input 	_16;
input 	_17;
input 	_18;

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
wire \op_1~62 ;
wire \op_1~66 ;
wire \op_1~70 ;
wire \op_1~74 ;
wire \op_1~86 ;
wire \op_1~90 ;
wire \op_1~94 ;
wire \op_1~98 ;
wire \op_1~78_cout ;
wire \op_1~82_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~78_cout ),
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
	.datad(!sr_9_3),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~82_cout ),
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
	.datad(!sr_10_3),
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
	.datac(!sr_11_3),
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
	.datab(!sr_12_3),
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

cyclonev_lcell_comb \op_1~53 (
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
	.cout(\op_1~54 ),
	.shareout());
defparam \op_1~53 .extended_lut = "off";
defparam \op_1~53 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~53 .shared_arith = "off";

cyclonev_lcell_comb \op_1~57 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_9),
	.datad(!op_127),
	.datae(gnd),
	.dataf(!sr_10_0),
	.datag(gnd),
	.cin(\op_1~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_128),
	.cout(\op_1~58 ),
	.shareout());
defparam \op_1~57 .extended_lut = "off";
defparam \op_1~57 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~57 .shared_arith = "off";

cyclonev_lcell_comb \op_1~61 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_10),
	.datad(!op_129),
	.datae(gnd),
	.dataf(!sr_11_0),
	.datag(gnd),
	.cin(\op_1~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_130),
	.cout(\op_1~62 ),
	.shareout());
defparam \op_1~61 .extended_lut = "off";
defparam \op_1~61 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~61 .shared_arith = "off";

cyclonev_lcell_comb \op_1~65 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_11),
	.datad(!op_131),
	.datae(gnd),
	.dataf(!sr_12_0),
	.datag(gnd),
	.cin(\op_1~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_132),
	.cout(\op_1~66 ),
	.shareout());
defparam \op_1~65 .extended_lut = "off";
defparam \op_1~65 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~65 .shared_arith = "off";

cyclonev_lcell_comb \op_1~69 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_12),
	.datad(!op_133),
	.datae(gnd),
	.dataf(!sr_13_0),
	.datag(gnd),
	.cin(\op_1~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_134),
	.cout(\op_1~70 ),
	.shareout());
defparam \op_1~69 .extended_lut = "off";
defparam \op_1~69 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~69 .shared_arith = "off";

cyclonev_lcell_comb \op_1~73 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_13),
	.datad(!op_135),
	.datae(gnd),
	.dataf(!sr_14_0),
	.datag(gnd),
	.cin(\op_1~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_136),
	.cout(\op_1~74 ),
	.shareout());
defparam \op_1~73 .extended_lut = "off";
defparam \op_1~73 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~73 .shared_arith = "off";

cyclonev_lcell_comb \op_1~85 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_14),
	.datad(!op_137),
	.datae(gnd),
	.dataf(!sr_15_0),
	.datag(gnd),
	.cin(\op_1~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_138),
	.cout(\op_1~86 ),
	.shareout());
defparam \op_1~85 .extended_lut = "off";
defparam \op_1~85 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~85 .shared_arith = "off";

cyclonev_lcell_comb \op_1~89 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_15),
	.datad(!op_139),
	.datae(gnd),
	.dataf(!sr_16_0),
	.datag(gnd),
	.cin(\op_1~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_140),
	.cout(\op_1~90 ),
	.shareout());
defparam \op_1~89 .extended_lut = "off";
defparam \op_1~89 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~89 .shared_arith = "off";

cyclonev_lcell_comb \op_1~93 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_16),
	.datad(!op_141),
	.datae(gnd),
	.dataf(!sr_17_0),
	.datag(gnd),
	.cin(\op_1~90 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_142),
	.cout(\op_1~94 ),
	.shareout());
defparam \op_1~93 .extended_lut = "off";
defparam \op_1~93 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~93 .shared_arith = "off";

cyclonev_lcell_comb \op_1~97 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_17),
	.datad(!op_143),
	.datae(gnd),
	.dataf(!sr_18_0),
	.datag(gnd),
	.cin(\op_1~94 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_144),
	.cout(\op_1~98 ),
	.shareout());
defparam \op_1~97 .extended_lut = "off";
defparam \op_1~97 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~97 .shared_arith = "off";

cyclonev_lcell_comb \op_1~78 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_18),
	.datad(!op_145),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~98 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~78_cout ),
	.shareout());
defparam \op_1~78 .extended_lut = "off";
defparam \op_1~78 .lut_mask = 64'h00000000000005AF;
defparam \op_1~78 .shared_arith = "off";

cyclonev_lcell_comb \op_1~82 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_8_3),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~82_cout ),
	.shareout());
defparam \op_1~82 .extended_lut = "off";
defparam \op_1~82 .lut_mask = 64'h00000000000000FF;
defparam \op_1~82 .shared_arith = "off";

endmodule

module sqrt_52_lpm_add_sub_15 (
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
	op_128,
	op_129,
	op_130,
	op_131,
	op_132,
	op_133,
	op_134,
	op_135,
	op_136,
	op_137,
	op_138,
	op_139,
	op_140,
	op_141,
	op_142,
	op_143,
	op_144,
	op_145,
	op_146,
	op_147,
	op_148,
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
	sr_13_0,
	sr_14_0,
	sr_15_0,
	sr_16_0,
	sr_17_0,
	sr_18_0,
	sr_6_3,
	sr_7_3,
	sr_8_3,
	sr_9_3,
	sr_10_3,
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
	_15,
	_16,
	_17,
	_18,
	_19)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
output 	op_14;
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
output 	op_125;
input 	op_126;
output 	op_127;
input 	op_128;
output 	op_129;
input 	op_130;
output 	op_131;
input 	op_132;
output 	op_133;
input 	op_134;
output 	op_135;
input 	op_136;
output 	op_137;
input 	op_138;
output 	op_139;
input 	op_140;
output 	op_141;
input 	op_142;
output 	op_143;
input 	op_144;
output 	op_145;
input 	op_146;
output 	op_147;
input 	op_148;
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
input 	sr_13_0;
input 	sr_14_0;
input 	sr_15_0;
input 	sr_16_0;
input 	sr_17_0;
input 	sr_18_0;
input 	sr_6_3;
input 	sr_7_3;
input 	sr_8_3;
input 	sr_9_3;
input 	sr_10_3;
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
input 	_13;
input 	_14;
input 	_15;
input 	_16;
input 	_17;
input 	_18;
input 	_19;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_52_add_sub_fjc auto_generated(
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
	.op_128(op_128),
	.op_129(op_129),
	.op_130(op_130),
	.op_131(op_131),
	.op_132(op_132),
	.op_133(op_133),
	.op_134(op_134),
	.op_135(op_135),
	.op_136(op_136),
	.op_137(op_137),
	.op_138(op_138),
	.op_139(op_139),
	.op_140(op_140),
	.op_141(op_141),
	.op_142(op_142),
	.op_143(op_143),
	.op_144(op_144),
	.op_145(op_145),
	.op_146(op_146),
	.op_147(op_147),
	.op_148(op_148),
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
	.sr_13_0(sr_13_0),
	.sr_14_0(sr_14_0),
	.sr_15_0(sr_15_0),
	.sr_16_0(sr_16_0),
	.sr_17_0(sr_17_0),
	.sr_18_0(sr_18_0),
	.sr_6_3(sr_6_3),
	.sr_7_3(sr_7_3),
	.sr_8_3(sr_8_3),
	.sr_9_3(sr_9_3),
	.sr_10_3(sr_10_3),
	._(_),
	._1(_1),
	._2(_2),
	._3(_3),
	._4(_4),
	._5(_5),
	._6(_6),
	._7(_7),
	._8(_8),
	._9(_9),
	._10(_10),
	._11(_11),
	._12(_12),
	._13(_13),
	._14(_14),
	._15(_15),
	._16(_16),
	._17(_17),
	._18(_18),
	._19(_19));

endmodule

module sqrt_52_add_sub_fjc (
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
	op_128,
	op_129,
	op_130,
	op_131,
	op_132,
	op_133,
	op_134,
	op_135,
	op_136,
	op_137,
	op_138,
	op_139,
	op_140,
	op_141,
	op_142,
	op_143,
	op_144,
	op_145,
	op_146,
	op_147,
	op_148,
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
	sr_13_0,
	sr_14_0,
	sr_15_0,
	sr_16_0,
	sr_17_0,
	sr_18_0,
	sr_6_3,
	sr_7_3,
	sr_8_3,
	sr_9_3,
	sr_10_3,
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
	_15,
	_16,
	_17,
	_18,
	_19)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
output 	op_14;
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
output 	op_125;
input 	op_126;
output 	op_127;
input 	op_128;
output 	op_129;
input 	op_130;
output 	op_131;
input 	op_132;
output 	op_133;
input 	op_134;
output 	op_135;
input 	op_136;
output 	op_137;
input 	op_138;
output 	op_139;
input 	op_140;
output 	op_141;
input 	op_142;
output 	op_143;
input 	op_144;
output 	op_145;
input 	op_146;
output 	op_147;
input 	op_148;
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
input 	sr_13_0;
input 	sr_14_0;
input 	sr_15_0;
input 	sr_16_0;
input 	sr_17_0;
input 	sr_18_0;
input 	sr_6_3;
input 	sr_7_3;
input 	sr_8_3;
input 	sr_9_3;
input 	sr_10_3;
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
input 	_13;
input 	_14;
input 	_15;
input 	_16;
input 	_17;
input 	_18;
input 	_19;

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
wire \op_1~62 ;
wire \op_1~66 ;
wire \op_1~70 ;
wire \op_1~74 ;
wire \op_1~78 ;
wire \op_1~82 ;
wire \op_1~94 ;
wire \op_1~98 ;
wire \op_1~102 ;
wire \op_1~86_cout ;
wire \op_1~90_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~86_cout ),
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
	.cin(\op_1~90_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_14),
	.cout(\op_1~6 ),
	.shareout());
defparam \op_1~5 .extended_lut = "off";
defparam \op_1~5 .lut_mask = 64'h00000000000000FF;
defparam \op_1~5 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_8_3),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_15),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_9_3),
	.datad(!op_16),
	.datae(gnd),
	.dataf(!op_12),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_17),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_11),
	.datab(!sr_10_3),
	.datac(!op_12),
	.datad(!op_18),
	.datae(gnd),
	.dataf(!op_13),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_19),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h0000FF00000041EB;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_),
	.datad(!op_110),
	.datae(gnd),
	.dataf(!sr_0_0),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_111),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_1),
	.datad(!op_112),
	.datae(gnd),
	.dataf(!sr_1_0),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_113),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~29 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_2),
	.datad(!op_114),
	.datae(gnd),
	.dataf(!sr_2_0),
	.datag(gnd),
	.cin(\op_1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_115),
	.cout(\op_1~30 ),
	.shareout());
defparam \op_1~29 .extended_lut = "off";
defparam \op_1~29 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~29 .shared_arith = "off";

cyclonev_lcell_comb \op_1~33 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_3),
	.datad(!op_116),
	.datae(gnd),
	.dataf(!sr_3_0),
	.datag(gnd),
	.cin(\op_1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_117),
	.cout(\op_1~34 ),
	.shareout());
defparam \op_1~33 .extended_lut = "off";
defparam \op_1~33 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~33 .shared_arith = "off";

cyclonev_lcell_comb \op_1~37 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_4),
	.datad(!op_118),
	.datae(gnd),
	.dataf(!sr_4_0),
	.datag(gnd),
	.cin(\op_1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_119),
	.cout(\op_1~38 ),
	.shareout());
defparam \op_1~37 .extended_lut = "off";
defparam \op_1~37 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~37 .shared_arith = "off";

cyclonev_lcell_comb \op_1~41 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_5),
	.datad(!op_120),
	.datae(gnd),
	.dataf(!sr_5_0),
	.datag(gnd),
	.cin(\op_1~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_121),
	.cout(\op_1~42 ),
	.shareout());
defparam \op_1~41 .extended_lut = "off";
defparam \op_1~41 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~41 .shared_arith = "off";

cyclonev_lcell_comb \op_1~45 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_6),
	.datad(!op_122),
	.datae(gnd),
	.dataf(!sr_6_0),
	.datag(gnd),
	.cin(\op_1~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_123),
	.cout(\op_1~46 ),
	.shareout());
defparam \op_1~45 .extended_lut = "off";
defparam \op_1~45 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~45 .shared_arith = "off";

cyclonev_lcell_comb \op_1~49 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_7),
	.datad(!op_124),
	.datae(gnd),
	.dataf(!sr_7_0),
	.datag(gnd),
	.cin(\op_1~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_125),
	.cout(\op_1~50 ),
	.shareout());
defparam \op_1~49 .extended_lut = "off";
defparam \op_1~49 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~49 .shared_arith = "off";

cyclonev_lcell_comb \op_1~53 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_8),
	.datad(!op_126),
	.datae(gnd),
	.dataf(!sr_8_0),
	.datag(gnd),
	.cin(\op_1~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_127),
	.cout(\op_1~54 ),
	.shareout());
defparam \op_1~53 .extended_lut = "off";
defparam \op_1~53 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~53 .shared_arith = "off";

cyclonev_lcell_comb \op_1~57 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_9),
	.datad(!op_128),
	.datae(gnd),
	.dataf(!sr_9_0),
	.datag(gnd),
	.cin(\op_1~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_129),
	.cout(\op_1~58 ),
	.shareout());
defparam \op_1~57 .extended_lut = "off";
defparam \op_1~57 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~57 .shared_arith = "off";

cyclonev_lcell_comb \op_1~61 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_10),
	.datad(!op_130),
	.datae(gnd),
	.dataf(!sr_10_0),
	.datag(gnd),
	.cin(\op_1~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_131),
	.cout(\op_1~62 ),
	.shareout());
defparam \op_1~61 .extended_lut = "off";
defparam \op_1~61 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~61 .shared_arith = "off";

cyclonev_lcell_comb \op_1~65 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_11),
	.datad(!op_132),
	.datae(gnd),
	.dataf(!sr_11_0),
	.datag(gnd),
	.cin(\op_1~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_133),
	.cout(\op_1~66 ),
	.shareout());
defparam \op_1~65 .extended_lut = "off";
defparam \op_1~65 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~65 .shared_arith = "off";

cyclonev_lcell_comb \op_1~69 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_12),
	.datad(!op_134),
	.datae(gnd),
	.dataf(!sr_12_0),
	.datag(gnd),
	.cin(\op_1~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_135),
	.cout(\op_1~70 ),
	.shareout());
defparam \op_1~69 .extended_lut = "off";
defparam \op_1~69 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~69 .shared_arith = "off";

cyclonev_lcell_comb \op_1~73 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_13),
	.datad(!op_136),
	.datae(gnd),
	.dataf(!sr_13_0),
	.datag(gnd),
	.cin(\op_1~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_137),
	.cout(\op_1~74 ),
	.shareout());
defparam \op_1~73 .extended_lut = "off";
defparam \op_1~73 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~73 .shared_arith = "off";

cyclonev_lcell_comb \op_1~77 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_14),
	.datad(!op_138),
	.datae(gnd),
	.dataf(!sr_14_0),
	.datag(gnd),
	.cin(\op_1~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_139),
	.cout(\op_1~78 ),
	.shareout());
defparam \op_1~77 .extended_lut = "off";
defparam \op_1~77 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~77 .shared_arith = "off";

cyclonev_lcell_comb \op_1~81 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_15),
	.datad(!op_140),
	.datae(gnd),
	.dataf(!sr_15_0),
	.datag(gnd),
	.cin(\op_1~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_141),
	.cout(\op_1~82 ),
	.shareout());
defparam \op_1~81 .extended_lut = "off";
defparam \op_1~81 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~81 .shared_arith = "off";

cyclonev_lcell_comb \op_1~93 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_16),
	.datad(!op_142),
	.datae(gnd),
	.dataf(!sr_16_0),
	.datag(gnd),
	.cin(\op_1~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_143),
	.cout(\op_1~94 ),
	.shareout());
defparam \op_1~93 .extended_lut = "off";
defparam \op_1~93 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~93 .shared_arith = "off";

cyclonev_lcell_comb \op_1~97 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_17),
	.datad(!op_144),
	.datae(gnd),
	.dataf(!sr_17_0),
	.datag(gnd),
	.cin(\op_1~94 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_145),
	.cout(\op_1~98 ),
	.shareout());
defparam \op_1~97 .extended_lut = "off";
defparam \op_1~97 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~97 .shared_arith = "off";

cyclonev_lcell_comb \op_1~101 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_18),
	.datad(!op_146),
	.datae(gnd),
	.dataf(!sr_18_0),
	.datag(gnd),
	.cin(\op_1~98 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_147),
	.cout(\op_1~102 ),
	.shareout());
defparam \op_1~101 .extended_lut = "off";
defparam \op_1~101 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~101 .shared_arith = "off";

cyclonev_lcell_comb \op_1~86 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_19),
	.datad(!op_148),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~102 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~86_cout ),
	.shareout());
defparam \op_1~86 .extended_lut = "off";
defparam \op_1~86 .lut_mask = 64'h00000000000005AF;
defparam \op_1~86 .shared_arith = "off";

cyclonev_lcell_comb \op_1~90 (
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
	.cout(\op_1~90_cout ),
	.shareout());
defparam \op_1~90 .extended_lut = "off";
defparam \op_1~90 .lut_mask = 64'h00000000000000FF;
defparam \op_1~90 .shared_arith = "off";

endmodule

module sqrt_52_lpm_add_sub_16 (
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
	op_128,
	op_129,
	op_130,
	op_131,
	op_132,
	op_133,
	op_134,
	op_135,
	op_136,
	op_137,
	op_138,
	op_139,
	op_140,
	op_141,
	op_142,
	op_143,
	op_144,
	op_145,
	op_146,
	op_147,
	op_148,
	op_149,
	op_150,
	op_151,
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
	sr_13_0,
	sr_14_0,
	sr_15_0,
	sr_16_0,
	sr_17_0,
	sr_18_0,
	sr_4_3,
	sr_5_3,
	sr_6_3,
	sr_7_3,
	sr_8_3,
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
	_15,
	_16,
	_17,
	_18,
	_19,
	_20)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
output 	op_15;
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
output 	op_128;
input 	op_129;
output 	op_130;
input 	op_131;
output 	op_132;
input 	op_133;
output 	op_134;
input 	op_135;
output 	op_136;
input 	op_137;
output 	op_138;
input 	op_139;
output 	op_140;
input 	op_141;
output 	op_142;
input 	op_143;
output 	op_144;
input 	op_145;
output 	op_146;
input 	op_147;
output 	op_148;
input 	op_149;
output 	op_150;
input 	op_151;
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
input 	sr_13_0;
input 	sr_14_0;
input 	sr_15_0;
input 	sr_16_0;
input 	sr_17_0;
input 	sr_18_0;
input 	sr_4_3;
input 	sr_5_3;
input 	sr_6_3;
input 	sr_7_3;
input 	sr_8_3;
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
input 	_13;
input 	_14;
input 	_15;
input 	_16;
input 	_17;
input 	_18;
input 	_19;
input 	_20;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_52_add_sub_gjc auto_generated(
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
	.op_128(op_128),
	.op_129(op_129),
	.op_130(op_130),
	.op_131(op_131),
	.op_132(op_132),
	.op_133(op_133),
	.op_134(op_134),
	.op_135(op_135),
	.op_136(op_136),
	.op_137(op_137),
	.op_138(op_138),
	.op_139(op_139),
	.op_140(op_140),
	.op_141(op_141),
	.op_142(op_142),
	.op_143(op_143),
	.op_144(op_144),
	.op_145(op_145),
	.op_146(op_146),
	.op_147(op_147),
	.op_148(op_148),
	.op_149(op_149),
	.op_150(op_150),
	.op_151(op_151),
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
	.sr_13_0(sr_13_0),
	.sr_14_0(sr_14_0),
	.sr_15_0(sr_15_0),
	.sr_16_0(sr_16_0),
	.sr_17_0(sr_17_0),
	.sr_18_0(sr_18_0),
	.sr_4_3(sr_4_3),
	.sr_5_3(sr_5_3),
	.sr_6_3(sr_6_3),
	.sr_7_3(sr_7_3),
	.sr_8_3(sr_8_3),
	._(_),
	._1(_1),
	._2(_2),
	._3(_3),
	._4(_4),
	._5(_5),
	._6(_6),
	._7(_7),
	._8(_8),
	._9(_9),
	._10(_10),
	._11(_11),
	._12(_12),
	._13(_13),
	._14(_14),
	._15(_15),
	._16(_16),
	._17(_17),
	._18(_18),
	._19(_19),
	._20(_20));

endmodule

module sqrt_52_add_sub_gjc (
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
	op_128,
	op_129,
	op_130,
	op_131,
	op_132,
	op_133,
	op_134,
	op_135,
	op_136,
	op_137,
	op_138,
	op_139,
	op_140,
	op_141,
	op_142,
	op_143,
	op_144,
	op_145,
	op_146,
	op_147,
	op_148,
	op_149,
	op_150,
	op_151,
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
	sr_13_0,
	sr_14_0,
	sr_15_0,
	sr_16_0,
	sr_17_0,
	sr_18_0,
	sr_4_3,
	sr_5_3,
	sr_6_3,
	sr_7_3,
	sr_8_3,
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
	_15,
	_16,
	_17,
	_18,
	_19,
	_20)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
output 	op_15;
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
output 	op_128;
input 	op_129;
output 	op_130;
input 	op_131;
output 	op_132;
input 	op_133;
output 	op_134;
input 	op_135;
output 	op_136;
input 	op_137;
output 	op_138;
input 	op_139;
output 	op_140;
input 	op_141;
output 	op_142;
input 	op_143;
output 	op_144;
input 	op_145;
output 	op_146;
input 	op_147;
output 	op_148;
input 	op_149;
output 	op_150;
input 	op_151;
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
input 	sr_13_0;
input 	sr_14_0;
input 	sr_15_0;
input 	sr_16_0;
input 	sr_17_0;
input 	sr_18_0;
input 	sr_4_3;
input 	sr_5_3;
input 	sr_6_3;
input 	sr_7_3;
input 	sr_8_3;
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
input 	_13;
input 	_14;
input 	_15;
input 	_16;
input 	_17;
input 	_18;
input 	_19;
input 	_20;

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
wire \op_1~62 ;
wire \op_1~66 ;
wire \op_1~70 ;
wire \op_1~74 ;
wire \op_1~78 ;
wire \op_1~82 ;
wire \op_1~86 ;
wire \op_1~90 ;
wire \op_1~102 ;
wire \op_1~106 ;
wire \op_1~94_cout ;
wire \op_1~98_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~94_cout ),
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
	.cin(\op_1~98_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_15),
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
	.sumout(op_16),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_7_3),
	.datad(!op_17),
	.datae(gnd),
	.dataf(!op_12),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_18),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_11),
	.datab(!sr_8_3),
	.datac(!op_12),
	.datad(!op_19),
	.datae(gnd),
	.dataf(!op_13),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_110),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h0000FF00000041EB;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_),
	.datad(!op_111),
	.datae(gnd),
	.dataf(!op_14),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_112),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_1),
	.datad(!op_113),
	.datae(gnd),
	.dataf(!sr_0_0),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_114),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~29 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_2),
	.datad(!op_115),
	.datae(gnd),
	.dataf(!sr_1_0),
	.datag(gnd),
	.cin(\op_1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_116),
	.cout(\op_1~30 ),
	.shareout());
defparam \op_1~29 .extended_lut = "off";
defparam \op_1~29 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~29 .shared_arith = "off";

cyclonev_lcell_comb \op_1~33 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_3),
	.datad(!op_117),
	.datae(gnd),
	.dataf(!sr_2_0),
	.datag(gnd),
	.cin(\op_1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_118),
	.cout(\op_1~34 ),
	.shareout());
defparam \op_1~33 .extended_lut = "off";
defparam \op_1~33 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~33 .shared_arith = "off";

cyclonev_lcell_comb \op_1~37 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_4),
	.datad(!op_119),
	.datae(gnd),
	.dataf(!sr_3_0),
	.datag(gnd),
	.cin(\op_1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_120),
	.cout(\op_1~38 ),
	.shareout());
defparam \op_1~37 .extended_lut = "off";
defparam \op_1~37 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~37 .shared_arith = "off";

cyclonev_lcell_comb \op_1~41 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_5),
	.datad(!op_121),
	.datae(gnd),
	.dataf(!sr_4_0),
	.datag(gnd),
	.cin(\op_1~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_122),
	.cout(\op_1~42 ),
	.shareout());
defparam \op_1~41 .extended_lut = "off";
defparam \op_1~41 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~41 .shared_arith = "off";

cyclonev_lcell_comb \op_1~45 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_6),
	.datad(!op_123),
	.datae(gnd),
	.dataf(!sr_5_0),
	.datag(gnd),
	.cin(\op_1~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_124),
	.cout(\op_1~46 ),
	.shareout());
defparam \op_1~45 .extended_lut = "off";
defparam \op_1~45 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~45 .shared_arith = "off";

cyclonev_lcell_comb \op_1~49 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_7),
	.datad(!op_125),
	.datae(gnd),
	.dataf(!sr_6_0),
	.datag(gnd),
	.cin(\op_1~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_126),
	.cout(\op_1~50 ),
	.shareout());
defparam \op_1~49 .extended_lut = "off";
defparam \op_1~49 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~49 .shared_arith = "off";

cyclonev_lcell_comb \op_1~53 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_8),
	.datad(!op_127),
	.datae(gnd),
	.dataf(!sr_7_0),
	.datag(gnd),
	.cin(\op_1~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_128),
	.cout(\op_1~54 ),
	.shareout());
defparam \op_1~53 .extended_lut = "off";
defparam \op_1~53 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~53 .shared_arith = "off";

cyclonev_lcell_comb \op_1~57 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_9),
	.datad(!op_129),
	.datae(gnd),
	.dataf(!sr_8_0),
	.datag(gnd),
	.cin(\op_1~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_130),
	.cout(\op_1~58 ),
	.shareout());
defparam \op_1~57 .extended_lut = "off";
defparam \op_1~57 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~57 .shared_arith = "off";

cyclonev_lcell_comb \op_1~61 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_10),
	.datad(!op_131),
	.datae(gnd),
	.dataf(!sr_9_0),
	.datag(gnd),
	.cin(\op_1~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_132),
	.cout(\op_1~62 ),
	.shareout());
defparam \op_1~61 .extended_lut = "off";
defparam \op_1~61 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~61 .shared_arith = "off";

cyclonev_lcell_comb \op_1~65 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_11),
	.datad(!op_133),
	.datae(gnd),
	.dataf(!sr_10_0),
	.datag(gnd),
	.cin(\op_1~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_134),
	.cout(\op_1~66 ),
	.shareout());
defparam \op_1~65 .extended_lut = "off";
defparam \op_1~65 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~65 .shared_arith = "off";

cyclonev_lcell_comb \op_1~69 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_12),
	.datad(!op_135),
	.datae(gnd),
	.dataf(!sr_11_0),
	.datag(gnd),
	.cin(\op_1~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_136),
	.cout(\op_1~70 ),
	.shareout());
defparam \op_1~69 .extended_lut = "off";
defparam \op_1~69 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~69 .shared_arith = "off";

cyclonev_lcell_comb \op_1~73 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_13),
	.datad(!op_137),
	.datae(gnd),
	.dataf(!sr_12_0),
	.datag(gnd),
	.cin(\op_1~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_138),
	.cout(\op_1~74 ),
	.shareout());
defparam \op_1~73 .extended_lut = "off";
defparam \op_1~73 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~73 .shared_arith = "off";

cyclonev_lcell_comb \op_1~77 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_14),
	.datad(!op_139),
	.datae(gnd),
	.dataf(!sr_13_0),
	.datag(gnd),
	.cin(\op_1~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_140),
	.cout(\op_1~78 ),
	.shareout());
defparam \op_1~77 .extended_lut = "off";
defparam \op_1~77 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~77 .shared_arith = "off";

cyclonev_lcell_comb \op_1~81 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_15),
	.datad(!op_141),
	.datae(gnd),
	.dataf(!sr_14_0),
	.datag(gnd),
	.cin(\op_1~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_142),
	.cout(\op_1~82 ),
	.shareout());
defparam \op_1~81 .extended_lut = "off";
defparam \op_1~81 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~81 .shared_arith = "off";

cyclonev_lcell_comb \op_1~85 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_16),
	.datad(!op_143),
	.datae(gnd),
	.dataf(!sr_15_0),
	.datag(gnd),
	.cin(\op_1~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_144),
	.cout(\op_1~86 ),
	.shareout());
defparam \op_1~85 .extended_lut = "off";
defparam \op_1~85 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~85 .shared_arith = "off";

cyclonev_lcell_comb \op_1~89 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_17),
	.datad(!op_145),
	.datae(gnd),
	.dataf(!sr_16_0),
	.datag(gnd),
	.cin(\op_1~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_146),
	.cout(\op_1~90 ),
	.shareout());
defparam \op_1~89 .extended_lut = "off";
defparam \op_1~89 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~89 .shared_arith = "off";

cyclonev_lcell_comb \op_1~101 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_18),
	.datad(!op_147),
	.datae(gnd),
	.dataf(!sr_17_0),
	.datag(gnd),
	.cin(\op_1~90 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_148),
	.cout(\op_1~102 ),
	.shareout());
defparam \op_1~101 .extended_lut = "off";
defparam \op_1~101 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~101 .shared_arith = "off";

cyclonev_lcell_comb \op_1~105 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_19),
	.datad(!op_149),
	.datae(gnd),
	.dataf(!sr_18_0),
	.datag(gnd),
	.cin(\op_1~102 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_150),
	.cout(\op_1~106 ),
	.shareout());
defparam \op_1~105 .extended_lut = "off";
defparam \op_1~105 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~105 .shared_arith = "off";

cyclonev_lcell_comb \op_1~94 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_20),
	.datad(!op_151),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~106 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~94_cout ),
	.shareout());
defparam \op_1~94 .extended_lut = "off";
defparam \op_1~94 .lut_mask = 64'h00000000000005AF;
defparam \op_1~94 .shared_arith = "off";

cyclonev_lcell_comb \op_1~98 (
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
	.cout(\op_1~98_cout ),
	.shareout());
defparam \op_1~98 .extended_lut = "off";
defparam \op_1~98 .lut_mask = 64'h00000000000000FF;
defparam \op_1~98 .shared_arith = "off";

endmodule

module sqrt_52_lpm_add_sub_17 (
	op_1,
	op_11,
	op_12,
	op_13,
	sr_2_0,
	op_14,
	sr_3_0,
	op_15,
	sr_4_0,
	op_16,
	sr_5_0,
	op_17,
	sr_6_0,
	op_18,
	sr_7_0,
	op_19,
	sr_8_0,
	op_110,
	sr_9_0,
	op_111,
	sr_10_0,
	op_112,
	sr_11_0,
	op_113,
	sr_12_0,
	op_114,
	sr_13_0,
	op_115,
	sr_14_0,
	op_116,
	sr_15_0,
	op_117,
	sr_16_0,
	op_118,
	sr_17_0,
	op_119,
	sr_18_0,
	op_120,
	sr_19_0,
	op_121,
	sr_20_0,
	op_122,
	sr_21_0,
	op_123,
	sr_22_0,
	op_124,
	sr_23_0,
	op_125,
	sr_24_0,
	sr_0_0,
	sr_1_0,
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
	sr_13_01,
	sr_14_01,
	sr_15_01,
	sr_16_01,
	sr_17_01,
	sr_18_01,
	sr_19_01,
	sr_20_01,
	sr_21_01,
	sr_22_01,
	sr_23_01,
	sr_2_4,
	sr_3_4,
	sr_0_01,
	sr_1_01)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
output 	op_12;
output 	op_13;
input 	sr_2_0;
output 	op_14;
input 	sr_3_0;
output 	op_15;
input 	sr_4_0;
output 	op_16;
input 	sr_5_0;
output 	op_17;
input 	sr_6_0;
output 	op_18;
input 	sr_7_0;
output 	op_19;
input 	sr_8_0;
output 	op_110;
input 	sr_9_0;
output 	op_111;
input 	sr_10_0;
output 	op_112;
input 	sr_11_0;
output 	op_113;
input 	sr_12_0;
output 	op_114;
input 	sr_13_0;
output 	op_115;
input 	sr_14_0;
output 	op_116;
input 	sr_15_0;
output 	op_117;
input 	sr_16_0;
output 	op_118;
input 	sr_17_0;
output 	op_119;
input 	sr_18_0;
output 	op_120;
input 	sr_19_0;
output 	op_121;
input 	sr_20_0;
output 	op_122;
input 	sr_21_0;
output 	op_123;
input 	sr_22_0;
output 	op_124;
input 	sr_23_0;
output 	op_125;
input 	sr_24_0;
input 	sr_0_0;
input 	sr_1_0;
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
input 	sr_13_01;
input 	sr_14_01;
input 	sr_15_01;
input 	sr_16_01;
input 	sr_17_01;
input 	sr_18_01;
input 	sr_19_01;
input 	sr_20_01;
input 	sr_21_01;
input 	sr_22_01;
input 	sr_23_01;
input 	sr_2_4;
input 	sr_3_4;
input 	sr_0_01;
input 	sr_1_01;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_52_add_sub_hjc auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.sr_2_0(sr_2_0),
	.op_14(op_14),
	.sr_3_0(sr_3_0),
	.op_15(op_15),
	.sr_4_0(sr_4_0),
	.op_16(op_16),
	.sr_5_0(sr_5_0),
	.op_17(op_17),
	.sr_6_0(sr_6_0),
	.op_18(op_18),
	.sr_7_0(sr_7_0),
	.op_19(op_19),
	.sr_8_0(sr_8_0),
	.op_110(op_110),
	.sr_9_0(sr_9_0),
	.op_111(op_111),
	.sr_10_0(sr_10_0),
	.op_112(op_112),
	.sr_11_0(sr_11_0),
	.op_113(op_113),
	.sr_12_0(sr_12_0),
	.op_114(op_114),
	.sr_13_0(sr_13_0),
	.op_115(op_115),
	.sr_14_0(sr_14_0),
	.op_116(op_116),
	.sr_15_0(sr_15_0),
	.op_117(op_117),
	.sr_16_0(sr_16_0),
	.op_118(op_118),
	.sr_17_0(sr_17_0),
	.op_119(op_119),
	.sr_18_0(sr_18_0),
	.op_120(op_120),
	.sr_19_0(sr_19_0),
	.op_121(op_121),
	.sr_20_0(sr_20_0),
	.op_122(op_122),
	.sr_21_0(sr_21_0),
	.op_123(op_123),
	.sr_22_0(sr_22_0),
	.op_124(op_124),
	.sr_23_0(sr_23_0),
	.op_125(op_125),
	.sr_24_0(sr_24_0),
	.sr_0_0(sr_0_0),
	.sr_1_0(sr_1_0),
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
	.sr_13_01(sr_13_01),
	.sr_14_01(sr_14_01),
	.sr_15_01(sr_15_01),
	.sr_16_01(sr_16_01),
	.sr_17_01(sr_17_01),
	.sr_18_01(sr_18_01),
	.sr_19_01(sr_19_01),
	.sr_20_01(sr_20_01),
	.sr_21_01(sr_21_01),
	.sr_22_01(sr_22_01),
	.sr_23_01(sr_23_01),
	.sr_2_4(sr_2_4),
	.sr_3_4(sr_3_4),
	.sr_0_01(sr_0_01),
	.sr_1_01(sr_1_01));

endmodule

module sqrt_52_add_sub_hjc (
	op_1,
	op_11,
	op_12,
	op_13,
	sr_2_0,
	op_14,
	sr_3_0,
	op_15,
	sr_4_0,
	op_16,
	sr_5_0,
	op_17,
	sr_6_0,
	op_18,
	sr_7_0,
	op_19,
	sr_8_0,
	op_110,
	sr_9_0,
	op_111,
	sr_10_0,
	op_112,
	sr_11_0,
	op_113,
	sr_12_0,
	op_114,
	sr_13_0,
	op_115,
	sr_14_0,
	op_116,
	sr_15_0,
	op_117,
	sr_16_0,
	op_118,
	sr_17_0,
	op_119,
	sr_18_0,
	op_120,
	sr_19_0,
	op_121,
	sr_20_0,
	op_122,
	sr_21_0,
	op_123,
	sr_22_0,
	op_124,
	sr_23_0,
	op_125,
	sr_24_0,
	sr_0_0,
	sr_1_0,
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
	sr_13_01,
	sr_14_01,
	sr_15_01,
	sr_16_01,
	sr_17_01,
	sr_18_01,
	sr_19_01,
	sr_20_01,
	sr_21_01,
	sr_22_01,
	sr_23_01,
	sr_2_4,
	sr_3_4,
	sr_0_01,
	sr_1_01)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
output 	op_12;
output 	op_13;
input 	sr_2_0;
output 	op_14;
input 	sr_3_0;
output 	op_15;
input 	sr_4_0;
output 	op_16;
input 	sr_5_0;
output 	op_17;
input 	sr_6_0;
output 	op_18;
input 	sr_7_0;
output 	op_19;
input 	sr_8_0;
output 	op_110;
input 	sr_9_0;
output 	op_111;
input 	sr_10_0;
output 	op_112;
input 	sr_11_0;
output 	op_113;
input 	sr_12_0;
output 	op_114;
input 	sr_13_0;
output 	op_115;
input 	sr_14_0;
output 	op_116;
input 	sr_15_0;
output 	op_117;
input 	sr_16_0;
output 	op_118;
input 	sr_17_0;
output 	op_119;
input 	sr_18_0;
output 	op_120;
input 	sr_19_0;
output 	op_121;
input 	sr_20_0;
output 	op_122;
input 	sr_21_0;
output 	op_123;
input 	sr_22_0;
output 	op_124;
input 	sr_23_0;
output 	op_125;
input 	sr_24_0;
input 	sr_0_0;
input 	sr_1_0;
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
input 	sr_13_01;
input 	sr_14_01;
input 	sr_15_01;
input 	sr_16_01;
input 	sr_17_01;
input 	sr_18_01;
input 	sr_19_01;
input 	sr_20_01;
input 	sr_21_01;
input 	sr_22_01;
input 	sr_23_01;
input 	sr_2_4;
input 	sr_3_4;
input 	sr_0_01;
input 	sr_1_01;

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
wire \op_1~62 ;
wire \op_1~66 ;
wire \op_1~70 ;
wire \op_1~74 ;
wire \op_1~78 ;
wire \op_1~82 ;
wire \op_1~86 ;
wire \op_1~90 ;
wire \op_1~94 ;
wire \op_1~98 ;
wire \op_1~110 ;
wire \op_1~102_cout ;
wire \op_1~106_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~102_cout ),
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
	.datad(!sr_3_4),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~106_cout ),
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
	.datad(!sr_2_0),
	.datae(gnd),
	.dataf(!sr_2_01),
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
	.datad(!sr_3_0),
	.datae(gnd),
	.dataf(!sr_3_01),
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
	.datad(!sr_4_0),
	.datae(gnd),
	.dataf(!sr_4_01),
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
	.datad(!sr_5_0),
	.datae(gnd),
	.dataf(!sr_5_01),
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
	.datad(!sr_6_0),
	.datae(gnd),
	.dataf(!sr_6_01),
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
	.datad(!sr_7_0),
	.datae(gnd),
	.dataf(!sr_7_01),
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
	.datad(!sr_8_0),
	.datae(gnd),
	.dataf(!sr_8_01),
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
	.datad(!sr_9_0),
	.datae(gnd),
	.dataf(!sr_9_01),
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
	.datad(!sr_10_0),
	.datae(gnd),
	.dataf(!sr_10_01),
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
	.datad(!sr_11_0),
	.datae(gnd),
	.dataf(!sr_11_01),
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
	.datad(!sr_12_0),
	.datae(gnd),
	.dataf(!sr_12_01),
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

cyclonev_lcell_comb \op_1~61 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_13_0),
	.datae(gnd),
	.dataf(!sr_13_01),
	.datag(gnd),
	.cin(\op_1~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_115),
	.cout(\op_1~62 ),
	.shareout());
defparam \op_1~61 .extended_lut = "off";
defparam \op_1~61 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~61 .shared_arith = "off";

cyclonev_lcell_comb \op_1~65 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_14_0),
	.datae(gnd),
	.dataf(!sr_14_01),
	.datag(gnd),
	.cin(\op_1~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_116),
	.cout(\op_1~66 ),
	.shareout());
defparam \op_1~65 .extended_lut = "off";
defparam \op_1~65 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~65 .shared_arith = "off";

cyclonev_lcell_comb \op_1~69 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_15_0),
	.datae(gnd),
	.dataf(!sr_15_01),
	.datag(gnd),
	.cin(\op_1~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_117),
	.cout(\op_1~70 ),
	.shareout());
defparam \op_1~69 .extended_lut = "off";
defparam \op_1~69 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~69 .shared_arith = "off";

cyclonev_lcell_comb \op_1~73 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_16_0),
	.datae(gnd),
	.dataf(!sr_16_01),
	.datag(gnd),
	.cin(\op_1~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_118),
	.cout(\op_1~74 ),
	.shareout());
defparam \op_1~73 .extended_lut = "off";
defparam \op_1~73 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~73 .shared_arith = "off";

cyclonev_lcell_comb \op_1~77 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_17_0),
	.datae(gnd),
	.dataf(!sr_17_01),
	.datag(gnd),
	.cin(\op_1~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_119),
	.cout(\op_1~78 ),
	.shareout());
defparam \op_1~77 .extended_lut = "off";
defparam \op_1~77 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~77 .shared_arith = "off";

cyclonev_lcell_comb \op_1~81 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_18_0),
	.datae(gnd),
	.dataf(!sr_18_01),
	.datag(gnd),
	.cin(\op_1~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_120),
	.cout(\op_1~82 ),
	.shareout());
defparam \op_1~81 .extended_lut = "off";
defparam \op_1~81 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~81 .shared_arith = "off";

cyclonev_lcell_comb \op_1~85 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_19_0),
	.datae(gnd),
	.dataf(!sr_19_01),
	.datag(gnd),
	.cin(\op_1~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_121),
	.cout(\op_1~86 ),
	.shareout());
defparam \op_1~85 .extended_lut = "off";
defparam \op_1~85 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~85 .shared_arith = "off";

cyclonev_lcell_comb \op_1~89 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_20_0),
	.datae(gnd),
	.dataf(!sr_20_01),
	.datag(gnd),
	.cin(\op_1~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_122),
	.cout(\op_1~90 ),
	.shareout());
defparam \op_1~89 .extended_lut = "off";
defparam \op_1~89 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~89 .shared_arith = "off";

cyclonev_lcell_comb \op_1~93 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_21_0),
	.datae(gnd),
	.dataf(!sr_21_01),
	.datag(gnd),
	.cin(\op_1~90 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_123),
	.cout(\op_1~94 ),
	.shareout());
defparam \op_1~93 .extended_lut = "off";
defparam \op_1~93 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~93 .shared_arith = "off";

cyclonev_lcell_comb \op_1~97 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_22_0),
	.datae(gnd),
	.dataf(!sr_22_01),
	.datag(gnd),
	.cin(\op_1~94 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_124),
	.cout(\op_1~98 ),
	.shareout());
defparam \op_1~97 .extended_lut = "off";
defparam \op_1~97 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~97 .shared_arith = "off";

cyclonev_lcell_comb \op_1~109 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_23_0),
	.datae(gnd),
	.dataf(!sr_23_01),
	.datag(gnd),
	.cin(\op_1~98 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_125),
	.cout(\op_1~110 ),
	.shareout());
defparam \op_1~109 .extended_lut = "off";
defparam \op_1~109 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~109 .shared_arith = "off";

cyclonev_lcell_comb \op_1~102 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_24_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~110 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~102_cout ),
	.shareout());
defparam \op_1~102 .extended_lut = "off";
defparam \op_1~102 .lut_mask = 64'h00000000000000FF;
defparam \op_1~102 .shared_arith = "off";

cyclonev_lcell_comb \op_1~106 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_2_4),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~106_cout ),
	.shareout());
defparam \op_1~106 .extended_lut = "off";
defparam \op_1~106 .lut_mask = 64'h00000000000000FF;
defparam \op_1~106 .shared_arith = "off";

endmodule

module sqrt_52_lpm_add_sub_18 (
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
	sr_2_0,
	op_110,
	op_111,
	sr_3_0,
	op_112,
	op_113,
	sr_4_0,
	op_114,
	op_115,
	sr_5_0,
	op_116,
	op_117,
	sr_6_0,
	op_118,
	op_119,
	sr_7_0,
	op_120,
	op_121,
	sr_8_0,
	op_122,
	op_123,
	sr_9_0,
	op_124,
	op_125,
	sr_10_0,
	op_126,
	op_127,
	sr_11_0,
	op_128,
	op_129,
	sr_12_0,
	op_130,
	op_131,
	sr_13_0,
	op_132,
	op_133,
	sr_14_0,
	op_134,
	op_135,
	sr_15_0,
	op_136,
	op_137,
	sr_16_0,
	op_138,
	op_139,
	sr_17_0,
	op_140,
	op_141,
	sr_18_0,
	op_142,
	op_143,
	sr_19_0,
	op_144,
	op_145,
	sr_20_0,
	op_146,
	op_147,
	sr_21_0,
	op_148,
	op_149,
	sr_22_0,
	op_150,
	op_151,
	sr_23_0,
	op_152,
	sr_0_0,
	sr_1_0,
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
	sr_13_01,
	sr_14_01,
	sr_15_01,
	sr_16_01,
	sr_17_01,
	sr_18_01,
	sr_19_01,
	sr_20_01,
	sr_21_01,
	sr_22_01,
	sr_23_01,
	sr_0_4,
	sr_1_4,
	sr_2_4,
	sr_3_4,
	sr_0_01,
	sr_1_01)/* synthesis synthesis_greybox=0 */;
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
input 	sr_2_0;
input 	op_110;
output 	op_111;
input 	sr_3_0;
input 	op_112;
output 	op_113;
input 	sr_4_0;
input 	op_114;
output 	op_115;
input 	sr_5_0;
input 	op_116;
output 	op_117;
input 	sr_6_0;
input 	op_118;
output 	op_119;
input 	sr_7_0;
input 	op_120;
output 	op_121;
input 	sr_8_0;
input 	op_122;
output 	op_123;
input 	sr_9_0;
input 	op_124;
output 	op_125;
input 	sr_10_0;
input 	op_126;
output 	op_127;
input 	sr_11_0;
input 	op_128;
output 	op_129;
input 	sr_12_0;
input 	op_130;
output 	op_131;
input 	sr_13_0;
input 	op_132;
output 	op_133;
input 	sr_14_0;
input 	op_134;
output 	op_135;
input 	sr_15_0;
input 	op_136;
output 	op_137;
input 	sr_16_0;
input 	op_138;
output 	op_139;
input 	sr_17_0;
input 	op_140;
output 	op_141;
input 	sr_18_0;
input 	op_142;
output 	op_143;
input 	sr_19_0;
input 	op_144;
output 	op_145;
input 	sr_20_0;
input 	op_146;
output 	op_147;
input 	sr_21_0;
input 	op_148;
output 	op_149;
input 	sr_22_0;
input 	op_150;
output 	op_151;
input 	sr_23_0;
input 	op_152;
input 	sr_0_0;
input 	sr_1_0;
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
input 	sr_13_01;
input 	sr_14_01;
input 	sr_15_01;
input 	sr_16_01;
input 	sr_17_01;
input 	sr_18_01;
input 	sr_19_01;
input 	sr_20_01;
input 	sr_21_01;
input 	sr_22_01;
input 	sr_23_01;
input 	sr_0_4;
input 	sr_1_4;
input 	sr_2_4;
input 	sr_3_4;
input 	sr_0_01;
input 	sr_1_01;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_52_add_sub_ijc auto_generated(
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
	.sr_2_0(sr_2_0),
	.op_110(op_110),
	.op_111(op_111),
	.sr_3_0(sr_3_0),
	.op_112(op_112),
	.op_113(op_113),
	.sr_4_0(sr_4_0),
	.op_114(op_114),
	.op_115(op_115),
	.sr_5_0(sr_5_0),
	.op_116(op_116),
	.op_117(op_117),
	.sr_6_0(sr_6_0),
	.op_118(op_118),
	.op_119(op_119),
	.sr_7_0(sr_7_0),
	.op_120(op_120),
	.op_121(op_121),
	.sr_8_0(sr_8_0),
	.op_122(op_122),
	.op_123(op_123),
	.sr_9_0(sr_9_0),
	.op_124(op_124),
	.op_125(op_125),
	.sr_10_0(sr_10_0),
	.op_126(op_126),
	.op_127(op_127),
	.sr_11_0(sr_11_0),
	.op_128(op_128),
	.op_129(op_129),
	.sr_12_0(sr_12_0),
	.op_130(op_130),
	.op_131(op_131),
	.sr_13_0(sr_13_0),
	.op_132(op_132),
	.op_133(op_133),
	.sr_14_0(sr_14_0),
	.op_134(op_134),
	.op_135(op_135),
	.sr_15_0(sr_15_0),
	.op_136(op_136),
	.op_137(op_137),
	.sr_16_0(sr_16_0),
	.op_138(op_138),
	.op_139(op_139),
	.sr_17_0(sr_17_0),
	.op_140(op_140),
	.op_141(op_141),
	.sr_18_0(sr_18_0),
	.op_142(op_142),
	.op_143(op_143),
	.sr_19_0(sr_19_0),
	.op_144(op_144),
	.op_145(op_145),
	.sr_20_0(sr_20_0),
	.op_146(op_146),
	.op_147(op_147),
	.sr_21_0(sr_21_0),
	.op_148(op_148),
	.op_149(op_149),
	.sr_22_0(sr_22_0),
	.op_150(op_150),
	.op_151(op_151),
	.sr_23_0(sr_23_0),
	.op_152(op_152),
	.sr_0_0(sr_0_0),
	.sr_1_0(sr_1_0),
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
	.sr_13_01(sr_13_01),
	.sr_14_01(sr_14_01),
	.sr_15_01(sr_15_01),
	.sr_16_01(sr_16_01),
	.sr_17_01(sr_17_01),
	.sr_18_01(sr_18_01),
	.sr_19_01(sr_19_01),
	.sr_20_01(sr_20_01),
	.sr_21_01(sr_21_01),
	.sr_22_01(sr_22_01),
	.sr_23_01(sr_23_01),
	.sr_0_4(sr_0_4),
	.sr_1_4(sr_1_4),
	.sr_2_4(sr_2_4),
	.sr_3_4(sr_3_4),
	.sr_0_01(sr_0_01),
	.sr_1_01(sr_1_01));

endmodule

module sqrt_52_add_sub_ijc (
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
	sr_2_0,
	op_110,
	op_111,
	sr_3_0,
	op_112,
	op_113,
	sr_4_0,
	op_114,
	op_115,
	sr_5_0,
	op_116,
	op_117,
	sr_6_0,
	op_118,
	op_119,
	sr_7_0,
	op_120,
	op_121,
	sr_8_0,
	op_122,
	op_123,
	sr_9_0,
	op_124,
	op_125,
	sr_10_0,
	op_126,
	op_127,
	sr_11_0,
	op_128,
	op_129,
	sr_12_0,
	op_130,
	op_131,
	sr_13_0,
	op_132,
	op_133,
	sr_14_0,
	op_134,
	op_135,
	sr_15_0,
	op_136,
	op_137,
	sr_16_0,
	op_138,
	op_139,
	sr_17_0,
	op_140,
	op_141,
	sr_18_0,
	op_142,
	op_143,
	sr_19_0,
	op_144,
	op_145,
	sr_20_0,
	op_146,
	op_147,
	sr_21_0,
	op_148,
	op_149,
	sr_22_0,
	op_150,
	op_151,
	sr_23_0,
	op_152,
	sr_0_0,
	sr_1_0,
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
	sr_13_01,
	sr_14_01,
	sr_15_01,
	sr_16_01,
	sr_17_01,
	sr_18_01,
	sr_19_01,
	sr_20_01,
	sr_21_01,
	sr_22_01,
	sr_23_01,
	sr_0_4,
	sr_1_4,
	sr_2_4,
	sr_3_4,
	sr_0_01,
	sr_1_01)/* synthesis synthesis_greybox=0 */;
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
input 	sr_2_0;
input 	op_110;
output 	op_111;
input 	sr_3_0;
input 	op_112;
output 	op_113;
input 	sr_4_0;
input 	op_114;
output 	op_115;
input 	sr_5_0;
input 	op_116;
output 	op_117;
input 	sr_6_0;
input 	op_118;
output 	op_119;
input 	sr_7_0;
input 	op_120;
output 	op_121;
input 	sr_8_0;
input 	op_122;
output 	op_123;
input 	sr_9_0;
input 	op_124;
output 	op_125;
input 	sr_10_0;
input 	op_126;
output 	op_127;
input 	sr_11_0;
input 	op_128;
output 	op_129;
input 	sr_12_0;
input 	op_130;
output 	op_131;
input 	sr_13_0;
input 	op_132;
output 	op_133;
input 	sr_14_0;
input 	op_134;
output 	op_135;
input 	sr_15_0;
input 	op_136;
output 	op_137;
input 	sr_16_0;
input 	op_138;
output 	op_139;
input 	sr_17_0;
input 	op_140;
output 	op_141;
input 	sr_18_0;
input 	op_142;
output 	op_143;
input 	sr_19_0;
input 	op_144;
output 	op_145;
input 	sr_20_0;
input 	op_146;
output 	op_147;
input 	sr_21_0;
input 	op_148;
output 	op_149;
input 	sr_22_0;
input 	op_150;
output 	op_151;
input 	sr_23_0;
input 	op_152;
input 	sr_0_0;
input 	sr_1_0;
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
input 	sr_13_01;
input 	sr_14_01;
input 	sr_15_01;
input 	sr_16_01;
input 	sr_17_01;
input 	sr_18_01;
input 	sr_19_01;
input 	sr_20_01;
input 	sr_21_01;
input 	sr_22_01;
input 	sr_23_01;
input 	sr_0_4;
input 	sr_1_4;
input 	sr_2_4;
input 	sr_3_4;
input 	sr_0_01;
input 	sr_1_01;

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
wire \op_1~62 ;
wire \op_1~66 ;
wire \op_1~70 ;
wire \op_1~74 ;
wire \op_1~78 ;
wire \op_1~82 ;
wire \op_1~86 ;
wire \op_1~90 ;
wire \op_1~94 ;
wire \op_1~98 ;
wire \op_1~102 ;
wire \op_1~106 ;
wire \op_1~110_cout ;
wire \op_1~114_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~110_cout ),
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
	.cin(\op_1~114_cout ),
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
	.datad(!sr_2_4),
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
	.datac(!sr_3_4),
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
	.dataf(!sr_2_01),
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
	.datac(!sr_2_0),
	.datad(!op_110),
	.datae(gnd),
	.dataf(!sr_3_01),
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
	.datac(!sr_3_0),
	.datad(!op_112),
	.datae(gnd),
	.dataf(!sr_4_01),
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
	.datac(!sr_4_0),
	.datad(!op_114),
	.datae(gnd),
	.dataf(!sr_5_01),
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
	.datac(!sr_5_0),
	.datad(!op_116),
	.datae(gnd),
	.dataf(!sr_6_01),
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
	.datac(!sr_6_0),
	.datad(!op_118),
	.datae(gnd),
	.dataf(!sr_7_01),
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

cyclonev_lcell_comb \op_1~45 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_7_0),
	.datad(!op_120),
	.datae(gnd),
	.dataf(!sr_8_01),
	.datag(gnd),
	.cin(\op_1~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_121),
	.cout(\op_1~46 ),
	.shareout());
defparam \op_1~45 .extended_lut = "off";
defparam \op_1~45 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~45 .shared_arith = "off";

cyclonev_lcell_comb \op_1~49 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_8_0),
	.datad(!op_122),
	.datae(gnd),
	.dataf(!sr_9_01),
	.datag(gnd),
	.cin(\op_1~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_123),
	.cout(\op_1~50 ),
	.shareout());
defparam \op_1~49 .extended_lut = "off";
defparam \op_1~49 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~49 .shared_arith = "off";

cyclonev_lcell_comb \op_1~53 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_9_0),
	.datad(!op_124),
	.datae(gnd),
	.dataf(!sr_10_01),
	.datag(gnd),
	.cin(\op_1~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_125),
	.cout(\op_1~54 ),
	.shareout());
defparam \op_1~53 .extended_lut = "off";
defparam \op_1~53 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~53 .shared_arith = "off";

cyclonev_lcell_comb \op_1~57 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_10_0),
	.datad(!op_126),
	.datae(gnd),
	.dataf(!sr_11_01),
	.datag(gnd),
	.cin(\op_1~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_127),
	.cout(\op_1~58 ),
	.shareout());
defparam \op_1~57 .extended_lut = "off";
defparam \op_1~57 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~57 .shared_arith = "off";

cyclonev_lcell_comb \op_1~61 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_11_0),
	.datad(!op_128),
	.datae(gnd),
	.dataf(!sr_12_01),
	.datag(gnd),
	.cin(\op_1~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_129),
	.cout(\op_1~62 ),
	.shareout());
defparam \op_1~61 .extended_lut = "off";
defparam \op_1~61 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~61 .shared_arith = "off";

cyclonev_lcell_comb \op_1~65 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_12_0),
	.datad(!op_130),
	.datae(gnd),
	.dataf(!sr_13_01),
	.datag(gnd),
	.cin(\op_1~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_131),
	.cout(\op_1~66 ),
	.shareout());
defparam \op_1~65 .extended_lut = "off";
defparam \op_1~65 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~65 .shared_arith = "off";

cyclonev_lcell_comb \op_1~69 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_13_0),
	.datad(!op_132),
	.datae(gnd),
	.dataf(!sr_14_01),
	.datag(gnd),
	.cin(\op_1~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_133),
	.cout(\op_1~70 ),
	.shareout());
defparam \op_1~69 .extended_lut = "off";
defparam \op_1~69 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~69 .shared_arith = "off";

cyclonev_lcell_comb \op_1~73 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_14_0),
	.datad(!op_134),
	.datae(gnd),
	.dataf(!sr_15_01),
	.datag(gnd),
	.cin(\op_1~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_135),
	.cout(\op_1~74 ),
	.shareout());
defparam \op_1~73 .extended_lut = "off";
defparam \op_1~73 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~73 .shared_arith = "off";

cyclonev_lcell_comb \op_1~77 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_15_0),
	.datad(!op_136),
	.datae(gnd),
	.dataf(!sr_16_01),
	.datag(gnd),
	.cin(\op_1~74 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_137),
	.cout(\op_1~78 ),
	.shareout());
defparam \op_1~77 .extended_lut = "off";
defparam \op_1~77 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~77 .shared_arith = "off";

cyclonev_lcell_comb \op_1~81 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_16_0),
	.datad(!op_138),
	.datae(gnd),
	.dataf(!sr_17_01),
	.datag(gnd),
	.cin(\op_1~78 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_139),
	.cout(\op_1~82 ),
	.shareout());
defparam \op_1~81 .extended_lut = "off";
defparam \op_1~81 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~81 .shared_arith = "off";

cyclonev_lcell_comb \op_1~85 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_17_0),
	.datad(!op_140),
	.datae(gnd),
	.dataf(!sr_18_01),
	.datag(gnd),
	.cin(\op_1~82 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_141),
	.cout(\op_1~86 ),
	.shareout());
defparam \op_1~85 .extended_lut = "off";
defparam \op_1~85 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~85 .shared_arith = "off";

cyclonev_lcell_comb \op_1~89 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_18_0),
	.datad(!op_142),
	.datae(gnd),
	.dataf(!sr_19_01),
	.datag(gnd),
	.cin(\op_1~86 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_143),
	.cout(\op_1~90 ),
	.shareout());
defparam \op_1~89 .extended_lut = "off";
defparam \op_1~89 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~89 .shared_arith = "off";

cyclonev_lcell_comb \op_1~93 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_19_0),
	.datad(!op_144),
	.datae(gnd),
	.dataf(!sr_20_01),
	.datag(gnd),
	.cin(\op_1~90 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_145),
	.cout(\op_1~94 ),
	.shareout());
defparam \op_1~93 .extended_lut = "off";
defparam \op_1~93 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~93 .shared_arith = "off";

cyclonev_lcell_comb \op_1~97 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_20_0),
	.datad(!op_146),
	.datae(gnd),
	.dataf(!sr_21_01),
	.datag(gnd),
	.cin(\op_1~94 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_147),
	.cout(\op_1~98 ),
	.shareout());
defparam \op_1~97 .extended_lut = "off";
defparam \op_1~97 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~97 .shared_arith = "off";

cyclonev_lcell_comb \op_1~101 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_21_0),
	.datad(!op_148),
	.datae(gnd),
	.dataf(!sr_22_01),
	.datag(gnd),
	.cin(\op_1~98 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_149),
	.cout(\op_1~102 ),
	.shareout());
defparam \op_1~101 .extended_lut = "off";
defparam \op_1~101 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~101 .shared_arith = "off";

cyclonev_lcell_comb \op_1~105 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_22_0),
	.datad(!op_150),
	.datae(gnd),
	.dataf(!sr_23_01),
	.datag(gnd),
	.cin(\op_1~102 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_151),
	.cout(\op_1~106 ),
	.shareout());
defparam \op_1~105 .extended_lut = "off";
defparam \op_1~105 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~105 .shared_arith = "off";

cyclonev_lcell_comb \op_1~110 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_23_0),
	.datad(!op_152),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~106 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~110_cout ),
	.shareout());
defparam \op_1~110 .extended_lut = "off";
defparam \op_1~110 .lut_mask = 64'h00000000000005AF;
defparam \op_1~110 .shared_arith = "off";

cyclonev_lcell_comb \op_1~114 (
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
	.cout(\op_1~114_cout ),
	.shareout());
defparam \op_1~114 .extended_lut = "off";
defparam \op_1~114 .lut_mask = 64'h00000000000000FF;
defparam \op_1~114 .shared_arith = "off";

endmodule

module sqrt_52_lpm_add_sub_19 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	radical_50,
	radical_48,
	radical_49,
	radical_51,
	radical_46,
	radical_47)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
output 	op_12;
output 	op_13;
input 	op_14;
input 	op_15;
input 	radical_50;
input 	radical_48;
input 	radical_49;
input 	radical_51;
input 	radical_46;
input 	radical_47;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_52_add_sub_thc auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.radical_50(radical_50),
	.radical_48(radical_48),
	.radical_49(radical_49),
	.radical_51(radical_51),
	.radical_46(radical_46),
	.radical_47(radical_47));

endmodule

module sqrt_52_add_sub_thc (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	radical_50,
	radical_48,
	radical_49,
	radical_51,
	radical_46,
	radical_47)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
output 	op_12;
output 	op_13;
input 	op_14;
input 	op_15;
input 	radical_50;
input 	radical_48;
input 	radical_49;
input 	radical_51;
input 	radical_46;
input 	radical_47;

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
wire \op_1~6_cout ;
wire \op_1~22_cout ;


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
	.datad(!radical_47),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~22_cout ),
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
	.datab(!op_14),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(!radical_48),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_12),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000CC330000CCCC;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!radical_51),
	.datab(!op_14),
	.datac(!radical_48),
	.datad(!radical_50),
	.datae(gnd),
	.dataf(!radical_49),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_13),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h0000CF300000AA00;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~6 (
	.dataa(!op_14),
	.datab(!radical_50),
	.datac(!radical_51),
	.datad(!op_15),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~6_cout ),
	.shareout());
defparam \op_1~6 .extended_lut = "off";
defparam \op_1~6 .lut_mask = 64'h0000000000005D08;
defparam \op_1~6 .shared_arith = "off";

cyclonev_lcell_comb \op_1~22 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_46),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~22_cout ),
	.shareout());
defparam \op_1~22 .extended_lut = "off";
defparam \op_1~22 .lut_mask = 64'h00000000000000FF;
defparam \op_1~22 .shared_arith = "off";

endmodule

module sqrt_52_lpm_add_sub_20 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_44_0,
	sr_45_0,
	sr_0_01,
	sr_1_01,
	sr_2_01,
	sr_3_0)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
output 	op_12;
output 	op_13;
output 	op_14;
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_44_0;
input 	sr_45_0;
input 	sr_0_01;
input 	sr_1_01;
input 	sr_2_01;
input 	sr_3_0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_52_add_sub_uhc auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.sr_0_0(sr_0_0),
	.sr_1_0(sr_1_0),
	.sr_2_0(sr_2_0),
	.sr_44_0(sr_44_0),
	.sr_45_0(sr_45_0),
	.sr_0_01(sr_0_01),
	.sr_1_01(sr_1_01),
	.sr_2_01(sr_2_01),
	.sr_3_0(sr_3_0));

endmodule

module sqrt_52_add_sub_uhc (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_44_0,
	sr_45_0,
	sr_0_01,
	sr_1_01,
	sr_2_01,
	sr_3_0)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
output 	op_12;
output 	op_13;
output 	op_14;
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_44_0;
input 	sr_45_0;
input 	sr_0_01;
input 	sr_1_01;
input 	sr_2_01;
input 	sr_3_0;

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
	.datad(!sr_45_0),
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

cyclonev_lcell_comb \op_1~6 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_3_0),
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
defparam \op_1~6 .lut_mask = 64'h00000000000000FF;
defparam \op_1~6 .shared_arith = "off";

cyclonev_lcell_comb \op_1~26 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_44_0),
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

module sqrt_52_lpm_add_sub_21 (
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
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_42_0,
	sr_43_0,
	sr_44_0,
	sr_45_0,
	sr_0_01,
	sr_1_01,
	sr_2_01)/* synthesis synthesis_greybox=0 */;
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
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_42_0;
input 	sr_43_0;
input 	sr_44_0;
input 	sr_45_0;
input 	sr_0_01;
input 	sr_1_01;
input 	sr_2_01;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_52_add_sub_vhc auto_generated(
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
	.sr_0_0(sr_0_0),
	.sr_1_0(sr_1_0),
	.sr_2_0(sr_2_0),
	.sr_42_0(sr_42_0),
	.sr_43_0(sr_43_0),
	.sr_44_0(sr_44_0),
	.sr_45_0(sr_45_0),
	.sr_0_01(sr_0_01),
	.sr_1_01(sr_1_01),
	.sr_2_01(sr_2_01));

endmodule

module sqrt_52_add_sub_vhc (
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
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_42_0,
	sr_43_0,
	sr_44_0,
	sr_45_0,
	sr_0_01,
	sr_1_01,
	sr_2_01)/* synthesis synthesis_greybox=0 */;
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
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_42_0;
input 	sr_43_0;
input 	sr_44_0;
input 	sr_45_0;
input 	sr_0_01;
input 	sr_1_01;
input 	sr_2_01;

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
	.datad(!sr_43_0),
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
	.datad(!sr_44_0),
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
	.datac(!sr_45_0),
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

cyclonev_lcell_comb \op_1~6 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_2_01),
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
	.datad(!sr_42_0),
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

module sqrt_52_lpm_add_sub_22 (
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
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_40_0,
	sr_41_0,
	sr_42_0,
	sr_43_0,
	sr_44_0,
	_,
	_1,
	_2)/* synthesis synthesis_greybox=0 */;
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
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_40_0;
input 	sr_41_0;
input 	sr_42_0;
input 	sr_43_0;
input 	sr_44_0;
input 	_;
input 	_1;
input 	_2;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_52_add_sub_0ic auto_generated(
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
	.sr_0_0(sr_0_0),
	.sr_1_0(sr_1_0),
	.sr_2_0(sr_2_0),
	.sr_40_0(sr_40_0),
	.sr_41_0(sr_41_0),
	.sr_42_0(sr_42_0),
	.sr_43_0(sr_43_0),
	.sr_44_0(sr_44_0),
	._(_),
	._1(_1),
	._2(_2));

endmodule

module sqrt_52_add_sub_0ic (
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
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_40_0,
	sr_41_0,
	sr_42_0,
	sr_43_0,
	sr_44_0,
	_,
	_1,
	_2)/* synthesis synthesis_greybox=0 */;
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
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_40_0;
input 	sr_41_0;
input 	sr_42_0;
input 	sr_43_0;
input 	sr_44_0;
input 	_;
input 	_1;
input 	_2;

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
	.datad(!sr_41_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~34_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_13),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h00000000000000FF;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_42_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_14),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_43_0),
	.datad(!op_15),
	.datae(gnd),
	.dataf(!op_12),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_16),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!op_11),
	.datab(!sr_44_0),
	.datac(!op_12),
	.datad(!op_17),
	.datae(gnd),
	.dataf(!sr_0_0),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_18),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h000000FF000041EB;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_),
	.datad(!op_19),
	.datae(gnd),
	.dataf(!sr_1_0),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_110),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~29 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_1),
	.datad(!op_111),
	.datae(gnd),
	.dataf(!sr_2_0),
	.datag(gnd),
	.cin(\op_1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_112),
	.cout(\op_1~30 ),
	.shareout());
defparam \op_1~29 .extended_lut = "off";
defparam \op_1~29 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~29 .shared_arith = "off";

cyclonev_lcell_comb \op_1~6 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_2),
	.datad(!op_113),
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
defparam \op_1~6 .lut_mask = 64'h00000000000005AF;
defparam \op_1~6 .shared_arith = "off";

cyclonev_lcell_comb \op_1~34 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_40_0),
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

module sqrt_52_lpm_add_sub_23 (
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
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_38_0,
	sr_39_0,
	sr_40_0,
	sr_41_0,
	sr_42_0,
	_,
	_1,
	_2,
	_3)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
output 	op_14;
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
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_38_0;
input 	sr_39_0;
input 	sr_40_0;
input 	sr_41_0;
input 	sr_42_0;
input 	_;
input 	_1;
input 	_2;
input 	_3;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_52_add_sub_1ic auto_generated(
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
	.sr_0_0(sr_0_0),
	.sr_1_0(sr_1_0),
	.sr_2_0(sr_2_0),
	.sr_38_0(sr_38_0),
	.sr_39_0(sr_39_0),
	.sr_40_0(sr_40_0),
	.sr_41_0(sr_41_0),
	.sr_42_0(sr_42_0),
	._(_),
	._1(_1),
	._2(_2),
	._3(_3));

endmodule

module sqrt_52_add_sub_1ic (
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
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_38_0,
	sr_39_0,
	sr_40_0,
	sr_41_0,
	sr_42_0,
	_,
	_1,
	_2,
	_3)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
output 	op_14;
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
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_38_0;
input 	sr_39_0;
input 	sr_40_0;
input 	sr_41_0;
input 	sr_42_0;
input 	_;
input 	_1;
input 	_2;
input 	_3;

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
	.datad(!sr_39_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~38_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_14),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h00000000000000FF;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_40_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_15),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_41_0),
	.datad(!op_16),
	.datae(gnd),
	.dataf(!op_12),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_17),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!op_11),
	.datab(!sr_42_0),
	.datac(!op_12),
	.datad(!op_18),
	.datae(gnd),
	.dataf(!op_13),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_19),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h0000FF00000041EB;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_),
	.datad(!op_110),
	.datae(gnd),
	.dataf(!sr_0_0),
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
	.datac(!_1),
	.datad(!op_112),
	.datae(gnd),
	.dataf(!sr_1_0),
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
	.datac(!_2),
	.datad(!op_114),
	.datae(gnd),
	.dataf(!sr_2_0),
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

cyclonev_lcell_comb \op_1~6 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_3),
	.datad(!op_116),
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
	.datad(!sr_38_0),
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

module sqrt_52_lpm_add_sub_24 (
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
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_36_0,
	sr_37_0,
	sr_38_0,
	sr_39_0,
	sr_40_0,
	_,
	_1,
	_2,
	_3,
	_4)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
output 	op_15;
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
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_36_0;
input 	sr_37_0;
input 	sr_38_0;
input 	sr_39_0;
input 	sr_40_0;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_52_add_sub_9jc auto_generated(
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
	.sr_0_0(sr_0_0),
	.sr_1_0(sr_1_0),
	.sr_2_0(sr_2_0),
	.sr_36_0(sr_36_0),
	.sr_37_0(sr_37_0),
	.sr_38_0(sr_38_0),
	.sr_39_0(sr_39_0),
	.sr_40_0(sr_40_0),
	._(_),
	._1(_1),
	._2(_2),
	._3(_3),
	._4(_4));

endmodule

module sqrt_52_add_sub_9jc (
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
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_36_0,
	sr_37_0,
	sr_38_0,
	sr_39_0,
	sr_40_0,
	_,
	_1,
	_2,
	_3,
	_4)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
output 	op_15;
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
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_36_0;
input 	sr_37_0;
input 	sr_38_0;
input 	sr_39_0;
input 	sr_40_0;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;

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
wire \op_1~38 ;
wire \op_1~6_cout ;
wire \op_1~42_cout ;


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
	.datad(!sr_37_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~42_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_15),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h00000000000000FF;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_38_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_16),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_39_0),
	.datad(!op_17),
	.datae(gnd),
	.dataf(!op_12),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_18),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!op_11),
	.datab(!sr_40_0),
	.datac(!op_12),
	.datad(!op_19),
	.datae(gnd),
	.dataf(!op_13),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_110),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h0000FF00000041EB;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_),
	.datad(!op_111),
	.datae(gnd),
	.dataf(!op_14),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_112),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~29 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_1),
	.datad(!op_113),
	.datae(gnd),
	.dataf(!sr_0_0),
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
	.datac(!_2),
	.datad(!op_115),
	.datae(gnd),
	.dataf(!sr_1_0),
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
	.datac(!_3),
	.datad(!op_117),
	.datae(gnd),
	.dataf(!sr_2_0),
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

cyclonev_lcell_comb \op_1~6 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_4),
	.datad(!op_119),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~6_cout ),
	.shareout());
defparam \op_1~6 .extended_lut = "off";
defparam \op_1~6 .lut_mask = 64'h00000000000005AF;
defparam \op_1~6 .shared_arith = "off";

cyclonev_lcell_comb \op_1~42 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_36_0),
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

module sqrt_52_lpm_add_sub_25 (
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
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_7_0,
	sr_34_1,
	sr_35_1,
	sr_0_01,
	sr_1_01,
	sr_2_01,
	sr_3_01,
	sr_4_01,
	sr_5_01,
	sr_6_01,
	sr_7_01,
	sr_8_0)/* synthesis synthesis_greybox=0 */;
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
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_3_0;
input 	sr_4_0;
input 	sr_5_0;
input 	sr_6_0;
input 	sr_7_0;
input 	sr_34_1;
input 	sr_35_1;
input 	sr_0_01;
input 	sr_1_01;
input 	sr_2_01;
input 	sr_3_01;
input 	sr_4_01;
input 	sr_5_01;
input 	sr_6_01;
input 	sr_7_01;
input 	sr_8_0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_52_add_sub_rjc auto_generated(
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
	.sr_0_0(sr_0_0),
	.sr_1_0(sr_1_0),
	.sr_2_0(sr_2_0),
	.sr_3_0(sr_3_0),
	.sr_4_0(sr_4_0),
	.sr_5_0(sr_5_0),
	.sr_6_0(sr_6_0),
	.sr_7_0(sr_7_0),
	.sr_34_1(sr_34_1),
	.sr_35_1(sr_35_1),
	.sr_0_01(sr_0_01),
	.sr_1_01(sr_1_01),
	.sr_2_01(sr_2_01),
	.sr_3_01(sr_3_01),
	.sr_4_01(sr_4_01),
	.sr_5_01(sr_5_01),
	.sr_6_01(sr_6_01),
	.sr_7_01(sr_7_01),
	.sr_8_0(sr_8_0));

endmodule

module sqrt_52_add_sub_rjc (
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
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_7_0,
	sr_34_1,
	sr_35_1,
	sr_0_01,
	sr_1_01,
	sr_2_01,
	sr_3_01,
	sr_4_01,
	sr_5_01,
	sr_6_01,
	sr_7_01,
	sr_8_0)/* synthesis synthesis_greybox=0 */;
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
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_3_0;
input 	sr_4_0;
input 	sr_5_0;
input 	sr_6_0;
input 	sr_7_0;
input 	sr_34_1;
input 	sr_35_1;
input 	sr_0_01;
input 	sr_1_01;
input 	sr_2_01;
input 	sr_3_01;
input 	sr_4_01;
input 	sr_5_01;
input 	sr_6_01;
input 	sr_7_01;
input 	sr_8_0;

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
wire \op_1~38 ;
wire \op_1~42 ;
wire \op_1~6_cout ;
wire \op_1~46_cout ;


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
	.datad(!sr_35_1),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~46_cout ),
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

cyclonev_lcell_comb \op_1~33 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_5_01),
	.datae(gnd),
	.dataf(!sr_5_0),
	.datag(gnd),
	.cin(\op_1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_17),
	.cout(\op_1~34 ),
	.shareout());
defparam \op_1~33 .extended_lut = "off";
defparam \op_1~33 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~33 .shared_arith = "off";

cyclonev_lcell_comb \op_1~37 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_6_01),
	.datae(gnd),
	.dataf(!sr_6_0),
	.datag(gnd),
	.cin(\op_1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_18),
	.cout(\op_1~38 ),
	.shareout());
defparam \op_1~37 .extended_lut = "off";
defparam \op_1~37 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~37 .shared_arith = "off";

cyclonev_lcell_comb \op_1~41 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_7_01),
	.datae(gnd),
	.dataf(!sr_7_0),
	.datag(gnd),
	.cin(\op_1~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_19),
	.cout(\op_1~42 ),
	.shareout());
defparam \op_1~41 .extended_lut = "off";
defparam \op_1~41 .lut_mask = 64'h000000FF000000FF;
defparam \op_1~41 .shared_arith = "off";

cyclonev_lcell_comb \op_1~6 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_8_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~6_cout ),
	.shareout());
defparam \op_1~6 .extended_lut = "off";
defparam \op_1~6 .lut_mask = 64'h00000000000000FF;
defparam \op_1~6 .shared_arith = "off";

cyclonev_lcell_comb \op_1~46 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_34_1),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~46_cout ),
	.shareout());
defparam \op_1~46 .extended_lut = "off";
defparam \op_1~46 .lut_mask = 64'h00000000000000FF;
defparam \op_1~46 .shared_arith = "off";

endmodule

module sqrt_52_lpm_add_sub_26 (
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
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_7_0,
	sr_32_1,
	sr_33_1,
	sr_34_1,
	sr_35_1,
	sr_0_01,
	sr_1_01,
	sr_2_01,
	sr_3_01,
	sr_4_01,
	sr_5_01,
	sr_6_01,
	sr_7_01)/* synthesis synthesis_greybox=0 */;
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
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_3_0;
input 	sr_4_0;
input 	sr_5_0;
input 	sr_6_0;
input 	sr_7_0;
input 	sr_32_1;
input 	sr_33_1;
input 	sr_34_1;
input 	sr_35_1;
input 	sr_0_01;
input 	sr_1_01;
input 	sr_2_01;
input 	sr_3_01;
input 	sr_4_01;
input 	sr_5_01;
input 	sr_6_01;
input 	sr_7_01;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



sqrt_52_add_sub_qjc auto_generated(
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
	.sr_0_0(sr_0_0),
	.sr_1_0(sr_1_0),
	.sr_2_0(sr_2_0),
	.sr_3_0(sr_3_0),
	.sr_4_0(sr_4_0),
	.sr_5_0(sr_5_0),
	.sr_6_0(sr_6_0),
	.sr_7_0(sr_7_0),
	.sr_32_1(sr_32_1),
	.sr_33_1(sr_33_1),
	.sr_34_1(sr_34_1),
	.sr_35_1(sr_35_1),
	.sr_0_01(sr_0_01),
	.sr_1_01(sr_1_01),
	.sr_2_01(sr_2_01),
	.sr_3_01(sr_3_01),
	.sr_4_01(sr_4_01),
	.sr_5_01(sr_5_01),
	.sr_6_01(sr_6_01),
	.sr_7_01(sr_7_01));

endmodule

module sqrt_52_add_sub_qjc (
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
	sr_0_0,
	sr_1_0,
	sr_2_0,
	sr_3_0,
	sr_4_0,
	sr_5_0,
	sr_6_0,
	sr_7_0,
	sr_32_1,
	sr_33_1,
	sr_34_1,
	sr_35_1,
	sr_0_01,
	sr_1_01,
	sr_2_01,
	sr_3_01,
	sr_4_01,
	sr_5_01,
	sr_6_01,
	sr_7_01)/* synthesis synthesis_greybox=0 */;
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
input 	sr_0_0;
input 	sr_1_0;
input 	sr_2_0;
input 	sr_3_0;
input 	sr_4_0;
input 	sr_5_0;
input 	sr_6_0;
input 	sr_7_0;
input 	sr_32_1;
input 	sr_33_1;
input 	sr_34_1;
input 	sr_35_1;
input 	sr_0_01;
input 	sr_1_01;
input 	sr_2_01;
input 	sr_3_01;
input 	sr_4_01;
input 	sr_5_01;
input 	sr_6_01;
input 	sr_7_01;

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
wire \op_1~38 ;
wire \op_1~42 ;
wire \op_1~46 ;
wire \op_1~6_cout ;
wire \op_1~50_cout ;


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
	.datad(!sr_33_1),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~50_cout ),
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
	.datad(!sr_34_1),
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
	.datac(!sr_35_1),
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

cyclonev_lcell_comb \op_1~37 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_4_01),
	.datad(!op_114),
	.datae(gnd),
	.dataf(!sr_5_0),
	.datag(gnd),
	.cin(\op_1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_115),
	.cout(\op_1~38 ),
	.shareout());
defparam \op_1~37 .extended_lut = "off";
defparam \op_1~37 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~37 .shared_arith = "off";

cyclonev_lcell_comb \op_1~41 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_5_01),
	.datad(!op_116),
	.datae(gnd),
	.dataf(!sr_6_0),
	.datag(gnd),
	.cin(\op_1~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_117),
	.cout(\op_1~42 ),
	.shareout());
defparam \op_1~41 .extended_lut = "off";
defparam \op_1~41 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~41 .shared_arith = "off";

cyclonev_lcell_comb \op_1~45 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_6_01),
	.datad(!op_118),
	.datae(gnd),
	.dataf(!sr_7_0),
	.datag(gnd),
	.cin(\op_1~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_119),
	.cout(\op_1~46 ),
	.shareout());
defparam \op_1~45 .extended_lut = "off";
defparam \op_1~45 .lut_mask = 64'h000000FF000005AF;
defparam \op_1~45 .shared_arith = "off";

cyclonev_lcell_comb \op_1~6 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!sr_7_01),
	.datad(!op_120),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~6_cout ),
	.shareout());
defparam \op_1~6 .extended_lut = "off";
defparam \op_1~6 .lut_mask = 64'h00000000000005AF;
defparam \op_1~6 .shared_arith = "off";

cyclonev_lcell_comb \op_1~50 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!sr_32_1),
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

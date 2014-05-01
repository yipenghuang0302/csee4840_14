/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

interface ifc_inverse (
	input logic clk
);

logic en, rst;

// Global clock cycle counter
logic [7:0] count;

// Matrix that needs to be inversed
logic [5:0][5:0][26:0] matrix;

// LT decomposition of given matrix
logic [5:0][5:0][26:0] lt;
// LT inverse
logic [5:0][5:0][26:0] lt_inverse;
// Inverse of given matrix
logic [5:0][5:0][26:0] inverse;

// Output to matrix multipliers
logic [5:0] [5:0] [26:0] mat_mult_dataa;
logic [5:0] [5:0] [26:0] mat_mult_datab;
// Input from matrix multipliers
logic [5:0] [5:0] [26:0] mat_mult_result;

// Output to array multipliers
logic [14:0] [26:0] array_mult_dataa;
logic [14:0] [26:0] array_mult_datab;
// Input from array multipliers
logic [14:0] [26:0] array_mult_result;

// clocking cb @(posedge clk);
// 	output en;
// 	output rst;
// 	output matrix;
// 
// 	input lt;
// 	input lt_inverse;
// 	input inverse;
// endclocking
// 
// modport inverse_tb (clocking cb);

modport inverse_dut (
	input clk, en, rst,
	input count,
	
	input matrix,
	
	input array_mult_result,
	input mat_mult_result,
	output array_mult_dataa,
	output array_mult_datab,
	output mat_mult_dataa,
	output mat_mult_datab,

	output lt,
	output lt_inverse,
	output inverse
);

endinterface

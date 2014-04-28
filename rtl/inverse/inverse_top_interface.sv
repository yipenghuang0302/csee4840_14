/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

interface ifc_inverse_top (
	input logic clk
);

logic en, rst;

// Global clock cycle counter
logic [7:0] count;

// Matrix that needs to be inversed
logic [5:0][5:0][26:0] matrix;

// Inverse of given matrix
logic [5:0][5:0][26:0] inverse;

// Output to array multipliers
logic [8:0] [26:0] array_mult_dataa;
logic [8:0] [26:0] array_mult_datab;
// Input from array multipliers
logic [8:0] [26:0] array_mult_result;

modport inverse_top (
	input clk, en, rst,
	input count,
	
	input matrax,
	
	input array_mult_result,
	
	output array_mult_dataa,
	output array_mult_datab,

	output inverse
);

endinterface

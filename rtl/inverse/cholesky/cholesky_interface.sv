/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

interface ifc_cholesky (
	input logic clk
);

logic en, rst;

logic [4:0] step;

logic [5:0][5:0][26:0] matrix,
logic [5:0][5:0][26:0] lt,

logic [14:0][26:0] array_mult_dataa;
logic [14:0][26:0] array_mult_datab;

logic [14:0][26:0] array_mult_result;

logic [4:0][26:0] dividends;
logic [26:0] divisor;

logic [4:0][26:0] quotients;

modport cholesky(
	input clk, en, rst,
	input step,
	
	input matrix,
	output lt,
	
	output array_mult_dataa,
	output array_mult_datab,

	input array_mult_result,
	
	output dividends,
	output divisor,
	
	input quotients
);

endinterface



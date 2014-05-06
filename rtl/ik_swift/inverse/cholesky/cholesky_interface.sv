/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

interface ifc_cholesky (
	input logic clk
);

logic en, rst;
logic [7:0] count;

logic [5:0] [5:0] [26:0] matrix;
logic [5:0] [5:0] [26:0] lt;

// shared array_mult
logic [14:0] [26:0] array_mult_dataa;
logic [14:0] [26:0] array_mult_datab;
logic [14:0] [26:0] array_mult_result;

// shared array_div
logic [5:0] [26:0] dividends;
logic [26:0] divisor;
logic [5:0] [26:0] quotients;

clocking cb @(posedge clk);
	output en;
	output rst;
	output count;

	output matrix;
	input lt;
endclocking

modport cholesky_tb (clocking cb);

// restrict directions
modport cholesky(

	input clk, en, rst,
	input count,

	input matrix,

	input array_mult_result,
	input quotients,
	output array_mult_dataa,
	output array_mult_datab,
	output dividends,
	output divisor,

	output lt

);

endinterface
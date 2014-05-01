/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

interface ifc_array_div (
	input logic clk
);

parameter n = 6;

logic en, rst;
logic [n-1:0] [26:0] dividends;
logic [26:0] divisor;
logic [n-1:0] [26:0] quotients;

//clocking cb @(posedge clk);
//	output en;
//	output rst;
//	output dividends;
//	output divisor;
//
//	input quotients;
//endclocking
//
//modport array_div_tb (clocking cb);

// restrict directions
modport array_div (
	input clk,
	input en,
	input rst,

	input dividends,
	input divisor,

	output quotients
);

endinterface
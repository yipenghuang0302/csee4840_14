/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

interface ifc_array_div (
	input logic clk
);

parameter n = 5;

logic en, rst;
logic [n-1:0] [26:0] numer;
logic [26:0] denom;
logic [n-1:0] [26:0] quotient;

clocking cb @(posedge clk);
	output en;
	output rst;
	output numer;
	output denom;

	input quotient;
endclocking

modport array_div_tb (clocking cb);

// restrict directions
modport array_div (
	input clk,
	input en,
	input rst,

	input numer,
	input denom,

	output quotient
);

endinterface
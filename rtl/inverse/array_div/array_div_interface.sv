/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

interface ifc_array_div (
	input logic clk
);

parameter n = 15;

logic en, rst;
logic [n-1:0] [26:0] dataa;
logic [n-1:0] [26:0] datab;
logic [n-1:0] [26:0] result;

clocking cb @(posedge clk);
	output en;
	output rst;
	output dataa;
	output datab;

	input result;
endclocking

modport array_div_tb (clocking cb);

// restrict directions
modport array_div (
	input clk,
	input en,
	input rst,

	input dataa,
	input datab,

	output result
);

endinterface
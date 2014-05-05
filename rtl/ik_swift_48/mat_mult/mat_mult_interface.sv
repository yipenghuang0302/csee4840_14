/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

interface ifc_mat_mult (
	input logic clk
);

parameter n = 6;

logic en, rst, mat_mode;
logic [n-1:0] [n-1:0] [47:0] dataa;
logic [n-1:0] [n-1:0] [47:0] datab;
logic [n-1:0] [n-1:0] [47:0] result;

clocking cb @(posedge clk);
	output en;
	output rst;
	output mat_mode;
	output dataa;
	output datab;

	input result;
endclocking

modport mat_mult_tb (clocking cb);

// restrict directions
modport mat_mult (
	input clk,
	input en,
	input rst,
	input mat_mode,

	input dataa,
	input datab,

	output result
);

endinterface
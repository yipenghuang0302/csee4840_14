/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

interface ifc_t_block (
	input logic clk
);

logic en, rst;

logic [7:0] count;

logic [35:0] a;
logic [35:0] d;
logic [35:0] alpha;
logic [35:0] theta;

logic [5:0] [35:0] array_mult_result;
logic [5:0] [35:0] array_mult_dataa;
logic [5:0] [35:0] array_mult_datab;

logic [3:0] [3:0] [35:0] t_matrix;

clocking cb @(posedge clk);
	output en;
	output rst;
	output count;
	output a;
	output d;
	output alpha;
	output theta;

	input t_matrix;
endclocking

modport t_block_tb (clocking cb);

// restrict directions
modport t_block (
	input clk,
	input en,
	input rst,
	input count,

	input a,
	input d,
	input alpha,
	input theta,

	input array_mult_result,
	output array_mult_dataa,
	output array_mult_datab,

	output t_matrix
);

endinterface
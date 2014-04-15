/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

interface ifc_t_block (
	input logic clk
);

logic en;
logic [26:0] a;
logic [26:0] d;
logic [26:0] alpha;
logic [26:0] theta;

logic [3:0] [3:0] [26:0] t_matrix;

clocking cb @(posedge clk);
	output en;
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

	input a,
	input d,
	input alpha,
	input theta,

	output t_matrix
);

endinterface
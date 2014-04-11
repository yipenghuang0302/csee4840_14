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

logic [26:0] t_matrix_00;
logic [26:0] t_matrix_01;
logic [26:0] t_matrix_02;
logic [26:0] t_matrix_03;

logic [26:0] t_matrix_10;
logic [26:0] t_matrix_11;
logic [26:0] t_matrix_12;
logic [26:0] t_matrix_13;

logic [26:0] t_matrix_20;
logic [26:0] t_matrix_21;
logic [26:0] t_matrix_22;
logic [26:0] t_matrix_23;

logic [26:0] t_matrix_30;
logic [26:0] t_matrix_31;
logic [26:0] t_matrix_32;
logic [26:0] t_matrix_33;

clocking cb @(posedge clk);
	output en;
	output a;
	output d;
	output alpha;
	output theta;

	input t_matrix_00;
	input t_matrix_01;
	input t_matrix_02;
	input t_matrix_03;

	input t_matrix_10;
	input t_matrix_11;
	input t_matrix_12;
	input t_matrix_13;

	input t_matrix_20;
	input t_matrix_21;
	input t_matrix_22;
	input t_matrix_23;

	input t_matrix_30;
	input t_matrix_31;
	input t_matrix_32;
	input t_matrix_33;
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

	output t_matrix_00,
	output t_matrix_01,
	output t_matrix_02,
	output t_matrix_03,

	output t_matrix_10,
	output t_matrix_11,
	output t_matrix_12,
	output t_matrix_13,

	output t_matrix_20,
	output t_matrix_21,
	output t_matrix_22,
	output t_matrix_23,

	output t_matrix_30,
	output t_matrix_31,
	output t_matrix_32,
	output t_matrix_33
);

endinterface
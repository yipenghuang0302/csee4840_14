/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

interface ifc_full_mat (
	input logic clk
);

logic en, rst;
logic [7:0] count;

logic [5:0] [3:0] [35:0] dh_param;

// shared multipliers
logic [5:0] [35:0] array_mult_result;
logic [5:0] [5:0] [35:0] mat_mult_result;

// shared multipliers
logic [5:0] [35:0] array_mult_dataa;
logic [5:0] [35:0] array_mult_datab;
logic [5:0] [5:0] [35:0] mat_mult_dataa;
logic [5:0] [5:0] [35:0] mat_mult_datab;

// multiplied results of transformation matrices
logic [5:0] [3:0] [3:0] [35:0] full_matrix;

//clocking cb @(posedge clk);
//	output en;
//	output rst;
//	output dh_param;
//
//	input full_matrix;
//endclocking
//
//modport full_mat_tb (clocking cb);

// restrict directions
modport full_mat (
	input clk,
	input en,
	input rst,
	input count,
	input dh_param,

	input array_mult_result,
	input mat_mult_result,

	output array_mult_dataa,
	output array_mult_datab,
	output mat_mult_dataa,
	output mat_mult_datab,

	output full_matrix
);

endinterface
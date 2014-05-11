/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

interface ifc_jacobian (
	input logic clk
);

logic en, rst;

// Global clock cycle counter
logic [7:0] count;

// Base joint's axis of rotation/translation
logic [2:0] [17:0] z;

// Bit vector describing type of each joint
logic [5:0] joint_type;

// T blocks
logic [5:0] [3:0] [3:0] [26:0] full_matrix;

// Axis of rotation / translation for joints 1...6
logic [6:0] [2:0] [26:0] axis;

// Location of joints 1...6
logic [5:0] [2:0] [26:0] dist_to_end;

// Jacobian
logic [5:0] [5:0] [35:0] jacobian_matrix;

// Output to array multipliers
logic [8:0] [26:0] array_mult_dataa;
logic [8:0] [26:0] array_mult_datab;
// Input from array multipliers
logic [8:0] [26:0] array_mult_result;
// Output to matrix multipliers
logic [5:0] [5:0] [26:0] mat_mult_dataa;
logic [5:0] [5:0] [26:0] mat_mult_datab;
// Input from matrix multipliers
logic [5:0] [5:0] [35:0] mat_mult_result;

// clocking cb @(posedge clk);
// 	output en, rst;
// 	output z;
// 	output joint_type;
// 	output full_matrix;
// 
// 	input axis;
// 	input dist_to_end;
// 	input jacobian_matrix;
// endclocking
// 
// modport jacobian_tb (clocking cb);

// restrict directions
modport jacobian (
	input clk, en, rst,
	input count,

	input z,
	input joint_type,
	input full_matrix,

	input array_mult_result,
	input mat_mult_result,

	output array_mult_dataa,
	output array_mult_datab,
	output mat_mult_dataa,
	output mat_mult_datab,

	output axis,
	output dist_to_end,
	output jacobian_matrix
);

endinterface
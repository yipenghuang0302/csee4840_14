/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

interface ifc_jacobian_yipeng (
	input logic clk
);

//Global clock cycle counter
logic [7:0] count;

//Base joint's axis of rotation/translation
logic [2:0] [26:0] z;

//Bit vector describing type of each joint
logic [5:0] joint_type;

//T blocks
logic [5:0] [3:0] [3:0] [26:0] full_matrix;

//Jacobian
logic [5:0] [5:0] [26:0] jacobian_matrix;

//Output to array multipliers
logic [8:0] [26:0] array_mult_dataa;
logic [8:0] [26:0] array_mult_datab;
//Input from array multipliers
logic [8:0] [26:0] array_mult_result;
//Output to matrix multipliers
logic [5:0] [5:0] [26:0] mat_mult_dataa;
logic [5:0] [5:0] [26:0] mat_mult_datab;
//Input from matrix multipliers
logic [5:0] [5:0] [26:0] mat_mult_result;

clocking cb @(posedge clk);
	output z;
	output joint_type;
	output full_matrix;

	input jacobian_matrix;
endclocking

modport jacobian_tb (clocking cb);

// restrict directions
modport jacobian (
	input clk,
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

	output jacobian_matrix
);

endinterface
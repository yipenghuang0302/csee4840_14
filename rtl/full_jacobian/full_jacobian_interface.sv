/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

interface ifc_full_jacobian (
	input logic clk
);

logic en, rst;
logic [7:0] count;

// base joint's axis of rotation/translation
logic [2:0] [26:0] z;

// bit vector describing type of each joint
logic [5:0] joint_type;

// dh joint parameters
logic [5:0] [3:0] [26:0] dh_param;

// shared multipliers
logic [8:0] [26:0] array_mult_result;
logic [5:0] [5:0] [26:0] mat_mult_result;

// shared multipliers
logic [8:0] [26:0] array_mult_dataa;
logic [8:0] [26:0] array_mult_datab;
logic [5:0] [5:0] [26:0] mat_mult_dataa;
logic [5:0] [5:0] [26:0] mat_mult_datab;

// multiplied results of transformation matrices
logic [5:0] [3:0] [3:0] [26:0] full_matrix;

// axis of rotation / translation for joints 1...6
logic [5:0] [2:0] [26:0] axis;

// location of joints 1...6
logic [5:0] [2:0] [26:0] dist_to_end;

// jacobian
logic [5:0] [5:0] [26:0] jacobian_matrix;

// jacobian * jacobian transpose + bias
logic [5:0] [5:0] [26:0] jjt_bias;

//clocking cb @(posedge clk);
//	output en;
//	output rst;
//	output z;
//	output joint_type;
//	output dh_param;
//
//	input full_matrix;
//	input axis;
//	input dist_to_end;
//	input jacobian_matrix;
//	input jjt_bias;
//endclocking
//
//modport full_jacobian_tb (clocking cb);

// restrict directions
modport full_jacobian (
	input clk,
	input en,
	input rst,
	input count,

	input z,
	input joint_type,
	input dh_param,

	input array_mult_result,
	input mat_mult_result,

	output array_mult_dataa,
	output array_mult_datab,
	output mat_mult_dataa,
	output mat_mult_datab,

	output full_matrix,
	output axis,
	output dist_to_end,
	output jacobian_matrix,

	output jjt_bias
);

endinterface
/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

interface ifc_ik_swift (
	input logic clk
);

logic en, rst;

// INPUTS
// base joint's axis of rotation/translation
logic [2:0] [35:0] z;
// bit vector describing type of each joint
logic [5:0] joint_type;
// dh joint parameters
logic [5:0] [3:0] [35:0] dh_param_in;
// target coordinates
logic [5:0] [35:0] target;

// TEST OUTPUTS
// jacobian
logic [5:0] [5:0] [35:0] jacobian_matrix;
// jacobian * jacobian transpose + bias
logic [5:0] [5:0] [35:0] jjt_bias;
// LT decomposition of given matrix
logic [5:0] [5:0] [35:0] lt;
// inverse of LT matrix
logic [5:0] [5:0] [35:0] lt_inverse;
// inverse of given matrix
logic [5:0] [5:0] [35:0] inverse;
// damped least squares matrix
logic [5:0] [5:0] [35:0] dls;
// deltas for joint parameters
logic [5:0] [35:0] delta;

// OUTPUTS
// dh joint parameters
logic [5:0] [3:0] [35:0] dh_param_out;

clocking cb @(posedge clk);
	output en;
	output rst;
	output z;
	output joint_type;
	output dh_param_in;
	output target;

	input jacobian_matrix;
	input jjt_bias;
	input lt;
	input lt_inverse;
	input inverse;
	input dls;
	input delta;
	input dh_param_out;
endclocking

modport ik_swift_tb (clocking cb);

// restrict directions
modport ik_swift (
	input clk, en, rst,

	input z,
	input joint_type,
	input target,
	input dh_param_in,

	output jacobian_matrix,
	output jjt_bias,
	output lt,
	output lt_inverse,
	output inverse,
	output dls,
	output delta,
	output dh_param_out
);

endinterface
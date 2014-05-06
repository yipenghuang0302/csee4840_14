/*
 * Memory interface for IKSwift
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

`timescale 1ns/1ps

`include "../ik_swift/ik_swift_interface.sv"
`include "../ik_swift/ik_swift.sv"

`include "../ik_swift/full_jacobian/full_jacobian_interface.sv"
`include "../ik_swift/full_jacobian/full_jacobian.sv"
`include "../ik_swift/full_jacobian/jacobian/jacobian_interface.sv"
`include "../ik_swift/full_jacobian/jacobian/jacobian.sv"
`include "../ik_swift/full_jacobian/full_mat/full_mat_interface.sv"
`include "../ik_swift/full_jacobian/full_mat/full_mat.sv"
`include "../ik_swift/full_jacobian/full_mat/t_block/t_block_interface.sv"
`include "../ik_swift/full_jacobian/full_mat/t_block/t_block.sv"
`include "../ik_swift/full_jacobian/full_mat/t_block/sincos/sincos_interface.sv"
`include "../ik_swift/full_jacobian/full_mat/t_block/sincos/sincos.sv"
`include "../ik_swift/full_jacobian/full_mat/t_block/sincos/sin.sv"
`include "../ik_swift/full_jacobian/full_mat/t_block/sincos/cos.sv"
`include "../ik_swift/full_jacobian/full_mat/t_block/sincos/mult_36_coeff_26561/mult_36_coeff_26561.v"
`include "../ik_swift/full_jacobian/full_mat/t_block/sincos/mult_36_coeff_83443/mult_36_coeff_83443.v"
`include "../ik_swift/full_jacobian/full_mat/t_block/sincos/mult_36_coeff_14746/mult_36_coeff_14746.v"

`include "../ik_swift/inverse/inverse_interface.sv"
`include "../ik_swift/inverse/inverse.sv"
`include "../ik_swift/inverse/cholesky/cholesky_interface.sv"
`include "../ik_swift/inverse/cholesky/cholesky.sv"
`include "../ik_swift/inverse/cholesky/sqrt_52/sqrt_52_interface.sv"
`include "../ik_swift/inverse/cholesky/sqrt_52/sqrt_52.v"
`include "../ik_swift/inverse/lt_inverse/lt_inverse_interface.sv"
`include "../ik_swift/inverse/lt_inverse/lt_inverse.sv"
`include "../ik_swift/inverse/array_div/array_div_interface.sv"
`include "../ik_swift/inverse/array_div/array_div.sv"
`include "../ik_swift/inverse/array_div/div_52/div_52.v"

`include "../ik_swift/mat_mult/mat_mult_interface.sv"
`include "../ik_swift/mat_mult/mat_mult.sv"
`include "../ik_swift/mat_mult/mult_array.sv"
`include "../ik_swift/array_mult/array_mult_interface.sv"
`include "../ik_swift/array_mult/array_mult.sv"

`include "../ik_swift/mult_36/mult_36.v"
//`include "../ik_swift/sim_models/lpm_mult.v"
//`include "../ik_swift/sim_models/mult_block.v"
//`include "../ik_swift/sim_models/addsub_block.v"
//`include "../ik_swift/sim_models/pipeline_internal_fv.v"
//`include "../ik_swift/sim_models/dffep.v"
//`include "../ik_swift/sim_models/altera_mf.v"
//`include "../ik_swift/sim_models/220model.v"

parameter THETA = 0;
parameter L_OFFSET = 1;
parameter L_DISTANCE = 2;
parameter ALPHA = 3;
parameter MAX_JOINT = 6;

module ik_swift_interface (
	input logic clk,
	input logic reset,

	// inputs
	input logic chipselect,
	input logic write,
	input logic [6:0] address,
	input logic [7:0] writedata,

	// outputs
	input logic [2:0] row_select,
	output logic [35:0] data
);

	// LOGIC GOVERNING MEMORY SPACE
	logic [2:0] [35:0] target; // (x,y,z) coordinates of target position
	// TODO: what about orientation?
	logic [5:0] joint_type; // The ith bit is 1 if ith joint is rotational; translational otherwise
	logic [5:0] [3:0] [35:0] dh_param;
	// TODO: unsigned char start;
	// TODO: unsigned char ready;

	always_ff @(posedge clk) begin
		if (reset) begin
			joint_type <= {6'b0};
			target <= {3{36'b0}};
			dh_param <= {24{36'b0}};
		end else if ( chipselect && write ) begin
			case (address)

				7'd0 : joint_type <= writedata[5:0]; // joint type vector
				7'd1 : ;
				7'd2 : ;
				7'd3 : ;

				7'd4 : target[0][26:24] <= writedata[2:0]; // target[0] x
				7'd5 : target[0][23:16] <= writedata; // target[0] x
				7'd6 : target[0][15:8] <= writedata; // target[0] x
				7'd7 : target[0][7:0] <= writedata; // target[0] x

				7'd8 : target[1][26:24] <= writedata[2:0]; // target[1] y
				7'd9 : target[1][23:16] <= writedata; // target[1] y
				7'd10 : target[1][15:8] <= writedata; // target[1] y
				7'd11 : target[1][7:0] <= writedata; // target[1] y

				7'd12 : target[2][26:24] <= writedata[2:0]; // target[2] z
				7'd13 : target[2][23:16] <= writedata; // target[2] z
				7'd14 : target[2][15:8] <= writedata; // target[2] z
				7'd15 : target[2][7:0] <= writedata; // target[2] z

				7'd16 : dh_param[0][THETA][26:24] <= writedata[2:0];
				7'd17 : dh_param[0][THETA][23:16] <= writedata;
				7'd18 : dh_param[0][THETA][15:8] <= writedata;
				7'd19 : dh_param[0][THETA][7:0] <= writedata;
				7'd20 : dh_param[0][L_OFFSET][26:24] <= writedata[2:0];
				7'd21 : dh_param[0][L_OFFSET][23:16] <= writedata;
				7'd22 : dh_param[0][L_OFFSET][15:8] <= writedata;
				7'd23 : dh_param[0][L_OFFSET][7:0] <= writedata;
				7'd24 : dh_param[0][L_DISTANCE][26:24] <= writedata[2:0];
				7'd25 : dh_param[0][L_DISTANCE][23:16] <= writedata;
				7'd26 : dh_param[0][L_DISTANCE][15:8] <= writedata;
				7'd27 : dh_param[0][L_DISTANCE][7:0] <= writedata;
				7'd28 : dh_param[0][ALPHA][26:24] <= writedata[2:0];
				7'd29 : dh_param[0][ALPHA][23:16] <= writedata;
				7'd30 : dh_param[0][ALPHA][15:8] <= writedata;
				7'd31 : dh_param[0][ALPHA][7:0] <= writedata;

				7'd32 : dh_param[1][THETA][26:24] <= writedata[2:0];
				7'd33 : dh_param[1][THETA][23:16] <= writedata;
				7'd34 : dh_param[1][THETA][15:8] <= writedata;
				7'd35 : dh_param[1][THETA][7:0] <= writedata;
				7'd36 : dh_param[1][L_OFFSET][26:24] <= writedata[2:0];
				7'd37 : dh_param[1][L_OFFSET][23:16] <= writedata;
				7'd38 : dh_param[1][L_OFFSET][15:8] <= writedata;
				7'd39 : dh_param[1][L_OFFSET][7:0] <= writedata;
				7'd40 : dh_param[1][L_DISTANCE][26:24] <= writedata[2:0];
				7'd41 : dh_param[1][L_DISTANCE][23:16] <= writedata;
				7'd42 : dh_param[1][L_DISTANCE][15:8] <= writedata;
				7'd43 : dh_param[1][L_DISTANCE][7:0] <= writedata;
				7'd44 : dh_param[1][ALPHA][26:24] <= writedata[2:0];
				7'd45 : dh_param[1][ALPHA][23:16] <= writedata;
				7'd46 : dh_param[1][ALPHA][15:8] <= writedata;
				7'd47 : dh_param[1][ALPHA][7:0] <= writedata;

				7'd48 : dh_param[2][THETA][26:24] <= writedata[2:0];
				7'd49 : dh_param[2][THETA][23:16] <= writedata;
				7'd50 : dh_param[2][THETA][15:8] <= writedata;
				7'd51 : dh_param[2][THETA][7:0] <= writedata;
				7'd52 : dh_param[2][L_OFFSET][26:24] <= writedata[2:0];
				7'd53 : dh_param[2][L_OFFSET][23:16] <= writedata;
				7'd54 : dh_param[2][L_OFFSET][15:8] <= writedata;
				7'd55 : dh_param[2][L_OFFSET][7:0] <= writedata;
				7'd56 : dh_param[2][L_DISTANCE][26:24] <= writedata[2:0];
				7'd57 : dh_param[2][L_DISTANCE][23:16] <= writedata;
				7'd58 : dh_param[2][L_DISTANCE][15:8] <= writedata;
				7'd59 : dh_param[2][L_DISTANCE][7:0] <= writedata;
				7'd60 : dh_param[2][ALPHA][26:24] <= writedata[2:0];
				7'd61 : dh_param[2][ALPHA][23:16] <= writedata;
				7'd62 : dh_param[2][ALPHA][15:8] <= writedata;
				7'd63 : dh_param[2][ALPHA][7:0] <= writedata;

				7'd64 : dh_param[3][THETA][26:24] <= writedata[2:0];
				7'd65 : dh_param[3][THETA][23:16] <= writedata;
				7'd66 : dh_param[3][THETA][15:8] <= writedata;
				7'd67 : dh_param[3][THETA][7:0] <= writedata;
				7'd68 : dh_param[3][L_OFFSET][26:24] <= writedata[2:0];
				7'd69 : dh_param[3][L_OFFSET][23:16] <= writedata;
				7'd70 : dh_param[3][L_OFFSET][15:8] <= writedata;
				7'd71 : dh_param[3][L_OFFSET][7:0] <= writedata;
				7'd72 : dh_param[3][L_DISTANCE][26:24] <= writedata[2:0];
				7'd73 : dh_param[3][L_DISTANCE][23:16] <= writedata;
				7'd74 : dh_param[3][L_DISTANCE][15:8] <= writedata;
				7'd75 : dh_param[3][L_DISTANCE][7:0] <= writedata;
				7'd76 : dh_param[3][ALPHA][26:24] <= writedata[2:0];
				7'd77 : dh_param[3][ALPHA][23:16] <= writedata;
				7'd78 : dh_param[3][ALPHA][15:8] <= writedata;
				7'd79 : dh_param[3][ALPHA][7:0] <= writedata;

				7'd80 : dh_param[4][THETA][26:24] <= writedata[2:0];
				7'd81 : dh_param[4][THETA][23:16] <= writedata;
				7'd82 : dh_param[4][THETA][15:8] <= writedata;
				7'd83 : dh_param[4][THETA][7:0] <= writedata;
				7'd84 : dh_param[4][L_OFFSET][26:24] <= writedata[2:0];
				7'd85 : dh_param[4][L_OFFSET][23:16] <= writedata;
				7'd86 : dh_param[4][L_OFFSET][15:8] <= writedata;
				7'd87 : dh_param[4][L_OFFSET][7:0] <= writedata;
				7'd88 : dh_param[4][L_DISTANCE][26:24] <= writedata[2:0];
				7'd89 : dh_param[4][L_DISTANCE][23:16] <= writedata;
				7'd90 : dh_param[4][L_DISTANCE][15:8] <= writedata;
				7'd91 : dh_param[4][L_DISTANCE][7:0] <= writedata;
				7'd92 : dh_param[4][ALPHA][26:24] <= writedata[2:0];
				7'd93 : dh_param[4][ALPHA][23:16] <= writedata;
				7'd94 : dh_param[4][ALPHA][15:8] <= writedata;
				7'd95 : dh_param[4][ALPHA][7:0] <= writedata;

				7'd96 : dh_param[5][THETA][26:24] <= writedata[2:0];
				7'd97 : dh_param[5][THETA][23:16] <= writedata;
				7'd98 : dh_param[5][THETA][15:8] <= writedata;
				7'd99 : dh_param[5][THETA][7:0] <= writedata;
				7'd100 : dh_param[5][L_OFFSET][26:24] <= writedata[2:0];
				7'd101 : dh_param[5][L_OFFSET][23:16] <= writedata;
				7'd102 : dh_param[5][L_OFFSET][15:8] <= writedata;
				7'd103 : dh_param[5][L_OFFSET][7:0] <= writedata;
				7'd104 : dh_param[5][L_DISTANCE][26:24] <= writedata[2:0];
				7'd105 : dh_param[5][L_DISTANCE][23:16] <= writedata;
				7'd106 : dh_param[5][L_DISTANCE][15:8] <= writedata;
				7'd107 : dh_param[5][L_DISTANCE][7:0] <= writedata;
				7'd108 : dh_param[5][ALPHA][26:24] <= writedata[2:0];
				7'd109 : dh_param[5][ALPHA][23:16] <= writedata;
				7'd110 : dh_param[5][ALPHA][15:8] <= writedata;
				7'd111 : dh_param[5][ALPHA][7:0] <= writedata;

			endcase
		end
	end

	// INSTANTIATE IK_FAST TOP MODULE
	ifc_ik_swift ifc_ik_swift (clk);
	assign ifc_ik_swift.en = 1'b1;
	assign ifc_ik_swift.rst = reset;
	// INPUTS
	// base joint's axis of rotation/translation
	assign ifc_ik_swift.z = { 36'd0, 36'd0, 36'd65536 }; // unit vector in z direction
	// bit vector describing type of each joint
	assign ifc_ik_swift.joint_type = joint_type;
	// dh joint parameters
	assign ifc_ik_swift.dh_param = dh_param;
	// target coordinates
	assign ifc_ik_swift.target = target;
	ik_swift ik_swift (ifc_ik_swift.ik_swift);

	// OUTPUTS
	// deltas for joint parameters
	always_ff @(posedge clk) begin
	 	data <= ifc_ik_swift.delta[row_select];
	end

endmodule
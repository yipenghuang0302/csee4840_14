/*
 * Memory interface for IKSwift
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

`timescale 1ns/1ps

`include "../ik_swift_32/ik_swift_interface.sv"
`include "../ik_swift_32/ik_swift.sv"

`include "../ik_swift_32/full_jacobian/full_jacobian_interface.sv"
`include "../ik_swift_32/full_jacobian/full_jacobian.sv"
`include "../ik_swift_32/full_jacobian/jacobian/jacobian_interface.sv"
`include "../ik_swift_32/full_jacobian/jacobian/jacobian.sv"
`include "../ik_swift_32/full_jacobian/full_mat/full_mat_interface.sv"
`include "../ik_swift_32/full_jacobian/full_mat/full_mat.sv"
`include "../ik_swift_32/full_jacobian/full_mat/t_block/t_block_interface.sv"
`include "../ik_swift_32/full_jacobian/full_mat/t_block/t_block.sv"
`include "../ik_swift_32/full_jacobian/full_mat/t_block/sincos/sincos_interface.sv"
`include "../ik_swift_32/full_jacobian/full_mat/t_block/sincos/sincos.sv"
`include "../ik_swift_32/full_jacobian/full_mat/t_block/sincos/sin.sv"
`include "../ik_swift_32/full_jacobian/full_mat/t_block/sincos/cos.sv"
`include "../ik_swift_32/full_jacobian/full_mat/t_block/sincos/mult_21_coeff_26561/mult_21_coeff_26561.v"
`include "../ik_swift_32/full_jacobian/full_mat/t_block/sincos/mult_21_coeff_83443/mult_21_coeff_83443.v"
`include "../ik_swift_32/full_jacobian/full_mat/t_block/sincos/mult_21_coeff_14746/mult_21_coeff_14746.v"
`include "../ik_swift_32/full_jacobian/full_mat/t_block/sincos/mult_21/mult_21.v"

`include "../ik_swift_32/inverse/inverse_interface.sv"
`include "../ik_swift_32/inverse/inverse.sv"
`include "../ik_swift_32/inverse/cholesky_block/cholesky_block_interface.sv"
`include "../ik_swift_32/inverse/cholesky_block/cholesky_block.sv"
`include "../ik_swift_32/inverse/cholesky_block/sqrt_43/sqrt_43_interface.sv"
`include "../ik_swift_32/inverse/cholesky_block/sqrt_43/sqrt_43.v"
`include "../ik_swift_32/inverse/lt_block/lt_block_interface.sv"
`include "../ik_swift_32/inverse/lt_block/lt_block.sv"
`include "../ik_swift_32/inverse/array_div/array_div_interface.sv"
`include "../ik_swift_32/inverse/array_div/array_div.sv"
`include "../ik_swift_32/inverse/array_div/div_43/div_43.v"

`include "../ik_swift_32/mat_mult/mat_mult_interface.sv"
`include "../ik_swift_32/mat_mult/mat_mult.sv"
`include "../ik_swift_32/mat_mult/mult_array.sv"
`include "../ik_swift_32/array_mult/array_mult_interface.sv"
`include "../ik_swift_32/array_mult/array_mult.sv"
`include "../ik_swift_32/mult_27/mult_27.v"

// `include "../ik_swift_32/sim_models/lpm_mult.v"
// `include "../ik_swift_32/sim_models/mult_block.v"
// `include "../ik_swift_32/sim_models/addsub_block.v"
// `include "../ik_swift_32/sim_models/pipeline_internal_fv.v"
// `include "../ik_swift_32/sim_models/dffep.v"
// `include "../ik_swift_32/sim_models/altera_mf.v"
// `include "../ik_swift_32/sim_models/220model.v"

parameter MAX_JOINT = 6;

module ik_swift_interface (
	input logic clk,
	input logic reset,

	// inputs
	input logic chipselect,
	input logic write,
	input logic [5:0] address,
	input logic [31:0] writedata,

	// outputs
	output logic [31:0] readdata
);

	// REGISTERS
	logic [2:0] [26:0] target; // (x,y,z) coordinates and orientation of target position

	// INSTANTIATE IK_FAST TOP MODULE
	ifc_ik_swift ifc_ik_swift (clk);
	// INPUTS
	assign ifc_ik_swift.rst = reset;
	// base joint's axis of rotation/translation
	assign ifc_ik_swift.z = { 18'd65536, 18'd0, 18'd0 }; // unit vector in z direction
	// bit vector describing type of each joint
	assign ifc_ik_swift.joint_type = 6'b111111;
	// target coordinates
	assign ifc_ik_swift.target = {{81'b0}, target};
	ik_swift ik_swift (ifc_ik_swift.ik_swift);

	always_ff @(posedge clk) begin
		if (reset) begin
			target <= {3{27'b0}};
			ifc_ik_swift.en <= 1'b0;
			ifc_ik_swift.dh_dyn_in <= {6{21'b0}};
		end else if ( chipselect && write ) begin
			case (address)

				// 6'd00 : joint_type <= writedata[5:0]; // joint type vector
				6'd01 : ifc_ik_swift.en <= writedata[0]; // start signal

				6'd02 : target[0] <= writedata[26:0]; // target[0] x
				6'd04 : target[1] <= writedata[26:0]; // target[1] y
				6'd06 : target[2] <= writedata[26:0]; // target[2] z

				6'd16 : ifc_ik_swift.dh_dyn_in[0]/*[THETA]*/ <= writedata[20:0];
				6'd24 : ifc_ik_swift.dh_dyn_in[1]/*[THETA]*/ <= writedata[20:0];
				6'd32 : ifc_ik_swift.dh_dyn_in[2]/*[THETA]*/ <= writedata[20:0];
				6'd40 : ifc_ik_swift.dh_dyn_in[3]/*[THETA]*/ <= writedata[20:0];
				6'd48 : ifc_ik_swift.dh_dyn_in[4]/*[THETA]*/ <= writedata[20:0];
				6'd56 : ifc_ik_swift.dh_dyn_in[5]/*[THETA]*/ <= writedata[20:0];

			endcase
		end
	end

	// OUTPUTS
	// deltas for joint parameters
	always_ff @(posedge clk) begin
		if (reset) begin
			readdata <= {32'b0};
		end else if ( chipselect ) begin
			case (address)

				6'd00 : readdata <= {26'b0, ifc_ik_swift.joint_type};
				6'd01 : readdata <= {31'b0, ifc_ik_swift.done};

				6'd02 : readdata <= {{5{target[0][26]}}, target[0]};
				6'd04 : readdata <= {{5{target[1][26]}}, target[1]};
				6'd06 : readdata <= {{5{target[2][26]}}, target[2]};

				6'd16 : readdata <= {{11{ifc_ik_swift.dh_dyn_out[0][20]}}, ifc_ik_swift.dh_dyn_out[0]/*[THETA]*/};
				6'd24 : readdata <= {{11{ifc_ik_swift.dh_dyn_out[1][20]}}, ifc_ik_swift.dh_dyn_out[1]/*[THETA]*/};
				6'd32 : readdata <= {{11{ifc_ik_swift.dh_dyn_out[2][20]}}, ifc_ik_swift.dh_dyn_out[2]/*[THETA]*/};
				6'd40 : readdata <= {{11{ifc_ik_swift.dh_dyn_out[3][20]}}, ifc_ik_swift.dh_dyn_out[3]/*[THETA]*/};
				6'd48 : readdata <= {{11{ifc_ik_swift.dh_dyn_out[4][20]}}, ifc_ik_swift.dh_dyn_out[4]/*[THETA]*/};
				6'd56 : readdata <= {{11{ifc_ik_swift.dh_dyn_out[5][20]}}, ifc_ik_swift.dh_dyn_out[5]/*[THETA]*/};

			endcase
		end
	end

endmodule
/*
 * Memory interface for IKSwift
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

`timescale 1ns/1ps

`include "../ik_swift_36/ik_swift_interface.sv"
`include "../ik_swift_36/ik_swift.sv"

`include "../ik_swift_36/full_jacobian/full_jacobian_interface.sv"
`include "../ik_swift_36/full_jacobian/full_jacobian.sv"
`include "../ik_swift_36/full_jacobian/jacobian/jacobian_interface.sv"
`include "../ik_swift_36/full_jacobian/jacobian/jacobian.sv"
`include "../ik_swift_36/full_jacobian/full_mat/full_mat_interface.sv"
`include "../ik_swift_36/full_jacobian/full_mat/full_mat.sv"
`include "../ik_swift_36/full_jacobian/full_mat/t_block/t_block_interface.sv"
`include "../ik_swift_36/full_jacobian/full_mat/t_block/t_block.sv"
`include "../ik_swift_36/full_jacobian/full_mat/t_block/sincos/sincos_interface.sv"
`include "../ik_swift_36/full_jacobian/full_mat/t_block/sincos/sincos.sv"
`include "../ik_swift_36/full_jacobian/full_mat/t_block/sincos/sin.sv"
`include "../ik_swift_36/full_jacobian/full_mat/t_block/sincos/cos.sv"
`include "../ik_swift_36/full_jacobian/full_mat/t_block/sincos/mult_36_coeff_26561/mult_36_coeff_26561.v"
`include "../ik_swift_36/full_jacobian/full_mat/t_block/sincos/mult_36_coeff_83443/mult_36_coeff_83443.v"
`include "../ik_swift_36/full_jacobian/full_mat/t_block/sincos/mult_36_coeff_14746/mult_36_coeff_14746.v"

`include "../ik_swift_36/inverse/inverse_interface.sv"
`include "../ik_swift_36/inverse/inverse.sv"
`include "../ik_swift_36/inverse/cholesky_block/cholesky_block_interface.sv"
`include "../ik_swift_36/inverse/cholesky_block/cholesky_block.sv"
`include "../ik_swift_36/inverse/cholesky_block/sqrt_52/sqrt_52_interface.sv"
`include "../ik_swift_36/inverse/cholesky_block/sqrt_52/sqrt_52.v"
`include "../ik_swift_36/inverse/lt_block/lt_block_interface.sv"
`include "../ik_swift_36/inverse/lt_block/lt_block.sv"
`include "../ik_swift_36/inverse/array_div/array_div_interface.sv"
`include "../ik_swift_36/inverse/array_div/array_div.sv"
`include "../ik_swift_36/inverse/array_div/div_52/div_52.v"

`include "../ik_swift_36/mat_mult/mat_mult_interface.sv"
`include "../ik_swift_36/mat_mult/mat_mult.sv"
`include "../ik_swift_36/mat_mult/mult_array.sv"
`include "../ik_swift_36/array_mult/array_mult_interface.sv"
`include "../ik_swift_36/array_mult/array_mult.sv"

`include "../ik_swift_36/mult_36/mult_36.v"
`include "../ik_swift_36/mat_mult/mult_36_dsp/mult_36_dsp.v"
`include "../ik_swift_36/sim_models/lpm_mult.v"
`include "../ik_swift_36/sim_models/mult_block.v"
`include "../ik_swift_36/sim_models/addsub_block.v"
`include "../ik_swift_36/sim_models/pipeline_internal_fv.v"
`include "../ik_swift_36/sim_models/dffep.v"
`include "../ik_swift_36/sim_models/altera_mf.v"
`include "../ik_swift_36/sim_models/220model.v"

// parameter THETA = 0;
// parameter L_OFFSET = 1;
// parameter L_DISTANCE = 2;
// parameter ALPHA = 3;
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

	// LOGIC GOVERNING MEMORY SPACE
	logic [5:0] joint_type; // The ith bit is 1 if ith joint is rotational; translational otherwise
	logic [5:0] [35:0] target; // (x,y,z) coordinates and orientation of target position
	logic start;

	always_ff @(posedge clk) begin
		if (reset) begin
			joint_type <= {6'b0};
			target <= {3{36'b0}};
			start <= 1'b0;
			ifc_ik_swift.dh_param_in <= {24{36'b0}};
		end else if ( chipselect && write ) begin
			case (address)

				6'd00 : joint_type <= writedata[5:0]; // joint type vector
				6'd01 : start <= writedata[0]; // start signal

				6'd02 : target[0][35:32] <= writedata[3:0]; // target[0] x
				6'd03 : target[0] <= writedata; // target[0] x
				6'd04 : target[1][35:32] <= writedata[3:0]; // target[1] y
				6'd05 : target[1] <= writedata; // target[1] y
				6'd06 : target[2][35:32] <= writedata[3:0]; // target[2] z
				6'd07 : target[2] <= writedata; // target[2] z
				6'd08 : target[3][35:32] <= writedata[3:0]; // target[3] x
				6'd09 : target[3] <= writedata; // target[3] x
				6'd10 : target[4][35:32] <= writedata[3:0]; // target[4] y
				6'd11 : target[4] <= writedata; // target[4] y
				6'd12 : target[5][35:32] <= writedata[3:0]; // target[5] z
				6'd13 : target[5] <= writedata; // target[5] z
				
				6'd14 : ;
				6'd15 : ;

				6'd16 : ifc_ik_swift.dh_param_in[0][THETA][35:32] <= writedata[3:0];
				6'd17 : ifc_ik_swift.dh_param_in[0][THETA] <= writedata;
				6'd18 : ifc_ik_swift.dh_param_in[0][L_OFFSET][35:32] <= writedata[3:0];
				6'd19 : ifc_ik_swift.dh_param_in[0][L_OFFSET] <= writedata;
				6'd20 : ifc_ik_swift.dh_param_in[0][L_DISTANCE][35:32] <= writedata[3:0];
				6'd21 : ifc_ik_swift.dh_param_in[0][L_DISTANCE] <= writedata;
				6'd22 : ifc_ik_swift.dh_param_in[0][ALPHA][35:32] <= writedata[3:0];
				6'd23 : ifc_ik_swift.dh_param_in[0][ALPHA] <= writedata;

				6'd24 : ifc_ik_swift.dh_param_in[1][THETA][35:32] <= writedata[3:0];
				6'd25 : ifc_ik_swift.dh_param_in[1][THETA] <= writedata;
				6'd26 : ifc_ik_swift.dh_param_in[1][L_OFFSET][35:32] <= writedata[3:0];
				6'd27 : ifc_ik_swift.dh_param_in[1][L_OFFSET] <= writedata;
				6'd28 : ifc_ik_swift.dh_param_in[1][L_DISTANCE][35:32] <= writedata[3:0];
				6'd29 : ifc_ik_swift.dh_param_in[1][L_DISTANCE] <= writedata;
				6'd30 : ifc_ik_swift.dh_param_in[1][ALPHA][35:32] <= writedata[3:0];
				6'd31 : ifc_ik_swift.dh_param_in[1][ALPHA] <= writedata;

				6'd32 : ifc_ik_swift.dh_param_in[2][THETA][35:32] <= writedata[3:0];
				6'd33 : ifc_ik_swift.dh_param_in[2][THETA] <= writedata;
				6'd34 : ifc_ik_swift.dh_param_in[2][L_OFFSET][35:32] <= writedata[3:0];
				6'd35 : ifc_ik_swift.dh_param_in[2][L_OFFSET] <= writedata;
				6'd36 : ifc_ik_swift.dh_param_in[2][L_DISTANCE][35:32] <= writedata[3:0];
				6'd37 : ifc_ik_swift.dh_param_in[2][L_DISTANCE] <= writedata;
				6'd38 : ifc_ik_swift.dh_param_in[2][ALPHA][35:32] <= writedata[3:0];
				6'd39 : ifc_ik_swift.dh_param_in[2][ALPHA] <= writedata;

				6'd40 : ifc_ik_swift.dh_param_in[3][THETA][35:32] <= writedata[3:0];
				6'd41 : ifc_ik_swift.dh_param_in[3][THETA] <= writedata;
				6'd42 : ifc_ik_swift.dh_param_in[3][L_OFFSET][35:32] <= writedata[3:0];
				6'd43 : ifc_ik_swift.dh_param_in[3][L_OFFSET] <= writedata;
				6'd44 : ifc_ik_swift.dh_param_in[3][L_DISTANCE][35:32] <= writedata[3:0];
				6'd45 : ifc_ik_swift.dh_param_in[3][L_DISTANCE] <= writedata;
				6'd46 : ifc_ik_swift.dh_param_in[3][ALPHA][35:32] <= writedata[3:0];
				6'd47 : ifc_ik_swift.dh_param_in[3][ALPHA] <= writedata;

				6'd48 : ifc_ik_swift.dh_param_in[4][THETA][35:32] <= writedata[3:0];
				6'd49 : ifc_ik_swift.dh_param_in[4][THETA] <= writedata;
				6'd50 : ifc_ik_swift.dh_param_in[4][L_OFFSET][35:32] <= writedata[3:0];
				6'd51 : ifc_ik_swift.dh_param_in[4][L_OFFSET] <= writedata;
				6'd52 : ifc_ik_swift.dh_param_in[4][L_DISTANCE][35:32] <= writedata[3:0];
				6'd53 : ifc_ik_swift.dh_param_in[4][L_DISTANCE] <= writedata;
				6'd54 : ifc_ik_swift.dh_param_in[4][ALPHA][35:32] <= writedata[3:0];
				6'd55 : ifc_ik_swift.dh_param_in[4][ALPHA] <= writedata;

				6'd56 : ifc_ik_swift.dh_param_in[5][THETA][35:32] <= writedata[3:0];
				6'd57 : ifc_ik_swift.dh_param_in[5][THETA] <= writedata;
				6'd58 : ifc_ik_swift.dh_param_in[5][L_OFFSET][35:32] <= writedata[3:0];
				6'd59 : ifc_ik_swift.dh_param_in[5][L_OFFSET] <= writedata;
				6'd60 : ifc_ik_swift.dh_param_in[5][L_DISTANCE][35:32] <= writedata[3:0];
				6'd61 : ifc_ik_swift.dh_param_in[5][L_DISTANCE] <= writedata;
				6'd62 : ifc_ik_swift.dh_param_in[5][ALPHA][35:32] <= writedata[3:0];
				6'd63 : ifc_ik_swift.dh_param_in[5][ALPHA] <= writedata;

			endcase
		end
	end

	// INSTANTIATE IK_FAST TOP MODULE
	ifc_ik_swift ifc_ik_swift (clk);
	assign ifc_ik_swift.en = start;
	assign ifc_ik_swift.rst = reset;
	// INPUTS
	// base joint's axis of rotation/translation
	assign ifc_ik_swift.z = { 36'd0, 36'd0, 36'd65536 }; // unit vector in z direction
	// bit vector describing type of each joint
	assign ifc_ik_swift.joint_type = joint_type;
	// target coordinates
	assign ifc_ik_swift.target = target;
	ik_swift ik_swift (ifc_ik_swift.ik_swift);

	// OUTPUTS
	// deltas for joint parameters
	always_ff @(posedge clk) begin
		if (reset) begin
			readdata <= {36'b0};
		end else if ( chipselect ) begin
			case (address)

				6'd00 : readdata <= {26'b0, joint_type};
				6'd01 : readdata <= {31'b0, start};

				6'd02 : readdata <= {28'b0, target[0][35:32]};
				6'd03 : readdata <= target[0][31:0];
				6'd04 : readdata <= {28'b0, target[1][35:32]};
				6'd05 : readdata <= target[1][31:0];
				6'd06 : readdata <= {28'b0, target[2][35:32]};
				6'd07 : readdata <= target[2][31:0];
				6'd08 : readdata <= {28'b0, target[3][35:32]};
				6'd09 : readdata <= target[3][31:0];
				6'd10 : readdata <= {28'b0, target[4][35:32]};
				6'd11 : readdata <= target[4][31:0];
				6'd12 : readdata <= {28'b0, target[5][35:32]};
				6'd13 : readdata <= target[5][31:0];
				
				6'd14 : readdata <= 36'b0;
				6'd15 : readdata <= 36'b0;

				6'd16 : readdata <= {28'b0, ifc_ik_swift.dh_param_out[0][THETA][35:32]};
				6'd17 : readdata <= ifc_ik_swift.dh_param_out[0][THETA][31:0];
				6'd18 : readdata <= {28'b0, ifc_ik_swift.dh_param_out[0][L_OFFSET][35:32]};
				6'd19 : readdata <= ifc_ik_swift.dh_param_out[0][L_OFFSET][31:0];
				6'd20 : readdata <= {28'b0, ifc_ik_swift.dh_param_out[0][L_DISTANCE][35:32]};
				6'd21 : readdata <= ifc_ik_swift.dh_param_out[0][L_DISTANCE][31:0];
				6'd22 : readdata <= {28'b0, ifc_ik_swift.dh_param_out[0][ALPHA][35:32]};
				6'd23 : readdata <= ifc_ik_swift.dh_param_out[0][ALPHA][31:0];

				6'd24 : readdata <= {28'b0, ifc_ik_swift.dh_param_out[1][THETA][35:32]};
				6'd25 : readdata <= ifc_ik_swift.dh_param_out[1][THETA][31:0];
				6'd26 : readdata <= {28'b0, ifc_ik_swift.dh_param_out[1][L_OFFSET][35:32]};
				6'd27 : readdata <= ifc_ik_swift.dh_param_out[1][L_OFFSET][31:0];
				6'd28 : readdata <= {28'b0, ifc_ik_swift.dh_param_out[1][L_DISTANCE][35:32]};
				6'd29 : readdata <= ifc_ik_swift.dh_param_out[1][L_DISTANCE][31:0];
				6'd30 : readdata <= {28'b0, ifc_ik_swift.dh_param_out[1][ALPHA][35:32]};
				6'd31 : readdata <= ifc_ik_swift.dh_param_out[1][ALPHA][31:0];

				6'd32 : readdata <= {28'b0, ifc_ik_swift.dh_param_out[2][THETA][35:32]};
				6'd33 : readdata <= ifc_ik_swift.dh_param_out[2][THETA][31:0];
				6'd34 : readdata <= {28'b0, ifc_ik_swift.dh_param_out[2][L_OFFSET][35:32]};
				6'd35 : readdata <= ifc_ik_swift.dh_param_out[2][L_OFFSET][31:0];
				6'd36 : readdata <= {28'b0, ifc_ik_swift.dh_param_out[2][L_DISTANCE][35:32]};
				6'd37 : readdata <= ifc_ik_swift.dh_param_out[2][L_DISTANCE][31:0];
				6'd38 : readdata <= {28'b0, ifc_ik_swift.dh_param_out[2][ALPHA][35:32]};
				6'd39 : readdata <= ifc_ik_swift.dh_param_out[2][ALPHA][31:0];

				6'd40 : readdata <= {28'b0, ifc_ik_swift.dh_param_out[3][THETA][35:32]};
				6'd41 : readdata <= ifc_ik_swift.dh_param_out[3][THETA][31:0];
				6'd42 : readdata <= {28'b0, ifc_ik_swift.dh_param_out[3][L_OFFSET][35:32]};
				6'd43 : readdata <= ifc_ik_swift.dh_param_out[3][L_OFFSET][31:0];
				6'd44 : readdata <= {28'b0, ifc_ik_swift.dh_param_out[3][L_DISTANCE][35:32]};
				6'd45 : readdata <= ifc_ik_swift.dh_param_out[3][L_DISTANCE][31:0];
				6'd46 : readdata <= {28'b0, ifc_ik_swift.dh_param_out[3][ALPHA][35:32]};
				6'd47 : readdata <= ifc_ik_swift.dh_param_out[3][ALPHA][31:0];

				6'd48 : readdata <= {28'b0, ifc_ik_swift.dh_param_out[4][THETA][35:32]};
				6'd49 : readdata <= ifc_ik_swift.dh_param_out[4][THETA][31:0];
				6'd50 : readdata <= {28'b0, ifc_ik_swift.dh_param_out[4][L_OFFSET][35:32]};
				6'd51 : readdata <= ifc_ik_swift.dh_param_out[4][L_OFFSET][31:0];
				6'd52 : readdata <= {28'b0, ifc_ik_swift.dh_param_out[4][L_DISTANCE][35:32]};
				6'd53 : readdata <= ifc_ik_swift.dh_param_out[4][L_DISTANCE][31:0];
				6'd54 : readdata <= {28'b0, ifc_ik_swift.dh_param_out[4][ALPHA][35:32]};
				6'd55 : readdata <= ifc_ik_swift.dh_param_out[4][ALPHA][31:0];

				6'd56 : readdata <= {28'b0, ifc_ik_swift.dh_param_out[5][THETA][35:32]};
				6'd57 : readdata <= ifc_ik_swift.dh_param_out[5][THETA][31:0];
				6'd58 : readdata <= {28'b0, ifc_ik_swift.dh_param_out[5][L_OFFSET][35:32]};
				6'd59 : readdata <= ifc_ik_swift.dh_param_out[5][L_OFFSET][31:0];
				6'd60 : readdata <= {28'b0, ifc_ik_swift.dh_param_out[5][L_DISTANCE][35:32]};
				6'd61 : readdata <= ifc_ik_swift.dh_param_out[5][L_DISTANCE][31:0];
				6'd62 : readdata <= {28'b0, ifc_ik_swift.dh_param_out[5][ALPHA][35:32]};
				6'd63 : readdata <= ifc_ik_swift.dh_param_out[5][ALPHA][31:0];

			endcase
		end
	end

endmodule
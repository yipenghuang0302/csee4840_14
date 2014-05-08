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
// `include "../ik_swift_36/sim_models/lpm_mult.v"
// `include "../ik_swift_36/sim_models/mult_block.v"
// `include "../ik_swift_36/sim_models/addsub_block.v"
// `include "../ik_swift_36/sim_models/pipeline_internal_fv.v"
// `include "../ik_swift_36/sim_models/dffep.v"
// `include "../ik_swift_36/sim_models/altera_mf.v"
// `include "../ik_swift_36/sim_models/220model.v"

//parameter THETA = 0;
//parameter L_OFFSET = 1;
//parameter L_DISTANCE = 2;
//parameter ALPHA = 3;
parameter MAX_JOINT = 6;

module ik_swift_interface (
	input logic clk,
	input logic reset,

	// inputs
	input logic chipselect,
	input logic write,
	input [7:0] address,
	// input logic [1:0] input_type,
	// input logic [2:0] joint_select,
	// input logic [1:0] param_select,
	input logic [7:0] writedata,

	// outputs
	input logic [2:0] row_select,
	output logic [35:0] data
);

	// LOGIC GOVERNING MEMORY SPACE
	logic [5:0] [35:0] target; // (x,y,z) coordinates of target position
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

				8'd0 : joint_type <= writedata[5:0]; // joint type vector
				8'd1 : ;
				8'd2 : ;
				8'd3 : ;

				8'd4 : ;
				8'd5 : ;
				8'd6 : ;
				8'd7 : target[0][35:32] <= writedata[3:0]; // target[0] x
				8'd8 : target[0][31:24] <= writedata; // target[0] x
				8'd9 : target[0][23:16] <= writedata; // target[0] x
				8'd10 : target[0][15:8] <= writedata; // target[0] x
				8'd11 : target[0][7:0] <= writedata; // target[0] x

				8'd12 : ;
				8'd13 : ;
				8'd14 : ;
				8'd15 : target[1][35:32] <= writedata[3:0]; // target[1] y
				8'd16 : target[1][31:24] <= writedata; // target[1] y
				8'd17 : target[1][23:16] <= writedata; // target[1] y
				8'd18 : target[1][15:8] <= writedata; // target[1] y
				8'd19 : target[1][7:0] <= writedata; // target[1] y

				8'd20 : ;
				8'd21 : ;
				8'd22 : ;
				8'd23 : target[2][35:32] <= writedata[3:0]; // target[2] z
				8'd24 : target[2][31:24] <= writedata; // target[2] z
				8'd25 : target[2][23:16] <= writedata; // target[2] z
				8'd26 : target[2][15:8] <= writedata; // target[2] z
				8'd27 : target[2][7:0] <= writedata; // target[2] z

				8'd28 : ;
				8'd29 : ;
				8'd30 : ;
				8'd31 : target[3][35:32] <= writedata[3:0]; // target[3] x
				8'd32 : target[3][31:24] <= writedata; // target[3] x
				8'd33 : target[3][23:16] <= writedata; // target[3] x
				8'd34 : target[3][15:8] <= writedata; // target[3] x
				8'd35 : target[3][7:0] <= writedata; // target[3] x

				8'd36 : ;
				8'd37 : ;
				8'd38 : ;
				8'd39 : target[4][35:32] <= writedata[3:0]; // target[4] y
				8'd40 : target[4][31:24] <= writedata; // target[4] y
				8'd41 : target[4][23:16] <= writedata; // target[4] y
				8'd42 : target[4][15:8] <= writedata; // target[4] y
				8'd43 : target[4][7:0] <= writedata; // target[4] y

				8'd44 : ;
				8'd45 : ;
				8'd46 : ;
				8'd47 : target[5][35:32] <= writedata[3:0]; // target[5] z
				8'd48 : target[5][31:24] <= writedata; // target[5] z
				8'd49 : target[5][23:16] <= writedata; // target[5] z
				8'd50 : target[5][15:8] <= writedata; // target[5] z
				8'd51 : target[5][7:0] <= writedata; // target[5] z

				8'd53 : ;
				8'd54 : ;
				8'd55 : ;
				8'd56 : dh_param[0][THETA][35:32] <= writedata[3:0];
				8'd57 : dh_param[0][THETA][31:24] <= writedata;
				8'd58 : dh_param[0][THETA][23:16] <= writedata;
				8'd59 : dh_param[0][THETA][15:8] <= writedata;
				8'd60 : dh_param[0][THETA][7:0] <= writedata;
				8'd61 : ;
				8'd62 : ;
				8'd63 : ;
				8'd64 : dh_param[0][L_OFFSET][35:32] <= writedata[3:0];
				8'd65 : dh_param[0][L_OFFSET][31:24] <= writedata;
				8'd66 : dh_param[0][L_OFFSET][23:16] <= writedata;
				8'd67 : dh_param[0][L_OFFSET][15:8] <= writedata;
				8'd68 : dh_param[0][L_OFFSET][7:0] <= writedata;
				8'd69 : ;
				8'd70 : ;
				8'd71 : ;
				8'd72 : dh_param[0][L_DISTANCE][35:32] <= writedata[3:0];
				8'd73 : dh_param[0][L_DISTANCE][31:24] <= writedata;
				8'd74 : dh_param[0][L_DISTANCE][23:16] <= writedata;
				8'd75 : dh_param[0][L_DISTANCE][15:8] <= writedata;
				8'd76 : dh_param[0][L_DISTANCE][7:0] <= writedata;
				8'd77 : ;
				8'd78 : ;
				8'd79 : ;
				8'd80 : dh_param[0][ALPHA][35:32] <= writedata[3:0];
				8'd81 : dh_param[0][ALPHA][31:24] <= writedata;
				8'd82 : dh_param[0][ALPHA][23:16] <= writedata;
				8'd83 : dh_param[0][ALPHA][15:8] <= writedata;
				8'd84 : dh_param[0][ALPHA][7:0] <= writedata;

				8'd85 : ;
				8'd86 : ;
				8'd87 : ;
				8'd88 : dh_param[1][THETA][35:32] <= writedata[3:0];
				8'd89 : dh_param[1][THETA][31:24] <= writedata;
				8'd90 : dh_param[1][THETA][23:16] <= writedata;
				8'd91 : dh_param[1][THETA][15:8] <= writedata;
				8'd92 : dh_param[1][THETA][7:0] <= writedata;
				8'd93 : ;
				8'd94 : ;
				8'd95 : ;
				8'd96 : dh_param[1][L_OFFSET][35:32] <= writedata[3:0];
				8'd97 : dh_param[1][L_OFFSET][31:24] <= writedata;
				8'd98 : dh_param[1][L_OFFSET][23:16] <= writedata;
				8'd99 : dh_param[1][L_OFFSET][15:8] <= writedata;
				8'd100 : dh_param[1][L_OFFSET][7:0] <= writedata;
				8'd101 : ;
				8'd102 : ;
				8'd103 : ;
				8'd104 : dh_param[1][L_DISTANCE][35:32] <= writedata[3:0];
				8'd105 : dh_param[1][L_DISTANCE][31:24] <= writedata;
				8'd106 : dh_param[1][L_DISTANCE][23:16] <= writedata;
				8'd107 : dh_param[1][L_DISTANCE][15:8] <= writedata;
				8'd108 : dh_param[1][L_DISTANCE][7:0] <= writedata;
				8'd109 : ;
				8'd110 : ;
				8'd111 : ;
				8'd112 : dh_param[1][ALPHA][35:32] <= writedata[3:0];
				8'd113 : dh_param[1][ALPHA][31:24] <= writedata;
				8'd114 : dh_param[1][ALPHA][23:16] <= writedata;
				8'd115 : dh_param[1][ALPHA][15:8] <= writedata;
				8'd116 : dh_param[1][ALPHA][7:0] <= writedata;

				8'd117 : ;
				8'd118 : ;
				8'd119 : ;
				8'd120 : dh_param[2][THETA][35:32] <= writedata[3:0];
				8'd121 : dh_param[2][THETA][31:24] <= writedata;
				8'd122 : dh_param[2][THETA][23:16] <= writedata;
				8'd123 : dh_param[2][THETA][15:8] <= writedata;
				8'd124 : dh_param[2][THETA][7:0] <= writedata;
				8'd125 : ;
				8'd126 : ;
				8'd127 : ;
				8'd128 : dh_param[2][L_OFFSET][35:32] <= writedata[3:0];
				8'd129 : dh_param[2][L_OFFSET][31:24] <= writedata;
				8'd130 : dh_param[2][L_OFFSET][23:16] <= writedata;
				8'd131 : dh_param[2][L_OFFSET][15:8] <= writedata;
				8'd132 : dh_param[2][L_OFFSET][7:0] <= writedata;
				8'd133 : ;
				8'd134 : ;
				8'd135 : ;
				8'd136 : dh_param[2][L_DISTANCE][35:32] <= writedata[3:0];
				8'd137 : dh_param[2][L_DISTANCE][31:24] <= writedata;
				8'd138 : dh_param[2][L_DISTANCE][23:16] <= writedata;
				8'd139 : dh_param[2][L_DISTANCE][15:8] <= writedata;
				8'd140 : dh_param[2][L_DISTANCE][7:0] <= writedata;
				8'd141 : ;
				8'd142 : ;
				8'd143 : ;
				8'd144 : dh_param[2][ALPHA][35:32] <= writedata[3:0];
				8'd145 : dh_param[2][ALPHA][31:24] <= writedata;
				8'd146 : dh_param[2][ALPHA][23:16] <= writedata;
				8'd147 : dh_param[2][ALPHA][15:8] <= writedata;
				8'd148 : dh_param[2][ALPHA][7:0] <= writedata;

				8'd149 : ;
				8'd150 : ;
				8'd151 : ;
				8'd152 : dh_param[3][THETA][35:32] <= writedata[3:0];
				8'd153 : dh_param[3][THETA][31:24] <= writedata;
				8'd154 : dh_param[3][THETA][23:16] <= writedata;
				8'd155 : dh_param[3][THETA][15:8] <= writedata;
				8'd156 : dh_param[3][THETA][7:0] <= writedata;
				8'd157 : ;
				8'd158 : ;
				8'd159 : ;
				8'd160 : dh_param[3][L_OFFSET][35:32] <= writedata[3:0];
				8'd161 : dh_param[3][L_OFFSET][31:24] <= writedata;
				8'd162 : dh_param[3][L_OFFSET][23:16] <= writedata;
				8'd163 : dh_param[3][L_OFFSET][15:8] <= writedata;
				8'd164 : dh_param[3][L_OFFSET][7:0] <= writedata;
				8'd165 : ;
				8'd166 : ;
				8'd167 : ;
				8'd168 : dh_param[3][L_DISTANCE][35:32] <= writedata[3:0];
				8'd169 : dh_param[3][L_DISTANCE][31:24] <= writedata;
				8'd170 : dh_param[3][L_DISTANCE][23:16] <= writedata;
				8'd171 : dh_param[3][L_DISTANCE][15:8] <= writedata;
				8'd172 : dh_param[3][L_DISTANCE][7:0] <= writedata;
				8'd173 : ;
				8'd174 : ;
				8'd175 : ;
				8'd176 : dh_param[3][ALPHA][35:32] <= writedata[3:0];
				8'd177 : dh_param[3][ALPHA][31:24] <= writedata;
				8'd178 : dh_param[3][ALPHA][23:16] <= writedata;
				8'd179 : dh_param[3][ALPHA][15:8] <= writedata;
				8'd180 : dh_param[3][ALPHA][7:0] <= writedata;

				8'd181 : ;
				8'd182 : ;
				8'd183 : ;
				8'd184 : dh_param[4][THETA][35:32] <= writedata[3:0];
				8'd185 : dh_param[4][THETA][31:24] <= writedata;
				8'd186 : dh_param[4][THETA][23:16] <= writedata;
				8'd187 : dh_param[4][THETA][15:8] <= writedata;
				8'd188 : dh_param[4][THETA][7:0] <= writedata;
				8'd189 : ;
				8'd190 : ;
				8'd191 : ;
				8'd192 : dh_param[4][L_OFFSET][35:32] <= writedata[3:0];
				8'd193 : dh_param[4][L_OFFSET][31:24] <= writedata;
				8'd194 : dh_param[4][L_OFFSET][23:16] <= writedata;
				8'd195 : dh_param[4][L_OFFSET][15:8] <= writedata;
				8'd196 : dh_param[4][L_OFFSET][7:0] <= writedata;
				8'd197 : ;
				8'd198 : ;
				8'd199 : ;
				8'd200 : dh_param[4][L_DISTANCE][35:32] <= writedata[3:0];
				8'd201 : dh_param[4][L_DISTANCE][31:24] <= writedata;
				8'd202 : dh_param[4][L_DISTANCE][23:16] <= writedata;
				8'd203 : dh_param[4][L_DISTANCE][15:8] <= writedata;
				8'd204 : dh_param[4][L_DISTANCE][7:0] <= writedata;
				8'd205 : ;
				8'd206 : ;
				8'd207 : ;
				8'd208 : dh_param[4][ALPHA][35:32] <= writedata[3:0];
				8'd209 : dh_param[4][ALPHA][31:24] <= writedata;
				8'd210 : dh_param[4][ALPHA][23:16] <= writedata;
				8'd211 : dh_param[4][ALPHA][15:8] <= writedata;
				8'd212 : dh_param[4][ALPHA][7:0] <= writedata;

				8'd213 : ;
				8'd214 : ;
				8'd215 : ;
				8'd216 : dh_param[5][THETA][35:32] <= writedata[3:0];
				8'd217 : dh_param[5][THETA][31:24] <= writedata;
				8'd218 : dh_param[5][THETA][23:16] <= writedata;
				8'd219 : dh_param[5][THETA][15:8] <= writedata;
				8'd220 : dh_param[5][THETA][7:0] <= writedata;
				8'd221 : ;
				8'd222 : ;
				8'd223 : ;
				8'd224 : dh_param[5][L_OFFSET][35:32] <= writedata[3:0];
				8'd225 : dh_param[5][L_OFFSET][31:24] <= writedata;
				8'd226 : dh_param[5][L_OFFSET][23:16] <= writedata;
				8'd227 : dh_param[5][L_OFFSET][15:8] <= writedata;
				8'd228 : dh_param[5][L_OFFSET][7:0] <= writedata;
				8'd229 : ;
				8'd230 : ;
				8'd231 : ;
				8'd232 : dh_param[5][L_DISTANCE][35:32] <= writedata[3:0];
				8'd233 : dh_param[5][L_DISTANCE][31:24] <= writedata;
				8'd234 : dh_param[5][L_DISTANCE][23:16] <= writedata;
				8'd235 : dh_param[5][L_DISTANCE][15:8] <= writedata;
				8'd236 : dh_param[5][L_DISTANCE][7:0] <= writedata;
				8'd237 : ;
				8'd238 : ;
				8'd239 : ;
				8'd240 : dh_param[5][ALPHA][35:32] <= writedata[3:0];
				8'd241 : dh_param[5][ALPHA][31:24] <= writedata;
				8'd242 : dh_param[5][ALPHA][23:16] <= writedata;
				8'd243 : dh_param[5][ALPHA][15:8] <= writedata;
				8'd244 : dh_param[5][ALPHA][7:0] <= writedata;

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
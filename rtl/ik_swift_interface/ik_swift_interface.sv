/*
 * Memory interface for IKSwift
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

`timescale 1ns/1ps

`include "../full_mat/full_mat_interface.sv"
`include "../full_mat/full_mat.sv"

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
	input logic [1:0] row_select,
	input logic [1:0] col_select,
	output logic [26:0] data
);

	// LOGIC GOVERNING MEMORY SPACE
	logic [2:0] [26:0] target; // (x,y,z) coordinates of target position
	// TODO: what about orientation?
	logic [5:0] joint_type; // The ith bit is 1 if ith joint is rotational; translational otherwise
	logic [5:0] [3:0] [26:0] dh_param;
	// TODO: unsigned char start;
	// TODO: unsigned char ready;

	always_ff @(posedge clk) begin
		if (reset) begin
			target <= {3{27'b0}};
			joint_type <= {6'b0};
			dh_param <= {24{27'b0}};
		end else if ( chipselect && write ) begin
			case (address)

				7'd0 : target[0][26:24] <= writedata[2:0]; // target[0] x
				7'd1 : target[0][23:16] <= writedata; // target[0] x
				7'd2 : target[0][15:8] <= writedata; // target[0] x
				7'd3 : target[0][7:0] <= writedata; // target[0] x

				7'd4 : target[1][26:24] <= writedata[2:0]; // target[1] y
				7'd5 : target[1][23:16] <= writedata; // target[1] y
				7'd6 : target[1][15:8] <= writedata; // target[1] y
				7'd7 : target[1][7:0] <= writedata; // target[1] y

				7'd8 : target[2][26:24] <= writedata[2:0]; // target[2] z
				7'd9 : target[2][23:16] <= writedata; // target[2] z
				7'd10 : target[2][15:8] <= writedata; // target[2] z
				7'd11 : target[2][7:0] <= writedata; // target[2] z

				7'd12 : joint_type <= writedata[5:0]; // joint type vector

				7'd13 : dh_param[0][THETA][26:24] <= writedata[2:0];
				7'd14 : dh_param[0][THETA][23:16] <= writedata;
				7'd15 : dh_param[0][THETA][15:8] <= writedata;
				7'd16 : dh_param[0][THETA][7:0] <= writedata;
				7'd17 : dh_param[0][L_OFFSET][26:24] <= writedata[2:0];
				7'd18 : dh_param[0][L_OFFSET][23:16] <= writedata;
				7'd19 : dh_param[0][L_OFFSET][15:8] <= writedata;
				7'd20 : dh_param[0][L_OFFSET][7:0] <= writedata;
				7'd21 : dh_param[0][L_DISTANCE][26:24] <= writedata[2:0];
				7'd22 : dh_param[0][L_DISTANCE][23:16] <= writedata;
				7'd23 : dh_param[0][L_DISTANCE][15:8] <= writedata;
				7'd24 : dh_param[0][L_DISTANCE][7:0] <= writedata;
				7'd25 : dh_param[0][ALPHA][26:24] <= writedata[2:0];
				7'd26 : dh_param[0][ALPHA][23:16] <= writedata;
				7'd27 : dh_param[0][ALPHA][15:8] <= writedata;
				7'd28 : dh_param[0][ALPHA][7:0] <= writedata;

				7'd29 : dh_param[1][THETA][26:24] <= writedata[2:0];
				7'd30 : dh_param[1][THETA][23:16] <= writedata;
				7'd31 : dh_param[1][THETA][15:8] <= writedata;
				7'd32 : dh_param[1][THETA][7:0] <= writedata;
				7'd33 : dh_param[1][L_OFFSET][26:24] <= writedata[2:0];
				7'd34 : dh_param[1][L_OFFSET][23:16] <= writedata;
				7'd35 : dh_param[1][L_OFFSET][15:8] <= writedata;
				7'd36 : dh_param[1][L_OFFSET][7:0] <= writedata;
				7'd37 : dh_param[1][L_DISTANCE][26:24] <= writedata[2:0];
				7'd38 : dh_param[1][L_DISTANCE][23:16] <= writedata;
				7'd39 : dh_param[1][L_DISTANCE][15:8] <= writedata;
				7'd40 : dh_param[1][L_DISTANCE][7:0] <= writedata;
				7'd41 : dh_param[1][ALPHA][26:24] <= writedata[2:0];
				7'd42 : dh_param[1][ALPHA][23:16] <= writedata;
				7'd43 : dh_param[1][ALPHA][15:8] <= writedata;
				7'd44 : dh_param[1][ALPHA][7:0] <= writedata;

				7'd45 : dh_param[2][THETA][26:24] <= writedata[2:0];
				7'd46 : dh_param[2][THETA][23:16] <= writedata;
				7'd47 : dh_param[2][THETA][15:8] <= writedata;
				7'd48 : dh_param[2][THETA][7:0] <= writedata;
				7'd49 : dh_param[2][L_OFFSET][26:24] <= writedata[2:0];
				7'd50 : dh_param[2][L_OFFSET][23:16] <= writedata;
				7'd51 : dh_param[2][L_OFFSET][15:8] <= writedata;
				7'd52 : dh_param[2][L_OFFSET][7:0] <= writedata;
				7'd53 : dh_param[2][L_DISTANCE][26:24] <= writedata[2:0];
				7'd54 : dh_param[2][L_DISTANCE][23:16] <= writedata;
				7'd55 : dh_param[2][L_DISTANCE][15:8] <= writedata;
				7'd56 : dh_param[2][L_DISTANCE][7:0] <= writedata;
				7'd57 : dh_param[2][ALPHA][26:24] <= writedata[2:0];
				7'd58 : dh_param[2][ALPHA][23:16] <= writedata;
				7'd59 : dh_param[2][ALPHA][15:8] <= writedata;
				7'd60 : dh_param[2][ALPHA][7:0] <= writedata;

				7'd61 : dh_param[3][THETA][26:24] <= writedata[2:0];
				7'd62 : dh_param[3][THETA][23:16] <= writedata;
				7'd63 : dh_param[3][THETA][15:8] <= writedata;
				7'd64 : dh_param[3][THETA][7:0] <= writedata;
				7'd65 : dh_param[3][L_OFFSET][26:24] <= writedata[2:0];
				7'd66 : dh_param[3][L_OFFSET][23:16] <= writedata;
				7'd67 : dh_param[3][L_OFFSET][15:8] <= writedata;
				7'd68 : dh_param[3][L_OFFSET][7:0] <= writedata;
				7'd69 : dh_param[3][L_DISTANCE][26:24] <= writedata[2:0];
				7'd70 : dh_param[3][L_DISTANCE][23:16] <= writedata;
				7'd71 : dh_param[3][L_DISTANCE][15:8] <= writedata;
				7'd72 : dh_param[3][L_DISTANCE][7:0] <= writedata;
				7'd73 : dh_param[3][ALPHA][26:24] <= writedata[2:0];
				7'd74 : dh_param[3][ALPHA][23:16] <= writedata;
				7'd75 : dh_param[3][ALPHA][15:8] <= writedata;
				7'd76 : dh_param[3][ALPHA][7:0] <= writedata;

				7'd77 : dh_param[4][THETA][26:24] <= writedata[2:0];
				7'd78 : dh_param[4][THETA][23:16] <= writedata;
				7'd79 : dh_param[4][THETA][15:8] <= writedata;
				7'd80 : dh_param[4][THETA][7:0] <= writedata;
				7'd81 : dh_param[4][L_OFFSET][26:24] <= writedata[2:0];
				7'd82 : dh_param[4][L_OFFSET][23:16] <= writedata;
				7'd83 : dh_param[4][L_OFFSET][15:8] <= writedata;
				7'd84 : dh_param[4][L_OFFSET][7:0] <= writedata;
				7'd85 : dh_param[4][L_DISTANCE][26:24] <= writedata[2:0];
				7'd86 : dh_param[4][L_DISTANCE][23:16] <= writedata;
				7'd87 : dh_param[4][L_DISTANCE][15:8] <= writedata;
				7'd88 : dh_param[4][L_DISTANCE][7:0] <= writedata;
				7'd89 : dh_param[4][ALPHA][26:24] <= writedata[2:0];
				7'd90 : dh_param[4][ALPHA][23:16] <= writedata;
				7'd91 : dh_param[4][ALPHA][15:8] <= writedata;
				7'd92 : dh_param[4][ALPHA][7:0] <= writedata;

				7'd93 : dh_param[5][THETA][26:24] <= writedata[2:0];
				7'd94 : dh_param[5][THETA][23:16] <= writedata;
				7'd95 : dh_param[5][THETA][15:8] <= writedata;
				7'd96 : dh_param[5][THETA][7:0] <= writedata;
				7'd97 : dh_param[5][L_OFFSET][26:24] <= writedata[2:0];
				7'd98 : dh_param[5][L_OFFSET][23:16] <= writedata;
				7'd99 : dh_param[5][L_OFFSET][15:8] <= writedata;
				7'd100 : dh_param[5][L_OFFSET][7:0] <= writedata;
				7'd101 : dh_param[5][L_DISTANCE][26:24] <= writedata[2:0];
				7'd102 : dh_param[5][L_DISTANCE][23:16] <= writedata;
				7'd103 : dh_param[5][L_DISTANCE][15:8] <= writedata;
				7'd104 : dh_param[5][L_DISTANCE][7:0] <= writedata;
				7'd105 : dh_param[5][ALPHA][26:24] <= writedata[2:0];
				7'd106 : dh_param[5][ALPHA][23:16] <= writedata;
				7'd107 : dh_param[5][ALPHA][15:8] <= writedata;
				7'd108 : dh_param[5][ALPHA][7:0] <= writedata;

			endcase
		end
	end

	// LOGIC GOVERNING OUTPUT
	always_ff @(posedge clk) begin
	 	data <= ifc_full_mat.full_matrix[row_select][col_select];
	end

	// INSTANTIATE IK_FAST TOP MODULE
	ifc_full_mat ifc_full_mat (clk);
	assign ifc_full_mat.en = 1'b1;
	assign ifc_full_mat.rst = reset;
	assign ifc_full_mat.dh_param = dh_param;
	full_mat full_mat (ifc_full_mat.full_mat);

endmodule
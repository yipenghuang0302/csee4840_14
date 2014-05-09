/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

module full_jacobian (
	ifc_full_jacobian.full_jacobian i
);

	// INSTANTIATE FULL MATRIX BLOCK
	ifc_full_mat ifc_full_mat (i.clk);
	// inputs
	assign ifc_full_mat.en = i.en;
	assign ifc_full_mat.rst = i.rst;
	assign ifc_full_mat.count = i.count;
	assign ifc_full_mat.dh_param = i.dh_param;
	// shared multipliers
	assign ifc_full_mat.array_mult_result = i.array_mult_result[5:0];
	assign ifc_full_mat.mat_mult_result = i.mat_mult_result;
	full_mat full_mat (ifc_full_mat.full_mat);
	// outputs
	assign i.full_matrix = ifc_full_mat.full_matrix;

	// INSTANTIATE JACOBIAN BLOCK
	ifc_jacobian ifc_jacobian (i.clk);
	// inputs
	assign ifc_jacobian.en = i.en;
	assign ifc_jacobian.rst = i.rst;
	assign ifc_jacobian.count = i.count;
	assign ifc_jacobian.z = i.z;
	assign ifc_jacobian.joint_type = i.joint_type;
	// transformation matrices from full matrix block
	assign ifc_jacobian.full_matrix = ifc_full_mat.full_matrix;
	// shared mulitpliers
	assign ifc_jacobian.array_mult_result = i.array_mult_result;
	assign ifc_jacobian.mat_mult_result = i.mat_mult_result;
	jacobian jacobian (ifc_jacobian.jacobian);
	// outputs
	assign i.axis = ifc_jacobian.axis;
	assign i.dist_to_end = ifc_jacobian.dist_to_end;
	assign i.jacobian_matrix = ifc_jacobian.jacobian_matrix;

	// MATRIX MULTIPLY FOR JJT JACOBIAN * JACOBIAN TRANSPOSE
	logic [5:0] [5:0] [35:0] jjt_dataa;
	logic [5:0] [5:0] [35:0] jjt_datab;

	// MAT_MULT INPUTS
	always_ff @(posedge i.clk)
		if (i.en)
			case (i.count)
				8'd0: begin
					jjt_dataa <= {36{36'b0}};
					jjt_datab <= {36{36'b0}};
				end
				8'd99: begin
					jjt_dataa <= i.jacobian_matrix;
					jjt_datab <= {
						{ i.jacobian_matrix[5][5], i.jacobian_matrix[4][5], i.jacobian_matrix[3][5], i.jacobian_matrix[2][5], i.jacobian_matrix[1][5], i.jacobian_matrix[0][5] },
						{ i.jacobian_matrix[5][4], i.jacobian_matrix[4][4], i.jacobian_matrix[3][4], i.jacobian_matrix[2][4], i.jacobian_matrix[1][4], i.jacobian_matrix[0][4] },
						{ i.jacobian_matrix[5][3], i.jacobian_matrix[4][3], i.jacobian_matrix[3][3], i.jacobian_matrix[2][3], i.jacobian_matrix[1][3], i.jacobian_matrix[0][3] },
						{ i.jacobian_matrix[5][2], i.jacobian_matrix[4][2], i.jacobian_matrix[3][2], i.jacobian_matrix[2][2], i.jacobian_matrix[1][2], i.jacobian_matrix[0][2] },
						{ i.jacobian_matrix[5][1], i.jacobian_matrix[4][1], i.jacobian_matrix[3][1], i.jacobian_matrix[2][1], i.jacobian_matrix[1][1], i.jacobian_matrix[0][1] },
						{ i.jacobian_matrix[5][0], i.jacobian_matrix[4][0], i.jacobian_matrix[3][0], i.jacobian_matrix[2][0], i.jacobian_matrix[1][0], i.jacobian_matrix[0][0] }
					};
				end
				8'd111: begin
					jjt_dataa <= {36{36'b0}};
					jjt_datab <= {36{36'b0}};
				end
				default: begin
					jjt_dataa <= jjt_dataa;
					jjt_datab <= jjt_datab;
				end
			endcase

	// MAT_MULT OUTPUTS
	always_ff @(posedge i.clk)
		if (i.en)
			if ( i.count==8'd111 )
				i.jjt_bias <= i.mat_mult_result + {
				{ 36'd4, 36'b0, 36'b0, 36'b0, 36'b0, 36'b0 },
				{ 36'b0, 36'd4, 36'b0, 36'b0, 36'b0, 36'b0 },
				{ 36'b0, 36'b0, 36'd4, 36'b0, 36'b0, 36'b0 },
				{ 36'b0, 36'b0, 36'b0, 36'd4, 36'b0, 36'b0 },
				{ 36'b0, 36'b0, 36'b0, 36'b0, 36'd4, 36'b0 },
				{ 36'b0, 36'b0, 36'b0, 36'b0, 36'b0, 36'd4 }};

	// timing design prevents module outputs to shared multipliers colliding
	assign i.array_mult_dataa = {3'b0,ifc_full_mat.array_mult_dataa} | ifc_jacobian.array_mult_dataa;
	assign i.array_mult_datab = {3'b0,ifc_full_mat.array_mult_datab} | ifc_jacobian.array_mult_datab;
	assign i.mat_mult_dataa = ifc_full_mat.mat_mult_dataa | ifc_jacobian.mat_mult_dataa | jjt_dataa;
	assign i.mat_mult_datab = ifc_full_mat.mat_mult_datab | ifc_jacobian.mat_mult_datab | jjt_datab;

endmodule
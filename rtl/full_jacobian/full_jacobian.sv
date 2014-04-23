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
	// timing design prevents module outputs to shared multipliers colliding
	assign i.array_mult_dataa = {3'b0,ifc_full_mat.array_mult_dataa} | ifc_jacobian.array_mult_dataa;
	assign i.array_mult_datab = {3'b0,ifc_full_mat.array_mult_datab} | ifc_jacobian.array_mult_datab;
	assign i.mat_mult_dataa = ifc_full_mat.mat_mult_dataa | ifc_jacobian.mat_mult_dataa;
	assign i.mat_mult_datab = ifc_full_mat.mat_mult_datab | ifc_jacobian.mat_mult_datab;
	assign i.axis = ifc_jacobian.axis;
	assign i.dist_to_end = ifc_jacobian.dist_to_end;
	assign i.jacobian_matrix = ifc_jacobian.jacobian_matrix;

endmodule
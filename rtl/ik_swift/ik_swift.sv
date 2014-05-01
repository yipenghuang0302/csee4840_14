// the timescale directive tells the compiler the clock period and the
// precision that needs to be displayed in the VCD dump file

`timescale 1ns/1ps

module ik_swift (
	ifc_ik_swift.ik_swift i
);

	// LOGIC GOVERNING COUNT
	logic [7:0] count;
	parameter MAX = 229;
	always_ff @(posedge i.clk) begin
		if ( i.rst ) begin // if parallel multiplier mode, clear counter
			count <= 8'b0;
		end else if ( i.en ) begin
			if ( count==MAX-1'b1 ) begin
				count <= 8'b0;
			end else begin
				count <= count + 1'b1;
			end
		end
	end

	// INSTANTIATE FULL JACOBIAN BLOCK
	ifc_full_jacobian ifc_full_jacobian (i.clk);
	// inputs
	assign ifc_full_jacobian.en = i.en;
	assign ifc_full_jacobian.rst = i.rst;
	assign ifc_full_jacobian.count = count;
	assign ifc_full_jacobian.z = i.z;
	assign ifc_full_jacobian.joint_type = i.joint_type;
	assign ifc_full_jacobian.dh_param = i.dh_param;
	full_jacobian full_jacobian (ifc_full_jacobian.full_jacobian);
	// outputs
	assign i.jacobian_matrix = ifc_full_jacobian.jacobian_matrix;
	assign i.jjt_bias = ifc_full_jacobian.jjt_bias;

	// INSTANTIATE FULL INVERSE BLOCK
	ifc_inverse ifc_inverse (i.clk);
	// inputs
	assign ifc_inverse.en = i.en;
	assign ifc_inverse.rst = i.rst;
	assign ifc_inverse.count = count;
	assign ifc_inverse.matrix = ifc_full_jacobian.jjt_bias;
	inverse inverse (ifc_inverse.inverse_dut);
	// ouptuts
	assign i.lt = ifc_inverse.lt;
	assign i.inverse = ifc_inverse.inverse;

	// shared multipliers
	// INSTANTIATE MAT MULT
	ifc_mat_mult ifc_mat_mult (i.clk);
	assign ifc_mat_mult.en = i.en;
	// delay rst for mat_mult by four
	always_ff @(posedge i.clk) begin
		ifc_mat_mult.rst <= count==8'd28 || count==8'd98 || count==8'd214;
	end
	assign ifc_mat_mult.mat_mode = 8'd89<=count&&count<8'd98 ? 1'b0 : 1'b1;
	// Output to matrix multipliers
	assign ifc_mat_mult.dataa = ifc_full_jacobian.mat_mult_dataa | ifc_inverse.mat_mult_dataa;
	assign ifc_mat_mult.datab = ifc_full_jacobian.mat_mult_datab | ifc_inverse.mat_mult_datab;
	mat_mult mat_mult (ifc_mat_mult.mat_mult);
	assign ifc_full_jacobian.mat_mult_result = ifc_mat_mult.result;
	assign ifc_inverse.mat_mult_result = ifc_mat_mult.result;

	// INSTANTIATE ARRAY MULT
	ifc_array_mult ifc_array_mult (i.clk);
	assign ifc_array_mult.en = i.en;
	assign ifc_array_mult.rst = i.rst;
	// Output to array multipliers
	assign ifc_array_mult.dataa = { {6{27'b0}}, ifc_full_jacobian.array_mult_dataa } | ifc_inverse.array_mult_dataa;
	assign ifc_array_mult.datab = { {6{27'b0}}, ifc_full_jacobian.array_mult_datab } | ifc_inverse.array_mult_datab;
	array_mult array_mult (ifc_array_mult.array_mult);
	assign ifc_full_jacobian.array_mult_result = ifc_array_mult.result[8:0];
	assign ifc_inverse.array_mult_result = ifc_array_mult.result;

endmodule
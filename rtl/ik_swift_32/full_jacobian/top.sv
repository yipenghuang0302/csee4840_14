// the timescale directive tells the compiler the clock period and the
// precision that needs to be displayed in the VCD dump file

`timescale 1ns/1ps

`include "full_jacobian_interface.sv"
`include "full_jacobian.sv"
`include "bench.sv"

`include "../mat_mult/mat_mult_interface.sv"
`include "../mat_mult/mat_mult.sv"
`include "../mat_mult/mult_array.sv"
`include "../mat_mult/mult_36_dsp/mult_36_dsp.v"

`include "../array_mult/array_mult_interface.sv"
`include "../array_mult/array_mult.sv"

`include "../mult_36/mult_36.v"
`include "../sim_models/lpm_mult.v"
`include "../sim_models/mult_block.v"
`include "../sim_models/addsub_block.v"
`include "../sim_models/pipeline_internal_fv.v"
`include "../sim_models/dffep.v"

`include "full_mat/full_mat_interface.sv"
`include "full_mat/full_mat.sv"
`include "full_mat/t_block/t_block_interface.sv"
`include "full_mat/t_block/t_block.sv"
`include "full_mat/t_block/sincos/sincos_interface.sv"
`include "full_mat/t_block/sincos/sincos.sv"
`include "full_mat/t_block/sincos/sin.sv"
`include "full_mat/t_block/sincos/cos.sv"
`include "full_mat/t_block/sincos/mult_21_coeff_26561/mult_21_coeff_26561.v"
`include "full_mat/t_block/sincos/mult_21_coeff_83443/mult_21_coeff_83443.v"
`include "full_mat/t_block/sincos/mult_21_coeff_14746/mult_21_coeff_14746.v"
`include "../mult_21/mult_21.v"

`include "jacobian/jacobian_interface.sv"
`include "jacobian/jacobian.sv"

module full_jacobian_top ();

	logic clk = 1'b0;
	always #1 clk = ~clk;

	initial $vcdpluson;

	ifc_full_jacobian ifc_full_jacobian (clk);
	full_jacobian_tb full_jacobian_tb (ifc_full_jacobian.full_jacobian_tb);
	full_jacobian full_jacobian (ifc_full_jacobian.full_jacobian);

	// LOGIC GOVERNING COUNT
	parameter MAX = 113;
	always_ff @(posedge ifc_full_jacobian.clk) begin
		if ( ifc_full_jacobian.rst ) begin // if parallel multiplier mode, clear counter
			ifc_full_jacobian.count <= 8'b0;
		end else if ( ifc_full_jacobian.en ) begin
			if ( ifc_full_jacobian.count==MAX-1'b1 ) begin
				ifc_full_jacobian.count <= 8'b0;
			end else begin
				ifc_full_jacobian.count <= ifc_full_jacobian.count + 1'b1;
			end
		end
	end

	// instantiate mat_mult
	ifc_mat_mult ifc_mat_mult (clk);
	assign ifc_mat_mult.en = ifc_full_jacobian.en;
	// delay rst for mat_mult by five
	always_ff @(posedge clk)
		if ( ifc_full_jacobian.en )
			ifc_mat_mult.rst <= ifc_full_jacobian.count==8'd28 || ifc_full_jacobian.count==8'd98;
	assign ifc_mat_mult.mat_mode = 8'd90<=ifc_full_jacobian.count&&ifc_full_jacobian.count<8'd99 ? 1'b0 : 1'b1;
	assign ifc_mat_mult.dataa = ifc_full_jacobian.mat_mult_dataa;
	assign ifc_mat_mult.datab = ifc_full_jacobian.mat_mult_datab;
	mat_mult mat_mult (ifc_mat_mult.mat_mult);
	assign ifc_full_jacobian.mat_mult_result = ifc_mat_mult.result;

	ifc_array_mult ifc_array_mult (clk);
	assign ifc_array_mult.en = ifc_full_jacobian.en;
	assign ifc_array_mult.rst = ifc_full_jacobian.rst;
	assign ifc_array_mult.dataa[8:0] = ifc_full_jacobian.array_mult_dataa;
	assign ifc_array_mult.datab[8:0] = ifc_full_jacobian.array_mult_datab;
	array_mult array_mult (ifc_array_mult.array_mult);
	assign ifc_full_jacobian.array_mult_result = ifc_array_mult.result[8:0];

endmodule
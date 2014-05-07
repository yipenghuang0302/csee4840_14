// the timescale directive tells the compiler the clock period and the
// precision that needs to be displayed in the VCD dump file

`timescale 1ns/1ps

`include "inverse_interface.sv"
`include "inverse.sv"
`include "bench.sv"

`include "cholesky_block/cholesky_block_interface.sv"
`include "cholesky_block/cholesky_block.sv"
`include "cholesky_block/sqrt_52/sqrt_52_interface.sv"
`include "cholesky_block/sqrt_52/sqrt_52.v"
`include "../sim_models/altera_mf.v"

`include "lt_block/lt_block_interface.sv"
`include "lt_block/lt_block.sv"

`include "array_div/array_div_interface.sv"
`include "array_div/array_div.sv"
`include "array_div/div_52/div_52.v"
`include "../sim_models/220model.v"

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

module inverse_top ();

	logic clk = 1'b0;
	always #1 clk = ~clk;

	initial $vcdpluson;

	ifc_inverse ifc_inverse (clk);
	inverse_tb inverse_tb (ifc_inverse.inverse_tb);
	inverse inverse (ifc_inverse.inverse_dut);

	// LOGIC GOVERNING COUNT
	parameter MAX = 229;
	always_ff @(posedge ifc_inverse.clk) begin
		if ( ifc_inverse.rst ) begin // if parallel multiplier mode, clear counter
			ifc_inverse.count <= 8'b0;
		end else if ( ifc_inverse.en ) begin
			if ( ifc_inverse.count==MAX-1'b1 ) begin
				ifc_inverse.count <= 8'b0;
			end else begin
				ifc_inverse.count <= ifc_inverse.count + 1'b1;
			end
		end
	end

	// instantiate mat_mult
	ifc_mat_mult ifc_mat_mult (clk);
	assign ifc_mat_mult.en = ifc_inverse.en;
	// delay rst for mat_mult by five
	always_ff @(posedge clk)
		if ( ifc_inverse.en )
			ifc_mat_mult.rst <= ifc_inverse.count==8'd28 || ifc_inverse.count==8'd98 || ifc_inverse.count==8'd214;
	assign ifc_mat_mult.mat_mode = 8'd89<=ifc_inverse.count&&ifc_inverse.count<8'd98 ? 1'b0 : 1'b1;
	assign ifc_mat_mult.dataa = ifc_inverse.mat_mult_dataa;
	assign ifc_mat_mult.datab = ifc_inverse.mat_mult_datab;
	mat_mult mat_mult (ifc_mat_mult.mat_mult);
	assign ifc_inverse.mat_mult_result = ifc_mat_mult.result;

	// instantiate shared multiplier
	ifc_array_mult ifc_array_mult (clk);
	assign ifc_array_mult.en = ifc_inverse.en;
	assign ifc_array_mult.rst = ifc_inverse.rst;
	assign ifc_array_mult.dataa = ifc_inverse.array_mult_dataa;
	assign ifc_array_mult.datab = ifc_inverse.array_mult_datab;
	array_mult array_mult (ifc_array_mult.array_mult);
	assign ifc_inverse.array_mult_result = ifc_array_mult.result;

endmodule
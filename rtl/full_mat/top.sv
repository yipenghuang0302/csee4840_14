// the timescale directive tells the compiler the clock period and the
// precision that needs to be displayed in the VCD dump file

`timescale 1ns/1ps

`include "full_mat_interface.sv"
`include "full_mat.sv"
`include "bench.sv"

`include "../mat_mult/mat_mult_interface.sv"
`include "../mat_mult/mat_mult.sv"
`include "../mat_mult/mult_array.sv"

`include "../array_mult/array_mult_interface.sv"
`include "../array_mult/array_mult.sv"

`include "../mult_27/mult_27.v"
`include "../sim_models/lpm_mult.v"
`include "../sim_models/mult_block.v"
`include "../sim_models/addsub_block.v"
`include "../sim_models/pipeline_internal_fv.v"
`include "../sim_models/dffep.v"

`include "t_block/t_block_interface.sv"
`include "t_block/t_block.sv"

`include "t_block/sincos/sincos_interface.sv"
`include "t_block/sincos/sincos.sv"
`include "t_block/sincos/sin.sv"
`include "t_block/sincos/cos.sv"
`include "t_block/sincos/mult_27_coeff_104/mult_27_coeff_104.v"
`include "t_block/sincos/mult_27_coeff_326/mult_27_coeff_326.v"
`include "t_block/sincos/mult_27_coeff_58/mult_27_coeff_58.v"

module full_mat_top ();

	logic clk = 1'b0;
	always #1 clk = ~clk;

	initial $vcdpluson;

	ifc_full_mat ifc_full_mat (clk);
	full_mat_tb full_mat_tb (ifc_full_mat.full_mat_tb);
	full_mat full_mat (ifc_full_mat.full_mat);

	// instantiate mat_mult
	ifc_mat_mult ifc_mat_mult (clk);
	assign ifc_mat_mult.en = ifc_full_mat.en;
	// delay rst for mat_mult by five
	logic rst_delay_1;
	logic rst_delay_2;
	logic rst_delay_3;
	logic rst_delay_4;
	logic rst_delay_5;
	always_ff @(posedge clk) begin
		rst_delay_1 <= ifc_full_mat.rst;
		rst_delay_2 <= rst_delay_1;
		rst_delay_3 <= rst_delay_2;
		rst_delay_4 <= rst_delay_3;
		rst_delay_5 <= rst_delay_4;
	end
	assign ifc_mat_mult.rst = rst_delay_5;
	assign ifc_mat_mult.mat_mode = 1'b1;
	assign ifc_mat_mult.dataa = ifc_full_mat.mat_mult_dataa;
	assign ifc_mat_mult.datab = ifc_full_mat.mat_mult_datab;
	mat_mult mat_mult (ifc_mat_mult.mat_mult);
	assign ifc_full_mat.mat_mult_result = ifc_mat_mult.result;

	ifc_array_mult ifc_array_mult (clk);
	assign ifc_array_mult.en = ifc_full_mat.en;
	assign ifc_array_mult.rst = ifc_full_mat.rst;
	assign ifc_array_mult.dataa[5:0] = ifc_full_mat.array_mult_dataa;
	assign ifc_array_mult.datab[5:0] = ifc_full_mat.array_mult_datab;
	array_mult array_mult (ifc_array_mult.array_mult);
	assign ifc_full_mat.array_mult_result = ifc_array_mult.result[5:0];

endmodule
// the timescale directive tells the compiler the clock period and the
// precision that needs to be displayed in the VCD dump file

`timescale 1ns/1ps

`include "t_block_interface.sv"
`include "t_block.sv"
`include "bench.sv"

`include "../../../array_mult/array_mult_interface.sv"
`include "../../../array_mult/array_mult.sv"
`include "../../../mult_36/mult_36.v"
`include "../../../mult_21/mult_21.v"

`include "../../../sim_models/lpm_mult.v"
`include "../../../sim_models/mult_block.v"
`include "../../../sim_models/addsub_block.v"
`include "../../../sim_models/pipeline_internal_fv.v"
`include "../../../sim_models/dffep.v"

`include "sincos/sincos_interface.sv"
`include "sincos/sincos.sv"
`include "sincos/sin.sv"
`include "sincos/cos.sv"

`include "sincos/mult_21_coeff_14746/mult_21_coeff_14746.v"
`include "sincos/mult_21_coeff_26561/mult_21_coeff_26561.v"
`include "sincos/mult_21_coeff_83443/mult_21_coeff_83443.v"

module t_block_top ();

	logic clk = 1'b0;
	always #1 clk = ~clk;

	initial $vcdpluson;

	ifc_t_block ifc_t_block (clk);
	t_block_tb t_block_tb (ifc_t_block.t_block_tb);
	t_block t_block (ifc_t_block.t_block);

	// instantiate array_mult
	ifc_array_mult ifc_array_mult (clk);
	assign ifc_array_mult.en = ifc_t_block.en;
	assign ifc_array_mult.rst = ifc_t_block.rst;
	assign ifc_array_mult.dataa[5:0] = ifc_t_block.array_mult_dataa;
	assign ifc_array_mult.datab[5:0] = ifc_t_block.array_mult_datab;
	array_mult array_mult (ifc_array_mult.array_mult);
	assign ifc_t_block.array_mult_result = ifc_array_mult.result[5:0];

endmodule
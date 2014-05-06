// the timescale directive tells the compiler the clock period and the
// precision that needs to be displayed in the VCD dump file

`timescale 1ns/1ps

`include "mat_mult_interface.sv"
`include "mat_mult.sv"
`include "bench.sv"

`include "../mult_36/mult_36.v"

`include "../sim_models/lpm_mult.v"
`include "../sim_models/mult_block.v"
`include "../sim_models/addsub_block.v"
`include "../sim_models/pipeline_internal_fv.v"
`include "../sim_models/dffep.v"

`include "mult_array.sv"

module mat_mult_top ();

	logic clk = 1'b0;
	always #1 clk = ~clk;

	initial $vcdpluson;

	ifc_mat_mult ifc_mat_mult (clk);
	mat_mult_tb mat_mult_tb (ifc_mat_mult.mat_mult_tb);
	mat_mult mat_mult (ifc_mat_mult.mat_mult);

endmodule
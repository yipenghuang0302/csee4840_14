// the timescale directive tells the compiler the clock period and the
// precision that needs to be displayed in the VCD dump file

`timescale 1ns/1ps

`include "array_mult_interface.sv"
`include "array_mult.sv"
`include "bench.sv"

`include "mult_27/mult_27.v"

`include "../sim_models/lpm_mult.v"
`include "../sim_models/mult_block.v"
`include "../sim_models/addsub_block.v"
`include "../sim_models/pipeline_internal_fv.v"
`include "../sim_models/dffep.v"

module array_mult_top ();

	logic clk = 1'b0;
	always #1 clk = ~clk;

	initial $vcdpluson;

	ifc_array_mult ifc_array_mult (clk);
	array_mult_tb array_mult_tb (ifc_array_mult.array_mult_tb);
	array_mult array_mult (ifc_array_mult.array_mult);

endmodule
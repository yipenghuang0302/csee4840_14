// the timescale directive tells the compiler the clock period and the
// precision that needs to be displayed in the VCD dump file

`timescale 1ns/1ps

`include "sincos_interface.sv"
`include "sincos.sv"
`include "bench.sv"

`include "sin.sv"
`include "cos.sv"

`include "mult_21_coeff_26561/mult_21_coeff_26561.v"
`include "mult_21_coeff_83443/mult_21_coeff_83443.v"
`include "mult_21_coeff_14746/mult_21_coeff_14746.v"
`include "mult_21/mult_21.v"

`include "../../../../sim_models/lpm_mult.v"
`include "../../../../sim_models/mult_block.v"
`include "../../../../sim_models/addsub_block.v"
`include "../../../../sim_models/pipeline_internal_fv.v"
`include "../../../../sim_models/dffep.v"

module sincos_top ();

	logic clk = 1'b0;
	always #1 clk = ~clk;

	initial $vcdpluson;

	ifc_sincos ifc_sincos (clk);
	sincos_tb sincos_tb (ifc_sincos.sincos_tb);
	sincos sincos (ifc_sincos.sincos);

endmodule
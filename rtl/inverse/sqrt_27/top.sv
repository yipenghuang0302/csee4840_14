// the timescale directive tells the compiler the clock period and the
// precision that needs to be displayed in the VCD dump file

`timescale 1ns/1ps

`include "sqrt_27_interface.sv"
`include "sqrt_27.v"
`include "bench.sv"

`include "../../sim_models/altera_mf.v"

module sqrt_27_top ();

	logic clk = 1'b0;
	always #1 clk = ~clk;

	initial $vcdpluson;

	ifc_sqrt_27 ifc_sqrt_27 (clk);
	sqrt_27_tb sqrt_27_tb (ifc_sqrt_27.sqrt_27_tb);

	logic [14:0] remainder;

	sqrt_27 sqrt_27_inst (
		.clk ( ifc_sqrt_27.clk ),
		.ena ( ifc_sqrt_27.en ),
		.radical ( { ifc_sqrt_27.radical[18:0], 8'b0 } ),
		.q ( ifc_sqrt_27.q[13:0] ),
		.remainder ( remainder )
	);

endmodule
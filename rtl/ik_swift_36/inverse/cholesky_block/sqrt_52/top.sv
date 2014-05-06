// the timescale directive tells the compiler the clock period and the
// precision that needs to be displayed in the VCD dump file

`timescale 1ns/1ps

`include "sqrt_52_interface.sv"
`include "sqrt_52.v"
`include "bench.sv"

`include "../../../sim_models/altera_mf.v"

module sqrt_52_top ();

	logic clk = 1'b0;
	always #1 clk = ~clk;

	initial $vcdpluson;

	ifc_sqrt_52 ifc_sqrt_52 (clk);
	sqrt_52_tb sqrt_52_tb (ifc_sqrt_52.sqrt_52_tb);

	logic [26:0] remainder;

	sqrt_52 sqrt_52_inst (
		.clk ( ifc_sqrt_52.clk ),
		.ena ( ifc_sqrt_52.en ),
		.radical ( { ifc_sqrt_52.radical, 16'b0 } ),
		.q ( ifc_sqrt_52.q[25:0] ),
		.remainder ( remainder )
	);

endmodule
// the timescale directive tells the compiler the clock period and the
// precision that needs to be displayed in the VCD dump file

`timescale 1ns/1ps

`include "sqrt_43_interface.sv"
`include "sqrt_43.v"
`include "bench.sv"

`include "../../../sim_models/altera_mf.v"

module sqrt_43_top ();

	logic clk = 1'b0;
	always #1 clk = ~clk;

	initial $vcdpluson;

	ifc_sqrt_43 ifc_sqrt_43 (clk);
	sqrt_43_tb sqrt_43_tb (ifc_sqrt_43.sqrt_43_tb);

	logic [21:0] q;
	logic [22:0] remainder;

	sqrt_43 sqrt_43_inst (
		.clk ( ifc_sqrt_43.clk ),
		.ena ( ifc_sqrt_43.en ),
		.radical ( { ifc_sqrt_43.radical, 16'b0 } ),
		.q ( q ),
		.remainder ( remainder )
	);
	
	assign ifc_sqrt_43.q = {{5{q[21]}}, q};

endmodule
// the timescale directive tells the compiler the clock period and the
// precision that needs to be displayed in the VCD dump file

`timescale 1ns/1ps

`include "sincos.sv"
`include "sincos_interface.sv"
`include "bench.sv"

module top_sincos ();

	logic clk = 0;
	always #1 clk = ~clk;

	initial $vcdpluson;

	ifc_sincos ifc_sincos (clk);
	sincos sincos (ifc_sincos);
	sincos_tb sincos_tb (ifc_sincos);

endmodule
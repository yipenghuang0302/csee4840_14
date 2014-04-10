// the timescale directive tells the compiler the clock period and the
// precision that needs to be displayed in the VCD dump file

`timescale 1ns/1ps

`include "sincos_interface.sv"
`include "sincos.sv"
`include "bench.sv"

module sincos_top ();

	logic clk = 1'b0;
	always #1 clk = ~clk;

	// logic en = 1'b1;
	// logic [26:0] angle = 26'd251;
	// logic [26:0] angle;
	// logic [26:0] sin;
	// logic [26:0] cos;

	// initial begin
	// 	clk = 0;
	// 	repeat (1000)
	// 		#100ns clk = ~clk;
	// end

	initial $vcdpluson;

	ifc_sincos ifc_sincos (clk);
	sincos_tb sincos_tb (ifc_sincos.sincos_tb);
	sincos sincos (ifc_sincos.sincos);

endmodule
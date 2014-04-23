// the timescale directive tells the compiler the clock period and the
// precision that needs to be displayed in the VCD dump file

`timescale 1ns/1ps

`include "jacobian_interface.sv"
`include "jacobian.sv"
`include "bench.sv"

module jacobian_top ();

	logic clk = 1'b0;
	always #1 clk = ~clk;

	initial $vcdpluson;

	ifc_jacobian ifc_jacobian (clk);
	jacobian_tb jacobian_tb (ifc_jacobian.jacobian_tb);
	jacobian jacobian (ifc_jacobian.jacobian);

endmodule

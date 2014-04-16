// the timescale directive tells the compiler the clock period and the
// precision that needs to be displayed in the VCD dump file

`timescale 1ns/1ps

`include "full_mat_interface.sv"
`include "full_mat.sv"
`include "bench.sv"

module full_mat_top ();

	logic clk = 1'b0;
	always #1 clk = ~clk;

	initial $vcdpluson;

	ifc_full_mat ifc_full_mat (clk);
	full_mat_tb full_mat_tb (ifc_full_mat.full_mat_tb);
	full_mat full_mat (ifc_full_mat.full_mat);

endmodule
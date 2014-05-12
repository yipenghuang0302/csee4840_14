// the timescale directive tells the compiler the clock period and the
// precision that needs to be displayed in the VCD dump file

`timescale 1ns/1ps

`include "array_div_interface.sv"
`include "array_div.sv"
`include "bench.sv"

`include "div_43/div_43.v"

`include "../../sim_models/220model.v"

module array_div_top ();

	logic clk = 1'b0;
	always #1 clk = ~clk;

	initial $vcdpluson;

	ifc_array_div ifc_array_div (clk);
	array_div_tb array_div_tb (ifc_array_div.array_div_tb);
	array_div array_div (ifc_array_div.array_div);

endmodule
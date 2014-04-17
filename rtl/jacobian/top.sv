// the timescale directive tells the compiler the clock period and the
// precision that needs to be displayed in the VCD dump file

`timescale 1ns/1ps

`include "t_block_interface.sv"
`include "t_block.sv"
`include "bench.sv"

module t_block_top ();

	logic clk = 1'b0;
	always #1 clk = ~clk;

	initial $vcdpluson;

	ifc_t_block ifc_t_block (clk);
	t_block_tb t_block_tb (ifc_t_block.t_block_tb);
	t_block t_block (ifc_t_block.t_block);

endmodule
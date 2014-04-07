// the timescale directive tells the compiler the clock period and the
// precision that needs to be displayed in the VCD dump file

`timescale 1ns/1ps

module sincos_tb ();

	logic clk, reset;
	logic [2:0] count;

	initial begin
		clk = 0;
		forever
			#20ns clk = ~clk;
	end

	initial begin // Reset
		reset = 0;
		repeat (2)
			@(posedge clk);
			reset = 1;
		repeat (2)
			@(posedge clk);
			reset = 0;
	  end

	ifc_sincos ifc_sincos (clk);
	sincos sincos (ifc_sincos);

endmodule
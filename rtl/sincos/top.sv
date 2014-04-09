// the timescale directive tells the compiler the clock period and the
// precision that needs to be displayed in the VCD dump file

`timescale 1ns/1ps

module sincos_tb (
	output logic [26:0] sin,
	output logic [26:0] cos	
);

	logic clk, en = 1'b1, reset;
	logic [26:0] angle = 26'd251;
	// logic [26:0] sin;
	// logic [26:0] cos;

	initial begin
		clk = 0;
		repeat (1000)
			#100ns clk = ~clk;
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

//	ifc_sincos ifc_sincos (clk);
	sincos sincos (.*);

endmodule
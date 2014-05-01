// the timescale directive tells the compiler the clock period and the
// precision that needs to be displayed in the VCD dump file

`timescale 1ns/1ps

`include "cholesky_interface.sv"
`include "cholesky.sv"
`include "bench.sv"

`include "sqrt_27/sqrt_27_interface.sv"
`include "sqrt_27/sqrt_27.v"
`include "../../sim_models/altera_mf.v"

`include "../../array_mult/array_mult_interface.sv"
`include "../../array_mult/array_mult.sv"
`include "../../mult_27/mult_27.v"
`include "../../sim_models/lpm_mult.v"
`include "../../sim_models/mult_block.v"
`include "../../sim_models/addsub_block.v"
`include "../../sim_models/pipeline_internal_fv.v"
`include "../../sim_models/dffep.v"

`include "../array_div/array_div_interface.sv"
`include "../array_div/array_div.sv"
`include "../array_div/div_27/div_27.v"
`include "../../sim_models/220model.v"

module cholesky_top ();

	logic clk = 1'b0;
	always #1 clk = ~clk;

	initial $vcdpluson;

	ifc_cholesky ifc_cholesky (clk);
	cholesky_tb cholesky_tb (ifc_cholesky.cholesky_tb);
	cholesky cholesky (ifc_cholesky.cholesky);

	// LOGIC GOVERNING COUNT
	parameter MAX = 211;
	always_ff @(posedge ifc_cholesky.clk) begin
		if ( ifc_cholesky.rst ) begin // if parallel multiplier mode, clear counter
			ifc_cholesky.count <= 8'b0;
		end else if ( ifc_cholesky.en ) begin
			if ( ifc_cholesky.count==MAX-1'b1 ) begin
				ifc_cholesky.count <= 8'b0;
			end else begin
				ifc_cholesky.count <= ifc_cholesky.count + 1'b1;
			end
		end
	end

	// instantiate shared multiplier
	ifc_array_mult ifc_array_mult (clk);
	assign ifc_array_mult.en = ifc_cholesky.en;
	assign ifc_array_mult.rst = ifc_cholesky.rst;
	assign ifc_array_mult.dataa = ifc_cholesky.array_mult_dataa;
	assign ifc_array_mult.datab = ifc_cholesky.array_mult_datab;
	array_mult array_mult (ifc_array_mult.array_mult);
	assign ifc_cholesky.array_mult_result = ifc_array_mult.result;

	// instantiate shared divider
	ifc_array_div ifc_array_div (clk);
	assign ifc_array_div.en = ifc_cholesky.en;
	assign ifc_array_div.rst = ifc_cholesky.rst;
	assign ifc_array_div.dividends = ifc_cholesky.dividends;
	assign ifc_array_div.divisor = ifc_cholesky.divisor;
	array_div array_div (ifc_array_div.array_div);
	assign ifc_cholesky.quotients = ifc_array_div.quotients;

endmodule
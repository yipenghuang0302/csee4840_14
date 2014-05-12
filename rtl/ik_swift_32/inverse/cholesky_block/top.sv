// the timescale directive tells the compiler the clock period and the
// precision that needs to be displayed in the VCD dump file

`timescale 1ns/1ps

`include "cholesky_block_interface.sv"
`include "cholesky_block.sv"
`include "bench.sv"

`include "sqrt_43/sqrt_43_interface.sv"
`include "sqrt_43/sqrt_43.v"
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
`include "../array_div/div_43/div_43.v"
`include "../../sim_models/220model.v"

module cholesky_block_top ();

	logic clk = 1'b0;
	always #1 clk = ~clk;

	initial $vcdpluson;

	ifc_cholesky_block ifc_cholesky_block (clk);
	cholesky_block_tb cholesky_block_tb (ifc_cholesky_block.cholesky_block_tb);
	cholesky_block cholesky_block (ifc_cholesky_block.cholesky_block);

	// LOGIC GOVERNING COUNT
	parameter MAX = 211;
	always_ff @(posedge ifc_cholesky_block.clk) begin
		if ( ifc_cholesky_block.rst ) begin // if parallel multiplier mode, clear counter
			ifc_cholesky_block.count <= 8'b0;
		end else if ( ifc_cholesky_block.en ) begin
			if ( ifc_cholesky_block.count==MAX-1'b1 ) begin
				ifc_cholesky_block.count <= 8'b0;
			end else begin
				ifc_cholesky_block.count <= ifc_cholesky_block.count + 1'b1;
			end
		end
	end

	// instantiate shared multiplier
	ifc_array_mult ifc_array_mult (clk);
	assign ifc_array_mult.en = ifc_cholesky_block.en;
	assign ifc_array_mult.rst = ifc_cholesky_block.rst;
	assign ifc_array_mult.dataa = ifc_cholesky_block.array_mult_dataa;
	assign ifc_array_mult.datab = ifc_cholesky_block.array_mult_datab;
	array_mult array_mult (ifc_array_mult.array_mult);
	assign ifc_cholesky_block.array_mult_result = ifc_array_mult.result;

	// instantiate shared divider
	ifc_array_div ifc_array_div (clk);
	assign ifc_array_div.en = ifc_cholesky_block.en;
	assign ifc_array_div.rst = ifc_cholesky_block.rst;
	assign ifc_array_div.dividends = ifc_cholesky_block.dividends;
	assign ifc_array_div.divisor = ifc_cholesky_block.divisor;
	array_div array_div (ifc_array_div.array_div);
	assign ifc_cholesky_block.quotients = ifc_array_div.quotients;

endmodule
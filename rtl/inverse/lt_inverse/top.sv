// the timescale directive tells the compiler the clock period and the
// precision that needs to be displayed in the VCD dump file

`timescale 1ns/1ps

`include "lt_inverse_interface.sv"
`include "lt_inverse.sv"
`include "bench.sv"

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

module lt_inverse_top ();

	logic clk = 1'b0;
	always #1 clk = ~clk;

	initial $vcdpluson;

	ifc_lt_inverse ifc_lt_inverse (clk);
	lt_inverse_tb lt_inverse_tb (ifc_lt_inverse.lt_inverse_tb);
	lt_inverse lt_inverse (ifc_lt_inverse.lt_inverse_dut);

	// LOGIC GOVERNING COUNT
	parameter MAX = 217;
	always_ff @(posedge ifc_lt_inverse.clk) begin
		if ( ifc_lt_inverse.rst ) begin // if parallel multiplier mode, clear counter
			ifc_lt_inverse.count <= 8'b0;
		end else if ( ifc_lt_inverse.en ) begin
			if ( ifc_lt_inverse.count==MAX-1'b1 ) begin
				ifc_lt_inverse.count <= 8'b0;
			end else begin
				ifc_lt_inverse.count <= ifc_lt_inverse.count + 1'b1;
			end
		end
	end

	// instantiate shared multiplier
	ifc_array_mult ifc_array_mult (clk);
	assign ifc_array_mult.en = ifc_lt_inverse.en;
	assign ifc_array_mult.rst = ifc_lt_inverse.rst;
	assign ifc_array_mult.dataa = ifc_lt_inverse.array_mult_dataa;
	assign ifc_array_mult.datab = ifc_lt_inverse.array_mult_datab;
	array_mult array_mult (ifc_array_mult.array_mult);
	assign ifc_lt_inverse.array_mult_result = ifc_array_mult.result;

	// instantiate shared divider
	ifc_array_div ifc_array_div (clk);
	assign ifc_array_div.en = ifc_lt_inverse.en;
	assign ifc_array_div.rst = ifc_lt_inverse.rst;
	assign ifc_array_div.dividends = ifc_lt_inverse.dividends;
	assign ifc_array_div.divisor = ifc_lt_inverse.divisor;
	array_div array_div (ifc_array_div.array_div);
	assign ifc_lt_inverse.quotients = ifc_array_div.quotients;

endmodule
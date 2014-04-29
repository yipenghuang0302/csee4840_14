// the timescale directive tells the compiler the clock period and the
// precision that needs to be displayed in the VCD dump file

`timescale 1ns/1ps

`include "inverse_interface.sv"
`include "inverse.sv"
`include "bench.sv"

`include "../array_mult/array_mult_interface.sv"
`include "../array_mult/array_mult.sv"

`include "../mult_27/mult_27.v"
`include "../sim_models/lpm_mult.v"
`include "../sim_models/mult_block.v"
`include "../sim_models/addsub_block.v"
`include "../sim_models/pipeline_internal_fv.v"
`include "../sim_models/dffep.v"

module inverse_top ();

	logic clk = 1'b0;
	always #1 clk = ~clk;

	initial $vcdpluson;

	ifc_inverse ifc_inverse (clk);
	inverse_tb inverse_tb (ifc_inverse.inverse_tb);
	inverse inverse (ifc_inverse.inverse);

	// LOGIC GOVERNING COUNT
	parameter MAX = 100;
	always_ff @(posedge ifc_inverse.clk) begin
		if ( ifc_inverse.rst ) begin // if parallel multiplier mode, clear counter
			ifc_inverse.count <= 8'b0;
		end else if ( ifc_inverse.en ) begin
			if ( ifc_inverse.count==MAX-1'b1 ) begin
				ifc_inverse.count <= 8'b0;
			end else begin
				ifc_inverse.count <= ifc_inverse.count + 1'b1;
			end
		end
	end

	ifc_array_mult ifc_array_mult (clk);
	assign ifc_array_mult.en = ifc_inverse.en;
	assign ifc_array_mult.rst = ifc_inverse.rst;
	assign ifc_array_mult.dataa = ifc_inverse.array_mult_dataa;
	assign ifc_array_mult.datab = ifc_inverse.array_mult_datab;
	array_mult array_mult (ifc_array_mult.array_mult);
	assign ifc_inverse.array_mult_result = ifc_array_mult.result;

endmodule
// the timescale directive tells the compiler the clock period and the
// precision that needs to be displayed in the VCD dump file

`timescale 1ns/1ps

`include "jacobian_interface.sv"
`include "jacobian.sv"
`include "bench.sv"

`include "../../mat_mult/mat_mult_interface.sv"
`include "../../mat_mult/mat_mult.sv"
`include "../../mat_mult/mult_array.sv"
`include "../../mat_mult/mult_36_dsp/mult_36_dsp.v"

`include "../../array_mult/array_mult_interface.sv"
`include "../../array_mult/array_mult.sv"
`include "../../array_mult/mult_27/mult_27.v"

`include "../../sim_models/lpm_mult.v"
`include "../../sim_models/mult_block.v"
`include "../../sim_models/addsub_block.v"
`include "../../sim_models/pipeline_internal_fv.v"
`include "../../sim_models/dffep.v"

module jacobian_top ();

	logic clk = 1'b0;
	always #1 clk = ~clk;

	initial $vcdpluson;

	ifc_jacobian ifc_jacobian (clk);
	jacobian_tb jacobian_tb (ifc_jacobian.jacobian_tb);
	jacobian jacobian (ifc_jacobian.jacobian);

	// LOGIC GOVERNING COUNT
	parameter MAX = 100;
	always_ff @(posedge ifc_jacobian.clk) begin
		if ( ifc_jacobian.rst ) begin // if parallel multiplier mode, clear counter
			ifc_jacobian.count <= 8'b0;
		end else if ( ifc_jacobian.en ) begin
			if ( ifc_jacobian.count==MAX-1'b1 ) begin
				ifc_jacobian.count <= 8'b0;
			end else begin
				ifc_jacobian.count <= ifc_jacobian.count + 1'b1;
			end
		end
	end

	// instantiate mat_mult
	ifc_mat_mult ifc_mat_mult (clk);
	assign ifc_mat_mult.en = ifc_jacobian.en;
	// delay rst for mat_mult by five
	always_ff @(posedge clk)
		if ( ifc_jacobian.en )
			ifc_mat_mult.rst <= ifc_jacobian.count == 8'd4;
	assign ifc_mat_mult.mat_mode = ifc_jacobian.count<8'd90 ? 1'b1 : 1'b0;
	genvar index, jndex;
	generate
		for ( index=0 ; index<6; index++ ) begin
			for ( jndex=0 ; jndex<6; jndex++ ) begin
				assign ifc_mat_mult.dataa[index][jndex] = {{9{ifc_jacobian.mat_mult_dataa[index][jndex][26]}}, ifc_jacobian.mat_mult_dataa[index][jndex]};
				assign ifc_mat_mult.datab[index][jndex] = {{9{ifc_jacobian.mat_mult_datab[index][jndex][26]}}, ifc_jacobian.mat_mult_datab[index][jndex]};
				assign ifc_jacobian.mat_mult_result[index][jndex] = ifc_mat_mult.result[index][jndex];
			end
		end
	endgenerate
	mat_mult mat_mult (ifc_mat_mult.mat_mult);

	ifc_array_mult ifc_array_mult (clk);
	assign ifc_array_mult.en = ifc_jacobian.en;
	assign ifc_array_mult.rst = ifc_jacobian.rst;
	assign ifc_array_mult.dataa[8:0] = ifc_jacobian.array_mult_dataa;
	assign ifc_array_mult.datab[8:0] = ifc_jacobian.array_mult_datab;
	array_mult array_mult (ifc_array_mult.array_mult);
	assign ifc_jacobian.array_mult_result = ifc_array_mult.result[8:0];

endmodule
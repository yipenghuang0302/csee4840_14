// the timescale directive tells the compiler the clock period and the
// precision that needs to be displayed in the VCD dump file

`timescale 1ns/1ps

`include "full_mat_interface.sv"
`include "full_mat.sv"
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

`include "t_block/t_block_interface.sv"
`include "t_block/t_block.sv"

`include "t_block/sincos/sincos_interface.sv"
`include "t_block/sincos/sincos.sv"
`include "t_block/sincos/sin.sv"
`include "t_block/sincos/cos.sv"
`include "t_block/sincos/mult_21_coeff_26561/mult_21_coeff_26561.v"
`include "t_block/sincos/mult_21_coeff_83443/mult_21_coeff_83443.v"
`include "t_block/sincos/mult_21_coeff_14746/mult_21_coeff_14746.v"
`include "t_block/sincos/mult_21/mult_21.v"

module full_mat_top ();

	logic clk = 1'b0;
	always #1 clk = ~clk;

	initial $vcdpluson;

	ifc_full_mat ifc_full_mat (clk);
	full_mat_tb full_mat_tb (ifc_full_mat.full_mat_tb);
	full_mat full_mat (ifc_full_mat.full_mat);

	// LOGIC GOVERNING COUNT
	parameter MAX = 91;
	always_ff @(posedge ifc_full_mat.clk) begin
		if ( ifc_full_mat.rst ) begin
			ifc_full_mat.count <= 8'b0;
		end else if ( ifc_full_mat.en ) begin
			if (ifc_full_mat.en) begin
				if ( ifc_full_mat.count==MAX-1'b1 ) begin
					ifc_full_mat.count <= 8'b0;
				end else begin
					ifc_full_mat.count <= ifc_full_mat.count + 1'b1;
				end
			end
		end
	end

	// instantiate mat_mult
	ifc_mat_mult ifc_mat_mult (clk);
	assign ifc_mat_mult.en = ifc_full_mat.en;
	// delay rst for mat_mult by five
	always_ff @(posedge clk)
		if (ifc_full_mat.en)
			ifc_mat_mult.rst <= ifc_full_mat.count == 8'd4;
	assign ifc_mat_mult.mat_mode = 1'b1;
	genvar index, jndex;
	generate
		for ( index=0 ; index<6; index++ ) begin
			for ( jndex=0 ; jndex<6; jndex++ ) begin
				assign ifc_mat_mult.dataa[index][jndex] = {{9{ifc_full_mat.mat_mult_dataa[index][jndex][26]}}, ifc_full_mat.mat_mult_dataa[index][jndex]};
				assign ifc_mat_mult.datab[index][jndex] = {{9{ifc_full_mat.mat_mult_datab[index][jndex][26]}}, ifc_full_mat.mat_mult_datab[index][jndex]};
				assign ifc_full_mat.mat_mult_result[index][jndex] = ifc_mat_mult.result[index][jndex][26:0];
			end
		end
	endgenerate
	mat_mult mat_mult (ifc_mat_mult.mat_mult);

	ifc_array_mult ifc_array_mult (clk);
	assign ifc_array_mult.en = ifc_full_mat.en;
	assign ifc_array_mult.rst = ifc_full_mat.rst;
	assign ifc_array_mult.dataa = ifc_full_mat.array_mult_dataa;
	assign ifc_array_mult.datab = ifc_full_mat.array_mult_datab;
	array_mult array_mult (ifc_array_mult.array_mult);
	assign ifc_full_mat.array_mult_result = ifc_array_mult.result;

endmodule
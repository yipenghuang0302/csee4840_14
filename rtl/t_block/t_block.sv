/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

`include "../sim_models/lpm_mult.v"
`include "../sim_models/mult_block.v"
`include "../sim_models/addsub_block.v"
`include "../sim_models/pipeline_internal_fv.v"
`include "../sim_models/dffep.v"
`include "../sim_models/altera_mf.v"

`include "sincos/sincos_interface.sv"
`include "sincos/sincos.sv"
`include "sincos/sin.sv"
`include "sincos/cos.sv"

`include "sincos/mult_27_square/mult_27_square.v"
`include "sincos/mult_27_coeff_104/mult_27_coeff_104.v"
`include "sincos/mult_27_coeff_326/mult_27_coeff_326.v"
`include "sincos/mult_27_coeff_58/mult_27_coeff_58.v"

`include "../mult_27/mult_27.v"

module t_block (
	ifc_t_block.t_block i
);

	ifc_sincos i_alpha (i.clk);
	assign i_alpha.angle = i.alpha;
	assign i_alpha.en = i.en;
	sincos sincos_alpha (i_alpha.sincos);

	ifc_sincos i_theta (i.clk);
	assign i_theta.angle = i.theta;
	assign i_theta.en = i.en;
	sincos sincos_theta (i_theta.sincos);


	logic [53:0] mult_01_result;
	mult_27 mult_01 (
		.clken ( i.en ),
		.clock ( i.clk ),
		.dataa ( -i_theta.sin ),
		.datab ( i_alpha.cos ),
		.result ( mult_01_result )
	);

	logic [53:0] mult_02_result;
	mult_27 mult_02 (
		.clken ( i.en ),
		.clock ( i.clk ),
		.dataa ( i_theta.sin ),
		.datab ( i_alpha.sin ),
		.result ( mult_02_result )
	);

	logic [53:0] mult_03_result;
	mult_27 mult_03 (
		.clken ( i.en ),
		.clock ( i.clk ),
		.dataa ( i.a ),
		.datab ( i_theta.cos ),
		.result ( mult_03_result )
	);

	logic [53:0] mult_11_result;
	mult_27 mult_11 (
		.clken ( i.en ),
		.clock ( i.clk ),
		.dataa ( i_theta.cos ),
		.datab ( i_alpha.cos ),
		.result ( mult_11_result )
	);

	logic [53:0] mult_12_result;
	mult_27 mult_12 (
		.clken ( i.en ),
		.clock ( i.clk ),
		.dataa ( i_theta.cos ),
		.datab ( -i_alpha.sin ),
		.result ( mult_12_result )
	);

	logic [53:0] mult_13_result;
	mult_27 mult_13 (
		.clken ( i.en ),
		.clock ( i.clk ),
		.dataa ( i.a ),
		.datab ( i_theta.sin ),
		.result ( mult_13_result )
	);

	assign i.t_matrix_00 = i_theta.cos;
	assign i.t_matrix_01 = mult_01_result[7] ? mult_01_result[34:8] + 1'b1 : mult_01_result[34:8];
	assign i.t_matrix_02 = mult_02_result[7] ? mult_02_result[34:8] + 1'b1 : mult_02_result[34:8];
	assign i.t_matrix_03 = mult_03_result[7] ? mult_03_result[34:8] + 1'b1 : mult_03_result[34:8];

	assign i.t_matrix_10 = i_theta.sin;
	assign i.t_matrix_11 = mult_11_result[7] ? mult_11_result[34:8] + 1'b1 : mult_11_result[34:8];
	assign i.t_matrix_12 = mult_12_result[7] ? mult_12_result[34:8] + 1'b1 : mult_12_result[34:8];
	assign i.t_matrix_13 = mult_13_result[7] ? mult_13_result[34:8] + 1'b1 : mult_13_result[34:8];

	assign i.t_matrix_20 = 27'd0;
	assign i.t_matrix_21 = i_alpha.sin;
	assign i.t_matrix_22 = i_alpha.cos;
	assign i.t_matrix_23 = i.d;

	assign i.t_matrix_30 = 27'd0;
	assign i.t_matrix_31 = 27'd0;
	assign i.t_matrix_32 = 27'd0;
	assign i.t_matrix_33 = 27'd256;

endmodule
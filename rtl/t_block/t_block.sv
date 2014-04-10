/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

`include "sincos/sincos_interface.sv"
`include "sincos/sincos.sv"
`include "../mult_27/mult_27.v"

module t_block (
	ifc_t_block.t_block i
);

	ifc_sincos i_alpha (clk);
	assign i_alpha.angle = i.angle;
	assign i_alpha.en = i.en;
	sincos sincos_alpha (i_alpha.sincos);

	ifc_sincos i_theta (clk);
	assign i_theta.angle = i.angle;
	assign i_theta.en = i.en;
	sincos sincos_theta (i_theta.sincos);

	assign i.t_matrix_00 = i_theta.cos;
	mult_27 mult_01 (
		.clken ( en ),
		.clock ( clk ),
		.dataa ( -i_theta.sin ),
		.datab ( i_alpha.cos ),
		.result ( i.t_matrix_01 )
	);
	mult_27 mult_02 (
		.clken ( en ),
		.clock ( clk ),
		.dataa ( i_theta.sin ),
		.datab ( i_alpha.sin ),
		.result ( i.t_matrix_02 )
	);
	mult_27 mult_03 (
		.clken ( en ),
		.clock ( clk ),
		.dataa ( a ),
		.datab ( i_theta.cos ),
		.result ( i.t_matrix_03 )
	);

	assign i.t_matrix_10 = i_theta.sin;
	mult_27 mult_11 (
		.clken ( en ),
		.clock ( clk ),
		.dataa ( i_theta.cos ),
		.datab ( i_alpha.cos ),
		.result ( i.t_matrix_11 )
	);
	mult_27 mult_12 (
		.clken ( en ),
		.clock ( clk ),
		.dataa ( i_theta.cos ),
		.datab ( -i_alpha.sin ),
		.result ( i.t_matrix_12 )
	);
	mult_27 mult_13 (
		.clken ( en ),
		.clock ( clk ),
		.dataa ( a ),
		.datab ( i_theta.sin ),
		.result ( i.t_matrix_13 )
	);

	assign i.t_matrix_20 = 'd0;
	assign i.t_matrix_21 = i_alpha.sin;
	assign i.t_matrix_22 = i_alpha.cos;
	assign i.t_matrix_23 = d;

	assign i.t_matrix_30 = 'd0;
	assign i.t_matrix_31 = 'd0;
	assign i.t_matrix_32 = 'd0;
	assign i.t_matrix_33 = 'd1;

endmodule
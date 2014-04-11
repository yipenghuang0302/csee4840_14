/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

`include "../sim_models/lpm_mult.v"
`include "../sim_models/mult_block.v"
`include "../sim_models/addsub_block.v"
`include "../sim_models/pipeline_internal_fv.v"
`include "../sim_models/dffep.v"
`include "../mult_27/mult_27.v"

module mult_array (
	clk, en,
	dataa,
	datab,
	result
);

	parameter n = 6;

	input clk, en;
	input [n*n-1:0] [26:0] dataa;
	input [n*n-1:0] [26:0] datab;
	output [n*n-1:0] [26:0] result;

	logic [n*n-1:0] [53:0] mult_result;
	logic [n*n-1:0] [26:0] mult_round;

	genvar i;
	generate
		for ( i=n*n-1 ; i>=0 ; i-- ) begin: mult_27_array
			mult_27 mult_27_inst (
				.clken(en),
				.clock(clk),
				.dataa(dataa[i]),
				.datab(datab[i]),
				.result(mult_result[i])
			);
			assign mult_round[i] = mult_result[i][7] ? mult_result[i][34:8] + 1'b1 : mult_result[i][34:8];
		end
	endgenerate

	assign result = mult_round;

endmodule

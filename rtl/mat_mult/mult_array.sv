/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

//`include "../sim_models/lpm_mult.v"
//`include "../sim_models/mult_block.v"
//`include "../sim_models/addsub_block.v"
//`include "../sim_models/pipeline_internal_fv.v"
//`include "../sim_models/dffep.v"
`include "../mult_27/mult_27.v"

module mult_array (
	clk, en,
	dataa,
	datab,
	result
);

	parameter n = 2;

	input clk, en;
	input [n-1:0] [n-1:0] [26:0] dataa;
	input [n-1:0] [n-1:0] [26:0] datab;
	output [n-1:0] [n-1:0] [26:0] result;

	logic [n-1:0] [n-1:0] [53:0] mult_result;
	logic [n-1:0] [n-1:0] [26:0] mult_round;

	genvar i, j;
	generate
		for ( i=n-1 ; i>=0 ; i-- ) begin: mult_27_row
			for ( j=n-1 ; j>=0 ; j-- ) begin: mult_27_col
				mult_27 mult_27_inst (
					.clken(en),
					.clock(clk),
					.dataa(dataa[i][j]),
					.datab(datab[i][j]),
					.result(mult_result[i][j])
				);
				always_ff @(posedge clk) begin
					mult_round[i][j] <= mult_result[i][j][7] ? mult_result[i][j][34:8] + 1'b1 : mult_result[i][j][34:8];
				end
			end
		end
	endgenerate

	assign result = mult_round;

endmodule

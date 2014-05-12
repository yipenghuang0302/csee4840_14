/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

module mult_array (
	clk, en,
	dataa,
	datab,
	result
);

	parameter n = 6;

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
				always_ff @(posedge clk)
					if (en)
						mult_round[i][j] <= mult_result[i][j][15] ? mult_result[i][j][42:16] + 1'b1 : mult_result[i][j][42:16];
			end
		end
	endgenerate

	assign result = mult_round;

endmodule

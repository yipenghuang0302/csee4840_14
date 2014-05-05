/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

module array_mult (
	ifc_array_mult.array_mult i
);

	parameter n = 3;

	logic [n-1:0] [89:0] mult_result;
	logic [n-1:0] [44:0] mult_round;

	genvar index;
	generate
		for ( index=n-1 ; index>=0 ; index-- ) begin: mult_45_row
			mult_45 mult_45_inst (
				.clken(i.en),
				.clock(i.clk),
				.dataa(i.dataa[index]),
				.datab(i.datab[index]),
				.result(mult_result[index])
			);
			always_ff @(posedge i.clk) begin
				mult_round[index] <= mult_result[index][21] ? mult_result[index][66:22] + 1'b1 : mult_result[index][66:22];
			end
		end
	endgenerate

	assign i.result = mult_round;

endmodule
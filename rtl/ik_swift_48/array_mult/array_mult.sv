/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

module array_mult (
	ifc_array_mult.array_mult i
);

	parameter n = 4;

	logic [n-1:0] [71:0] mult_result;
	logic [n-1:0] [35:0] mult_round;

	genvar index;
	generate
		for ( index=n-1 ; index>=0 ; index-- ) begin: mult_36_row
			mult_36 mult_36_inst (
				.clken(i.en),
				.clock(i.clk),
				.dataa(i.dataa[index]),
				.datab(i.datab[index]),
				.result(mult_result[index])
			);
			always_ff @(posedge i.clk) begin
				mult_round[index] <= mult_result[index][17] ? mult_result[index][53:18] + 1'b1 : mult_result[index][53:18];
			end
		end
	endgenerate

	assign i.result = mult_round;

endmodule
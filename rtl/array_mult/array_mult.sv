/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

module array_mult (
	ifc_array_mult.array_mult i
);

	parameter n = 15;

	logic [n-1:0] [53:0] mult_result;
	logic [n-1:0] [26:0] mult_round;

	genvar index;
	generate
		for ( index=n-1 ; index>=0 ; index-- ) begin: mult_27_row
			mult_27 mult_27_inst (
				.clken(i.en),
				.clock(i.clk),
				.dataa(i.dataa[index]),
				.datab(i.datab[index]),
				.result(mult_result[index])
			);
			always_ff @(posedge i.clk) begin
				mult_round[index] <= mult_result[index][7] ? mult_result[index][34:8] + 1'b1 : mult_result[index][34:8];
			end
		end
	endgenerate

	assign i.result = mult_round;

endmodule
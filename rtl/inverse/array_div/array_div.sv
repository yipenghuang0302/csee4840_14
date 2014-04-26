/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

module array_div (
	ifc_array_div.array_div i
);

	parameter n = 5;

	logic [n-1:0] [26:0] remain;

	genvar index;
	generate
		for ( index=n-1 ; index>=0 ; index-- ) begin: div_27_row
			div_27	div_27_inst (
				.clken( i.en ),
				.clock( i.clk ),
				.denom ( i.denom ),
				.numer ( i.numer[index] ),
				.quotient ( i.quotient[index] ),
				.remain ( remain[index] )
				);
			// always_ff @(posedge i.clk) begin
			// 	mult_round[index] <= mult_result[index][7] ? mult_result[index][34:8] + 1'b1 : mult_result[index][34:8];
			// end
		end
	endgenerate

	// assign i.result = mult_round;

endmodule
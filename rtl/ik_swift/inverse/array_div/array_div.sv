/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

module array_div (
	ifc_array_div.array_div i
);

	parameter n = 6;

	logic [n-1:0] [26:0] remain;

	genvar index;
	generate
		for ( index=n-1 ; index>=0 ; index-- ) begin: div_27_row
			div_27	div_27_inst (
				.clken( i.en ),
				.clock( i.clk ),
				.denom ( i.divisor ),
				.numer ( {i.dividends[index][18:0],8'b0} ),
				.quotient ( i.quotients[index] ),
				.remain ( remain[index] )
				);
		end
	endgenerate

endmodule
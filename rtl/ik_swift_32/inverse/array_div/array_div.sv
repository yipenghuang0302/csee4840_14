/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

module array_div (
	ifc_array_div.array_div i
);

	parameter n = 6;

	logic [n-1:0] [47:0] quotient;
	logic [n-1:0] [35:0] remain;

	genvar index;
	generate
		for ( index=n-1 ; index>=0 ; index-- ) begin: div_48_row
			div_48	div_48_inst (
				.clken( i.en ),
				.clock( i.clk ),
				.denom ( i.divisor ),
				.numer ( {i.dividends[index],12'b0} ),
				.quotient ( quotient[index] ),
				.remain ( remain[index] )
				);
			assign i.quotients[index] = {quotient[index][31:0], 4'b0};
		end
	endgenerate

endmodule
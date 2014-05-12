/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

module array_div (
	ifc_array_div.array_div i
);

	parameter n = 6;

	logic [n-1:0] [42:0] quotient;
	logic [n-1:0] [26:0] remain;

	genvar index;
	generate
		for ( index=n-1 ; index>=0 ; index-- ) begin: div_43_row
			div_43	div_43_inst (
				.clken( i.en ),
				.clock( i.clk ),
				.denom ( i.divisor ),
				.numer ( {i.dividends[index],16'b0} ),
				.quotient ( quotient[index] ),
				.remain ( remain[index] )
				);
			assign i.quotients[index] = quotient[index][26:0];
		end
	endgenerate

endmodule
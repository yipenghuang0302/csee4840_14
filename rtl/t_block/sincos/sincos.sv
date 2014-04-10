/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

// `include "sin.sv"
// `include "cos.sv"

module sincos (
	ifc_sincos.sincos i
);

	sin sin_block (
		.clk ( i.clk ),
		.en ( i.en ),
		.angle ( i.angle ),
		.sin ( i.sin )
	);

	cos cos_block (
		.clk ( i.clk ),
		.en ( i.en ),
		.angle ( i.angle ),
		.cos ( i.cos )
	);

endmodule
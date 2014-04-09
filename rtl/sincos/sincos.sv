/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

`include "sin.sv"
`include "cos.sv"

module sincos (
	ifc_sincos.sincos i
	// input logic clk,
	// input logic en,
	// input logic [26:0] angle,
	// output logic [26:0] sin,
	// output logic [26:0] cos
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
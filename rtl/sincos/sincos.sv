/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

module sincos (
	input logic clk,
	input logic en,
	input logic [26:0] angle,
	output logic [26:0] sin,
	output logic [26:0] cos
);

	sin sin_block (
		.clk ( clk ),
		.en ( en ),
		.angle ( angle ),
		.sin ( sin )
	);

	cos cos_block (
		.clk ( clk ),
		.en ( en ),
		.angle ( angle ),
		.cos ( cos )
	);

endmodule
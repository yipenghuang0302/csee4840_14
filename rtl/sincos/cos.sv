/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

module cos (
	input logic clk, en,
	input logic [26:0] angle,
	output logic [26:0] cos
);

	//compute cosine: cos(angle) = sin(angle + PI/2)

	logic [26:0] plus_half_pi; // angle + PI/2
	assign plus_half_pi = angle + 402; // angle += 1.57079632;

	logic [26:0] angle;
	// if (angle>3.14159265) angle-=6.28318531;
	assign new_angle = plus_half_pi>804 ? plus_half_pi-1608 : plus_half_pi;

	sin sin (
		.clk ( clk ),
		.en ( en ),
		.angle ( new_angle ),
		.sin ( cos )
	);

endmodule
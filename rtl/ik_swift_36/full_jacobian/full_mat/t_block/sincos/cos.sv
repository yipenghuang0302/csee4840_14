/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

module cos (
	input logic clk, en, rst,
	input logic [35:0] angle,
	output logic [35:0] cos
);

	//compute cosine: cos(angle) = sin(angle + PI/2)

	logic [35:0] plus_half_pi; // angle + PI/2
	always_ff @(posedge clk)
		if (en)
			plus_half_pi <= angle + 36'd102944; // angle += 1.57079632;

	logic [35:0] new_angle;
	// if (angle>3.14159265) angle-=6.28318531;
	always_ff @(posedge clk)
		if (en)
			new_angle <= plus_half_pi>36'd205887 && plus_half_pi[35]==1'b0 ? plus_half_pi-36'd411775 : plus_half_pi; // also check for positivity

	sin sin (
		.clk ( clk ),
		.en ( en ),
		.rst ( rst ),
		.angle ( new_angle ),
		.sin ( cos )
	);

endmodule
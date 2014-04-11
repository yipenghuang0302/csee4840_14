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
	always_ff @(posedge clk) begin
		plus_half_pi <= angle + 27'd402; // angle += 1.57079632;
	end

	logic [26:0] new_angle;
	// if (angle>3.14159265) angle-=6.28318531;
	assign new_angle = plus_half_pi>27'd804 && plus_half_pi[26]==1'b0 ? plus_half_pi-27'd1608 : plus_half_pi; // also check for positivity

	sin sin (
		.clk ( clk ),
		.en ( en ),
		.angle ( new_angle ),
		.sin ( cos )
	);

endmodule
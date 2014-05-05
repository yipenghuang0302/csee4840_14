/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

module cos (
	input logic clk, en, rst,
	input logic [47:0] angle,
	output logic [47:0] cos
);

	//compute cosine: cos(angle) = sin(angle + PI/2)

	logic [47:0] plus_half_pi; // angle + PI/2
	always_ff @(posedge clk) begin
		plus_half_pi <= angle + 48'd26353589; // angle += 1.57079632;
	end

	logic [47:0] new_angle;
	// if (angle>3.14159265) angle-=6.28318531;
	always_ff @(posedge clk) begin
		new_angle <= plus_half_pi>48'd52707178 && plus_half_pi[47]==1'b0 ? plus_half_pi-48'd105414357 : plus_half_pi; // also check for positivity
	end

	sin sin (
		.clk ( clk ),
		.en ( en ),
		.rst ( rst ),
		.angle ( new_angle ),
		.sin ( cos )
	);

endmodule
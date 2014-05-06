/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

module sincos (
	ifc_sincos.sincos i
);

	// pipeline delay registers for sin
	logic [35:0] angle_delay_1;
	logic [35:0] angle_delay_2;

	always_ff @(posedge i.clk) begin
		angle_delay_1 <= i.angle;
		angle_delay_2 <= angle_delay_1;
	end

	sin sin_block (
		.clk ( i.clk ),
		.en ( i.en ),
		.rst ( i.rst ),
		.angle ( angle_delay_2),
		.sin ( i.sin )
	);

	cos cos_block (
		.clk ( i.clk ),
		.en ( i.en ),
		.rst ( i.rst ),
		.angle ( i.angle ),
		.cos ( i.cos )
	);

endmodule
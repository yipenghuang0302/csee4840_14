/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

module sincos (
	ifc_sincos.sincos i
);

	sin sin (
		.clk ( i.clk ),
		.en ( i.en ),
		.angle ( i.angle ),
		.sin ( i.sin )
	);

	cos cos (
		.clk ( i.clk ),
		.en ( i.en ),
		.angle ( i.angle ),
		.cos ( i.cos )
	);

endmodule
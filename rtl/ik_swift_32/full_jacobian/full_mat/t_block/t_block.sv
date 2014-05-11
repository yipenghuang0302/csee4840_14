/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

module t_block (
	ifc_t_block.t_block i
);

	ifc_sincos i_alpha (i.clk);
	assign i_alpha.angle = i.alpha;
	assign i_alpha.en = i.en;
	assign i_alpha.rst = i.rst;
	sincos sincos_alpha (i_alpha.sincos);

	ifc_sincos i_theta (i.clk);
	assign i_theta.angle = i.theta;
	assign i_theta.en = i.en;
	assign i_theta.rst = i.rst;
	sincos sincos_theta (i_theta.sincos);

	// delay a by 22
	logic [22:0] [20:0] a_delay;
	assign a_delay[0] = i.a;
	always_ff @(posedge i.clk)
		if (i.en)
			a_delay[22:1] <= a_delay[21:0];

	// delay d by 26
	logic [27:0] [20:0] d_delay;
	assign d_delay[0] = i.d;
	always_ff @(posedge i.clk)
		if (i.en)
			d_delay[27:1] <= d_delay[26:0];

	logic [20:0] neg_sin_theta;
	assign neg_sin_theta = -i_theta.sin;
	logic [20:0] neg_sin_alpha;
	assign neg_sin_alpha = -i_alpha.sin;

	// LOGIC GOVERNING ARRAY MULT INPUTS
	always_ff @(posedge i.clk)
		if (i.en)
			if ( 8'd23<=i.count && i.count<8'd29 ) begin
				i.array_mult_dataa[0] <= {{15{neg_sin_theta[20]}}, neg_sin_theta};
				i.array_mult_datab[0] <= {{15{i_alpha.cos[20]}}, i_alpha.cos};
				i.array_mult_dataa[1] <= {{15{i_theta.sin[20]}}, i_theta.sin};
				i.array_mult_datab[1] <= {{15{i_alpha.sin[20]}}, i_alpha.sin};
				i.array_mult_dataa[2] <= {{15{a_delay[22][20]}}, a_delay[22]};
				i.array_mult_datab[2] <= {{15{i_theta.cos[20]}}, i_theta.cos};
				i.array_mult_dataa[3] <= {{15{i_theta.cos[20]}}, i_theta.cos};
				i.array_mult_datab[3] <= {{15{i_alpha.cos[20]}}, i_alpha.cos};
				i.array_mult_dataa[4] <= {{15{i_theta.cos[20]}}, i_theta.cos};
				i.array_mult_datab[4] <= {{15{neg_sin_alpha[20]}}, neg_sin_alpha};
				i.array_mult_dataa[5] <= {{15{a_delay[22][20]}}, a_delay[22]};
				i.array_mult_datab[5] <= {{15{i_theta.sin[20]}}, i_theta.sin};
			end else begin
				i.array_mult_dataa[5:0] <= {5{36'b0}};
				i.array_mult_datab[5:0] <= {5{36'b0}};
			end

	// delay cos(theta) by 4
	logic [5:0] [20:0] cos_theta_delay;
	assign cos_theta_delay[0] = i_theta.cos;
	always_ff @(posedge i.clk)
		if (i.en)
			cos_theta_delay[5:1] <= cos_theta_delay[4:0];

	// delay sin(theta) by 4
	logic [5:0] [20:0] sin_theta_delay;
	assign sin_theta_delay[0] = i_theta.sin;
	always_ff @(posedge i.clk)
		if (i.en)
			sin_theta_delay[5:1] <= sin_theta_delay[4:0];

	// delay cos(alpha) by 4
	logic [5:0] [20:0] cos_alpha_delay;
	assign cos_alpha_delay[0] = i_alpha.cos;
	always_ff @(posedge i.clk)
		if (i.en)
			cos_alpha_delay[5:1] <= cos_alpha_delay[4:0];

	// delay sin(alpha) by 4
	logic [5:0] [20:0] sin_alpha_delay;
	assign sin_alpha_delay[0] = i_alpha.sin;
	always_ff @(posedge i.clk)
		if (i.en)
			sin_alpha_delay[5:1] <= sin_alpha_delay[4:0];

	assign i.t_matrix[0][0] = {{15{cos_theta_delay[5][20]}}, cos_theta_delay[5]};
	assign i.t_matrix[0][1] = i.array_mult_result[0];
	assign i.t_matrix[0][2] = i.array_mult_result[1];
	assign i.t_matrix[0][3] = i.array_mult_result[2];

	assign i.t_matrix[1][0] = {{15{sin_theta_delay[5][20]}}, sin_theta_delay[5]};
	assign i.t_matrix[1][1] = i.array_mult_result[3];
	assign i.t_matrix[1][2] = i.array_mult_result[4];
	assign i.t_matrix[1][3] = i.array_mult_result[5];

	assign i.t_matrix[2][0] = 36'b0;
	assign i.t_matrix[2][1] = {{15{sin_alpha_delay[5][20]}}, sin_alpha_delay[5]};
	assign i.t_matrix[2][2] = {{15{cos_alpha_delay[5][20]}}, cos_alpha_delay[5]};
	assign i.t_matrix[2][3] = {{15{d_delay[27][20]}}, d_delay[27]};

	assign i.t_matrix[3][0] = 36'b0;
	assign i.t_matrix[3][1] = 36'b0;
	assign i.t_matrix[3][2] = 36'b0;
	assign i.t_matrix[3][3] = 36'd65536;

endmodule
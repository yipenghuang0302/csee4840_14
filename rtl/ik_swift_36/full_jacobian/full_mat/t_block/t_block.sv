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
	logic [22:0] [35:0] a_delay;
	assign a_delay[0] = i.a;
	always_ff @(posedge i.clk) begin
		a_delay[22:1] <= a_delay[21:0];
	end

	// delay d by 26
	logic [27:0] [35:0] d_delay;
	assign d_delay[0] = i.d;
	always_ff @(posedge i.clk) begin
		d_delay[27:1] <= d_delay[26:0];
	end

	// LOGIC GOVERNING ARRAY MULT INPUTS
	always_ff @(posedge i.clk) begin
		if ( 8'd23<=i.count && i.count<8'd29 ) begin
			i.array_mult_dataa[0] <= -i_theta.sin;
			i.array_mult_datab[0] <= i_alpha.cos;
			i.array_mult_dataa[1] <= i_theta.sin;
			i.array_mult_datab[1] <= i_alpha.sin;
			i.array_mult_dataa[2] <= a_delay[22];
			i.array_mult_datab[2] <= i_theta.cos;
			i.array_mult_dataa[3] <= i_theta.cos;
			i.array_mult_datab[3] <= i_alpha.cos;
			i.array_mult_dataa[4] <= i_theta.cos;
			i.array_mult_datab[4] <= -i_alpha.sin;
			i.array_mult_dataa[5] <= a_delay[22];
			i.array_mult_datab[5] <= i_theta.sin;
		end else begin
			i.array_mult_dataa[5:0] <= {5{36'b0}};
			i.array_mult_datab[5:0] <= {5{36'b0}};
		end
	end

	// delay cos(theta) by 4
	logic [5:0] [35:0] cos_theta_delay;
	assign cos_theta_delay[0] = i_theta.cos;
	always_ff @(posedge i.clk) begin
		cos_theta_delay[5:1] <= cos_theta_delay[4:0];
	end

	// delay sin(theta) by 4
	logic [5:0] [35:0] sin_theta_delay;
	assign sin_theta_delay[0] = i_theta.sin;
	always_ff @(posedge i.clk) begin
		sin_theta_delay[5:1] <= sin_theta_delay[4:0];
	end

	// delay cos(alpha) by 4
	logic [5:0] [35:0] cos_alpha_delay;
	assign cos_alpha_delay[0] = i_alpha.cos;
	always_ff @(posedge i.clk) begin
		cos_alpha_delay[5:1] <= cos_alpha_delay[4:0];
	end

	// delay sin(alpha) by 4
	logic [5:0] [35:0] sin_alpha_delay;
	assign sin_alpha_delay[0] = i_alpha.sin;
	always_ff @(posedge i.clk) begin
		sin_alpha_delay[5:1] <= sin_alpha_delay[4:0];
	end

	assign i.t_matrix[0][0] = cos_theta_delay[5];
	assign i.t_matrix[0][1] = i.array_mult_result[0];
	assign i.t_matrix[0][2] = i.array_mult_result[1];
	assign i.t_matrix[0][3] = i.array_mult_result[2];

	assign i.t_matrix[1][0] = sin_theta_delay[5];
	assign i.t_matrix[1][1] = i.array_mult_result[3];
	assign i.t_matrix[1][2] = i.array_mult_result[4];
	assign i.t_matrix[1][3] = i.array_mult_result[5];

	assign i.t_matrix[2][0] = 36'b0;
	assign i.t_matrix[2][1] = sin_alpha_delay[5];
	assign i.t_matrix[2][2] = cos_alpha_delay[5];
	assign i.t_matrix[2][3] = d_delay[27];

	assign i.t_matrix[3][0] = 36'b0;
	assign i.t_matrix[3][1] = 36'b0;
	assign i.t_matrix[3][2] = 36'b0;
	assign i.t_matrix[3][3] = 36'd65536;

endmodule
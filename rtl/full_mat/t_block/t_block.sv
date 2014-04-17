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
	logic [26:0] a_delay_1;
	logic [26:0] a_delay_2;
	logic [26:0] a_delay_3;
	logic [26:0] a_delay_4;
	logic [26:0] a_delay_5;
	logic [26:0] a_delay_6;
	logic [26:0] a_delay_7;
	logic [26:0] a_delay_8;
	logic [26:0] a_delay_9;
	logic [26:0] a_delay_10;
	logic [26:0] a_delay_11;
	logic [26:0] a_delay_12;
	logic [26:0] a_delay_13;
	logic [26:0] a_delay_14;
	logic [26:0] a_delay_15;
	logic [26:0] a_delay_16;
	logic [26:0] a_delay_17;
	logic [26:0] a_delay_18;
	logic [26:0] a_delay_19;
	logic [26:0] a_delay_20;
	logic [26:0] a_delay_21;
	logic [26:0] a_delay_22;
	always_ff @(posedge i.clk) begin
		a_delay_1 <= i.a;
		a_delay_2 <= a_delay_1;
		a_delay_3 <= a_delay_2;
		a_delay_4 <= a_delay_3;
		a_delay_5 <= a_delay_4;
		a_delay_6 <= a_delay_5;
		a_delay_7 <= a_delay_6;
		a_delay_8 <= a_delay_7;
		a_delay_9 <= a_delay_8;
		a_delay_10 <= a_delay_9;
		a_delay_11 <= a_delay_10;
		a_delay_12 <= a_delay_11;
		a_delay_13 <= a_delay_12;
		a_delay_14 <= a_delay_13;
		a_delay_15 <= a_delay_14;
		a_delay_16 <= a_delay_15;
		a_delay_17 <= a_delay_16;
		a_delay_18 <= a_delay_17;
		a_delay_19 <= a_delay_18;
		a_delay_20 <= a_delay_19;
		a_delay_21 <= a_delay_20;
		a_delay_22 <= a_delay_21;
	end

	// delay d by 26
	logic [26:0] d_delay_1;
	logic [26:0] d_delay_2;
	logic [26:0] d_delay_3;
	logic [26:0] d_delay_4;
	logic [26:0] d_delay_5;
	logic [26:0] d_delay_6;
	logic [26:0] d_delay_7;
	logic [26:0] d_delay_8;
	logic [26:0] d_delay_9;
	logic [26:0] d_delay_10;
	logic [26:0] d_delay_11;
	logic [26:0] d_delay_12;
	logic [26:0] d_delay_13;
	logic [26:0] d_delay_14;
	logic [26:0] d_delay_15;
	logic [26:0] d_delay_16;
	logic [26:0] d_delay_17;
	logic [26:0] d_delay_18;
	logic [26:0] d_delay_19;
	logic [26:0] d_delay_20;
	logic [26:0] d_delay_21;
	logic [26:0] d_delay_22;
	logic [26:0] d_delay_23;
	logic [26:0] d_delay_24;
	logic [26:0] d_delay_25;
	logic [26:0] d_delay_26;
	always_ff @(posedge i.clk) begin
		d_delay_1 <= i.d;
		d_delay_2 <= d_delay_1;
		d_delay_3 <= d_delay_2;
		d_delay_4 <= d_delay_3;
		d_delay_5 <= d_delay_4;
		d_delay_6 <= d_delay_5;
		d_delay_7 <= d_delay_6;
		d_delay_8 <= d_delay_7;
		d_delay_9 <= d_delay_8;
		d_delay_10 <= d_delay_9;
		d_delay_11 <= d_delay_10;
		d_delay_12 <= d_delay_11;
		d_delay_13 <= d_delay_12;
		d_delay_14 <= d_delay_13;
		d_delay_15 <= d_delay_14;
		d_delay_16 <= d_delay_15;
		d_delay_17 <= d_delay_16;
		d_delay_18 <= d_delay_17;
		d_delay_19 <= d_delay_18;
		d_delay_20 <= d_delay_19;
		d_delay_21 <= d_delay_20;
		d_delay_22 <= d_delay_21;
		d_delay_23 <= d_delay_22;
		d_delay_24 <= d_delay_23;
		d_delay_25 <= d_delay_24;
		d_delay_26 <= d_delay_25;
	end

	// logic [53:0] mult_01_result;
	// mult_27 mult_01 (
	// 	.clken ( i.en ),
	// 	.clock ( i.clk ),
	// 	.dataa ( -i_theta.sin ),
	// 	.datab ( i_alpha.cos ),
	// 	.result ( mult_01_result )
	// );
	assign i.array_mult_dataa[0] = -i_theta.sin;
	assign i.array_mult_datab[0] = i_alpha.cos;

	// logic [53:0] mult_02_result;
	// mult_27 mult_02 (
	// 	.clken ( i.en ),
	// 	.clock ( i.clk ),
	// 	.dataa ( i_theta.sin ),
	// 	.datab ( i_alpha.sin ),
	// 	.result ( mult_02_result )
	// );
	assign i.array_mult_dataa[1] = i_theta.sin;
	assign i.array_mult_datab[1] = i_alpha.sin;

	// logic [53:0] mult_03_result;
	// mult_27 mult_03 (
	// 	.clken ( i.en ),
	// 	.clock ( i.clk ),
	// 	.dataa ( a_delay_22 ),
	// 	.datab ( i_theta.cos ),
	// 	.result ( mult_03_result )
	// );
	assign i.array_mult_dataa[2] = a_delay_22;
	assign i.array_mult_datab[2] = i_theta.cos;

	// logic [53:0] mult_11_result;
	// mult_27 mult_11 (
	// 	.clken ( i.en ),
	// 	.clock ( i.clk ),
	// 	.dataa ( i_theta.cos ),
	// 	.datab ( i_alpha.cos ),
	// 	.result ( mult_11_result )
	// );
	assign i.array_mult_dataa[3] = i_theta.cos;
	assign i.array_mult_datab[3] = i_alpha.cos;

	// logic [53:0] mult_12_result;
	// mult_27 mult_12 (
	// 	.clken ( i.en ),
	// 	.clock ( i.clk ),
	// 	.dataa ( i_theta.cos ),
	// 	.datab ( -i_alpha.sin ),
	// 	.result ( mult_12_result )
	// );
	assign i.array_mult_dataa[4] = i_theta.cos;
	assign i.array_mult_datab[4] = -i_alpha.sin;

	// logic [53:0] mult_13_result;
	// mult_27 mult_13 (
	// 	.clken ( i.en ),
	// 	.clock ( i.clk ),
	// 	.dataa ( a_delay_22 ),
	// 	.datab ( i_theta.sin ),
	// 	.result ( mult_13_result )
	// );
	assign i.array_mult_dataa[5] = a_delay_22;
	assign i.array_mult_datab[5] = i_theta.sin;

	// delay cos(theta) by 4
	logic [26:0] cos_theta_delay_1;
	logic [26:0] cos_theta_delay_2;
	logic [26:0] cos_theta_delay_3;
	logic [26:0] cos_theta_delay_4;
	always_ff @(posedge i.clk) begin
		cos_theta_delay_1 <= i_theta.cos;
		cos_theta_delay_2 <= cos_theta_delay_1;
		cos_theta_delay_3 <= cos_theta_delay_2;
		cos_theta_delay_4 <= cos_theta_delay_3;
	end

	// delay sin(theta) by 4
	logic [26:0] sin_theta_delay_1;
	logic [26:0] sin_theta_delay_2;
	logic [26:0] sin_theta_delay_3;
	logic [26:0] sin_theta_delay_4;
	always_ff @(posedge i.clk) begin
		sin_theta_delay_1 <= i_theta.sin;
		sin_theta_delay_2 <= sin_theta_delay_1;
		sin_theta_delay_3 <= sin_theta_delay_2;
		sin_theta_delay_4 <= sin_theta_delay_3;
	end

	// delay cos(alpha) by 4
	logic [26:0] cos_alpha_delay_1;
	logic [26:0] cos_alpha_delay_2;
	logic [26:0] cos_alpha_delay_3;
	logic [26:0] cos_alpha_delay_4;
	always_ff @(posedge i.clk) begin
		cos_alpha_delay_1 <= i_alpha.cos;
		cos_alpha_delay_2 <= cos_alpha_delay_1;
		cos_alpha_delay_3 <= cos_alpha_delay_2;
		cos_alpha_delay_4 <= cos_alpha_delay_3;
	end

	// delay sin(alpha) by 4
	logic [26:0] sin_alpha_delay_1;
	logic [26:0] sin_alpha_delay_2;
	logic [26:0] sin_alpha_delay_3;
	logic [26:0] sin_alpha_delay_4;
	always_ff @(posedge i.clk) begin
		sin_alpha_delay_1 <= i_alpha.sin;
		sin_alpha_delay_2 <= sin_alpha_delay_1;
		sin_alpha_delay_3 <= sin_alpha_delay_2;
		sin_alpha_delay_4 <= sin_alpha_delay_3;
	end

	assign i.t_matrix[0][0] = cos_theta_delay_4;
	assign i.t_matrix[0][1] = i.array_mult_result[0];
	assign i.t_matrix[0][2] = i.array_mult_result[1];
	assign i.t_matrix[0][3] = i.array_mult_result[2];
	// always_ff @(posedge i.clk) begin
	// 	i.t_matrix[0][1] <= mult_01_result[7] ? mult_01_result[34:8] + 1'b1 : mult_01_result[34:8];
	// 	i.t_matrix[0][2] <= mult_02_result[7] ? mult_02_result[34:8] + 1'b1 : mult_02_result[34:8];
	// 	i.t_matrix[0][3] <= mult_03_result[7] ? mult_03_result[34:8] + 1'b1 : mult_03_result[34:8];
	// end

	assign i.t_matrix[1][0] = sin_theta_delay_4;
	assign i.t_matrix[1][1] = i.array_mult_result[3];
	assign i.t_matrix[1][2] = i.array_mult_result[4];
	assign i.t_matrix[1][3] = i.array_mult_result[5];
	// always_ff @(posedge i.clk) begin
	// 	i.t_matrix[1][1] <= mult_11_result[7] ? mult_11_result[34:8] + 1'b1 : mult_11_result[34:8];
	// 	i.t_matrix[1][2] <= mult_12_result[7] ? mult_12_result[34:8] + 1'b1 : mult_12_result[34:8];
	// 	i.t_matrix[1][3] <= mult_13_result[7] ? mult_13_result[34:8] + 1'b1 : mult_13_result[34:8];
	// end

	assign i.t_matrix[2][0] = 27'd0;
	assign i.t_matrix[2][1] = sin_alpha_delay_4;
	assign i.t_matrix[2][2] = cos_alpha_delay_4;
	assign i.t_matrix[2][3] = d_delay_26;

	assign i.t_matrix[3][0] = 27'd0;
	assign i.t_matrix[3][1] = 27'd0;
	assign i.t_matrix[3][2] = 27'd0;
	assign i.t_matrix[3][3] = 27'd256;

endmodule
/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

module sin (
	input logic clk, en, rst,
	input logic [47:0] angle,
	output logic [47:0] sin
);

	// x * x
	logic [95:0] angle_2_result;
	logic [47:0] angle_2_round;
	mult_48 angle_2 (
		.clken ( en ),
		.clock ( clk ),
		.dataa ( angle ),
		.datab ( angle ),
		.result ( angle_2_result )
	);
	always_ff  @(posedge clk) begin
		angle_2_round <= angle_2_result[23] ? angle_2_result[71:24] + 1'b1 : angle_2_result[71:24];
	end

	// 0.405284735 * x * x
	logic [95:0] angle_2_405_result;
	logic [47:0] angle_2_405_round;
	mult_48_coeff_6799550 angle_2_405 (
		.clken ( en ),
		.clock ( clk ),
		.dataa ( angle_2_round ),
		.result ( angle_2_405_result )
	);
	always_ff  @(posedge clk) begin
		angle_2_405_round <= angle_2_405_result[23] ? angle_2_405_result[71:24] + 1'b1 : angle_2_405_result[71:24];
	end

	// 1.27323954 * x
	logic [95:0] angle_1_273_result;
	logic [47:0] angle_1_273_round;
	mult_48_coeff_21361415 angle_1_273 (
		.clken ( en ),
		.clock ( clk ),
		.dataa ( angle ),
		.result ( angle_1_273_result )
	);
	always_ff  @(posedge clk) begin
		angle_1_273_round <= angle_1_273_result[23] ? angle_1_273_result[71:24] + 1'b1 : angle_1_273_result[71:24];
	end

	// pipeline delay registers for est
	logic [47:0] angle_delay_1;
	logic [47:0] angle_delay_2;
	logic [47:0] angle_delay_3;
	logic [47:0] angle_delay_4;
	logic [47:0] angle_delay_5;
	logic [47:0] angle_delay_6;
	logic [47:0] angle_delay_7;
	logic [47:0] angle_delay_8;
	logic [47:0] angle_1_273_round_delay_1;
	logic [47:0] angle_1_273_round_delay_2;
	logic [47:0] angle_1_273_round_delay_3;
	logic [47:0] angle_1_273_round_delay_4;

	// if (x < 0)
	// 	est = 1.27323954 * x + 0.405284735 * x * x;
	// else
	// 	est = 1.27323954 * x - 0.405284735 * x * x;
	logic [47:0] est;
	always_ff  @(posedge clk) begin
		angle_delay_1 <= angle;
		angle_delay_2 <= angle_delay_1;
		angle_delay_3 <= angle_delay_2;
		angle_delay_4 <= angle_delay_3;
		angle_delay_5 <= angle_delay_4;
		angle_delay_6 <= angle_delay_5;
		angle_delay_7 <= angle_delay_6;
		angle_delay_8 <= angle_delay_7;
		angle_1_273_round_delay_1 <= angle_1_273_round;
		angle_1_273_round_delay_2 <= angle_1_273_round_delay_1;
		angle_1_273_round_delay_3 <= angle_1_273_round_delay_2;
		angle_1_273_round_delay_4 <= angle_1_273_round_delay_3;
		est <= angle_delay_8[47]==1'b1 ? angle_1_273_round_delay_4+angle_2_405_round : angle_1_273_round_delay_4-angle_2_405_round; // ask if negative number
	end

	// if (est < 0)
	// est_norm = sin*-sin
	// else
	// est_norm = sin*sin
	logic [95:0] est_2_result;
	logic [47:0] est_2_round;
	logic [47:0] est_2_norm;
	mult_48 est_2 (
		.clken ( en ),
		.clock ( clk ),
		.dataa ( est ),
		.datab ( est ),
		.result ( est_2_result )
	);

	// pipeline delay registers for est_2_norm
	// pipeline delay registers for est_2_norm_minus_est
	// pipeline delay registers for sin
	logic [10:0] [47:0] est_delay;
	assign est_delay[0] = est;
	always_ff  @(posedge clk) begin
		est_delay[10:1] <= est_delay[9:0];
	end

	always_ff  @(posedge clk) begin
		est_2_round <= est_2_result[23] ? est_2_result[71:24] + 1'b1 : est_2_result[71:24];
		est_2_norm <= est_delay[4][47]==1'b1 ? -est_2_round : est_2_round; // ask if negative number
	end

	// sin = .225 * (est_2_norm - est) + est;
	logic [47:0] est_2_norm_minus_est;
	always_ff @(posedge clk) begin
		est_2_norm_minus_est <= est_2_norm - est_delay[5];
	end

	logic [95:0] est_225_result;
	logic [47:0] est_225_round;
	mult_48_coeff_3774874 est_225 (
		.clken ( en ),
		.clock ( clk ),
		.dataa ( est_2_norm_minus_est ),
		.result ( est_225_result )
	);
	always_ff @(posedge clk) begin
		est_225_round <= est_225_result[23] ? est_225_result[71:24] + 1'b1 : est_225_result[71:24];
	end

	always_ff @(posedge clk) begin
		sin <= est_225_round + est_delay[10];
	end

endmodule
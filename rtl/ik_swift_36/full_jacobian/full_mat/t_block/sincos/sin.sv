/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

module sin (
	input logic clk, en, rst,
	input logic [35:0] angle,
	output logic [35:0] sin
);

	// x * x
	logic [71:0] angle_2_result;
	logic [35:0] angle_2_round;
	mult_36 angle_2 (
		.clken ( en ),
		.clock ( clk ),
		.dataa ( angle ),
		.datab ( angle ),
		.result ( angle_2_result )
	);
	always_ff  @(posedge clk) begin
		angle_2_round <= angle_2_result[15] ? angle_2_result[51:16] + 1'b1 : angle_2_result[51:16];
	end

	// 0.405284735 * x * x
	logic [71:0] angle_2_405_result;
	logic [35:0] angle_2_405_round;
	mult_36_coeff_26561 angle_2_405 (
		.clken ( en ),
		.clock ( clk ),
		.dataa ( angle_2_round ),
		.result ( angle_2_405_result )
	);
	always_ff  @(posedge clk) begin
		angle_2_405_round <= angle_2_405_result[15] ? angle_2_405_result[51:16] + 1'b1 : angle_2_405_result[51:16];
	end

	// 1.27323954 * x
	logic [71:0] angle_1_273_result;
	logic [35:0] angle_1_273_round;
	mult_36_coeff_83443 angle_1_273 (
		.clken ( en ),
		.clock ( clk ),
		.dataa ( angle ),
		.result ( angle_1_273_result )
	);
	always_ff  @(posedge clk) begin
		angle_1_273_round <= angle_1_273_result[15] ? angle_1_273_result[51:16] + 1'b1 : angle_1_273_result[51:16];
	end

	// pipeline delay registers for est
	logic [35:0] angle_delay_1;
	logic [35:0] angle_delay_2;
	logic [35:0] angle_delay_3;
	logic [35:0] angle_delay_4;
	logic [35:0] angle_delay_5;
	logic [35:0] angle_delay_6;
	logic [35:0] angle_delay_7;
	logic [35:0] angle_delay_8;
	logic [35:0] angle_1_273_round_delay_1;
	logic [35:0] angle_1_273_round_delay_2;
	logic [35:0] angle_1_273_round_delay_3;
	logic [35:0] angle_1_273_round_delay_4;

	// if (x < 0)
	// 	est = 1.27323954 * x + 0.405284735 * x * x;
	// else
	// 	est = 1.27323954 * x - 0.405284735 * x * x;
	logic [35:0] est;
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
		est <= angle_delay_8[35]==1'b1 ? angle_1_273_round_delay_4+angle_2_405_round : angle_1_273_round_delay_4-angle_2_405_round; // ask if negative number
	end

	// if (est < 0)
	// est_norm = sin*-sin
	// else
	// est_norm = sin*sin
	logic [71:0] est_2_result;
	logic [35:0] est_2_round;
	logic [35:0] est_2_norm;
	mult_36 est_2 (
		.clken ( en ),
		.clock ( clk ),
		.dataa ( est ),
		.datab ( est ),
		.result ( est_2_result )
	);

	// pipeline delay registers for est_2_norm
	// pipeline delay registers for est_2_norm_minus_est
	// pipeline delay registers for sin
	logic [10:0] [35:0] est_delay;
	assign est_delay[0] = est;
	always_ff  @(posedge clk) begin
		est_delay[10:1] <= est_delay[9:0];
	end

	always_ff  @(posedge clk) begin
		est_2_round <= est_2_result[15] ? est_2_result[51:16] + 1'b1 : est_2_result[51:16];
		est_2_norm <= est_delay[4][35]==1'b1 ? -est_2_round : est_2_round; // ask if negative number
	end

	// sin = .225 * (est_2_norm - est) + est;
	logic [35:0] est_2_norm_minus_est;
	always_ff @(posedge clk) begin
		est_2_norm_minus_est <= est_2_norm - est_delay[5];
	end

	logic [71:0] est_225_result;
	logic [35:0] est_225_round;
	mult_36_coeff_14746 est_225 (
		.clken ( en ),
		.clock ( clk ),
		.dataa ( est_2_norm_minus_est ),
		.result ( est_225_result )
	);
	always_ff @(posedge clk) begin
		est_225_round <= est_225_result[15] ? est_225_result[51:16] + 1'b1 : est_225_result[51:16];
	end

	always_ff @(posedge clk) begin
		sin <= est_225_round + est_delay[10];
	end

endmodule
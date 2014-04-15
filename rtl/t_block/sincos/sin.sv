/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

// `include "../../sim_models/lpm_mult.v"
// `include "../../sim_models/mult_block.v"
// `include "../../sim_models/addsub_block.v"
// `include "../../sim_models/pipeline_internal_fv.v"
// `include "../../sim_models/dffep.v"

// `include "../../mult_27/mult_27.v"
// `include "mult_27_coeff_104/mult_27_coeff_104.v"
// `include "mult_27_coeff_326/mult_27_coeff_326.v"
// `include "mult_27_coeff_58/mult_27_coeff_58.v"

module sin (
	input logic clk, en, rst,
	input logic [26:0] angle,
	output logic [26:0] sin
);

	// x * x
	logic [53:0] angle_2_result;
	logic [26:0] angle_2_round;
	mult_27 angle_2 (
		.clken ( en ),
		.clock ( clk ),
		.dataa ( angle ),
		.datab ( angle ),
		.result ( angle_2_result )
	);
	always_ff  @(posedge clk) begin
		angle_2_round <= angle_2_result[7] ? angle_2_result[34:8] + 1'b1 : angle_2_result[34:8];
	end

	// 0.405284735 * x * x
	logic [53:0] angle_2_405_result;
	logic [26:0] angle_2_405_round;
	mult_27_coeff_104 angle_2_405 (
		.clken ( en ),
		.clock ( clk ),
		.dataa ( angle_2_round ),
		.result ( angle_2_405_result )
	);
	always_ff  @(posedge clk) begin
		angle_2_405_round <= angle_2_405_result[7] ? angle_2_405_result[34:8] + 1'b1 : angle_2_405_result[34:8];
	end

	// 1.27323954 * x
	logic [53:0] angle_1_273_result;
	logic [26:0] angle_1_273_round;
	mult_27_coeff_326 angle_1_273 (
		.clken ( en ),
		.clock ( clk ),
		.dataa ( angle ),
		.result ( angle_1_273_result )
	);
	always_ff  @(posedge clk) begin
		angle_1_273_round <= angle_1_273_result[7] ? angle_1_273_result[34:8] + 1'b1 : angle_1_273_result[34:8];
	end

	// pipeline delay registers for est
	logic [26:0] angle_delay_1;
	logic [26:0] angle_delay_2;
	logic [26:0] angle_delay_3;
	logic [26:0] angle_delay_4;
	logic [26:0] angle_delay_5;
	logic [26:0] angle_delay_6;
	logic [26:0] angle_delay_7;
	logic [26:0] angle_delay_8;
	logic [26:0] angle_1_273_round_delay_1;
	logic [26:0] angle_1_273_round_delay_2;
	logic [26:0] angle_1_273_round_delay_3;
	logic [26:0] angle_1_273_round_delay_4;

	// if (x < 0)
	// 	est = 1.27323954 * x + 0.405284735 * x * x;
	// else
	// 	est = 1.27323954 * x - 0.405284735 * x * x;
	logic [26:0] est;
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
		est <= angle_delay_8[26]==1'b1 ? angle_1_273_round_delay_4+angle_2_405_round : angle_1_273_round_delay_4-angle_2_405_round; // ask if negative number
	end

	// if (est < 0)
	// est_norm = sin*-sin
	// else
	// est_norm = sin*sin
	logic [53:0] est_2_result;
	logic [26:0] est_2_round;
	logic [26:0] est_2_norm;
	mult_27 est_2 (
		.clken ( en ),
		.clock ( clk ),
		.dataa ( est ),
		.datab ( est ),
		.result ( est_2_result )
	);

	// pipeline delay registers for est_2_norm
	logic [26:0] est_delay_1;
	logic [26:0] est_delay_2;
	logic [26:0] est_delay_3;
	logic [26:0] est_delay_4;

	always_ff  @(posedge clk) begin
		est_delay_1 <= est;
		est_delay_2 <= est_delay_1;
		est_delay_3 <= est_delay_2;
		est_delay_4 <= est_delay_3;
		est_2_round <= est_2_result[7] ? est_2_result[34:8] + 1'b1 : est_2_result[34:8];
		est_2_norm <= est_delay_4[26]==1'b1 ? -est_2_round : est_2_round; // ask if negative number
	end

	// pipeline delay registers for est_2_norm_minus_est
	logic [26:0] est_delay_5;

	// sin = .225 * (est_2_norm - est) + est;
	logic [26:0] est_2_norm_minus_est;
	always_ff @(posedge clk) begin
		est_delay_5 <= est_delay_4;
		est_2_norm_minus_est <= est_2_norm - est_delay_5;
	end

	logic [53:0] est_225_result;
	logic [26:0] est_225_round;
	mult_27_coeff_58 est_225 (
		.clken ( en ),
		.clock ( clk ),
		.dataa ( est_2_norm_minus_est ),
		.result ( est_225_result )
	);
	always_ff @(posedge clk) begin
		est_225_round <= est_225_result[7] ? est_225_result[34:8] + 1'b1 : est_225_result[34:8];
	end

	// pipeline delay registers for sin
	logic [26:0] est_delay_6;
	logic [26:0] est_delay_7;
	logic [26:0] est_delay_8;
	logic [26:0] est_delay_9;
	logic [26:0] est_delay_10;

	always_ff @(posedge clk) begin
		est_delay_6 <= est_delay_5;
		est_delay_7 <= est_delay_6;
		est_delay_8 <= est_delay_7;
		est_delay_9 <= est_delay_8;
		est_delay_10 <= est_delay_9;
		sin <= est_225_round + est_delay_10;
	end

endmodule

/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

// `include "../../sim_models/lpm_mult.v"
// `include "../../sim_models/mult_block.v"
// `include "../../sim_models/addsub_block.v"
// `include "../../sim_models/pipeline_internal_fv.v"
// `include "../../sim_models/dffep.v"
// `include "../../sim_models/altera_mf.v"
// `include "mult_27_square/mult_27_square.v"
// `include "mult_27_coeff_104/mult_27_coeff_104.v"
// `include "mult_27_coeff_326/mult_27_coeff_326.v"
// `include "mult_27_coeff_58/mult_27_coeff_58.v"

module sin (
	input logic clk, en,
	input logic [26:0] angle,
	output logic [26:0] sin
);

	// x * x
	logic [53:0] angle_2_result;
	logic [26:0] angle_2_round;
	mult_27_square angle_2 (
		.clock ( clk ),
		.dataa ( angle ),
		.ena ( en ),
		.result ( angle_2_result )
	);
	assign angle_2_round = angle_2_result[7] ? angle_2_result[34:8] + 1'b1 : angle_2_result[34:8];

	// 0.405284735 * x * x
	logic [53:0] angle_2_405_result;
	logic [26:0] angle_2_405_round;
	mult_27_coeff_104 angle_2_405 (
		.clken ( en ),
		.clock ( clk ),
		.dataa ( angle_2_round ),
		.result ( angle_2_405_result )
	);
	assign angle_2_405_round = angle_2_405_result[7] ? angle_2_405_result[34:8] + 1'b1 : angle_2_405_result[34:8];

	// 1.27323954 * x
	logic [53:0] angle_1_273_result;
	logic [26:0] angle_1_273_round;
	mult_27_coeff_326 angle_1_273 (
		.clken ( en ),
		.clock ( clk ),
		.dataa ( angle ),
		.result ( angle_1_273_result )
	);
	assign angle_1_273_round = angle_1_273_result[7] ? angle_1_273_result[34:8] + 1'b1 : angle_1_273_result[34:8];

	// if (x < 0)
	// 	est = 1.27323954 * x + 0.405284735 * x * x;
	// else
	// 	est = 1.27323954 * x - 0.405284735 * x * x;
	logic [26:0] est;
	always_ff  @(posedge clk) begin
		est <= angle[26]==1'b1 ? angle_1_273_round+angle_2_405_round : angle_1_273_round-angle_2_405_round; // ask if negative number
	end

	// if (est < 0)
	// est_norm = sin*-sin
	// else
	// est_norm = sin*sin
	logic [53:0] est_2_result;
	logic [26:0] est_2_round;
	logic [26:0] est_2_norm;
	mult_27_square est_2 (
		.clock ( clk ),
		.dataa ( est ),
		.ena ( en ),
		.result ( est_2_result )
	);
	assign est_2_round = est_2_result[7] ? est_2_result[34:8] + 1'b1 : est_2_result[34:8];
	always_ff @(posedge clk) begin
		est_2_norm <= est[26]==1'b1 ? -est_2_round : est_2_round; // ask if negative number
	end

	// sin = .225 * (est_2_norm - est) + est;
	logic [26:0] est_2_norm_minus_est;
	always_ff @(posedge clk) begin
		est_2_norm_minus_est <= est_2_norm - est;
	end

	logic [53:0] est_225_result;
	logic [26:0] est_225_round;
	mult_27_coeff_58 est_225 (
		.clken ( en ),
		.clock ( clk ),
		.dataa ( est_2_norm_minus_est ),
		.result ( est_225_result )
	);
	assign est_225_round = est_225_result[7] ? est_225_result[34:8] + 1'b1 : est_225_result[34:8];

	always_ff @(posedge clk) begin
		sin <= est_225_round + est;
	end

endmodule

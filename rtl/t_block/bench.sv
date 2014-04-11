`timescale 1ns/1ps
`include "t_block_test.sv"

class t_block_transaction;
	rand logic [30:0] increment_a;
	rand logic [30:0] increment_d;
	rand logic [30:0] increment_alpha;
	rand logic [30:0] increment_theta;
endclass

class t_block_env;
	int max_transactions = 1000000;
endclass

program t_block_tb (ifc_t_block.t_block_tb ds);

	real fraction_a;
	real fraction_d;
	real fraction_alpha;
	real fraction_theta;

	real a;
	real d;
	real alpha;
	real theta;

	t_block_transaction trans;
	t_block_env env;
	t_block_test test;

	task do_cycle;

		trans.randomize();

		//wrap input distances to -64 ~ 64
		//wrap input angles to -pi ~ pi
		fraction_a = real'(trans.increment_a) / 2147483648.0;
		fraction_d = real'(trans.increment_d) / 2147483648.0;
		fraction_alpha = real'(trans.increment_alpha) / 2147483648.0;
		fraction_theta = real'(trans.increment_theta) / 2147483648.0;

		a = -64.0 + fraction_a * 2 * 64.0;
		d = -64.0 + fraction_d * 2 * 64.0;
		theta = -3.141592653589793238462643383279502884197 + fraction_theta * 2 * 3.141592653589793238462643383279502884197;
		alpha = -3.141592653589793238462643383279502884197 + fraction_alpha * 2 * 3.141592653589793238462643383279502884197;

		// $display("fraction_a = %f, a = %f", fraction_a, a);
		// $display("fraction_d = %f, d = %f", fraction_d, d);
		// $display("fraction_alpha = %f, alpha = %f", fraction_alpha, alpha);
		// $display("fraction_theta = %f, theta = %f", fraction_theta, theta);

		// passing data to design under test happens here
		ds.cb.en <= 1'b1;
		ds.cb.a <= int'(a * 256.0);
		ds.cb.d <= int'(d * 256.0);
		ds.cb.alpha <= int'(alpha * 256.0);
		ds.cb.theta <= int'(theta * 256.0);

		@(ds.cb);
		test.update_t_block (
			a, d, alpha, theta
		);

	endtask

	initial begin
		trans = new();
		test = new();
		env = new();

		// testing
		repeat (env.max_transactions) begin
			do_cycle();
			repeat (23) begin
				@(ds.cb);
			end
			test.check_t_block (
				ds.cb.t_matrix_00,
				ds.cb.t_matrix_01,
				ds.cb.t_matrix_02,
				ds.cb.t_matrix_03,

				ds.cb.t_matrix_10,
				ds.cb.t_matrix_11,
				ds.cb.t_matrix_12,
				ds.cb.t_matrix_13,

				ds.cb.t_matrix_20,
				ds.cb.t_matrix_21,
				ds.cb.t_matrix_22,
				ds.cb.t_matrix_23,

				ds.cb.t_matrix_30,
				ds.cb.t_matrix_31,
				ds.cb.t_matrix_32,
				ds.cb.t_matrix_33
			);
		end
	end
endprogram
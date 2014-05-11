`timescale 1ns/1ps
`include "t_block_test.sv"

class t_block_transaction;
	rand logic en;
	rand logic [30:0] increment_a;
	rand logic [30:0] increment_d;
	rand logic [30:0] increment_alpha;
	rand logic [30:0] increment_theta;
endclass

class t_block_env;
	int warmup = 40;
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

		a = -4.0 + fraction_a * 2 * 4.0;
		d = -4.0 + fraction_d * 2 * 4.0;
		theta = -3.141592653589793238462643383279502884197 + fraction_theta * 2 * 3.141592653589793238462643383279502884197;
		alpha = -3.141592653589793238462643383279502884197 + fraction_alpha * 2 * 3.141592653589793238462643383279502884197;

		// $display("fraction_a = %f, a = %f", fraction_a, a);
		// $display("fraction_d = %f, d = %f", fraction_d, d);
		// $display("fraction_alpha = %f, alpha = %f", fraction_alpha, alpha);
		// $display("fraction_theta = %f, theta = %f", fraction_theta, theta);

		// passing data to design under test happens here
		ds.cb.en <= trans.en;
		ds.cb.rst <= 1'b0;
		ds.cb.count <= 8'd24;
		ds.cb.a <= int'(a * 65536.0);
		ds.cb.d <= int'(d * 65536.0);
		ds.cb.alpha <= int'(alpha * 65536.0);
		ds.cb.theta <= int'(theta * 65536.0);

		@(ds.cb);
		if (trans.en)
			test.update_t_block (
				a, d, alpha, theta
			);

	endtask

	initial begin
		trans = new();
		test = new();
		env = new();

		repeat (env.warmup) begin
			do_cycle();
		end

		// testing
		repeat (env.max_transactions) begin
			do_cycle();
			if (trans.en)
				test.check_t_block (
					ds.cb.t_matrix
				);
		end
	end
endprogram
`timescale 1ns/1ps
`include "sqrt_43_test.sv"

class sqrt_43_transaction;
	rand logic [30:0] increment_radical;
	real fraction_radical;
	real radical;
endclass

class sqrt_43_env;
	int max_transactions = 100000000;
endclass

program sqrt_43_tb (ifc_sqrt_43.sqrt_43_tb ds);

	sqrt_43_transaction trans;
	sqrt_43_env env;
	sqrt_43_test test;

	task do_cycle;

		trans.randomize();

		//wrap input numbers to -64 ~ 64
		trans.fraction_radical = real'(trans.increment_radical) / 2147483648.0;
		trans.radical = 0.0 + trans.fraction_radical * 1024.0;
		// $display("fraction_radical = %f, radical = %f", trans.fraction_radical, trans.radical);
		// passing data to design under test happens here
		ds.cb.radical <= int'(trans.radical * 65536.0);

		ds.cb.en <= 1'b1;
		ds.cb.rst <= 1'b0;

		@(ds.cb);
		test.update_sqrt_43 (
			trans.radical
		);

	endtask

	initial begin
		trans = new();
		test = new();
		env = new();

		@(ds.cb);
		ds.cb.rst <= 1'b1;
		@(ds.cb);

		// testing
		repeat (env.max_transactions) begin
			do_cycle();
			test.check_sqrt_43 (
				ds.cb.q
			);
		end
	end
endprogram
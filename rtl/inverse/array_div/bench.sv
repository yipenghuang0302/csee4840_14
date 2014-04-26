`timescale 1ns/1ps
`include "array_div_test.sv"

class array_div_transaction;
	rand logic [5][30:0] increment_dividends;
	rand logic [30:0] increment_divisor;
	real fraction_dividends[5];
	real fraction_divisor;
	real dividends[5];
	real divisor;
endclass

class array_div_env;
	int max_transactions = 1000000;
endclass

program array_div_tb (ifc_array_div.array_div_tb ds);

	int n = 5;

	array_div_transaction trans;
	array_div_env env;
	array_div_test test;

	task do_cycle;

		trans.randomize();

		//wrap input numbers to -64 ~ 64
		for (int i=0; i<n; i++) begin // product row
			trans.fraction_dividends[i] = real'(trans.increment_dividends[i]) / 2147483648.0;
			trans.fraction_divisor = real'(trans.increment_divisor) / 2147483648.0;
			trans.dividends[i] = -512.0 + trans.fraction_dividends[i] * 2 * 512.0;
			trans.divisor = -512.0 + trans.fraction_divisor * 2 * 512.0;
			// $display("i=%d", i);
			// $display("fraction_dividends = %f, dividends = %f", trans.fraction_dividends[i], trans.dividends[i]);
			// $display("fraction_divisor = %f, divisor = %f", trans.fraction_divisor, trans.divisor);
			// passing data to design under test happens here
			ds.cb.dividends[i] <= int'(trans.dividends[i] * 256.0);
			ds.cb.divisor <= int'(trans.divisor * 256.0);
		end

		ds.cb.en <= 1'b1;
		ds.cb.rst <= 1'b0;

		@(ds.cb);
		test.update_array_div (
			trans.dividends, trans.divisor
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
			test.check_array_div (
				ds.cb.quotients
			);
		end
	end
endprogram
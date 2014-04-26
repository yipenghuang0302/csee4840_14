`timescale 1ns/1ps
`include "array_div_test.sv"

class array_div_transaction;
	rand logic [5][30:0] increment_numer;
	rand logic [30:0] increment_denom;
	real fraction_numer[5];
	real fraction_denom;
	real numer[5];
	real denom;
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
			trans.fraction_numer[i] = real'(trans.increment_numer[i]) / 2147483648.0;
			trans.fraction_denom = real'(trans.increment_denom) / 2147483648.0;
			trans.numer[i] = -512.0 + trans.fraction_numer[i] * 2 * 512.0;
			trans.denom = -512.0 + trans.fraction_denom * 2 * 512.0;
			// $display("i=%d", i);
			// $display("fraction_numer = %f, numer = %f", trans.fraction_numer[i], trans.numer[i]);
			// $display("fraction_denom = %f, denom = %f", trans.fraction_denom, trans.denom);
			// passing data to design under test happens here
			ds.cb.numer[i] <= int'(trans.numer[i] * 256.0);
			ds.cb.denom <= int'(trans.denom * 256.0);
		end

		ds.cb.en <= 1'b1;
		ds.cb.rst <= 1'b0;

		@(ds.cb);
		test.update_array_div (
			trans.numer, trans.denom
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
				ds.cb.quotient
			);
		end
	end
endprogram
`timescale 1ns/1ps
`include "array_mult_test.sv"

class array_mult_transaction;
	rand logic en;
	rand logic [15][30:0] increment_a;
	rand logic [15][30:0] increment_b;
	real fraction_a[15];
	real fraction_b[15];
	real dataa[15];
	real datab[15];
endclass

class array_mult_env;
	int max_transactions = 1000000;
endclass

program array_mult_tb (ifc_array_mult.array_mult_tb ds);

	int n = 15;

	array_mult_transaction trans;
	array_mult_env env;
	array_mult_test test;

	initial begin
		trans = new();
		test = new();
		env = new();

		@(ds.cb);
		ds.cb.rst <= 1'b1;
		@(ds.cb);

		// testing
		repeat (env.max_transactions) begin
			trans.randomize();

			//wrap input numbers to -32 ~ 32
			for (int i=0; i<n; i++) begin // product row
				trans.fraction_a[i] = real'(trans.increment_a[i]) / 2147483648.0;
				trans.fraction_b[i] = real'(trans.increment_b[i]) / 2147483648.0;
				trans.dataa[i] = -32.0 + trans.fraction_a[i] * 2 * 32.0;
				trans.datab[i] = -32.0 + trans.fraction_b[i] * 2 * 32.0;
				// $display("i=%d", i);
				// $display("fraction_a = %f, dataa = %f", trans.fraction_a[i], trans.dataa[i]);
				// $display("fraction_b = %f, datab = %f", trans.fraction_b[i], trans.datab[i]);
				// passing data to design under test happens here
				ds.cb.dataa[i] <= int'(trans.dataa[i] * 65536.0);
				ds.cb.datab[i] <= int'(trans.datab[i] * 65536.0);
			end

			ds.cb.en <= trans.en;
			ds.cb.rst <= 1'b0;

			@(ds.cb);
			if (trans.en) begin
				test.update_array_mult (
					trans.dataa, trans.datab
				);
				test.check_array_mult (
					ds.cb.result
				);
			end
		end
	end
endprogram
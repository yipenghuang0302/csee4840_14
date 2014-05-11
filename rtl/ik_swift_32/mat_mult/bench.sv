`timescale 1ns/1ps
`include "mat_mult_test.sv"

class mat_mult_transaction;
	rand logic en;
	bit mat_mode = 1'b0;
	rand logic [6][6][30:0] increment_a;
	rand logic [6][6][30:0] increment_b;
endclass

class mat_mult_env;
	int max_transactions = 1000000;
endclass

program mat_mult_tb (ifc_mat_mult.mat_mult_tb ds);

	int n = 6;

	real fraction_a[6][6];
	real fraction_b[6][6];

	real dataa[6][6];
	real datab[6][6];

	mat_mult_transaction trans;
	mat_mult_env env;
	mat_mult_test test;

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

			//wrap input numbers to -256 ~ 256
			for (int i=0; i<n; i++) begin // product row
				for (int j=0; j<n; j++) begin // product column
					fraction_a[i][j] = real'(trans.increment_a[i][j]) / 2147483648.0;
					fraction_b[i][j] = real'(trans.increment_b[i][j]) / 2147483648.0;

					dataa[i][j] = -256.0 + fraction_a[i][j] * 2 * 256.0;
					datab[i][j] = -256.0 + fraction_b[i][j] * 2 * 256.0;

					// $display("i=%d, j=%d", i, j);
					// $display("fraction_a = %f, dataa = %f", fraction_a[i][j], dataa[i][j]);
					// $display("fraction_b = %f, datab = %f", fraction_b[i][j], datab[i][j]);

					// passing data to design under test happens here
					ds.cb.dataa[i][j] <= longint'(dataa[i][j] * 65536.0);
					ds.cb.datab[i][j] <= longint'(datab[i][j] * 65536.0);
				end
			end

			ds.cb.en <= trans.en;
			ds.cb.rst <= 1'b0;
			ds.cb.mat_mode <= trans.mat_mode;

			@(ds.cb);
			if (trans.en)
				test.update_mat_mult (
					trans.mat_mode,
					dataa, datab
				);
			if (trans.mat_mode) begin
				@(ds.cb);
				@(ds.cb);
				@(ds.cb);
				@(ds.cb);
				@(ds.cb);
			end
			if (trans.en)
				test.check_mat_mult (
					ds.cb.result
				);
		end
	end
endprogram
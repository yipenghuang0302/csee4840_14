`timescale 1ns/1ps
`include "full_mat_test.sv"

parameter THETA = 0;
parameter A_PARAM = 1;
parameter D_PARAM = 2;
parameter ALPHA = 3;

class full_mat_transaction;
	rand logic en;
	rand logic [6][4][30:0] dh_increment;
	real dh_fraction [6][4];
	real dh_data [6][4];
endclass

class full_mat_env;
	int max_transactions = 1000000;
endclass

program full_mat_tb (ifc_full_mat.full_mat_tb ds);

	full_mat_transaction trans;
	full_mat_env env;
	full_mat_test test;
	int effective;

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

			//wrap input numbers to -64 ~ 64
			for (int i=0; i<6; i++) begin // joint index

				for (int j=0; j<4; j++) begin // dh_parameter index
					trans.dh_fraction[i][j] = real'(trans.dh_increment[i][j]) / 2147483648.0;
				end

				trans.dh_data[i][THETA] = -3.141592653589793238462643383279502884197 + trans.dh_fraction[i][THETA] * 2 * 3.141592653589793238462643383279502884197;
				trans.dh_data[i][A_PARAM] = -64.0 + trans.dh_fraction[i][A_PARAM] * 2 * 64.0;
				trans.dh_data[i][D_PARAM] = -64.0 + trans.dh_fraction[i][D_PARAM] * 2 * 64.0;
				trans.dh_data[i][ALPHA] = -3.141592653589793238462643383279502884197 + trans.dh_fraction[i][ALPHA] * 2 * 3.141592653589793238462643383279502884197;

				// $display("joint index = %d", i);
				// $display("theta = %f", trans.dh_data[i][THETA]);
				// $display("a = %f", trans.dh_data[i][A_PARAM]);
				// $display("d = %f", trans.dh_data[i][D_PARAM]);
				// $display("alpha = %f", trans.dh_data[i][ALPHA]);

				// passing data to design under test happens here
				for (int j=0; j<4; j++) begin // dh_parameter index
					ds.cb.dh_param[i][j] <= int'(trans.dh_data[i][j] * 65536.0);
				end

			end

			ds.cb.en <= trans.en;
			ds.cb.rst <= 1'b0;

			@(ds.cb);
			if (trans.en) begin
				test.update_full_mat (
					trans.dh_data
				);
				effective = 0;
				while (effective<90) begin
					trans.randomize();
					ds.cb.en <= trans.en;
					@(ds.cb);
					if (trans.en) effective++;
				end
				test.check_full_mat (
					ds.cb.full_matrix
				);
			end
		end
	end
endprogram
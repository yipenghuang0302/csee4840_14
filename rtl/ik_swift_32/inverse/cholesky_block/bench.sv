`timescale 1ns/1ps
`include "cholesky_block_test.sv"

class cholesky_block_transaction;
	rand logic en;
	int n = 6;
	rand logic [6][6][30:0] j_increment;
	real j_fraction [6][6];
	real j_data [6][6];
	real matrix_data [6][6];
endclass

class cholesky_block_env;
	int max_transactions = 1000000;
endclass

program cholesky_block_tb (ifc_cholesky_block.cholesky_block_tb ds);

	int effective;
	cholesky_block_transaction trans;
	cholesky_block_env env;
	cholesky_block_test test;

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

			//wrap input numbers to -16 ~ 16
			for ( int row=0 ; row<trans.n ; row++ ) begin // row index
				for ( int col=0 ; col<trans.n ; col++ ) begin // col index
					trans.j_fraction[row][col] = real'(trans.j_increment[row][col]) / 2147483648.0;
					trans.j_data[row][col] = -16.0 + trans.j_fraction[row][col] * 2 * 16.0;
				end
			end

			// create jjt which is positive symmetric definite
			for ( int row=0 ; row<trans.n ; row++ ) begin // row index
				for ( int col=0 ; col<trans.n ; col++ ) begin // col index
					trans.matrix_data[row][col] = 0.0;
					for ( int index=0 ; index<trans.n ; index++ ) begin // index
						trans.matrix_data[row][col] += trans.j_data[row][index] * trans.j_data[col][index];
					end
					// $display("row, col = %d", row, col);
					// $display("data = %f", trans.matrix_data[row][col]);
					ds.cb.matrix[row][col] <= longint'(trans.matrix_data[row][col] * 65536.0);
				end
			end

			ds.cb.en <= trans.en;
			ds.cb.rst <= 1'b0;

			@(ds.cb);
			if (trans.en) begin
				test.update_cholesky_block (
					trans.matrix_data
				);
				effective = 0;
				while (effective<210) begin
					trans.randomize();
					ds.cb.en <= trans.en;
					@(ds.cb);
					if (trans.en) effective++;
				end
				test.check_cholesky_block (
					ds.cb.lt
				);
			end
		end
	end
endprogram
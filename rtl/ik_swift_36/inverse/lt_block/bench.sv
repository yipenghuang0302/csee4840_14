`timescale 1ns/1ps
`include "lt_block_test.sv"

class lt_block_transaction;
	int n = 6;
	rand logic [6][6][30:0] lt_increment;
	real lt_fraction [6][6];
	real lt_data [6][6];
endclass

class lt_block_env;
	int max_transactions = 1000000;
endclass

program lt_block_tb (ifc_lt_block.lt_block_tb ds);

	lt_block_transaction trans;
	lt_block_env env;
	lt_block_test test;

	task do_cycle;

		trans.randomize();

		//wrap input numbers to -16 ~ 16
		for ( int row=0 ; row<trans.n ; row++ ) begin // row index
			for ( int col=0 ; col<trans.n ; col++ ) begin // col index
				trans.lt_fraction[row][col] = real'(trans.lt_increment[row][col]) / 2147483648.0;
				trans.lt_data[row][col] = -2048.0 + trans.lt_fraction[row][col] * 2 * 2048.0;

				// but lt matrix, so blank out top right
				if ( row<col ) trans.lt_data[row][col] = 0.0;

				// $display("row, col = %d", row, col);
				// $display("data = %f", trans.lt_data[row][col]);
				ds.cb.lt[row][col] <= longint'(trans.lt_data[row][col] * 65536.0);
			end
		end

		ds.cb.en <= 1'b1;
		ds.cb.rst <= 1'b0;

		@(ds.cb);
		test.update_lt_block (
			trans.lt_data
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
			repeat (216) @(ds.cb);
			test.check_lt_block (
				ds.cb.lt_inverse
			);
		end
	end
endprogram
`timescale 1ns/1ps
`include "inverse_test.sv"

class inverse_transaction;
	rand logic [3][3][30:0] matrix_increment;
	real matrix_fraction [3][3];
	real matrix_data [3][3];
endclass

class inverse_env;
	int max_transactions = 1000000;
endclass

program inverse_tb (ifc_inverse.inverse_tb ds);

	inverse_transaction trans;
	inverse_env env;
	inverse_test test;

	task do_cycle;

		trans.randomize();

		//wrap input numbers to -16 ~ 16
		for ( int row=0 ; row<3 ; row++ ) begin // row index
			for ( int col=0 ; col<3 ; col++ ) begin // col index
				trans.matrix_fraction[row][col] = real'(trans.matrix_increment[row][col]) / 2147483648.0;
				trans.matrix_data[row][col] = -16.0 + trans.matrix_fraction[row][col] * 2 * 16.0;
				$display("joint, row, col = %d", joint, row, col);
				$display("data = %f", trans.matrix_data[row][col]);
				ds.cb.matrix[row][col] <= int'(trans.matrix_data[row][col] * 256.0);
			end
		end

		ds.cb.en <= 1'b1;
		ds.cb.rst <= 1'b0;

		@(ds.cb);
		test.update_inverse (
			trans.matrix_data
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
			repeat (99) @(ds.cb);
			test.check_inverse (
				ds.cb.inverse
			);
		end
	end
endprogram
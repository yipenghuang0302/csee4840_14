`timescale 1ns/1ps
`include "t_block_test.sv"

class t_block_transaction;
	rand bit [15:0] increment;
endclass

class t_block_env;
	int max_transactions = 1000000;
endclass

program t_block_tb (ifc_t_block.t_block_tb ds);

	shortreal fraction,angle;
	t_block_transaction trans;
	t_block_env env;
	t_block_test test;

	task do_cycle;

		trans.randomize();

		//always wrap input angle to -PI..PI
		fraction = real'(trans.increment) / 65536;
		// $display("fraction = %f", fraction);
		
		angle = -3.141592653589793238462643383279502884197 + fraction * 2 * 3.141592653589793238462643383279502884197;
		// $display("angle = %f", angle);

		// passing data to design under test happens here
		ds.cb.en <= 1'b1;
		ds.cb.angle <= angle*256;

		@(ds.cb);
		test.update_t_block (
			angle
		);

	endtask

	initial begin
		trans = new();
		test = new();
		env = new();

		// testing
		repeat (env.max_transactions) begin
			do_cycle();
			repeat (19) begin
				@(ds.cb);
			end
			test.check_t_block (
				ds.cb.sin,
				ds.cb.cos
			);
		end
	end
endprogram
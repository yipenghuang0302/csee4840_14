`timescale 1ns/1ps

`include "sincos_test.sv"

class sincos_transaction;
	rand bit [15:0] increment;
endclass

class sincos_env;
	int max_transactions = 10000;
endclass

program sincos_tb (ifc_sincos.sincos_tb ds);

	shortreal fraction,angle;
	sincos_transaction trans;
	sincos_env env;
	sincos_test test;

	task do_cycle;

		trans.randomize();

		//always wrap input angle to -PI..PI
		fraction = real'(trans.increment) / 65536;
		$display("fraction = %f", fraction);
		
		angle = -3.141592653589793238462643383279502884197 + fraction * 2 * 3.141592653589793238462643383279502884197;
		$display("angle = %f", angle);

		// passing data to design under test happens here
		ds.cb.en <= 1'b0;
		ds.cb.angle <= angle*256;

		@(ds.cb);
		test.update_sincos (
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
			repeat (20) begin
				@(ds.cb);
			end
			test.check_sincos (
				ds.cb.sin,
				ds.cb.cos
			);
		end
	end
endprogram
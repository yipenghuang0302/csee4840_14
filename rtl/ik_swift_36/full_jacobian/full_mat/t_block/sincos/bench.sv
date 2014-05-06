`timescale 1ns/1ps
`include "sincos_test.sv"

class sincos_transaction;
	rand logic [30:0] increment;
endclass

class sincos_env;
	int max_transactions = 1000000;
endclass

program sincos_tb (ifc_sincos.sincos_tb ds);

	real fraction, angle;
	sincos_transaction trans;
	sincos_env env;
	sincos_test test;

	task do_cycle;

		trans.randomize();

		//always wrap input angle to -PI..PI
		fraction = real'(trans.increment) / 2147483648.0;
		// $display("fraction = %f", fraction);
		
		angle = -3.141592653589793238462643383279502884197 + fraction * 2 * 3.141592653589793238462643383279502884197;
		// $display("angle = %f", angle);

		// passing data to design under test happens here
		ds.cb.en <= 1'b1;
		ds.cb.rst <= 1'b0;
		ds.cb.angle <= longint'(angle * 65536.0);

		@(ds.cb);
		test.update_sincos (
			angle
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
			test.check_sincos (
				ds.cb.sin,
				ds.cb.cos
			);
		end
	end
endprogram
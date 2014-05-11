`timescale 1ns/1ps
`include "full_jacobian_test.sv"

parameter THETA = 0;
parameter A_PARAM = 1;
parameter D_PARAM = 2;
parameter ALPHA = 3;

class full_jacobian_transaction;
	rand logic en;
	rand logic [6][4][30:0] dh_increment;
	real dh_fraction [6][4];
	real dh_data [6][4];
	rand logic [3][30:0] z_increment;
	real z_fraction [3];
	real z_data [3];
	rand logic [5:0] joint_type;
endclass

class full_jacobian_env;
	int max_transactions = 1000000;
endclass

program full_jacobian_tb (ifc_full_jacobian.full_jacobian_tb ds);

	int effective;
	full_jacobian_transaction trans;
	full_jacobian_env env;
	full_jacobian_test test;

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

			// GENERATE DH_PARAMS
			//wrap input numbers to -16 ~ 16
			for (int i=0; i<6; i++) begin // joint index

				for (int j=0; j<4; j++) begin // dh_parameter index
					trans.dh_fraction[i][j] = real'(trans.dh_increment[i][j]) / 2147483648.0;
				end

				trans.dh_data[i][THETA] = -3.141592653589793238462643383279502884197 + trans.dh_fraction[i][THETA] * 2 * 3.141592653589793238462643383279502884197;
				trans.dh_data[i][A_PARAM] = -4.0 + trans.dh_fraction[i][A_PARAM] * 2 * 4.0;
				trans.dh_data[i][D_PARAM] = -4.0 + trans.dh_fraction[i][D_PARAM] * 2 * 4.0;
				trans.dh_data[i][ALPHA] = -3.141592653589793238462643383279502884197 + trans.dh_fraction[i][ALPHA] * 2 * 3.141592653589793238462643383279502884197;

				$display("joint index = %d", i);
				$display("theta = %f", trans.dh_data[i][THETA]);
				$display("a = %f", trans.dh_data[i][A_PARAM]);
				$display("d = %f", trans.dh_data[i][D_PARAM]);
				$display("alpha = %f", trans.dh_data[i][ALPHA]);

				// passing data to design under test happens here
				for (int j=0; j<4; j++) begin // dh_parameter index
					ds.cb.dh_param[i][j] <= int'(trans.dh_data[i][j] * 65536.0);
				end

			end

			// GENERATE Z BASIS VECTOR
			for ( int z=0 ; z<3 ; z++ ) begin // z index
				trans.z_fraction[z] = real'(trans.z_increment[z]) / 2147483648.0;
				trans.z_data[z] = -1.0 + trans.z_fraction[z] * 2 * 1.0;
				$display("z = %d", z);
				$display("data = %f", trans.z_data[z]);
				ds.cb.z[z] <= int'(trans.z_data[z] * 65536.0);
			end

			ds.cb.joint_type <= trans.joint_type;
			ds.cb.en <= trans.en;
			ds.cb.rst <= 1'b0;

			@(ds.cb);
			if (trans.en) begin
				test.update_full_jacobian (
					trans.z_data,
					trans.joint_type,
					trans.dh_data
				);
				effective = 0;
				while (effective<112) begin
					trans.randomize();
					ds.cb.en <= trans.en;
					@(ds.cb);
					if (trans.en) effective++;
				end
				test.check_full_jacobian (
					ds.cb.full_matrix,
					ds.cb.axis,
					ds.cb.dist_to_end,
					ds.cb.jacobian_matrix,
					ds.cb.jjt_bias
				);
			end
		end
	end

endprogram
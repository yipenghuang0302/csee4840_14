`timescale 1ns/1ps
`include "jacobian_test.sv"

class jacobian_transaction;
	rand logic en;
	rand logic [6][4][4][30:0] full_mat_increment;
	real full_mat_fraction [6][4][4];
	real full_mat_data [6][4][4];
	rand logic [3][30:0] z_increment;
	real z_fraction [3];
	real z_data [3];
	rand logic [5:0] joint_type;
endclass

class jacobian_env;
	int max_transactions = 1000000;
endclass

program jacobian_tb (ifc_jacobian.jacobian_tb ds);

	int effective;
	jacobian_transaction trans;
	jacobian_env env;
	jacobian_test test;

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
			for ( int joint=0 ; joint<6 ; joint++ ) begin // joint index
				for ( int row=0 ; row<4 ; row++ ) begin // row index
					for ( int col=0 ; col<4 ; col++ ) begin // col index
						trans.full_mat_fraction[joint][row][col] = real'(trans.full_mat_increment[joint][row][col]) / 2147483648.0;
						trans.full_mat_data[joint][row][col] = -16.0 + trans.full_mat_fraction[joint][row][col] * 2 * 16.0;
						// $display("joint, row, col = %d", joint, row, col);
						// $display("data = %f", trans.full_mat_data[joint][row][col]);
						ds.cb.full_matrix[joint][row][col] <= int'(trans.full_mat_data[joint][row][col] * 65536.0);
					end
				end
			end

			for ( int z=0 ; z<3 ; z++ ) begin // z index
				trans.z_fraction[z] = real'(trans.z_increment[z]) / 2147483648.0;
				trans.z_data[z] = -1.0 + trans.z_fraction[z] * 2 * 1.0;
				// $display("z = %d", z);
				// $display("data = %f", trans.z_data[z]);
				ds.cb.z[z] <= int'(trans.z_data[z] * 65536.0);
			end

			ds.cb.joint_type <= trans.joint_type;
			ds.cb.en <= trans.en;
			ds.cb.rst <= 1'b0;

			@(ds.cb);
			if (trans.en) begin
				test.update_jacobian (
					trans.z_data,
					trans.joint_type,
					trans.full_mat_data
				);
				effective = 0;
				while (effective<99) begin
					trans.randomize();
					ds.cb.en <= trans.en;
					@(ds.cb);
					if (trans.en) effective++;
				end
				test.check_jacobian (
					ds.cb.axis,
					ds.cb.dist_to_end,
					ds.cb.jacobian_matrix
				);
			end
		end
	end
endprogram
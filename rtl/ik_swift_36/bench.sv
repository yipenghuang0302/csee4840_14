`timescale 1ns/1ps
`include "ik_swift_test.sv"

class ik_swift_transaction;

	rand logic en;

	rand logic [3][30:0] z_increment;
	real z_fraction [3];
	real z_data [3];

	rand logic [5:0] joint_type;
	// logic [5:0] joint_type = 6'b111111;

	rand logic [6][4][30:0] dh_increment;
	real dh_fraction [6][4];
	real dh_data [6][4];

	rand logic [6][30:0] target_increment;
	real target_fraction [6];
	real target_data [6];

endclass

class ik_swift_env;
	int max_transactions = 1000000;
endclass

program ik_swift_tb (ifc_ik_swift.ik_swift_tb ds);

	int effective;
	ik_swift_transaction trans;
	ik_swift_env env;
	ik_swift_test test;

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

			// trans.z_data[0] = 0.0;
			// trans.z_data[1] = 0.0;
			// trans.z_data[2] = 1.0;

			// GENERATE Z BASIS VECTOR
			for ( int z=0 ; z<3 ; z++ ) begin // z index
				trans.z_fraction[z] = real'(trans.z_increment[z]) / 2147483648.0;
				trans.z_data[z] = -4.0 + trans.z_fraction[z] * 2 * 4.0;
				$display("z = %d", z);
				$display("data = %f", trans.z_data[z]);
				ds.cb.z[z] <= longint'(trans.z_data[z] * 65536.0);
			end

			// trans.dh_data[0][THETA] = 0.0;
			// trans.dh_data[0][L_OFFSET] = 7.5;
			// trans.dh_data[0][L_DISTANCE] = 33.5;
			// trans.dh_data[0][ALPHA] = -3.14159265359/2;
			// 
			// trans.dh_data[1][THETA] = 0.0;
			// trans.dh_data[1][L_OFFSET] = 27.0;
			// trans.dh_data[1][L_DISTANCE] = 0.0;
			// trans.dh_data[1][ALPHA] = 0.0;
			// 
			// trans.dh_data[2][THETA] = 0.0;
			// trans.dh_data[2][L_OFFSET] = 9.0;
			// trans.dh_data[2][L_DISTANCE] = 0.0;
			// trans.dh_data[2][ALPHA] = 3.14159265359/2;
			// 
			// trans.dh_data[3][THETA] = 0.0;
			// trans.dh_data[3][L_OFFSET] = 0.0;
			// trans.dh_data[3][L_DISTANCE] = 29.5;
			// trans.dh_data[3][ALPHA] = -3.14159265359/2;
			// 
			// trans.dh_data[4][THETA] = 0.0;
			// trans.dh_data[4][L_OFFSET] = 0.0;
			// trans.dh_data[4][L_DISTANCE] = 0.0;
			// trans.dh_data[4][ALPHA] = 3.14159265359/2;
			// 
			// trans.dh_data[5][THETA] = 0.0;
			// trans.dh_data[5][L_OFFSET] = 0.0;
			// trans.dh_data[5][L_DISTANCE] = 8.0;
			// trans.dh_data[5][ALPHA] = 3.14159265359;

			// GENERATE DH_PARAMS
			//wrap input numbers to -64 ~ 64
			for (int i=0; i<6; i++) begin // joint index

				for (int j=0; j<4; j++) begin // dh_parameter index
					trans.dh_fraction[i][j] = real'(trans.dh_increment[i][j]) / 2147483648.0;
				end
				
				trans.dh_data[i][THETA] = -3.141592653589793238462643383279502884197 + trans.dh_fraction[i][THETA] * 2 * 3.141592653589793238462643383279502884197;
				trans.dh_data[i][L_OFFSET] = -4.0 + trans.dh_fraction[i][L_OFFSET] * 2 * 4.0;
				trans.dh_data[i][L_DISTANCE] = -4.0 + trans.dh_fraction[i][L_DISTANCE] * 2 * 4.0;
				trans.dh_data[i][ALPHA] = -3.141592653589793238462643383279502884197 + trans.dh_fraction[i][ALPHA] * 2 * 3.141592653589793238462643383279502884197;

				$display("joint index = %d", i);
				$display("theta = %f", trans.dh_data[i][THETA]);
				$display("l_offset a = %f", trans.dh_data[i][L_OFFSET]);
				$display("l_distance d = %f", trans.dh_data[i][L_DISTANCE]);
				$display("alpha = %f", trans.dh_data[i][ALPHA]);

				// passing data to design under test happens here
				for (int j=0; j<4; j++) begin // dh_parameter index
					ds.cb.dh_param_in[i][j] <= longint'(trans.dh_data[i][j] * 65536.0);
				end

			end

			// targetx="9" targety="-15.28" targetz="3.2"
			// trans.target_data[0] = 9.0;
			// trans.target_data[1] = -15.28; 
			// trans.target_data[2] = 3.2;
			// trans.target_data[3] = 0.0;
			// trans.target_data[4] = 0.0;
			// trans.target_data[5] = 0.0;

			// GENERATE TARGET COORDINATE VECTOR
			for ( int index=0 ; index<6 ; index++ ) begin // index
				trans.target_fraction[index] = real'(trans.target_increment[index]) / 2147483648.0;
				trans.target_data[index] = -4.0 + trans.target_fraction[index] * 2 * 4.0;
				$display("target coordinate = %d", index);
				$display("data = %f", trans.target_data[index]);
				ds.cb.target[index] <= longint'(trans.target_data[index] * 65536.0);
			end

			$display("joint type = %b", trans.joint_type);

			ds.cb.joint_type <= trans.joint_type;
			ds.cb.en <= trans.en;
			ds.cb.rst <= 1'b0;

			@(ds.cb);
			if (trans.en) begin
				test.update_ik_swift (
					trans.z_data,
					trans.joint_type,
					trans.dh_data,
					trans.target_data
				);
				effective = 0;
				while (effective<249) begin
					trans.randomize();
					ds.cb.en <= trans.en;
					@(ds.cb);
					if (trans.en) effective++;
				end
				test.check_ik_swift (
					ds.cb.jacobian_matrix,
					ds.cb.jjt_bias,
					ds.cb.lt,
					ds.cb.lt_inverse,
					ds.cb.inverse,
					ds.cb.dls,
					ds.cb.delta,
					ds.cb.dh_param_out
				);
			end
		end
	end

endprogram
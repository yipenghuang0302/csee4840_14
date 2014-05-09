`timescale 1ns/1ps
`include "ik_swift_test.sv"

class ik_swift_transaction;

	rand logic [3][30:0] z_increment;
	real z_fraction [3];
	real z_data [3];

	logic [5:0] joint_type = 6'b111111;

	rand logic [6][30:0] target_increment;
	real target_fraction [6];
	real target_data [6];

	rand logic [6]/*[4]*/[30:0] dh_increment;
	real dh_fraction [6]/*[4]*/;
	real dh_data [6][4];

endclass

class ik_swift_env;
	int robots = 1000;
	int convergence = 100;
endclass

program ik_swift_tb (ifc_ik_swift.ik_swift_tb ds);

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
		ds.cb.rst <= 1'b0;
		ds.cb.en <= 1'b0;

		repeat (env.robots) begin

			trans.randomize();

			// GENERATE JOINT TYPE
			$display("joint type = %b", trans.joint_type);
			ds.cb.joint_type <= trans.joint_type;

			// RANDOMIZE Z BASIS VECTOR
			trans.z_data[0] = 0.0;
			trans.z_data[1] = 0.0;
			trans.z_data[2] = 1.0;
			for ( int z=0 ; z<3 ; z++ ) begin // z index
				// trans.z_fraction[z] = real'(trans.z_increment[z]) / 2147483648.0;
				// trans.z_data[z] = -4.0 + trans.z_fraction[z] * 2 * 4.0;
				$display("z = %d", z);
				$display("data = %f", trans.z_data[z]);
				ds.cb.z[z] <= longint'(trans.z_data[z] * 65536.0);
			end

			// RANDOMIZE TARGET COORDINATE VECTOR
			// <Robot name="KUKA robot KR5" targetx="3" targety="-1.28" targetz="3.2">
			// trans.target_data[0] = 3;
			// trans.target_data[1] = -1.28; 
			// trans.target_data[2] = 3.2;
			// trans.target_data[3] = 0.0;
			// trans.target_data[4] = 0.0;
			// trans.target_data[5] = 0.0;
			for ( int index=0 ; index<6 ; index++ ) begin // index
				trans.target_fraction[index] = real'(trans.target_increment[index]) / 2147483648.0;
				trans.target_data[index] = -3.0 + trans.target_fraction[index] * 2 * 3.0;
				trans.target_data[3] = 0.0;
				trans.target_data[4] = 0.0;
				trans.target_data[5] = 0.0;
				$display("target coordinate = %d", index);
				$display("data = %f", trans.target_data[index]);
				ds.cb.target[index] <= longint'(trans.target_data[index] * 65536.0);
			end

			// RANDOMIZE DH_PARAMS
			// GENERATE DH_PARAMS
			trans.dh_data[0][THETA] = 0.0;
			trans.dh_data[0][L_OFFSET] = 0.75;
			trans.dh_data[0][L_DISTANCE] = 3.35;
			trans.dh_data[0][ALPHA] = -3.14159265359/2;

			trans.dh_data[1][THETA] = 0.0;
			trans.dh_data[1][L_OFFSET] = 2.7;
			trans.dh_data[1][L_DISTANCE] = 0.0;
			trans.dh_data[1][ALPHA] = 0.0;

			trans.dh_data[2][THETA] = 0.0;
			trans.dh_data[2][L_OFFSET] = 0.9;
			trans.dh_data[2][L_DISTANCE] = 0.0;
			trans.dh_data[2][ALPHA] = 3.14159265359/2;

			trans.dh_data[3][THETA] = 0.0;
			trans.dh_data[3][L_OFFSET] = 0.0;
			trans.dh_data[3][L_DISTANCE] = -2.95;
			trans.dh_data[3][ALPHA] = -3.14159265359/2;

			trans.dh_data[4][THETA] = 0.0;
			trans.dh_data[4][L_OFFSET] = 0.0;
			trans.dh_data[4][L_DISTANCE] = 0.0;
			trans.dh_data[4][ALPHA] = 3.14159265359/2;

			trans.dh_data[5][THETA] = 0.0;
			trans.dh_data[5][L_OFFSET] = 0.0;
			trans.dh_data[5][L_DISTANCE] = -0.8;
			trans.dh_data[5][ALPHA] = 3.14159265359;
			for ( int joint=0 ; joint<6 ; joint++ ) begin // joint index
				// for ( int param=0 ; param<4 ; param++ ) begin // dh param
				// 	trans.dh_fraction[joint][param] = real'(trans.dh_increment[joint][param]) / 2147483648.0;
				// end
				// trans.dh_data[joint][THETA] = -3.141592653589793238462643383279502884197 + trans.dh_fraction[joint][THETA] * 2 * 3.141592653589793238462643383279502884197;
				// trans.dh_data[joint][L_OFFSET] = -4.0 + trans.dh_fraction[joint][L_OFFSET] * 2 * 4.0;
				// trans.dh_data[joint][L_DISTANCE] = -4.0 + trans.dh_fraction[joint][L_DISTANCE] * 2 * 4.0;
				// trans.dh_data[joint][ALPHA] = -3.141592653589793238462643383279502884197 + trans.dh_fraction[joint][ALPHA] * 2 * 3.141592653589793238462643383279502884197;
				$display("joint index = %d", joint);
				$display("theta = %f", trans.dh_data[joint][THETA]);
				$display("l_offset a = %f", trans.dh_data[joint][L_OFFSET]);
				$display("l_distance d = %f", trans.dh_data[joint][L_DISTANCE]);
				$display("alpha = %f", trans.dh_data[joint][ALPHA]);
				// for ( int param=0 ; param<4 ; param++ ) begin // dh param
				ds.cb.dh_dyn_in[joint]/*[param]*/ <= longint'(trans.dh_data[joint][THETA] * 65536.0);
				// end
			end

			// CONVERGENCE TESTING
			repeat (env.convergence) begin

				ds.cb.en <= 1'b1;
				@(ds.cb);

					test.update_ik_swift (
						trans.z_data,
						trans.joint_type,
						trans.dh_data,
						trans.target_data
					);

					repeat (360) @(ds.cb);

					test.check_ik_swift (
						ds.cb.jacobian_matrix,
						ds.cb.jjt_bias,
						ds.cb.lt,
						ds.cb.lt_inverse,
						ds.cb.inverse,
						ds.cb.dls,
						ds.cb.delta,
						ds.cb.done,
						ds.cb.dh_dyn_out
					);

					ds.cb.en <= 1'b0;
					repeat (120) @(ds.cb);

					for ( int joint=0 ; joint<6 ; joint++ ) begin // joint index
						// for ( int param=0 ; param<4 ; param++ ) begin // dh param
						trans.dh_data[joint][THETA] = real'(longint'({{28{ds.cb.dh_dyn_out[joint]/*[param]*/[35]}}, ds.cb.dh_dyn_out[joint]/*[param]*/}))/65536.0;
						// if (param==ALPHA || param==THETA) begin
						while (trans.dh_data[joint][THETA]>3.141592653589793238462643383279502884197)
							trans.dh_data[joint][THETA] = trans.dh_data[joint][THETA] - 2*3.141592653589793238462643383279502884197;
						while (trans.dh_data[joint][THETA]<-3.141592653589793238462643383279502884197)
							trans.dh_data[joint][THETA] = trans.dh_data[joint][THETA] + 2*3.141592653589793238462643383279502884197;
						// end
						ds.cb.dh_dyn_in[joint]/*[param]*/ <= longint'(trans.dh_data[joint][THETA] * 65536.0);
						// end
					end

				// end // end one solution cycle
			end // end convergence loop
		end // end randomized robots loop
	end // end initial
endprogram
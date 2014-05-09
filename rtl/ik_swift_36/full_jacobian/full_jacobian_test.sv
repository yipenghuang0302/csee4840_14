// golden model class
class full_jacobian_test;

	real model_full_matrix [6][4][4];
	real model_axis [7][3];
	real model_dist_to_end [6][3];
	real model_jacobian_matrix [6][6];
	real model_jjt_bias [6][6];

	function real abs (real num); 
	   abs = (num<0) ? -num : num; 
	endfunction

	function void update_full_jacobian (
		real z [3],
		logic [5:0] joint_type,
		real dh_param [6][4]
	);

		real rotation [6][3][3];
		real position [7][3];

		// GENERATE FULL MATRIX
		// iterate over joint index
		for ( int joint=0 ; joint<6 ; joint++ ) begin

			real t_matrix [4][4];

			// generate local transformation matrix
			t_matrix[0][0] =  $cos(dh_param[joint][THETA]);
			t_matrix[0][1] = -$sin(dh_param[joint][THETA]) * $cos(dh_param[joint][ALPHA]);
			t_matrix[0][2] =  $sin(dh_param[joint][THETA]) * $sin(dh_param[joint][ALPHA]);
			t_matrix[0][3] =  $cos(dh_param[joint][THETA]) * dh_param[joint][L_OFFSET];
			t_matrix[1][0] =  $sin(dh_param[joint][THETA]);
			t_matrix[1][1] =  $cos(dh_param[joint][THETA]) * $cos(dh_param[joint][ALPHA]);
			t_matrix[1][2] = -$cos(dh_param[joint][THETA]) * $sin(dh_param[joint][ALPHA]);
			t_matrix[1][3] =  $sin(dh_param[joint][THETA]) * dh_param[joint][L_OFFSET];
			t_matrix[2][0] = 0.0;
			t_matrix[2][1] = $sin(dh_param[joint][ALPHA]);
			t_matrix[2][2] = $cos(dh_param[joint][ALPHA]);
			t_matrix[2][3] = dh_param[joint][L_DISTANCE];
			t_matrix[3][0] = 0.0;
			t_matrix[3][1] = 0.0;
			t_matrix[3][2] = 0.0;
			t_matrix[3][3] = 1.0;

			// full_matrix = copy * t_matrix;
			for ( int i=0 ; i<4 ; i++ ) begin // product row
				for ( int j=0 ; j<4 ; j++ ) begin // product column
				if ( joint==0 ) begin // first joint is just multiplied against identity; copy instead
						model_full_matrix[0][i][j] = t_matrix[i][j];
					end else begin
						real element = 0.0;
						for ( int k=0 ; k<4 ; k++ ) begin // inner term
							element += model_full_matrix[joint-1][i][k] * t_matrix[k][j];
						end
						model_full_matrix[joint][i][j] = element;
					end
				end
			end

		end

		// EXTRACT ROTATION FROM TRANSFORMATION MATRICES
		for ( int joint=0 ; joint<6 ; joint++ )
			for ( int row=0 ; row<3 ; row++ )
				for ( int col=0 ; col<3 ; col++ )
					rotation[joint][row][col] = model_full_matrix[joint][row][col];

		// GENERATE AXES OF ROTATION
		model_axis[0] = z; // first joint just comes off of basis vector
		for ( int joint=1 ; joint<7 ; joint++ )
			for ( int row=0 ; row<3 ; row++ ) begin
				model_axis[joint][row] = 0.0; // clear data from last round
				for ( int col=0 ; col<3 ; col++ )
					 model_axis[joint][row] += rotation[joint-1][row][col] * z[col];
			end

		// EXTRACT POSITION FROM TRANSFORMATION MATRICES
		position[0] = { 0.0, 0.0, 0.0 }; // first joint starts at origin
		for ( int joint=1 ; joint<7 ; joint++ )
			for ( int row=0 ; row<3 ; row++ )
				position[joint][row] = model_full_matrix[joint-1][row][3];

		// CALCULATE VECTOR TO END OF EFFECTOR
		for ( int joint=0 ; joint<6 ; joint++ )
			for ( int row=0 ; row<3 ; row++ )
				model_dist_to_end[joint][row] = model_full_matrix[5][row][3] - position[joint][row];

		// CREATE JACOBIAN COLUMN BY COLUMN
		for ( int joint=0 ; joint<6 ; joint++ ) begin
			if ( joint_type[joint]==1'b0 ) begin // translational
				model_jacobian_matrix[0][joint] = model_axis[joint][0];
				model_jacobian_matrix[1][joint] = model_axis[joint][1];
				model_jacobian_matrix[2][joint] = model_axis[joint][2];
				model_jacobian_matrix[3][joint] = 0.0;
				model_jacobian_matrix[4][joint] = 0.0;
				model_jacobian_matrix[5][joint] = 0.0;
			end else begin // rotational
				model_jacobian_matrix[0][joint] = model_axis[joint][1] * model_dist_to_end[joint][2] - model_axis[joint][2] * model_dist_to_end[joint][1];
				model_jacobian_matrix[1][joint] = model_axis[joint][2] * model_dist_to_end[joint][0] - model_axis[joint][0] * model_dist_to_end[joint][2];
				model_jacobian_matrix[2][joint] = model_axis[joint][0] * model_dist_to_end[joint][1] - model_axis[joint][1] * model_dist_to_end[joint][0];
				model_jacobian_matrix[3][joint] = model_axis[joint][0];
				model_jacobian_matrix[4][joint] = model_axis[joint][1];
				model_jacobian_matrix[5][joint] = model_axis[joint][2];
			end
		end

		// jjt_bias = jacobian * jacobian transpose;
		for ( int row=0 ; row<6 ; row++ ) // product row
			for ( int col=0 ; col<6 ; col++ ) begin // product column
				model_jjt_bias[row][col] = row==col ? 0.00001525878*2 : 0.0; // bias term
				for ( int k=0 ; k<6 ; k++ ) // inner term
					model_jjt_bias[row][col] += model_jacobian_matrix[row][k] * model_jacobian_matrix[col][k];
			end

	endfunction

	function void check_full_jacobian (
		logic [5:0] [3:0] [3:0] [35:0] full_matrix,
		logic [6:0] [2:0] [35:0] axis,
		logic [5:0] [2:0] [35:0] dist_to_end,
		logic [5:0] [5:0] [35:0] jacobian_matrix,
		logic [5:0] [5:0] [35:0] jjt_bias
	);

		real abs_tol = 0.01;
		real rel_tol = 0.01;

		real full_matrix_real[4][4];
		real full_matrix_error[4][4];
		real full_matrix_percent[4][4];

		real axis_real[7][3];
		real axis_error[7][3];
		real axis_percent[7][3];

		real dist_to_end_real[6][3];
		real dist_to_end_error[6][3];
		real dist_to_end_percent[6][3];

		real jacobian_real[6][6];
		real jacobian_error[6][6];
		real jacobian_percent[6][6];

		real jjt_bias_real[6][6];
		real jjt_bias_error[6][6];
		real jjt_bias_percent[6][6];

		bit passed = 1'b1;

		// CHECK THE FULL MATRIX
		for ( int joint=0 ; joint<6 ; joint++ ) begin
			for ( int i=0 ; i<4 ; i++ ) begin // full matrix row
				for ( int j=0 ; j<4 ; j++ ) begin // full matrix column
					full_matrix_real[i][j] = real'(longint'({{28{full_matrix[joint][i][j][35]}}, full_matrix[joint][i][j]}))/65536.0;
					full_matrix_error[i][j] = abs( full_matrix_real[i][j] - model_full_matrix[joint][i][j] );
	 				full_matrix_percent[i][j] = abs( full_matrix_error[i][j] / model_full_matrix[joint][i][j] );
					if (full_matrix_error[i][j]>abs_tol && full_matrix_percent[i][j]>rel_tol) begin
						$write("%t : fail full_matrix joint=%d i=%d j=%d\n", $realtime, joint, i, j);
						$write("model_full_matrix=%f; dut_result=%f; full_matrix_error=%f.\n", model_full_matrix[joint][i][j], full_matrix_real[i][j], full_matrix_error[i][j]);
						$write("model_full_matrix=%f; dut_result=%f; full_matrix_percent=%f.\n", model_full_matrix[joint][i][j], full_matrix_real[i][j], full_matrix_percent[i][j]);
						passed = 1'b0;
					end else begin
						// $write("%t : pass full matrix i=%d j=%d\n", $realtime, i, j);
					end
				end
			end
		end

		// CHECK AXIS
		for ( int joint=0 ; joint<7 ; joint++ ) begin // axis joint
			for ( int coord=0 ; coord<3 ; coord++ ) begin // axis coordinate
				axis_real[joint][coord] = real'(longint'({{28{axis[joint][coord][35]}}, axis[joint][coord]}))/65536.0;
				axis_error[joint][coord] = abs( axis_real[joint][coord] - model_axis[joint][coord] );
				axis_percent[joint][coord] = abs( axis_error[joint][coord] / model_axis[joint][coord] );
				if (axis_error[joint][coord]>abs_tol && axis_percent[joint][coord]>rel_tol) begin
					$write("%t : fail axis joint=%d coord=%d\n", $realtime, joint, coord);
					$write("model_axis=%f; dut_result=%f; axis_error=%f.\n", model_axis[joint][coord], axis_real[joint][coord], axis_error[joint][coord]);
					$write("model_axis=%f; dut_result=%f; axis_percent=%f.\n", model_axis[joint][coord], axis_real[joint][coord], axis_percent[joint][coord]);
					passed = 1'b0;
				end else begin
					// $write("%t : pass axis joint=%d coord=%d\n", $realtime, joint, coord);
				end
			end
		end

		// CHECK DIST_TO_END
		for ( int joint=0 ; joint<6 ; joint++ ) begin // dist_to_end joint
			for ( int coord=0 ; coord<3 ; coord++ ) begin // dist_to_end coordinate
				dist_to_end_real[joint][coord] = real'(longint'({{28{dist_to_end[joint][coord][35]}}, dist_to_end[joint][coord]}))/65536.0;
				dist_to_end_error[joint][coord] = abs( dist_to_end_real[joint][coord] - model_dist_to_end[joint][coord] );
				dist_to_end_percent[joint][coord] = abs( dist_to_end_error[joint][coord] / model_dist_to_end[joint][coord] );
				if (dist_to_end_error[joint][coord]>abs_tol && dist_to_end_percent[joint][coord]>rel_tol) begin
					$write("%t : fail dist_to_end joint=%d coord=%d\n", $realtime, joint, coord);
					$write("model_dist_to_end=%f; dut_result=%f; dist_to_end_error=%f.\n", model_dist_to_end[joint][coord], dist_to_end_real[joint][coord], dist_to_end_error[joint][coord]);
					$write("model_dist_to_end=%f; dut_result=%f; dist_to_end_percent=%f.\n", model_dist_to_end[joint][coord], dist_to_end_real[joint][coord], dist_to_end_percent[joint][coord]);
					passed = 1'b0;
				end else begin
					// $write("%t : pass dist_to_end joint=%d coord=%d\n", $realtime, joint, coord);
				end
			end
		end

		// CHECK JACOBIAN
		for ( int i=0 ; i<6 ; i++ ) begin // jacobian matrix row
			for ( int j=0 ; j<6 ; j++ ) begin // jacobian matrix column
				jacobian_real[i][j] = real'(longint'({{28{jacobian_matrix[i][j][35]}}, jacobian_matrix[i][j]}))/65536.0;
				jacobian_error[i][j] = abs( jacobian_real[i][j] - model_jacobian_matrix[i][j] );
				jacobian_percent[i][j] = abs( jacobian_error[i][j] / model_jacobian_matrix[i][j] );
				if (jacobian_error[i][j]>abs_tol && jacobian_percent[i][j]>rel_tol) begin
					$write("%t : fail jacobian i=%d j=%d\n", $realtime, i, j);
					$write("model_jacobian_matrix=%f; dut_result=%f; jacobian_error=%f.\n", model_jacobian_matrix[i][j], jacobian_real[i][j], jacobian_error[i][j]);
					$write("model_jacobian_matrix=%f; dut_result=%f; jacobian_percent=%f.\n", model_jacobian_matrix[i][j], jacobian_real[i][j], jacobian_percent[i][j]);
					passed = 1'b0;
				end else begin
					// $write("%t : pass jacobian i=%d j=%d\n", $realtime, i, j);
				end
			end
		end

		// CHECK JACOBIAN
		for ( int i=0 ; i<6 ; i++ ) begin // jacobian matrix row
			for ( int j=0 ; j<6 ; j++ ) begin // jacobian matrix column
				jjt_bias_real[i][j] = real'(longint'({{28{jjt_bias[i][j][35]}}, jjt_bias[i][j]}))/65536.0;
				jjt_bias_error[i][j] = abs( jjt_bias_real[i][j] - model_jjt_bias[i][j] );
				jjt_bias_percent[i][j] = abs( jjt_bias_error[i][j] / model_jjt_bias[i][j] );
				if (jjt_bias_error[i][j]>abs_tol && jjt_bias_percent[i][j]>rel_tol) begin
					$write("%t : fail jjt_bias i=%d j=%d\n", $realtime, i, j);
					$write("model_jjt_bias=%f; dut_result=%f; jjt_bias_error=%f.\n", model_jjt_bias[i][j], jjt_bias_real[i][j], jjt_bias_error[i][j]);
					$write("model_jjt_bias=%f; dut_result=%f; jjt_bias_percent=%f.\n", model_jjt_bias[i][j], jjt_bias_real[i][j], jjt_bias_percent[i][j]);
					passed = 1'b0;
				end else begin
					// $write("%t : pass jjt_bias i=%d j=%d\n", $realtime, i, j);
				end
			end
		end

		if (passed) begin
			$display("%t : pass \n", $realtime);
		end else begin
			// $exit();
		end

	endfunction

endclass
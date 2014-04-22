// golden model class
class jacobian_test;

	real model_axis [6][3];
	real model_dist_to_end [6][3];
	real model_jacobian_matrix [6][6];

	function real abs (real num); 
		abs = (num<0) ? -num : num; 
	endfunction

	function void update_jacobian (
		real z [3],
		logic [5:0] joint_type,
		real full_matrix [6][4][4]
	);

		real rotation [6][3][3];
		real position [6][3];

		// EXTRACT ROTATION FROM TRANSFORMATION MATRICES
		for ( int joint=0 ; joint<6 ; joint++ )
			for ( int row=0 ; row<3 ; row++ )
				for ( int col=0 ; col<3 ; col++ )
					rotation[joint][row][col] = full_matrix[joint][row][col];

		// GENERATE AXES OF ROTATION
		model_axis[0] = z; // first joint just comes off of basis vector
		for ( int joint=1 ; joint<6 ; joint++ )
			for ( int row=0 ; row<3 ; row++ ) begin
				model_axis[joint][row] = 0.0; // clear data from last round
				for ( int col=0 ; col<3 ; col++ )
					 model_axis[joint][row] += rotation[joint-1][row][col] * z[col];
			end

		// EXTRACT POSITION FROM TRANSFORMATION MATRICES
		position[0] = { 0.0, 0.0, 0.0 }; // first joint starts at origin
		for ( int joint=1 ; joint<6 ; joint++ )
			for ( int row=0 ; row<3 ; row++ )
				position[joint][row] = full_matrix[joint-1][row][3];

		// CALCULATE VECTOR TO END OF EFFECTOR
		for ( int joint=1 ; joint<6 ; joint++ )
			for ( int row=0 ; row<3 ; row++ )
				model_dist_to_end[joint][row] = full_matrix[5][row][3] - position[joint][row];

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

	endfunction

	function void check_jacobian (
		logic [5:0] [2:0] [26:0] axis,
		logic [5:0] [2:0] [26:0] dist_to_end,
		logic [5:0] [5:0] [26:0] jacobian_matrix
	);

		real abs_tol = 0.01;
		real rel_tol = 0.01;

		real axis_real[6][3];
		real axis_error[6][3];
		real axis_percent[6][3];

		real dist_to_end_real[6][3];
		real dist_to_end_error[6][3];
		real dist_to_end_percent[6][3];

		real jacobian_real[6][6];
		real jacobian_error[6][6];
		real jacobian_percent[6][6];

		bit passed = 1'b1;

		// CHECK AXIS
		for ( int joint=0 ; joint<6 ; joint++ ) begin // axis joint
			for ( int coord=0 ; coord<3 ; coord++ ) begin // axis coordinate
				axis_real[joint][coord] = real'(int'({{5{axis[joint][coord][26]}}, axis[joint][coord]}))/256.0;
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
				dist_to_end_real[joint][coord] = real'(int'({{5{dist_to_end[joint][coord][26]}}, dist_to_end[joint][coord]}))/256.0;
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
		for ( int i=0 ; i<6 ; i++ ) begin // full matrix row
			for ( int j=0 ; j<6 ; j++ ) begin // full matrix column
				jacobian_real[i][j] = real'(int'({{5{jacobian_matrix[i][j][26]}}, jacobian_matrix[i][j]}))/256.0;
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

		if (passed) begin
			$display("%t : pass \n", $realtime);
		end else begin
			// $exit();
		end
	endfunction

endclass
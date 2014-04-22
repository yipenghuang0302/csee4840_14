// golden model class
class jacobian_test;

	real model_jacobian_matrix [6][6];

	function real abs (real num); 
		abs = (num<0) ? -num : num; 
	endfunction

	function void update_jacobian (
		real z [3],
		real full_matrix [6][4][4],
		logic [5:0] joint_type
	);

		real rotation [6][3][3];
		real axis [6][3];
		real position [6][3];
		real dist_to_end [6][3];

		// EXTRACT ROTATION FROM TRANSFORMATION MATRICES
		for ( int joint=0 ; joint<6 ; joint++ )
			for ( int row=0 ; row<3 ; row++ )
				for ( int col=0 ; col<3 ; col++ )
					rotation[joint][row][col] = full_matrix[joint][row][col];

		// GENERATE AXES OF ROTATION
		axis[0] = z; // first joint just comes off of basis vector
		for ( joint=1 ; joint<6 ; joint++ )
			for ( row=0 ; row<3 ; row++ )
				for ( col=0 ; col<3 ; col++ )
					 axis[joint][row] += rotation[joint-1][row][col] * z[col];

		// EXTRACT POSITION FROM TRANSFORMATION MATRICES
		position[0] = { 0.0, 0.0, 0.0 }; // first joint starts at origin
		for ( joint=1 ; joint<6 ; joint++ )
			for ( row=0 ; row<3 ; row++ )
				position[joint][row] = full_matrix[joint-1][row][3];

		// CALCULATE VECTOR TO END OF EFFECTOR
		for ( joint=1 ; joint<6 ; joint++ )
			for ( row=0 ; row<3 ; row++ )
				dist_to_end[joint][row] = full_matrix[5][row][3] - position[joint][row];

		// CREATE JACOBIAN COLUMN BY COLUMN
		for ( joint=0 ; joint<6 ; joint++ ) begin
			if ( joint_type[joint]==1'b0 ) begin // translational
				model_jacobian_matrix[0][joint] = axis[joint][0];
				model_jacobian_matrix[1][joint] = axis[joint][1];
				model_jacobian_matrix[2][joint] = axis[joint][2];
				model_jacobian_matrix[3][joint] = 0.0;
				model_jacobian_matrix[4][joint] = 0.0;
				model_jacobian_matrix[5][joint] = 0.0;
			end else begin // rotational
				model_jacobian_matrix[0][joint] = axis[joint][1] * dist_to_end[joint][2] - axis[joint][2] * dist_to_end[joint][1];
				model_jacobian_matrix[1][joint] = axis[joint][2] * dist_to_end[joint][0] - axis[joint][0] * dist_to_end[joint][2];
				model_jacobian_matrix[2][joint] = axis[joint][0] * dist_to_end[joint][1] - axis[joint][1] * dist_to_end[joint][0];
				model_jacobian_matrix[3][joint] = axis[joint][0];
				model_jacobian_matrix[4][joint] = axis[joint][1];
				model_jacobian_matrix[5][joint] = axis[joint][2];
			end
		end

	endfunction

	function void check_jacobian (
		logic [5:0] [5:0] [26:0] jacobian_matrix
	);

		real abs_tol = 0.01;
		real rel_tol = 0.01;

		real real_result[6][6];
		real error[6][6];
		real percent[6][6];
		bit passed = 1'b1;

		for ( int i=0 ; i<6 ; i++ ) begin // full matrix row
			for ( int j=0 ; j<6 ; j++ ) begin // full matrix column
				real_result[i][j] = real'(int'({{5{jacobian_matrix[i][j][26]}}, jacobian_matrix[i][j]}))/256.0;
				error[i][j] = abs( real_result[i][j] - model_jacobian_matrix[i][j] );
 				percent[i][j] = error[i][j] / model_jacobian_matrix[i][j];
				if (error[i][j]>abs_tol && percent[i][j]>rel_tol) begin
					$write("%t : fail jacobian i=%d j=%d\n", $realtime, i, j);
					$write("model_jacobian_matrix=%f; dut_result=%f; error=%f.\n", model_jacobian_matrix[i][j], real_result[i][j], error[i][j]);
					$write("model_jacobian_matrix=%f; dut_result=%f; percent=%f.\n", model_jacobian_matrix[i][j], real_result[i][j], percent[i][j]);
					passed = 1'b0;
				end
			end
		end

		if (passed) begin
			$display("%t : pass \n", $realtime);
		end else begin
			$exit();
		end
	endfunction

endclass
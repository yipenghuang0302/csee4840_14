// golden model class
class full_mat_test;

	real model_full_matrix [6][4][4];

	function real abs (real num); 
	   abs = (num<0) ? -num : num; 
	endfunction

	function void update_full_mat (
		real dh_param [6][4]
	);

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
	endfunction

	function void check_full_mat (
		logic [5:0] [3:0] [3:0] [26:0] full_mat
	);

		real abs_tol = 0.03;
		real rel_tol = 0.06;

		real real_result[4][4];
		real error[4][4];
		real percent[4][4];
		bit passed = 1'b1;

		for ( int joint=5 ; joint<6 ; joint++ ) begin
			for ( int i=0 ; i<4 ; i++ ) begin // full matrix row
				for ( int j=0 ; j<4 ; j++ ) begin // full matrix column
					real_result[i][j] = real'(int'({{5{full_mat[joint][i][j][26]}}, full_mat[joint][i][j]}))/256.0;
					error[i][j] = abs( real_result[i][j] - model_full_matrix[joint][i][j] );
	 				percent[i][j] = abs( error[i][j] / model_full_matrix[joint][i][j] );
					if (error[i][j]>abs_tol && percent[i][j]>rel_tol) begin
						$write("%t : fail full_mat joint=%d i=%d j=%d\n", $realtime, joint, i, j);
						$write("model_full_matrix=%f; dut_result=%f; error=%f.\n", model_full_matrix[joint][i][j], real_result[i][j], error[i][j]);
						$write("model_full_matrix=%f; dut_result=%f; percent=%f.\n", model_full_matrix[joint][i][j], real_result[i][j], percent[i][j]);
						passed = 1'b0;
					end
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
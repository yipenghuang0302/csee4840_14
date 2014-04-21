// golden model class
class t_block_test;

	int pipeline_depth = 28;

	// pipeline variables
	real m_a[28];
	real m_d[28];
	real m_alpha[28];
	real m_theta[28];
	real m_mat[28][4][4];

	// temporary model variables
	real m_sin_alpha;
	real m_cos_alpha;
	real m_sin_theta;
	real m_cos_theta;

	function real abs (real num); 
	   abs = (num<0) ? -num : num; 
	endfunction

	function void update_t_block (
		real a, d, alpha, theta
	);

		for ( int i=0 ; i<pipeline_depth-1 ; i++ ) begin
			m_a[i] = m_a[i+1];
			m_d[i] = m_d[i+1];
			m_alpha[i] = m_alpha[i+1];
			m_theta[i] = m_theta[i+1];
			m_mat[i] = m_mat[i+1];
		end

		m_a[pipeline_depth-1] = a;
		m_d[pipeline_depth-1] = d;
		m_alpha[pipeline_depth-1] = alpha;
		m_theta[pipeline_depth-1] = theta;

		m_sin_alpha = $sin(alpha);
		m_cos_alpha = $cos(alpha);
		m_sin_theta = $sin(theta);
		m_cos_theta = $cos(theta);

		m_mat[pipeline_depth-1][0][0] =  m_cos_theta;
		m_mat[pipeline_depth-1][0][1] = -m_sin_theta * m_cos_alpha;
		m_mat[pipeline_depth-1][0][2] =  m_sin_theta * m_sin_alpha;
		m_mat[pipeline_depth-1][0][3] =  m_cos_theta * a;

		m_mat[pipeline_depth-1][1][0] =  m_sin_theta;
		m_mat[pipeline_depth-1][1][1] =  m_cos_theta * m_cos_alpha;
		m_mat[pipeline_depth-1][1][2] = -m_cos_theta * m_sin_alpha;
		m_mat[pipeline_depth-1][1][3] =  m_sin_theta * a;

		m_mat[pipeline_depth-1][2][0] = 0.0;
		m_mat[pipeline_depth-1][2][1] = m_sin_alpha;
		m_mat[pipeline_depth-1][2][2] = m_cos_alpha;
		m_mat[pipeline_depth-1][2][3] = d;

		m_mat[pipeline_depth-1][3][0] = 0.0;
		m_mat[pipeline_depth-1][3][1] = 0.0;
		m_mat[pipeline_depth-1][3][2] = 0.0;
		m_mat[pipeline_depth-1][3][3] = 1.0;

	endfunction

	function void check_t_block (
		logic [3:0] [3:0] [26:0] dut_t_mat
	);

		real abs_tol = 0.89;
		real rel_tol = 0.064;

		real real_t_mat[4][4];
		real error[4][4];
		real percent[4][4];

		bit passed;

		for ( int i=0 ; i<4 ; i++ ) begin
			for ( int j=0 ; j<4 ; j++ ) begin

				real_t_mat[i][j] = real'(int'({{5{dut_t_mat[i][j][26]}}, dut_t_mat[i][j]}))/256.0;
				error[i][j] = abs( real_t_mat[i][j] - m_mat[0][i][j] );
				percent[i][j] = error[i][j] / m_mat[0][i][j];

				passed = error[i][j] <= abs_tol || percent[i][j] <= rel_tol;

				if (passed) begin
					// $write("%t : pass t_block i=%d j=%d\n", $realtime, i, j);
					// $write("m_mat[0][i][j]=%f; dut_mat[i][j]=%f; mat_error[i][j]=%f.\n", m_mat[0][i][j], real_t_mat[i][j], error[i][j]);
				end else begin
					$write("%t : fail t_block i=%d j=%d\n", $realtime, i, j);
					$write("m_a=%f\n", m_a[0]);
					$write("m_d=%f\n", m_d[0]);
					$write("m_alpha=%f\n", m_alpha[0]);
					$write("m_theta=%f\n", m_theta[0]);
					$write("m_mat[0][i][j]=%f; dut_mat[i][j]=%f; mat_error[i][j]=%f.\n", m_mat[0][i][j], real_t_mat[i][j], error[i][j]);
					$exit();
				end
			end
		end

	endfunction

endclass
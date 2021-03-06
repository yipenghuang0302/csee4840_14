// golden model class
class ik_swift_test;

	int n = 6;

	real m_jacobian [6][6];
	real m_jjt_bias [6][6];
	real m_lt [6][6];
	real m_lt_inv [6][6];
	real m_inverse [6][6];
	real m_dls [6][6];
	real m_delta [6];
	real m_dh_param [6][4];

	function real abs (real num); 
		abs = (num<0) ? -num : num; 
	endfunction

	function void update_ik_swift (
		real z [3],
		logic [5:0] joint_type,
		real dh_param [6][4],
		real target [6]
	);

		real full_matrix [6][4][4];
		real rotation [6][3][3];
		real axis [7][3];
		real position [7][3];
		real dist_to_end [6][3];
		real error [6];

		// COPY DH PARAMS
		// we add to these numbers later
		for ( int joint=0 ; joint<6 ; joint++ )
			for ( int param=0 ; param<4 ; param++ )
				m_dh_param[joint][param] = dh_param[joint][param];

		// GENERATE FULL MATRIX
		// iterate over joint index
		for ( int joint=0 ; joint<n ; joint++ ) begin
			real t_matrix [4][4];
			// generate local transformation matrix
			t_matrix[0][0] =  $cos(dh_param[joint][THETA]);
			t_matrix[0][1] = -$sin(dh_param[joint][THETA]) * $cos(dh_param[joint][ALPHA]);
			t_matrix[0][2] =  $sin(dh_param[joint][THETA]) * $sin(dh_param[joint][ALPHA]);
			t_matrix[0][3] =  $cos(dh_param[joint][THETA]) * dh_param[joint][A_PARAM];
			t_matrix[1][0] =  $sin(dh_param[joint][THETA]);
			t_matrix[1][1] =  $cos(dh_param[joint][THETA]) * $cos(dh_param[joint][ALPHA]);
			t_matrix[1][2] = -$cos(dh_param[joint][THETA]) * $sin(dh_param[joint][ALPHA]);
			t_matrix[1][3] =  $sin(dh_param[joint][THETA]) * dh_param[joint][A_PARAM];
			t_matrix[2][0] = 0.0;
			t_matrix[2][1] = $sin(dh_param[joint][ALPHA]);
			t_matrix[2][2] = $cos(dh_param[joint][ALPHA]);
			t_matrix[2][3] = dh_param[joint][D_PARAM];
			t_matrix[3][0] = 0.0;
			t_matrix[3][1] = 0.0;
			t_matrix[3][2] = 0.0;
			t_matrix[3][3] = 1.0;
			// full_matrix = copy * t_matrix;
			for ( int i=0 ; i<4 ; i++ ) begin // product row
				for ( int j=0 ; j<4 ; j++ ) begin // product column
				if ( joint==0 ) begin // first joint is just multiplied against identity; copy instead
						full_matrix[0][i][j] = t_matrix[i][j];
					end else begin
						real element = 0.0;
						for ( int k=0 ; k<4 ; k++ ) begin // inner term
							element += full_matrix[joint-1][i][k] * t_matrix[k][j];
						end
						full_matrix[joint][i][j] = element;
					end
				end
			end
		end

		// EXTRACT ROTATION FROM TRANSFORMATION MATRICES
		for ( int joint=0 ; joint<n ; joint++ )
			for ( int row=0 ; row<3 ; row++ )
				for ( int col=0 ; col<3 ; col++ )
					rotation[joint][row][col] = full_matrix[joint][row][col];

		// GENERATE AXES OF ROTATION
		axis[0] = z; // first joint just comes off of basis vector
		for ( int joint=1 ; joint<n+1 ; joint++ )
			for ( int row=0 ; row<3 ; row++ ) begin
				axis[joint][row] = 0.0; // clear data from last round
				for ( int col=0 ; col<3 ; col++ )
					 axis[joint][row] += rotation[joint-1][row][col] * z[col];
			end

		// EXTRACT POSITION FROM TRANSFORMATION MATRICES
		position[0] = { 0.0, 0.0, 0.0 }; // first joint starts at origin
		for ( int joint=1 ; joint<n+1 ; joint++ )
			for ( int row=0 ; row<3 ; row++ )
				position[joint][row] = full_matrix[joint-1][row][3];

		$display("end effector x target, position: %f, %f", target[0], position[6][0]);
		$display("end effector y target, position: %f, %f", target[1], position[6][1]);
		$display("end effector z target, position: %f, %f", target[2], position[6][2]);
		$display("end effector x target, rotation: %f, %f", target[3], axis[6][0]);
		$display("end effector y target, rotation: %f, %f", target[4], axis[6][1]);
		$display("end effector z target, rotation: %f, %f", target[5], axis[6][2]);

		// CALCULATE VECTOR TO END OF EFFECTOR
		for ( int joint=0 ; joint<n ; joint++ )
			for ( int row=0 ; row<3 ; row++ )
				dist_to_end[joint][row] = full_matrix[5][row][3] - position[joint][row];

		// CREATE JACOBIAN COLUMN BY COLUMN
		for ( int joint=0 ; joint<n ; joint++ ) begin
			if ( joint_type[joint]==1'b0 ) begin // translational
				m_jacobian[0][joint] = axis[joint][0];
				m_jacobian[1][joint] = axis[joint][1];
				m_jacobian[2][joint] = axis[joint][2];
				m_jacobian[3][joint] = 0.0;
				m_jacobian[4][joint] = 0.0;
				m_jacobian[5][joint] = 0.0;
			end else begin // rotational
				m_jacobian[0][joint] = axis[joint][1] * dist_to_end[joint][2] - axis[joint][2] * dist_to_end[joint][1];
				m_jacobian[1][joint] = axis[joint][2] * dist_to_end[joint][0] - axis[joint][0] * dist_to_end[joint][2];
				m_jacobian[2][joint] = axis[joint][0] * dist_to_end[joint][1] - axis[joint][1] * dist_to_end[joint][0];
				m_jacobian[3][joint] = axis[joint][0];
				m_jacobian[4][joint] = axis[joint][1];
				m_jacobian[5][joint] = axis[joint][2];
			end
		end

		// jjt_bias = jacobian * jacobian transpose;
		for ( int row=0 ; row<n ; row++ ) // product row
			for ( int col=0 ; col<n ; col++ ) begin // product column
				m_jjt_bias[row][col] = row==col ? 0.00001525878*4 : 0.0; // bias term
				for ( int k=0 ; k<n ; k++ ) // inner term
					m_jjt_bias[row][col] += m_jacobian[row][k] * m_jacobian[col][k];
			end

		// ZERO OUT THE MODELS
		for ( int row=0 ; row<n ; row++ ) begin
			for ( int col=0 ; col<n ; col++ ) begin
				m_lt[row][col] = 0.0;
				m_lt_inv[row][col] = 0.0;
				m_inverse[row][col] = 0.0;
				m_dls[row][col] = 0.0;
			end
			m_delta[row] = 0.0;
		end

		// CALCULATE LOWER TRIANGULAR MATRIX
		for ( int row=0 ; row<n ; row++ ) begin
			for ( int col=0 ; col<(row+1) ; col++ ) begin
				real s = 0.0;
				for ( int index=0 ; index<col ; index++ )
					s += m_lt[row][index] * m_lt[col][index];
				m_lt[row][col] = (row==col) ? $sqrt(m_jjt_bias[row][col]-s) : (m_jjt_bias[row][col]-s)/m_lt[col][col];
			end
		end

		// CALCULATE LOWER TRIANGULAR INVERSE MATRIX
		m_lt_inv[0][0] = 1.0 / m_lt[0][0];
		m_lt_inv[1][1] = 1.0 / m_lt[1][1];
		m_lt_inv[2][2] = 1.0 / m_lt[2][2];
		m_lt_inv[3][3] = 1.0 / m_lt[3][3];
		m_lt_inv[4][4] = 1.0 / m_lt[4][4];
		m_lt_inv[5][5] = 1.0 / m_lt[5][5];
		m_lt_inv[1][0] = -m_lt[1][0]*m_lt_inv[0][0] / m_lt[1][1];
		m_lt_inv[2][1] = -m_lt[2][1]*m_lt_inv[1][1] / m_lt[2][2];
		m_lt_inv[3][2] = -m_lt[3][2]*m_lt_inv[2][2] / m_lt[3][3];
		m_lt_inv[4][3] = -m_lt[4][3]*m_lt_inv[3][3] / m_lt[4][4];
		m_lt_inv[5][4] = -m_lt[5][4]*m_lt_inv[4][4] / m_lt[5][5];
		m_lt_inv[2][0] = ( -m_lt[2][1]*m_lt_inv[1][0] + -m_lt[2][0]*m_lt_inv[0][0] ) / m_lt[2][2];
		m_lt_inv[3][1] = ( -m_lt[3][2]*m_lt_inv[2][1] + -m_lt[3][1]*m_lt_inv[1][1] ) / m_lt[3][3];
		m_lt_inv[4][2] = ( -m_lt[4][3]*m_lt_inv[3][2] + -m_lt[4][2]*m_lt_inv[2][2] ) / m_lt[4][4];
		m_lt_inv[5][3] = ( -m_lt[5][4]*m_lt_inv[4][3] + -m_lt[5][3]*m_lt_inv[3][3] ) / m_lt[5][5];
		m_lt_inv[3][0] = ( -m_lt[3][2]*m_lt_inv[2][0] + -m_lt[3][1]*m_lt_inv[1][0] + -m_lt[3][0]*m_lt_inv[0][0] ) / m_lt[3][3];
		m_lt_inv[4][1] = ( -m_lt[4][3]*m_lt_inv[3][1] + -m_lt[4][2]*m_lt_inv[2][1] + -m_lt[4][1]*m_lt_inv[1][1] ) / m_lt[4][4];
		m_lt_inv[5][2] = ( -m_lt[5][4]*m_lt_inv[4][2] + -m_lt[5][3]*m_lt_inv[3][2] + -m_lt[5][2]*m_lt_inv[2][2] ) / m_lt[5][5];
		m_lt_inv[4][0] = ( -m_lt[4][3]*m_lt_inv[3][0] + -m_lt[4][2]*m_lt_inv[2][0] + -m_lt[4][1]*m_lt_inv[1][0] + -m_lt[4][0]*m_lt_inv[0][0] ) / m_lt[4][4];
		m_lt_inv[5][1] = ( -m_lt[5][4]*m_lt_inv[4][1] + -m_lt[5][3]*m_lt_inv[3][1] + -m_lt[5][2]*m_lt_inv[2][1] + -m_lt[5][1]*m_lt_inv[1][1] ) / m_lt[5][5];
		m_lt_inv[5][0] = ( -m_lt[5][4]*m_lt_inv[4][0] + -m_lt[5][3]*m_lt_inv[3][0] + -m_lt[5][2]*m_lt_inv[2][0] + -m_lt[5][1]*m_lt_inv[1][0] + -m_lt[5][0]*m_lt_inv[0][0] ) / m_lt[5][5];

		// MATRIX MULTIPLY TO GET INVERSE MATRIX
		// A^-1 = L^-T * L^-1
		for ( int row=0 ; row<n ; row++ )
			for ( int col=0 ; col<n ; col++ )
				for ( int index=0 ; index<n ; index++ )
					m_inverse[row][col] += m_lt_inv[index][row] * m_lt_inv[index][col];

		// MATRIX MULTIPLY TO GET DLS MATRIX
		// JT * INVERSE
		for ( int row=0 ; row<n ; row++ )
			for ( int col=0 ; col<n ; col++ )
				for ( int index=0 ; index<n ; index++ )
					m_dls[row][col] += m_jacobian[index][row] * m_inverse[index][col];

		// DETERMINE ERROR VECTOR
		for ( int row=0 ; row<3 ; row++ ) begin
			error[row] = target[row] - position[6][row];
			error[row+3] = target[row+3] - axis[6][row];
		end

		// MATRIX VECTOR MULTIPLY TO GET DELTA THETA
		for ( int row=0 ; row<n ; row++ )
			for ( int col=0 ; col<n ; col++ )
				m_delta[row] += m_dls[row][col] * error[col];

		// ADD DELTAS BACK TO DH PARAMS
		for ( int joint=0 ; joint<6 ; joint++ )
			if ( joint_type[joint] == 1'b0 ) // translational
				m_dh_param[joint][D_PARAM] = m_dh_param[joint][D_PARAM] + m_delta[joint];
			else
				m_dh_param[joint][THETA] = m_dh_param[joint][THETA] + m_delta[joint];

	endfunction

	function void check_ik_swift (
		logic [5:0] [5:0] [26:0] jacobian_matrix,
		logic [5:0] [5:0] [26:0] jjt_bias,
		logic [5:0] [5:0] [26:0] lt,
		logic [5:0] [5:0] [26:0] lt_inverse,
		logic [5:0] [5:0] [26:0] inverse,
		logic [5:0] [5:0] [26:0] dls,
		logic [5:0] [26:0] delta,
		logic done,
		logic [5:0] /*[3:0]*/ [20:0] dh_dyn_out
	);

		real abs_tol = 0.05;
		real rel_tol = 0.05;

		real jacobian_real[6][6];
		real jacobian_error[6][6];
		real jacobian_percent[6][6];

		real jjt_bias_real[6][6];
		real jjt_bias_error[6][6];
		real jjt_bias_percent[6][6];

		real lt_real[6][6];
		real lt_error[6][6];
		real lt_percent[6][6];

		real lt_inverse_real[6][6];
		real lt_inverse_error[6][6];
		real lt_inverse_percent[6][6];

		real inverse_real[6][6];
		real inverse_error[6][6];
		real inverse_percent[6][6];

		real dls_real[6][6];
		real dls_error[6][6];
		real dls_percent[6][6];

		real delta_real[6];
		real delta_error[6];
		real delta_percent[6];

		real dh_dyn_out_real[6]; //[4];
		real dh_dyn_out_error[6]; //[4];
		real dh_dyn_out_percent[6]; //[4];

		bit passed = 1'b1;

		// CHECK done
		if (done != 1'b1) begin
			$write("%t : fail done\n", $realtime);
			$exit();
		end

		// CHECK JACOBIAN
		for ( int i=0 ; i<n ; i++ ) begin // jacobian matrix row
			for ( int j=0 ; j<n ; j++ ) begin // jacobian matrix column
				jacobian_real[i][j] = real'(int'({{5{jacobian_matrix[i][j][26]}}, jacobian_matrix[i][j]}))/65536.0;
				jacobian_error[i][j] = abs( jacobian_real[i][j] - m_jacobian[i][j] );
				jacobian_percent[i][j] = abs( jacobian_error[i][j] / m_jacobian[i][j] );
				if (jacobian_error[i][j]>abs_tol && jacobian_percent[i][j]>rel_tol) begin
					$write("%t : fail jacobian i=%d j=%d\n", $realtime, i, j);
					$write("m_jacobian=%f; dut_result=%f; jacobian_error=%f.\n", m_jacobian[i][j], jacobian_real[i][j], jacobian_error[i][j]);
					$write("m_jacobian=%f; dut_result=%f; jacobian_percent=%f.\n", m_jacobian[i][j], jacobian_real[i][j], jacobian_percent[i][j]);
					passed = 1'b0;
				end else begin
					// $write("%t : pass jacobian i=%d j=%d\n", $realtime, i, j);
				end
			end
		end

		// CHECK JJT
		for ( int i=0 ; i<n ; i++ ) begin // jjt row
			for ( int j=0 ; j<n ; j++ ) begin // jjt column
				jjt_bias_real[i][j] = real'(int'({{5{jjt_bias[i][j][26]}}, jjt_bias[i][j]}))/65536.0;
				jjt_bias_error[i][j] = abs( jjt_bias_real[i][j] - m_jjt_bias[i][j] );
				jjt_bias_percent[i][j] = abs( jjt_bias_error[i][j] / m_jjt_bias[i][j] );
				if (jjt_bias_error[i][j]>abs_tol && jjt_bias_percent[i][j]>rel_tol) begin
					$write("%t : fail jjt_bias i=%d j=%d\n", $realtime, i, j);
					$write("m_jjt_bias=%f; dut_result=%f; jjt_bias_error=%f.\n", m_jjt_bias[i][j], jjt_bias_real[i][j], jjt_bias_error[i][j]);
					$write("m_jjt_bias=%f; dut_result=%f; jjt_bias_percent=%f.\n", m_jjt_bias[i][j], jjt_bias_real[i][j], jjt_bias_percent[i][j]);
					passed = 1'b0;
				end else begin
					// $write("%t : pass jjt_bias i=%d j=%d\n", $realtime, i, j);
				end
			end
		end

		// CHECK CHOLESKY
		for ( int i=0 ; i<n ; i++ ) begin // cholesky row
			for ( int j=0 ; j<n ; j++ ) begin // cholesky column
				lt_real[i][j] = real'(int'({{5{lt[i][j][26]}}, lt[i][j]}))/65536.0;
				lt_error[i][j] = abs( lt_real[i][j] - m_lt[i][j] );
				lt_percent[i][j] = abs( lt_error[i][j] / m_lt[i][j] );
				if (lt_error[i][j]>abs_tol && lt_percent[i][j]>rel_tol) begin
					$write("%t : fail cholesky i=%d j=%d\n", $realtime, i, j);
					$write("m_lt=%f; dut_result=%f; lt_error=%f.\n", m_lt[i][j], lt_real[i][j], lt_error[i][j]);
					$write("m_lt=%f; dut_result=%f; lt_percent=%f.\n", m_lt[i][j], lt_real[i][j], lt_percent[i][j]);
					passed = 1'b0;
				end else begin
					// $write("%t : pass cholesky i=%d j=%d\n", $realtime, i, j);
				end
			end
		end

		// CHECK LT_INVERSE
		for ( int i=0 ; i<n ; i++ ) begin // lt_inverse row
			for ( int j=0 ; j<n ; j++ ) begin // lt_inverse column
				lt_inverse_real[i][j] = real'(int'({{5{lt_inverse[i][j][26]}}, lt_inverse[i][j]}))/65536.0;
				lt_inverse_error[i][j] = abs( lt_inverse_real[i][j] - m_lt_inv[i][j] );
				lt_inverse_percent[i][j] = abs( lt_inverse_error[i][j] / m_lt_inv[i][j] );
				if (lt_inverse_error[i][j]>abs_tol && lt_inverse_percent[i][j]>rel_tol) begin
					$write("%t : fail lt_inverse i=%d j=%d\n", $realtime, i, j);
					$write("m_lt_inv=%f; dut_result=%f; lt_inverse_error=%f.\n", m_lt_inv[i][j], lt_inverse_real[i][j], lt_inverse_error[i][j]);
					$write("m_lt_inv=%f; dut_result=%f; lt_inverse_percent=%f.\n", m_lt_inv[i][j], lt_inverse_real[i][j], lt_inverse_percent[i][j]);
					passed = 1'b0;
				end else begin
					// $write("%t : pass lt_inverse i=%d j=%d\n", $realtime, i, j);
				end
			end
		end

		// CHECK INVERSE
		for ( int i=0 ; i<n ; i++ ) begin // inverse row
			for ( int j=0 ; j<n ; j++ ) begin // inverse column
				inverse_real[i][j] = real'(int'({{5{inverse[i][j][26]}}, inverse[i][j]}))/65536.0;
				inverse_error[i][j] = abs( inverse_real[i][j] - m_inverse[i][j] );
				inverse_percent[i][j] = abs( inverse_error[i][j] / m_inverse[i][j] );
				if (inverse_error[i][j]>abs_tol && inverse_percent[i][j]>rel_tol) begin
					$write("%t : fail inverse i=%d j=%d\n", $realtime, i, j);
					$write("m_inverse=%f; dut_result=%f; inverse_error=%f.\n", m_inverse[i][j], inverse_real[i][j], inverse_error[i][j]);
					$write("m_inverse=%f; dut_result=%f; inverse_percent=%f.\n", m_inverse[i][j], inverse_real[i][j], inverse_percent[i][j]);
					passed = 1'b0;
				end else begin
					// $write("%t : pass inverse i=%d j=%d\n", $realtime, i, j);
				end
			end
		end

		// CHECK DLS
		for ( int i=0 ; i<n ; i++ ) begin // dls row
			for ( int j=0 ; j<n ; j++ ) begin // dls column
				dls_real[i][j] = real'(int'({{5{dls[i][j][26]}}, dls[i][j]}))/65536.0;
				dls_error[i][j] = abs( dls_real[i][j] - m_dls[i][j] );
				dls_percent[i][j] = abs( dls_error[i][j] / m_dls[i][j] );
				if (dls_error[i][j]>abs_tol && dls_percent[i][j]>rel_tol) begin
					$write("%t : fail dls i=%d j=%d\n", $realtime, i, j);
					$write("m_dls=%f; dut_result=%f; dls_error=%f.\n", m_dls[i][j], dls_real[i][j], dls_error[i][j]);
					$write("m_dls=%f; dut_result=%f; dls_percent=%f.\n", m_dls[i][j], dls_real[i][j], dls_percent[i][j]);
					passed = 1'b0;
				end else begin
					// $write("%t : pass dls i=%d j=%d\n", $realtime, i, j);
				end
			end
		end

		// CHECK DELTA
		for ( int i=0 ; i<n ; i++ ) begin // delta row
			delta_real[i] = real'(int'({{5{delta[i][26]}}, delta[i]}))/65536.0;
			delta_error[i] = abs( delta_real[i] - m_delta[i] );
			delta_percent[i] = abs( delta_error[i] / m_delta[i] );
			if (delta_error[i]>abs_tol && delta_percent[i]>rel_tol) begin
				$write("%t : fail delta i=%d\n", $realtime, i);
				$write("m_delta=%f; dut_result=%f; delta_error=%f.\n", m_delta[i], delta_real[i], delta_error[i]);
				$write("m_delta=%f; dut_result=%f; delta_percent=%f.\n", m_delta[i], delta_real[i], delta_percent[i]);
				passed = 1'b0;
			end else begin
				// $write("%t : pass delta i=%d\n", $realtime, i);
			end
		end

		// CHECK DH_DYN_OUT
		for ( int joint=0 ; joint<n ; joint++ ) begin // param joint
			// for ( int param=0 ; param<4 ; param++ ) begin // dh param
			dh_dyn_out_real[joint]/*[param]*/ = real'(int'({{11{dh_dyn_out[joint]/*[param]*/[20]}}, dh_dyn_out[joint]/*[param]*/}))/65536.0;
			dh_dyn_out_error[joint]/*[param]*/ = abs( dh_dyn_out_real[joint]/*[param]*/ - m_dh_param[joint][THETA] );
			dh_dyn_out_percent[joint]/*[param]*/ = abs( dh_dyn_out_error[joint]/*[param]*/ / m_dh_param[joint][THETA] );
			if (dh_dyn_out_error[joint]/*[param]*/>abs_tol && dh_dyn_out_percent[joint]/*[param]*/>rel_tol) begin
				$write("%t : fail dh_dyn_out joint=%d\n", $realtime, joint);
				passed = 1'b0;
			end else begin
				$write("%t : pass dh_dyn_out joint=%d\n", $realtime, joint);
			end
			$write("m_dh_param=%f; dut_result=%f; dh_dyn_out_error=%f.\n", m_dh_param[joint][THETA], dh_dyn_out_real[joint]/*[param]*/, dh_dyn_out_error[joint]/*[param]*/);
			$write("m_dh_param=%f; dut_result=%f; dh_dyn_out_percent=%f.\n", m_dh_param[joint][THETA], dh_dyn_out_real[joint]/*[param]*/, dh_dyn_out_percent[joint]/*[param]*/);
			// end
		end

		if (passed) begin
			$display("%t : pass \n", $realtime);
		end else begin
			// $exit();
		end

	endfunction
endclass
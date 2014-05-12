// golden model class
class inverse_test;

	int n = 6;
	real m_lt [6][6];
	real m_lt_inv [6][6];
	real m_inverse [6][6];

	function real abs (real num); 
		abs = (num<0) ? -num : num; 
	endfunction

	function void update_inverse (
		real matrix [6][6]
	);

		// ZERO OUT THE MODELS
		for ( int row=0 ; row<n ; row++ ) begin
			for ( int col=0 ; col<n ; col++ ) begin
				m_lt[row][col] = 0.0;
				m_lt_inv[row][col] = 0.0;
				m_inverse[row][col] = 0.0;
			end
		end

		// CALCULATE LOWER TRIANGULAR MATRIX
		for ( int row=0 ; row<n ; row++ ) begin
			for ( int col=0 ; col<(row+1) ; col++ ) begin
				real s = 0.0;
				for ( int index=0 ; index<col ; index++ )
					s += m_lt[row][index] * m_lt[col][index];
				m_lt[row][col] = (row==col) ? $sqrt(matrix[row][col]-s) : (matrix[row][col]-s)/m_lt[col][col];
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

	endfunction

	function void check_inverse (
		logic [5:0] [5:0] [26:0] lt,
		logic [5:0] [5:0] [26:0] lt_inverse,
		logic [5:0] [5:0] [26:0] inverse
	);

		real abs_tol = 0.01;
		real rel_tol = 0.01;

		real lt_real[6][6];
		real lt_error[6][6];
		real lt_percent[6][6];

		real lt_inverse_real[6][6];
		real lt_inverse_error[6][6];
		real lt_inverse_percent[6][6];

		real inverse_real[6][6];
		real inverse_error[6][6];
		real inverse_percent[6][6];

		bit passed = 1'b1;

		// CHECK cholesky
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

		// CHECK lt_inverse
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

		// CHECK inverse
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

		if (passed) begin
			$display("%t : pass \n", $realtime);
		end else begin
			// $exit();
		end
	endfunction

endclass
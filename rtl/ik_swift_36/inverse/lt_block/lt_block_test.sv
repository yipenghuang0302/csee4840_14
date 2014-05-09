// golden model class
class lt_block_test;

	int n = 6;
	real m_lt_inv [6][6];

	function real abs (real num); 
		abs = (num<0) ? -num : num; 
	endfunction

	function void update_lt_block (
		real lt [6][6]
	);

		// zero out the model
		for ( int row=0 ; row<n ; row++ ) begin
			for ( int col=0 ; col<n ; col++ ) begin
				m_lt_inv[row][col] = 0.0;
			end
		end

		m_lt_inv[0][0] = 1.0 / lt[0][0];
		m_lt_inv[1][1] = 1.0 / lt[1][1];
		m_lt_inv[2][2] = 1.0 / lt[2][2];
		m_lt_inv[3][3] = 1.0 / lt[3][3];
		m_lt_inv[4][4] = 1.0 / lt[4][4];
		m_lt_inv[5][5] = 1.0 / lt[5][5];

		m_lt_inv[1][0] = -lt[1][0]*m_lt_inv[0][0] / lt[1][1];
		m_lt_inv[2][1] = -lt[2][1]*m_lt_inv[1][1] / lt[2][2];
		m_lt_inv[3][2] = -lt[3][2]*m_lt_inv[2][2] / lt[3][3];
		m_lt_inv[4][3] = -lt[4][3]*m_lt_inv[3][3] / lt[4][4];
		m_lt_inv[5][4] = -lt[5][4]*m_lt_inv[4][4] / lt[5][5];

		m_lt_inv[2][0] = ( -lt[2][1]*m_lt_inv[1][0] + -lt[2][0]*m_lt_inv[0][0] ) / lt[2][2];
		m_lt_inv[3][1] = ( -lt[3][2]*m_lt_inv[2][1] + -lt[3][1]*m_lt_inv[1][1] ) / lt[3][3];
		m_lt_inv[4][2] = ( -lt[4][3]*m_lt_inv[3][2] + -lt[4][2]*m_lt_inv[2][2] ) / lt[4][4];
		m_lt_inv[5][3] = ( -lt[5][4]*m_lt_inv[4][3] + -lt[5][3]*m_lt_inv[3][3] ) / lt[5][5];

		m_lt_inv[3][0] = ( -lt[3][2]*m_lt_inv[2][0] + -lt[3][1]*m_lt_inv[1][0] + -lt[3][0]*m_lt_inv[0][0] ) / lt[3][3];
		m_lt_inv[4][1] = ( -lt[4][3]*m_lt_inv[3][1] + -lt[4][2]*m_lt_inv[2][1] + -lt[4][1]*m_lt_inv[1][1] ) / lt[4][4];
		m_lt_inv[5][2] = ( -lt[5][4]*m_lt_inv[4][2] + -lt[5][3]*m_lt_inv[3][2] + -lt[5][2]*m_lt_inv[2][2] ) / lt[5][5];

		m_lt_inv[4][0] = ( -lt[4][3]*m_lt_inv[3][0] + -lt[4][2]*m_lt_inv[2][0] + -lt[4][1]*m_lt_inv[1][0] + -lt[4][0]*m_lt_inv[0][0] ) / lt[4][4];
		m_lt_inv[5][1] = ( -lt[5][4]*m_lt_inv[4][1] + -lt[5][3]*m_lt_inv[3][1] + -lt[5][2]*m_lt_inv[2][1] + -lt[5][1]*m_lt_inv[1][1] ) / lt[5][5];

		m_lt_inv[5][0] = ( -lt[5][4]*m_lt_inv[4][0] + -lt[5][3]*m_lt_inv[3][0] + -lt[5][2]*m_lt_inv[2][0] + -lt[5][1]*m_lt_inv[1][0] + -lt[5][0]*m_lt_inv[0][0] ) / lt[5][5];

	endfunction

	function void check_lt_block (
		logic [5:0] [5:0] [35:0] lt_inverse
	);

		real abs_tol = 0.01;
		real rel_tol = 0.01;

		real lt_inverse_real[6][6];
		real lt_inverse_error[6][6];
		real lt_inverse_percent[6][6];

		bit passed = 1'b1;

		// CHECK lt_inverse
		for ( int i=0 ; i<n ; i++ ) begin // lt_inverse row
			for ( int j=0 ; j<n ; j++ ) begin // lt_inverse column
				lt_inverse_real[i][j] = real'(longint'({{28{lt_inverse[i][j][35]}}, lt_inverse[i][j]}))/65536.0;
				lt_inverse_error[i][j] = abs( lt_inverse_real[i][j] - m_lt_inv[i][j] );
				lt_inverse_percent[i][j] = abs( lt_inverse_error[i][j] / m_lt_inv[i][j] );
				if (lt_inverse_error[i][j]>abs_tol && lt_inverse_percent[i][j]>rel_tol) begin
					$write("%t : fail lt_inverse i=%d j=%d\n", $realtime, i, j);
					$write("m_lt_inv=%f; dut_result=%f; lt_inverse_error=%f.\n", m_lt_inv[i][j], lt_inverse_real[i][j], lt_inverse_error[i][j]);
					$write("m_lt_inv=%f; dut_result=%f; lt_inverse_percent=%f.\n", m_lt_inv[i][j], lt_inverse_real[i][j], lt_inverse_percent[i][j]);
					passed = 1'b0;
				end else begin
					$write("%t : pass lt_inverse i=%d j=%d\n", $realtime, i, j);
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
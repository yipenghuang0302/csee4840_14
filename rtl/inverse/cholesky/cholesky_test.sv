// golden model class
class cholesky_test;

	int n = 6;
	real model_lt [6][6];

	function real abs (real num); 
		abs = (num<0) ? -num : num; 
	endfunction

	function void update_cholesky (
		real matrix [6][6]
	);

		for ( int row=0 ; row<n ; row++ ) begin
			for ( int col=0 ; col<n ; col++ ) begin
				model_lt[row][col] = 0.0;
			end
		end

		for ( int row=0 ; row<n ; row++ ) begin
			for ( int col=0 ; col<(row+1) ; col++ ) begin
				real s = 0.0;
				for ( int index=0 ; index<col ; index++ )
					s += model_lt[row][index] * model_lt[col][index];
				model_lt[row][col] = (row==col) ? $sqrt(matrix[row][col]-s) : (matrix[row][col]-s)/model_lt[col][col];
			end
		end

	endfunction

	function void check_cholesky (
		logic [5:0] [5:0] [26:0] lt
	);

		real abs_tol = 0.05;
		real rel_tol = 0.05;

		real lt_real[6][6];
		real lt_error[6][6];
		real lt_percent[6][6];

		bit passed = 1'b1;

		// CHECK cholesky
		for ( int i=0 ; i<n ; i++ ) begin // cholesky row
			for ( int j=0 ; j<n ; j++ ) begin // cholesky column
				lt_real[i][j] = real'(int'({{5{lt[i][j][26]}}, lt[i][j]}))/256.0;
				lt_error[i][j] = abs( lt_real[i][j] - model_lt[i][j] );
				lt_percent[i][j] = abs( lt_error[i][j] / model_lt[i][j] );
				if (lt_error[i][j]>abs_tol && lt_percent[i][j]>rel_tol) begin
					$write("%t : fail cholesky i=%d j=%d\n", $realtime, i, j);
					$write("model_lt=%f; dut_result=%f; lt_error=%f.\n", model_lt[i][j], lt_real[i][j], lt_error[i][j]);
					$write("model_lt=%f; dut_result=%f; lt_percent=%f.\n", model_lt[i][j], lt_real[i][j], lt_percent[i][j]);
					passed = 1'b0;
				end else begin
					$write("%t : pass cholesky i=%d j=%d\n", $realtime, i, j);
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
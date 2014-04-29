// golden model class
class inverse_test;

	int n = 3;

	real model_lt [3][3];
	real model_inverse [3][3];

	function real abs (real num); 
		abs = (num<0) ? -num : num; 
	endfunction

	function void update_inverse (
		real matrix [3][3]
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

		for ( int row=0 ; row<n ; row++ ) begin
			for ( int col=0 ; col<n ; col++ ) begin
				model_inverse[row][col] = model_lt[row][col];
			end
		end

	endfunction

	function void check_inverse (
		logic [2:0] [2:0] [26:0] inverse
	);

		real abs_tol = 0.01;
		real rel_tol = 0.01;

		real inverse_real[3][3];
		real inverse_error[3][3];
		real inverse_percent[3][3];

		bit passed = 1'b1;

		// CHECK INVERSE
		for ( int i=0 ; i<n ; i++ ) begin // inverse row
			for ( int j=0 ; j<n ; j++ ) begin // inverse column
				inverse_real[i][j] = real'(int'({{5{inverse[i][j][26]}}, inverse[i][j]}))/256.0;
				inverse_error[i][j] = abs( inverse_real[i][j] - model_inverse[i][j] );
				inverse_percent[i][j] = abs( inverse_error[i][j] / model_inverse[i][j] );
				if (inverse_error[i][j]>abs_tol && inverse_percent[i][j]>rel_tol) begin
					$write("%t : fail inverse i=%d j=%d\n", $realtime, i, j);
					$write("model_inverse=%f; dut_result=%f; inverse_error=%f.\n", model_inverse[i][j], inverse_real[i][j], inverse_error[i][j]);
					$write("model_inverse=%f; dut_result=%f; inverse_percent=%f.\n", model_inverse[i][j], inverse_real[i][j], inverse_percent[i][j]);
					passed = 1'b0;
				end else begin
					$write("%t : pass inverse i=%d j=%d\n", $realtime, i, j);
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
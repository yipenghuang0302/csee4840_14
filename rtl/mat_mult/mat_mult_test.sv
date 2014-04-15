// golden model class
class mat_mult_test;

	int n = 2;

	real model_result[2][2];

	function real abs (real num); 
	   abs = (num<0) ? -num : num; 
	endfunction

	function void update_mat_mult (
		real dataa[2][2],
		real datab[2][2]
	);

		for (int i=0; i<n; i++) begin // product row
			for (int j=0; j<n; j++) begin // product column
				model_result[i][j] = 0.0;
				for (int k=0; k<n; k++) begin // inner term
					model_result[i][j] += dataa[i][k] * datab[k][j];
				end
			end
		end

	endfunction

	function void check_mat_mult (
		logic [1:0] [1:0] [26:0] dut_result
	);

		real abs_tol = 0.50;
		real rel_tol = 0.03;
		real real_result[2][2];
		real error[2][2];
		real percent[2][2];
		bit passed = 1'b1;

		for (int i=0; i<n; i++) begin // product row
			for (int j=0; j<n; j++) begin // product column
				real_result[i][j] = real'(int'({{5{dut_result[i][j][26]}}, dut_result[i][j]}))/256.0;
				error[i][j] = abs( real_result[i][j] - model_result[i][j] );
 				percent[i][j] = error[i][j] / model_result[i][j];
				if (error[i][j]>abs_tol) begin
					$write("%t : fail mat_mult i=%d j=%d\n", $realtime, i, j);
					$write("model_result=%f; dut_result=%f; error=%f.\n", model_result[i][j], real_result[i][j], error[i][j]);
					passed = 1'b0;
				end
				if (percent[i][j]>rel_tol) begin
					$write("%t : fail mat_mult i=%d j=%d\n", $realtime, i, j);
					$write("model_result=%f; dut_result=%f; percent=%f.\n", model_result[i][j], real_result[i][j], percent[i][j]);
					passed = 1'b0;
				end
			end
		end

		if (passed) begin
			// $display("%t : pass \n", $realtime);
		end else begin
			// $exit();
		end
	endfunction

endclass
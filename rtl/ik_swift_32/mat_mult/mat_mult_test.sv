// golden model class
class mat_mult_test;

	int n = 6;

	// if testing in parallel multiplier mode
	int pipeline_depth = 7;
	real model_result[7][6][6];

	// if testing in matrix multiplier mode
	// int pipeline_depth = 2;
	// real model_result[2][6][6];

	function real abs (real num); 
	   abs = (num<0) ? -num : num; 
	endfunction

	function void update_mat_mult (
		bit mat_mode,
		real dataa[6][6],
		real datab[6][6]
	);

		for ( int i=0 ; i<pipeline_depth-1 ; i++ ) begin // advance the pipeline
			model_result[i] = model_result[i+1];
		end

		for (int i=0; i<n; i++) begin // product row
			for (int j=0; j<n; j++) begin // product column
				if (mat_mode) begin // matrix multiplier mode
					model_result[pipeline_depth-1][i][j] = 0.0;
					for (int k=0; k<n; k++) begin // inner term
						model_result[pipeline_depth-1][i][j] += dataa[i][k] * datab[k][j];
					end
				end else begin // parallel multiplier mode
					model_result[pipeline_depth-1][i][j] = dataa[i][j] * datab[i][j];;
				end
			end
		end

	endfunction

	function void check_mat_mult (
		logic [5:0] [5:0] [35:0] dut_result
	);

		real abs_tol = 0.00002;
		real rel_tol = 0.0001;
		real real_result[6][6];
		real error[6][6];
		real percent[6][6];
		bit passed = 1'b1;

		for (int i=0; i<n; i++) begin // product row
			for (int j=0; j<n; j++) begin // product column
				real_result[i][j] = real'(longint'({{28{dut_result[i][j][35]}}, dut_result[i][j]}))/65536.0;
				error[i][j] = abs( real_result[i][j] - model_result[0][i][j] );
 				percent[i][j] = error[i][j] / model_result[0][i][j];
				// if (error[i][j]>abs_tol) begin
				// 	$write("%t : fail mat_mult i=%d j=%d\n", $realtime, i, j);
				// 	$write("model_result=%f; dut_result=%f; error=%f.\n", model_result[0][i][j], real_result[i][j], error[i][j]);
				// 	passed = 1'b0;
				// end
				if (percent[i][j]>rel_tol) begin
					$write("%t : fail mat_mult i=%d j=%d\n", $realtime, i, j);
					$write("model_result=%f; dut_result=%f; percent=%f.\n", model_result[0][i][j], real_result[i][j], percent[i][j]);
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
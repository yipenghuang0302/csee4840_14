// golden model class
class array_div_test;

	int n = 6;
	int pipeline_depth = 6;
	real model_dividends[6][6];
	real model_divisor[6];
	real model_result[6][6];

	function real abs (real num); 
	   abs = (num<0) ? -num : num; 
	endfunction

	function void update_array_div (
		real dividends[6],
		real divisor
	);

		for ( int i=0 ; i<pipeline_depth-1 ; i++ ) begin // advance the pipeline
			model_dividends[i] = model_dividends[i+1];
			model_divisor[i] = model_divisor[i+1];
			model_result[i] = model_result[i+1];
		end

		model_divisor[pipeline_depth-1] = divisor;

		for (int i=0; i<n; i++) begin // product row
			model_dividends[pipeline_depth-1][i] = dividends[i];
			model_result[pipeline_depth-1][i] = dividends[i] / divisor;
		end

	endfunction

	function void check_array_div (
		logic [5:0] [26:0] dut_result
	);

		real abs_tol = 0.001;
		real rel_tol = 0.001;
		real real_result[6];
		real error[6];
		real percent[6];
		bit passed = 1'b1;

		for (int i=0; i<n; i++) begin // product row
			real_result[i] = real'(int'({{5{dut_result[i][26]}}, dut_result[i]}))/65536.0;
			error[i] = abs( real_result[i] - model_result[0][i] );
			percent[i] = abs( error[i] / model_result[0][i] );
			if ( error[i]>abs_tol && percent[i]>rel_tol ) begin
				$write("%t : fail array_div i=%d\n", $realtime, i);
				$write("model_dividends=%f.\n", model_dividends[0][i],);
				$write("model_divisor=%f.\n", model_divisor[0],);
				$write("model_result=%f; dut_result=%f; error=%f.\n", model_result[0][i], real_result[i], error[i]);
				$write("model_result=%f; dut_result=%f; percent=%f.\n", model_result[0][i], real_result[i], percent[i]);
				passed = 1'b0;
			end
		end

		if (passed) begin
			$display("%t : pass \n", $realtime);
		end else begin
			// $exit();
		end
	endfunction

endclass
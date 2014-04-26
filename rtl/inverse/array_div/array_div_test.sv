// golden model class
class array_div_test;

	int n = 5;
	int pipeline_depth = 6;
	real model_numer[6][5];
	real model_denom[6];
	real model_result[6][5];

	function real abs (real num); 
	   abs = (num<0) ? -num : num; 
	endfunction

	function void update_array_div (
		real numer[5],
		real denom
	);

		for ( int i=0 ; i<pipeline_depth-1 ; i++ ) begin // advance the pipeline
			model_numer[i] = model_numer[i+1];
			model_denom[i] = model_denom[i+1];
			model_result[i] = model_result[i+1];
		end

		model_denom[pipeline_depth-1] = denom;

		for (int i=0; i<n; i++) begin // product row
			model_numer[pipeline_depth-1][i] = numer[i];
			model_result[pipeline_depth-1][i] = numer[i] / denom;
		end

	endfunction

	function void check_array_div (
		logic [4:0] [26:0] dut_result
	);

		real abs_tol = 0.01;
		real rel_tol = 0.01;
		real real_result[5];
		real error[5];
		real percent[5];
		bit passed = 1'b1;

		for (int i=0; i<n; i++) begin // product row
			real_result[i] = real'(int'({{5{dut_result[i][26]}}, dut_result[i]}))/256.0;
			error[i] = abs( real_result[i] - model_result[0][i] );
			percent[i] = abs( error[i] / model_result[0][i] );
			if ( error[i]>abs_tol && percent[i]>rel_tol ) begin
				$write("%t : fail array_div i=%d\n", $realtime, i);
				$write("model_numer=%f.\n", model_numer[0][i],);
				$write("model_denom=%f.\n", model_denom[0],);
				$write("model_result=%f; dut_result=%f; error=%f.\n", model_result[0][i], real_result[i], error[i]);
				$write("model_result=%f; dut_result=%f; percent=%f.\n", model_result[0][i], real_result[i], percent[i]);
				passed = 1'b0;
			end
		end

		if (passed) begin
			// $display("%t : pass \n", $realtime);
		end else begin
			// $exit();
		end
	endfunction

endclass
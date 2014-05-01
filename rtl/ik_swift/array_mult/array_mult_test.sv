// golden model class
class array_mult_test;

	int n = 15;
	int pipeline_depth = 5;
	real model_result[5][15];

	function real abs (real num); 
	   abs = (num<0) ? -num : num; 
	endfunction

	function void update_array_mult (
		real dataa[15],
		real datab[15]
	);

		for ( int i=0 ; i<pipeline_depth-1 ; i++ ) begin // advance the pipeline
			model_result[i] = model_result[i+1];
		end

		for (int i=0; i<n; i++) begin // product row
			model_result[pipeline_depth-1][i] = dataa[i] * datab[i];;
		end

	endfunction

	function void check_array_mult (
		logic [14:0] [26:0] dut_result
	);

		real abs_tol = 0.01;
		real rel_tol = 0.01;
		real real_result[15];
		real error[15];
		real percent[15];
		bit passed = 1'b1;

		for (int i=0; i<n; i++) begin // product row
			real_result[i] = real'(int'({{5{dut_result[i][26]}}, dut_result[i]}))/256.0;
			error[i] = abs( real_result[i] - model_result[0][i] );
				percent[i] = error[i] / model_result[0][i];
			if ( error[i]>abs_tol && percent[i]>rel_tol ) begin
				$write("%t : fail array_mult i=%d\n", $realtime, i);
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
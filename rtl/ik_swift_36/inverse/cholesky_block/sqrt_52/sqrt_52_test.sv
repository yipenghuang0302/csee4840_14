// golden model class
class sqrt_52_test;

	int pipeline_depth = 6;
	real model_radical[6];
	real model_q[6];

	function real abs (real num); 
	   abs = (num<0) ? -num : num; 
	endfunction

	function void update_sqrt_52 (
		real radical
	);

		for ( int i=0 ; i<pipeline_depth-1 ; i++ ) begin // advance the pipeline
			model_radical[i] = model_radical[i+1];
			model_q[i] = model_q[i+1];
		end

		model_radical[pipeline_depth-1] = radical;
		model_q[pipeline_depth-1] = $sqrt(radical);

	endfunction

	function void check_sqrt_52 (
		logic [35:0] dut_q
	);

		real abs_tol = 0.00001;
		real rel_tol = 0.00001;
		real real_q;
		real error;
		real percent;

		real_q = real'(longint'({{28{dut_q[35]}}, dut_q}))/65536.0;
		error = abs( real_q - model_q[0] );
		percent = abs( error / model_q[0] );
		if ( error>abs_tol && percent>rel_tol ) begin
			$write("%t : fail sqrt_52\n", $realtime);
			$write("model_radical=%f.\n", model_radical[0],);
			$write("model_q=%f; dut_q=%f; error=%f.\n", model_q[0], real_q, error);
			$write("model_q=%f; dut_q=%f; percent=%f.\n", model_q[0], real_q, percent);
			// $exit();
		end else begin
			// $display("%t : pass \n", $realtime);
		end

	endfunction

endclass
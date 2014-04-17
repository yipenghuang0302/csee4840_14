// golden model class
class sincos_test;

	int pipeline_depth = 23;
	real model_angle[23];
	real model_sin[23];
	real model_cos[23];

	function void update_sincos (
		real angle
	);

		for ( int i=0 ; i<pipeline_depth-1 ; i++ ) begin
			model_angle[i] = model_angle[i+1];
			model_sin[i] = model_sin[i+1];
			model_cos[i] = model_cos[i+1];
		end

		model_angle[pipeline_depth-1] = angle;
		model_sin[pipeline_depth-1] = $sin(angle);
		model_cos[pipeline_depth-1] = $cos(angle);

	endfunction

	function void check_sincos (
		logic [26:0] dut_sin,
		logic [26:0] dut_cos
	);
		int int_sin = int'({{5{dut_sin[26]}}, dut_sin});
		int int_cos = int'({{5{dut_cos[26]}}, dut_cos});
		real real_sin = real'(int_sin)/256.0;
		real real_cos = real'(int_cos)/256.0;
		real sin_error = real_sin-model_sin[0];
		real cos_error = real_cos-model_cos[0];
		bit passed;

		sin_error = (sin_error<0) ? -sin_error : sin_error;
		cos_error = (cos_error<0) ? -cos_error : cos_error;

		passed = (
			sin_error <= 0.015
			&& cos_error <= 0.015
		);

		if (passed) begin
			// $display("%t : pass \n", $realtime);
		end else begin
			$write("%t : fail sincos angle=%f\n", $realtime, model_angle[0]);
			$write("model_sin=%f; dut_sin=%f; sin_error=%f.\n", model_sin[0], real_sin, sin_error);
			$write("model_cos=%f; dut_cos=%f; cos_error=%f.\n", model_cos[0], real_cos, cos_error);
			$exit();
		end
	endfunction

endclass
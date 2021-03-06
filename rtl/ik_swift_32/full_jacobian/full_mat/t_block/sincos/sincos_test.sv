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
		logic [20:0] dut_sin,
		logic [20:0] dut_cos
	);
		int int_sin = int'({{11{dut_sin[20]}}, dut_sin});
		int int_cos = int'({{11{dut_cos[20]}}, dut_cos});
		real real_sin = real'(int_sin)/65536.0;
		real real_cos = real'(int_cos)/65536.0;
		real sin_error = real_sin-model_sin[0];
		real cos_error = real_cos-model_cos[0];
		bit passed;

		sin_error = (sin_error<0) ? -sin_error : sin_error;
		cos_error = (cos_error<0) ? -cos_error : cos_error;

		passed = (
			sin_error <= 0.0015
			&& cos_error <= 0.0015
		);

		if (passed) begin
			// $display("%t : pass \n", $realtime);
			// $write("model_sin=%f; dut_sin=%f; sin_error=%f.\n", model_sin[0], real_sin, sin_error);
			// $write("model_cos=%f; dut_cos=%f; cos_error=%f.\n", model_cos[0], real_cos, cos_error);
		end else begin
			$write("%t : fail sincos angle=%f\n", $realtime, model_angle[0]);
			$write("model_sin=%f; dut_sin=%f; sin_error=%f.\n", model_sin[0], real_sin, sin_error);
			$write("model_cos=%f; dut_cos=%f; cos_error=%f.\n", model_cos[0], real_cos, cos_error);
			$exit();
		end
	endfunction

endclass
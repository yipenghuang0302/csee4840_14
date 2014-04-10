// golden model class
class sincos_test;

	real model_angle;
	real model_sin;
	real model_cos;

	function void update_sincos (
		real angle
	);

		model_angle = angle;
		model_sin = $sin(angle);
		model_cos = $cos(angle);
		// $display("sanity check error = %f", model_sin*model_sin+model_cos*model_cos-1);

	endfunction

	function void check_sincos (
		logic [26:0] dut_sin,
		logic [26:0] dut_cos
	);
		int int_sin = int'({{5{dut_sin[26]}}, dut_sin});
		int int_cos = int'({{5{dut_cos[26]}}, dut_cos});
		real real_sin = real'(int_sin)/256.0;
		real real_cos = real'(int_cos)/256.0;
		real sin_error = real_sin-model_sin;
		real cos_error = real_cos-model_cos;
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
			$write("%t : fail sincos angle=%f\n", $realtime, model_angle);
			$write("model_sin=%f; dut_sin=%f; sin_error=%f.\n", model_sin, real_sin, sin_error);
			$write("model_cos=%f; dut_cos=%f; cos_error=%f.\n", model_cos, real_cos, cos_error);
			$exit();
		end
	endfunction

endclass
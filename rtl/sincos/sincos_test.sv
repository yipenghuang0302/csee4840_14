// golden model class
class sincos_test;

	logic [26:0] angle;
	shortreal model_sin;
	shortreal model_cos;

	function void update_sincos (
		shortreal angle
	);

		model_sin = $sin(angle);
		model_cos = $cos(angle);
		$display("model_sincos error = %f", model_sin*model_sin+model_cos*model_cos-1);

	endfunction

	function void check_sincos (
		logic [26:0] dut_sin,
		logic [26:0] dut_cos
	);
		shortreal unfixed_sin = dut_sin>>8;
		shortreal unfixed_cos = dut_cos>>8;
		shortreal sin_error = unfixed_sin-model_sin;
		shortreal cos_error = unfixed_cos-model_cos;
		bit passed;

		sin_error = (sin_error<0) ? -sin_error : sin_error;
		cos_error = (cos_error<0) ? -cos_error : cos_error;
		
		passed = (
			sin_error <= 0.010459237 &&
			cos_error <= 0.010459237
		);

		if (passed) begin
			$display("%t : pass \n", $realtime);
		end else begin
			$write("%t : fail sincos\n", $realtime);
			$write("model_sin=%f; dut_sin=%f.\n", model_sin, unfixed_sin);
			$write("model_cos=%f; dut_cos=%f.\n", model_cos, unfixed_cos);
			$exit();
		end
	endfunction

endclass
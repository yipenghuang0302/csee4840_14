// golden model class
class t_response_test;

	bit model_ctr_exp;
	bit [0:17] model_miso_response;
	bit [0:1] exec_done_response;

	function void update_t_response (
		bit exec_done,
		bit [0:15] data_tile,
		bit ctr_exp,
		bit [0:7] exp_tile
	);

		model_ctr_exp = ctr_exp;
		exec_done_response = exec_done ? 2'b01 : 2'b00;
		model_miso_response = ctr_exp ? {exp_tile, {10'b0}} : {exec_done_response, data_tile};

	endfunction

	function bit [0:17] get_miso_response();
		return model_miso_response;
	endfunction

	function void check_t_response (
		bit [0:17] miso_response,
		bit verbose
	);

		bit passed = (
			miso_response==model_miso_response
		);

		if (passed) begin
			if (verbose) begin
				$display("%t : pass \n", $realtime);
			end
		end else begin
			$write("%t : fail t_response\n", $realtime);
			$write("bench_miso_response=%b; dut_miso_response=%b.\n", model_miso_response, miso_response);
			$exit();
		end
	endfunction

endclass
// golden model class
class mat_mult_test;

	real model_result[6][6];

	function real abs (real num); 
	   abs = (num<0) ? -num : num; 
	endfunction

	function void update_mat_mult (
		real dataa[6][6],
		real datab[6][6]
	);

		for (int i=0; i<6; i++) begin // product row
			for (int j=0; j<6; j++) begin // product column
				model_result[i][j] = 0.0;
				for (int k=0; k<6; k++) begin // inner term
					model_result[i][j] += dataa[i][k] * datab[k][j];
				end
			end
		end

	endfunction

	function void check_mat_mult (
		logic [26:0] dut_t_mat_00,
		logic [26:0] dut_t_mat_01,
		logic [26:0] dut_t_mat_02,
		logic [26:0] dut_t_mat_03,

		logic [26:0] dut_t_mat_10,
		logic [26:0] dut_t_mat_11,
		logic [26:0] dut_t_mat_12,
		logic [26:0] dut_t_mat_13,

		logic [26:0] dut_t_mat_20,
		logic [26:0] dut_t_mat_21,
		logic [26:0] dut_t_mat_22,
		logic [26:0] dut_t_mat_23,

		logic [26:0] dut_t_mat_30,
		logic [26:0] dut_t_mat_31,
		logic [26:0] dut_t_mat_32,
		logic [26:0] dut_t_mat_33
	);

		real abs_tol = 0.89;
		real rel_tol = 0.064;

		real real_t_mat_00 = real'(int'({{5{dut_t_mat_00[26]}}, dut_t_mat_00}))/256.0;
		real real_t_mat_01 = real'(int'({{5{dut_t_mat_01[26]}}, dut_t_mat_01}))/256.0;
		real real_t_mat_02 = real'(int'({{5{dut_t_mat_02[26]}}, dut_t_mat_02}))/256.0;
		real real_t_mat_03 = real'(int'({{5{dut_t_mat_03[26]}}, dut_t_mat_03}))/256.0;

		real real_t_mat_10 = real'(int'({{5{dut_t_mat_10[26]}}, dut_t_mat_10}))/256.0;
		real real_t_mat_11 = real'(int'({{5{dut_t_mat_11[26]}}, dut_t_mat_11}))/256.0;
		real real_t_mat_12 = real'(int'({{5{dut_t_mat_12[26]}}, dut_t_mat_12}))/256.0;
		real real_t_mat_13 = real'(int'({{5{dut_t_mat_13[26]}}, dut_t_mat_13}))/256.0;

		real real_t_mat_20 = real'(int'({{5{dut_t_mat_20[26]}}, dut_t_mat_20}))/256.0;
		real real_t_mat_21 = real'(int'({{5{dut_t_mat_21[26]}}, dut_t_mat_21}))/256.0;
		real real_t_mat_22 = real'(int'({{5{dut_t_mat_22[26]}}, dut_t_mat_22}))/256.0;
		real real_t_mat_23 = real'(int'({{5{dut_t_mat_23[26]}}, dut_t_mat_23}))/256.0;

		real real_t_mat_30 = real'(int'({{5{dut_t_mat_30[26]}}, dut_t_mat_30}))/256.0;
		real real_t_mat_31 = real'(int'({{5{dut_t_mat_31[26]}}, dut_t_mat_31}))/256.0;
		real real_t_mat_32 = real'(int'({{5{dut_t_mat_32[26]}}, dut_t_mat_32}))/256.0;
		real real_t_mat_33 = real'(int'({{5{dut_t_mat_33[26]}}, dut_t_mat_33}))/256.0;

		real error_00 = abs( real_t_mat_00 - m_mat_00 );
		real error_01 = abs( real_t_mat_01 - m_mat_01 );
		real error_02 = abs( real_t_mat_02 - m_mat_02 );
		real error_03 = abs( real_t_mat_03 - m_mat_03 );

		real error_10 = abs( real_t_mat_10 - m_mat_10 );
		real error_11 = abs( real_t_mat_11 - m_mat_11 );
		real error_12 = abs( real_t_mat_12 - m_mat_12 );
		real error_13 = abs( real_t_mat_13 - m_mat_13 );

		real error_20 = abs( real_t_mat_20 - m_mat_20 );
		real error_21 = abs( real_t_mat_21 - m_mat_21 );
		real error_22 = abs( real_t_mat_22 - m_mat_22 );
		real error_23 = abs( real_t_mat_23 - m_mat_23 );

		real error_30 = abs( real_t_mat_30 - m_mat_30 );
		real error_31 = abs( real_t_mat_31 - m_mat_31 );
		real error_32 = abs( real_t_mat_32 - m_mat_32 );
		real error_33 = abs( real_t_mat_33 - m_mat_33 );

		real percent_00 = error_00 / m_mat_00;
		real percent_01 = error_01 / m_mat_01;
		real percent_02 = error_02 / m_mat_02;
		real percent_03 = error_03 / m_mat_03;

		real percent_10 = error_10 / m_mat_10;
		real percent_11 = error_11 / m_mat_11;
		real percent_12 = error_12 / m_mat_12;
		real percent_13 = error_13 / m_mat_13;

		real percent_20 = error_20 / m_mat_20;
		real percent_21 = error_21 / m_mat_21;
		real percent_22 = error_22 / m_mat_22;
		real percent_23 = error_23 / m_mat_23;

		real percent_30 = error_30 / m_mat_30;
		real percent_31 = error_31 / m_mat_31;
		real percent_32 = error_32 / m_mat_32;
		real percent_33 = error_33 / m_mat_33;

		bit passed;

		passed = (
			(error_00 <= abs_tol || percent_00 <= rel_tol) &&
			(error_01 <= abs_tol || percent_01 <= rel_tol) &&
			(error_02 <= abs_tol || percent_02 <= rel_tol) &&
			(error_03 <= abs_tol || percent_03 <= rel_tol) &&

			(error_10 <= abs_tol || percent_10 <= rel_tol) &&
			(error_11 <= abs_tol || percent_11 <= rel_tol) &&
			(error_12 <= abs_tol || percent_12 <= rel_tol) &&
			(error_13 <= abs_tol || percent_13 <= rel_tol) &&

			(error_20 <= abs_tol || percent_20 <= rel_tol) &&
			(error_21 <= abs_tol || percent_21 <= rel_tol) &&
			(error_22 <= abs_tol || percent_22 <= rel_tol) &&
			(error_23 <= abs_tol || percent_23 <= rel_tol) &&

			(error_30 <= abs_tol || percent_30 <= rel_tol) &&
			(error_31 <= abs_tol || percent_31 <= rel_tol) &&
			(error_32 <= abs_tol || percent_32 <= rel_tol) &&
			(error_33 <= abs_tol || percent_33 <= rel_tol)
		);

		if (passed) begin
			// $display("%t : pass \n", $realtime);
		end else begin
			$write("%t : fail mat_mult\n", $realtime);
			$write("m_a=%f\n", m_a);
			$write("m_d=%f\n", m_d);
			$write("m_alpha=%f\n", m_alpha);
			$write("m_theta=%f\n", m_theta);
			$write("m_mat_00=%f; dut_mat_00=%f; mat_00_error=%f.\n", m_mat_00, real_t_mat_00, error_00);
			$write("m_mat_01=%f; dut_mat_01=%f; mat_01_error=%f.\n", m_mat_01, real_t_mat_01, error_01);
			$write("m_mat_02=%f; dut_mat_02=%f; mat_02_error=%f.\n", m_mat_02, real_t_mat_02, error_02);
			$write("m_mat_03=%f; dut_mat_03=%f; mat_03_error=%f.\n", m_mat_03, real_t_mat_03, error_03);

			$write("m_mat_10=%f; dut_mat_10=%f; mat_10_error=%f.\n", m_mat_10, real_t_mat_10, error_10);
			$write("m_mat_11=%f; dut_mat_11=%f; mat_11_error=%f.\n", m_mat_11, real_t_mat_11, error_11);
			$write("m_mat_12=%f; dut_mat_12=%f; mat_12_error=%f.\n", m_mat_12, real_t_mat_12, error_12);
			$write("m_mat_13=%f; dut_mat_13=%f; mat_13_error=%f.\n", m_mat_13, real_t_mat_13, error_13);

			$write("m_mat_20=%f; dut_mat_20=%f; mat_20_error=%f.\n", m_mat_20, real_t_mat_20, error_20);
			$write("m_mat_21=%f; dut_mat_21=%f; mat_21_error=%f.\n", m_mat_21, real_t_mat_21, error_21);
			$write("m_mat_22=%f; dut_mat_22=%f; mat_22_error=%f.\n", m_mat_22, real_t_mat_22, error_22);
			$write("m_mat_23=%f; dut_mat_23=%f; mat_23_error=%f.\n", m_mat_23, real_t_mat_23, error_23);

			$write("m_mat_30=%f; dut_mat_30=%f; mat_30_error=%f.\n", m_mat_30, real_t_mat_30, error_30);
			$write("m_mat_31=%f; dut_mat_31=%f; mat_31_error=%f.\n", m_mat_31, real_t_mat_31, error_31);
			$write("m_mat_32=%f; dut_mat_32=%f; mat_32_error=%f.\n", m_mat_32, real_t_mat_32, error_32);
			$write("m_mat_33=%f; dut_mat_33=%f; mat_33_error=%f.\n", m_mat_33, real_t_mat_33, error_33);

			$exit();
		end
	endfunction

endclass
// the timescale directive tells the compiler the clock period and the
// precision that needs to be displayed in the VCD dump file

`timescale 1ns/1ps
`include "ik_swift_interface.sv"
`include "ik_swift.sv"
`include "bench.sv"

`include "full_jacobian/full_jacobian_interface.sv"
`include "full_jacobian/full_jacobian.sv"
`include "full_jacobian/jacobian/jacobian_interface.sv"
`include "full_jacobian/jacobian/jacobian.sv"
`include "full_jacobian/full_mat/full_mat_interface.sv"
`include "full_jacobian/full_mat/full_mat.sv"
`include "full_jacobian/full_mat/t_block/t_block_interface.sv"
`include "full_jacobian/full_mat/t_block/t_block.sv"
`include "full_jacobian/full_mat/t_block/sincos/sincos_interface.sv"
`include "full_jacobian/full_mat/t_block/sincos/sincos.sv"
`include "full_jacobian/full_mat/t_block/sincos/sin.sv"
`include "full_jacobian/full_mat/t_block/sincos/cos.sv"
`include "full_jacobian/full_mat/t_block/sincos/mult_27_coeff_104/mult_27_coeff_104.v"
`include "full_jacobian/full_mat/t_block/sincos/mult_27_coeff_326/mult_27_coeff_326.v"
`include "full_jacobian/full_mat/t_block/sincos/mult_27_coeff_58/mult_27_coeff_58.v"

`include "inverse/inverse_interface.sv"
`include "inverse/inverse.sv"
`include "inverse/cholesky/cholesky_interface.sv"
`include "inverse/cholesky/cholesky.sv"
`include "inverse/cholesky/sqrt_27/sqrt_27_interface.sv"
`include "inverse/cholesky/sqrt_27/sqrt_27.v"
`include "inverse/lt_inverse/lt_inverse_interface.sv"
`include "inverse/lt_inverse/lt_inverse.sv"
`include "inverse/array_div/array_div_interface.sv"
`include "inverse/array_div/array_div.sv"
`include "inverse/array_div/div_27/div_27.v"

`include "mat_mult/mat_mult_interface.sv"
`include "mat_mult/mat_mult.sv"
`include "mat_mult/mult_array.sv"
`include "array_mult/array_mult_interface.sv"
`include "array_mult/array_mult.sv"

`include "mult_27/mult_27.v"
`include "sim_models/lpm_mult.v"
`include "sim_models/mult_block.v"
`include "sim_models/addsub_block.v"
`include "sim_models/pipeline_internal_fv.v"
`include "sim_models/dffep.v"
`include "sim_models/altera_mf.v"
`include "sim_models/220model.v"

module ik_swift_top ();

	logic clk = 1'b0;
	always #1 clk = ~clk;

	initial $vcdpluson;

	ifc_ik_swift ifc_ik_swift (clk);
	ik_swift_tb ik_swift_tb (ifc_ik_swift.ik_swift_tb);
	ik_swift ik_swift (ifc_ik_swift.ik_swift);

endmodule
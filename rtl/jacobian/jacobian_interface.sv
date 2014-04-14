/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

interface ifc_jacobian (
	input logic clk
);

//Global clock cycle counter
logic [8:0] count;

//Which joint we're on
logic [2:0] joint;

//Base joint's axis of rotation/translation
logic [26:0] z_0;
logic [26:0] z_1;
logic [26:0] z_2;

//Current position of end effector
logic [26:0] s_0;
logic [26:0] s_1;
logic [26:0] s_2;

//T block
logic [26:0] t_matrix_00;
logic [26:0] t_matrix_01;
logic [26:0] t_matrix_02;
logic [26:0] t_matrix_03;

logic [26:0] t_matrix_10;
logic [26:0] t_matrix_11;
logic [26:0] t_matrix_12;
logic [26:0] t_matrix_13;

logic [26:0] t_matrix_20;
logic [26:0] t_matrix_21;
logic [26:0] t_matrix_22;
logic [26:0] t_matrix_23;

logic [26:0] t_matrix_30;
logic [26:0] t_matrix_31;
logic [26:0] t_matrix_32;
logic [26:0] t_matrix_33;

//Jacobian
logic [26:0] j_matrix_00;
logic [26:0] j_matrix_01;
logic [26:0] j_matrix_02;
logic [26:0] j_matrix_03;
logic [26:0] j_matrix_04;
logic [26:0] j_matrix_05;

logic [26:0] j_matrix_10;
logic [26:0] j_matrix_11;
logic [26:0] j_matrix_12;
logic [26:0] j_matrix_13;
logic [26:0] j_matrix_14;
logic [26:0] j_matrix_15;

logic [26:0] j_matrix_20;
logic [26:0] j_matrix_21;
logic [26:0] j_matrix_22;
logic [26:0] j_matrix_23;
logic [26:0] j_matrix_24;
logic [26:0] j_matrix_25;

logic [26:0] j_matrix_30;
logic [26:0] j_matrix_31;
logic [26:0] j_matrix_32;
logic [26:0] j_matrix_33;
logic [26:0] j_matrix_34;
logic [26:0] j_matrix_35;

logic [26:0] j_matrix_40;
logic [26:0] j_matrix_41;
logic [26:0] j_matrix_42;
logic [26:0] j_matrix_43;
logic [26:0] j_matrix_44;
logic [26:0] j_matrix_45;

logic [26:0] j_matrix_50;
logic [26:0] j_matrix_51;
logic [26:0] j_matrix_52;
logic [26:0] j_matrix_53;
logic [26:0] j_matrix_54;
logic [26:0] j_matrix_55;

//Output to multipliers
logic [5:0] [5:0] [26:0] dataa;
logic [5:0] [5:0] [26:0] datab;

//Input from multipliers
logic [5:0] [5:0] [26:0] result;

// restrict directions
modport jacobian (
	input clk,
	input en,

	input z_0,
	input z_1,
	input z_2,

	input s_0,
	input s_1,
	input s_2,

	input t_matrix_00,
	input t_matrix_01,
	input t_matrix_02,
	input t_matrix_03,

	input t_matrix_10,
	input t_matrix_11,
	input t_matrix_12,
	input t_matrix_13

	input t_matrix_20,
	input t_matrix_21,
	input t_matrix_22,
	input t_matrix_23,

	input t_matrix_30,
	input t_matrix_31,
	input t_matrix_32,
	input t_matrix_33,

	output j_matrix_00,
	output j_matrix_01,
	output j_matrix_02,
	output j_matrix_03,
	output j_matrix_04,
	output j_matrix_05,
	
	output j_matrix_10,
	output j_matrix_11,
	output j_matrix_12,
	output j_matrix_13,
	output j_matrix_14,
	output j_matrix_15,

	output j_matrix_20,
	output j_matrix_21,
	output j_matrix_22,
	output j_matrix_23,
	output j_matrix_24,
	output j_matrix_25,
	
	output j_matrix_30,
	output j_matrix_31,
	output j_matrix_32,
	output j_matrix_33,
	output j_matrix_34,
	output j_matrix_35,
	
	output j_matrix_40,
	output j_matrix_41,
	output j_matrix_42,
	output j_matrix_43,
	output j_matrix_44,
	output j_matrix_45,
	
	output j_matrix_50,
	output j_matrix_51,
	output j_matrix_52,
	output j_matrix_53,
	output j_matrix_54,
	output j_matrix_55
);

endinterface

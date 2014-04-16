/*
 * Yipeng Huang, Richard Townsend, Lianne Lairmore
 * Columbia University
 */

interface ifc_full_mat (
	input logic clk
);

logic en, rst;
logic [5:0] [3:0] [26:0] dh_param;
logic [3:0] [3:0] [26:0] full_mat;


clocking cb @(posedge clk);
	output en;
	output rst;
	output dh_param;

	input full_mat;
endclocking

modport full_mat_tb (clocking cb);

// restrict directions
modport full_mat (
	input clk,
	input en,
	input rst,
	input dh_param,

	output full_mat
);

endinterface
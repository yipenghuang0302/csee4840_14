//START_MODULE_NAME------------------------------------------------------------
//
// Module Name     :  altsquare
//
// Description     :  Parameterized integer square megafunction. 
//                    The input data can be signed or unsigned, and the output
//                    can be pipelined.
//
// Limitations     :  Minimum data width is 1.
//
// Results expected:  result - The square of input data.
//
//END_MODULE_NAME--------------------------------------------------------------

`timescale 1 ps / 1 ps

module altsquare (
    data,
    clock,
    ena,
    aclr,
    result
);

// GLOBAL PARAMETER DECLARATION
    parameter data_width = 1;
    parameter result_width = 1;
    parameter pipeline = 0;
    parameter representation = "UNSIGNED";
    parameter result_alignment = "LSB";
    parameter lpm_hint = "UNUSED";
    parameter lpm_type = "altsquare";

    // INPUT PORT DECLARATION
    input [data_width - 1 : 0] data;
    input clock;
    input ena;
    input aclr;
    
    // OUTPUT PORT DECLARATION
    output [result_width - 1 : 0] result;

    // INTERNAL REGISTER DECLARATION
    reg [result_width - 1 : 0]stage_values[pipeline+1 : 0];
    reg [data_width - 1 : 0] pos_data_value;
    reg [(2*data_width) - 1 : 0] temp_value;
    // LOCAL INTEGER DECLARATION
    integer i;

    // INTERNAL WIRE DECLARATION
    wire i_clock;
    wire i_aclr;
    wire i_clken;
// INTERNAL TRI DECLARATION
    tri0 aclr;
    tri1 clock;
    tri1 clken;

    buf (i_clock, clock);
    buf (i_aclr, aclr);
    buf (i_clken, ena);


    // INITIAL CONSTRUCT BLOCK
    initial
    begin : INITIALIZE
        if(data_width < 1)
        begin 
            $display("data_width (%d) must be greater than 0.(ERROR)\n", data_width);
            $display ("Time: %0t  Instance: %m", $time);
            $finish;
        end
        if(result_width < 1)
        begin
            $display("result_width (%d) must be greater than 0.(ERROR)\n", result_width);
            $display ("Time: %0t  Instance: %m", $time);
            $finish;
        end
    end // INITIALIZE

    // ALWAYS CONSTRUCT BLOCK
    always @(data or i_aclr)
    begin
        if (i_aclr) // clear the pipeline
            for (i = 0; i <= pipeline; i = i + 1)
                stage_values[i] = 'b0;
        else
        begin
            if ((representation == "SIGNED") && (data[data_width - 1] == 1))
                pos_data_value = (~data) + 1;
            else
                pos_data_value = data;

            if ( (result_width < (2 * data_width)) && (result_alignment == "MSB") )
            begin
                temp_value = pos_data_value * pos_data_value;
                stage_values[pipeline] = temp_value[(2*data_width)-1 : (2*data_width)-result_width];
            end
            else
                stage_values[pipeline] = pos_data_value * pos_data_value;
        end
    end

    // Pipeline model
    always @(posedge i_clock)
    begin
        if (!i_aclr && i_clken == 1)
        begin
            for(i = 0; i < pipeline+1; i = i + 1)
                if(i < pipeline)
                    stage_values[i] <= stage_values[i + 1];
        end
    end

    // CONTINOUS ASSIGNMENT
    assign result = stage_values[0];
endmodule // altsquare
// END OF MODULE
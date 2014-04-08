# Constrain clock port clk with a 100-ns requirement

create_clock -period 100 [get_ports clk]

# Automatically apply a generate clock on the output of phase-locked loops (PLLs)
# This command can be safely left in the SDC even if no PLLs exist in the design

derive_pll_clocks

# Constrain the input I/O path

set_input_delay -clock clk -max 30 [all_inputs]

set_input_delay -clock clk -min 20 [all_inputs]

# Constrain the output I/O path

set_output_delay -clock clk 20 [all_outputs]
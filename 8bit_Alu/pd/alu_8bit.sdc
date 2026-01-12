# Clock definition

# 100 MHz clock (10 ns period)
create_clock \
  -name clk \
  -period 10.0 \
  [get_ports clk]

# Clock uncertainty (CTS realism)
set_clock_uncertainty 0.2 [get_clocks clk]

# Input delays (relative to clk)

# Assume inputs arrive 2 ns after clock edge
set_input_delay 2.0 -clock clk [get_ports {A[*]}]
set_input_delay 2.0 -clock clk [get_ports {B[*]}]
set_input_delay 2.0 -clock clk [get_ports {ALU_Sel[*]}]
set_input_delay 2.0 -clock clk [get_ports Cin]

# Output delays (relative to clk)

# Assume next stage captures output 2 ns after clock
set_output_delay 2.0 -clock clk [get_ports Result[*]]

# Reset constraints

# Asynchronous reset: exclude from timing
set_false_path -from [get_ports rst]

# Design assumptions / cleanup

# Do not try to optimize tristates (none exist, but safe)
set_disable_timing [get_ports rst]


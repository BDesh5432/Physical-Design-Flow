# Load
read_lef NangateOpenCellLibrary.tech.lef
read_lef NangateOpenCellLibrary.macro.lef
read_liberty NangateOpenCellLibrary_typical.lib
read_verilog shift_reg_synth.v
link_design shift_reg_4bit
read_sdc design/shift_reg.sdc

# Floorplan
initialize_floorplan \
  -die_area "0 0 100 100" \
  -core_area "10 10 90 90" \
  -site FreePDK45_38x28_10R_NP_162NW_34O

make_tracks


# IO cells
place_pins -hor_layers metal1 -ver_layers metal2

# Placement
global_placement -density 0.6

detailed_placement

# CTS
clock_tree_synthesis -root_buf CLKBUF_X1 -buf_list {CLKBUF_X1}
detailed_placement

# PDN
add_global_connection -net VDD -inst_pattern .* -pin_pattern VDD -power
add_global_connection -net VSS -inst_pattern .* -pin_pattern VSS -ground
global_connect

set_voltage_domain -power VDD -ground VSS
define_pdn_grid -name Core

add_pdn_stripe -grid Core -layer metal1 -width 0.08 -followpins
add_pdn_stripe -grid Core -layer metal2 -width 0.4 -pitch 20 -offset 10
add_pdn_connect -grid Core -layers {metal1 metal2}

pdngen


# Routing
global_route
detailed_route

# Outputs
write_def results/shift_reg.def
write_verilog results/shift_reg_postroute.v


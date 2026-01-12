# Load
read_lef NangateOpenCellLibrary.tech.lef
read_lef NangateOpenCellLibrary.macro.lef
read_liberty NangateOpenCellLibrary_typical.lib

read_verilog alu_8bit_synth.v
link_design alu_8bit_top

read_sdc alu_8bit.sdc

# Floorplan
initialize_floorplan \
  -utilization 0.65 \
  -aspect_ratio 1.0 \
  -core_space 10 \
  -site FreePDK45_38x28_10R_NP_162NW_34O

make_tracks
write_db results/01_floorplan.odb

# IO placement 
place_pins \
  -hor_layers {metal1} \
  -ver_layers {metal2}

write_db results/02_io.odb

# Placement
global_placement -density 0.65
detailed_placement

write_db results/03_placement.odb

# CTS 
clock_tree_synthesis \
  -root_buf CLKBUF_X2 \
  -buf_list {CLKBUF_X1 CLKBUF_X2}

detailed_placement
write_db results/04_cts.odb


# PDN 
add_global_connection -net VDD -inst_pattern .* -pin_pattern VDD -power
add_global_connection -net VSS -inst_pattern .* -pin_pattern VSS -ground
global_connect

set_voltage_domain -power VDD -ground VSS
define_pdn_grid -name Core

add_pdn_stripe \
  -grid Core \
  -layer metal1 \
  -width 0.1 \
  -followpins

add_pdn_stripe \
  -grid Core \
  -layer metal2 \
  -width 0.4 \
  -pitch 20 \
  -offset 10

add_pdn_connect -grid Core -layers {metal1 metal2}

pdngen
write_db results/05_pdn.odb

# Routing 
global_route 
detailed_route

write_db results/06_routed.odb

# Outputs
write_def results/alu_8bit.def
write_verilog results/alu_8bit_postroute.v


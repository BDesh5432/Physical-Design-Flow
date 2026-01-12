## 4-bit Shift Register – Manual Physical Design using OpenROAD

This project demonstrates a manual RTL-to-GDS physical design flow for a
4-bit shift register using the OpenROAD open-source EDA toolchain.

The objective of this work is to gain hands-on understanding of core physical design
stages—including floorplanning, placement, clock tree synthesis (CTS), power
distribution network (PDN) insertion, routing, and timing analysis—rather than
achieving a foundry sign-off–clean tapeout.

## The following flow was implemented:

1. RTL design in Verilog
2. Logic synthesis using Yosys (with standard cell mapping)
3. Floorplanning and IO placement
4. Standard cell placement (global + detailed)
5. Clock Tree synthesis (CTS)
6. Power Delivery Network (PDN) generation
7. Signal routing (global + detailed)
8. DEF export and post route analysis

## Tools Used:

1. Logic Synthesis: Yosys
2. Physical Design Flow: OpenRoad
3. Standard Cell Library: Nangate Open Cell Library (45nm)

## Power Distribution Network (PDN): 

A core-level PDN was implemented to ensure uniform power delivery to standard cells.

PDN Configuration:
- Power net: VDD
- Ground net: VSS
- Strap layer: metal1 (horizontal) and metal2 (vertical)
- Strap2 width: 0.4 µm
- Strap2 pitch: 20 µm
- Strap2 offset: 10 µm

Metal2 power straps are connected to standard-cell power rails on metal1, forming
a simple and low-resistance power grid suitable for a small digital block.

## Placement Quality Metrics:

Placement quality was evaluated using displacement and wirelength metrics:
- Total displacement: 1.8 µm
- Average displacement: 0.1 µm
- Maximum displacement: 1.4 µm
- Original HPWL: 143.4 µm
- Legalized HPWL: 141.3 µm
- HPWL change: −1%

These results indicate minimal cell movement during legalization and an overall
improvement in wirelength after detailed placement.

## Routing Observations:

Global and detailed routing were successfully completed. Although the design
primarily targets metal1 and metal2, the router utilized up to three metal layers
to relieve local congestion near power straps and clock nets.

A small number of routing violations (two violations) were observed after detailed
routing. These are attributed to dense power grid placement and simplified design
rule modeling of the academic Nangate 45 nm library. Such minor violations are common
in learning-oriented physical design flows and do not affect functional correctness.

## Timing and CTS Notes:

Clock Tree Synthesis was performed using standard clock buffers from the library.
The design meets timing comfortably at the targeted clock frequency, though timing
analysis is not considered sign-off quality due to simplified parasitic and library
models.

## Limitations:

- No foundry-level DRC/LVS sign-off was performed
- Timing analysis is intended for learning and exploration, not tapeout
- PDN and routing parameters were chosen conservatively for demonstration purposes

## Summary:

This project demonstrates a complete physical design flow for a small digital
block using OpenROAD, including placement, CTS, PDN insertion, routing, and timing
evaluation. It serves as a reference implementation for understanding industry-style
ASIC physical design concepts in an open-source environment.



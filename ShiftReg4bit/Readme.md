## 4-bit Shift Register – Manual Physical Design using OpenROAD

This project demonstrates a manual RTL-to-GDS physical design flow for a
4-bit shift register using the OpenROAD open-source EDA toolchain.

The objective was to understand and experiment with core physical design
stages (floorplanning, placement, PDN generation, and routing) rather than
achieve a fully sign-off clean tapeout.

## The following flow was implemented:

1. RTL design in Verilog
2. Logic synthesis using Yosys (with standard cell mapping)
3. Floorplanning and IO placement
4. Standard cell placement (global + detailed)
5. Power Delivery Network (PDN) generation
6. Signal routing (global + detailed)
7. DEF export and visualization

## Tools Used:

- Yosys (logic synthesis)
- OpenROAD (physical design)
- Nangate Open Cell Library (45nm)

Standard Cell Library: Nangate Open Cell Library (45nm)
Process: Educational / reference technology


## Limitations and Known Issues

- Clock Tree Synthesis (CTS) was **intentionally not finalized** in this project.
  Although CTS was experimented with, the final routed design does not include
  a fully optimized clock tree.

- A small number of routing violations (metal shorts) remain after detailed
  routing. These violations were observed to oscillate during routing
  iterations and were not manually resolved, as the focus was on learning
  flow behavior rather than sign-off closure.

- No DRC/LVS sign-off was performed.

- Timing analysis is limited and not considered tapeout-quality.

## Note on Clock Tree Synthesis

Clock Tree Synthesis was explored during the project; however, due to
characterization and routing constraints of the selected open-source
library, a stable CTS solution was not finalized.

In commercial flows, CTS is tightly integrated with routing and timing
closure engines. The purpose here was to gain hands-on exposure rather
than replicate full sign-off behavior.



## 8-bit ALU Physical Design using OpenROAD

This project implements the complete RTL-to-routing physical design flow of an 8-bit ALU using open-source EDA tools.
The objective was not tape-out, but to understand and experiment with core physical design stages, including placement, clock tree synthesis (CTS), power distribution network (PDN) generation, routing, and timing analysis.

The project intentionally explores routing congestion and PDN challenges by constraining metal resources, and analyzes the resulting design behavior.

## Design Description

## ALU Features

- 8-bit datapath
- Supported operations:
- ADD, SUB
- AND, OR, XOR, NOT
- Logical left shift, logical right shift
- Registered inputs
- Combinational ALU core
- Single clock domain with asynchronous reset

## RTL Structure

- alu_8bit.v — combinational ALU core
- alu_8bit_top.v — top module with input registers (used for CTS and timing)

## Toolchain

- RTL Simulation: Icarus Verilog, GTKWave
- Logic Synthesis: Yosys
- Physical Design: OpenROAD
- Standard Cell Library: Nangate 45nm Open Cell Library

## Physical Design Flow

The following stages were executed using OpenROAD:

1. Floorplanning
- Core utilization ~65%

2. IO Pin Placemen
- Pins placed on Metal1 (horizontal) and Metal2 (vertical)

3. Standard Cell Placemen
- Global placement followed by detailed placement

4. Clock Tree Synthesis (CTS)
- Clock buffers inserted using standard cell clock buffers
- Single clock domain

5. Power Distribution Network (PDN)
- Metal1 used for standard-cell power rails
- Metal2 used for power straps
- PDN generation explored and debugged extensively

6. Routing
- Global routing followed by detailed routing
- Routing intentionally constrained to limited metal resources to study congestion effects

7. Static Timing Analysis (STA)
- Timing verified using report_checks
- Large positive slack observed due to relaxed clock period and shallow logic depth

## Key Observations & Learnings

1. Routing Congestion
- High routing congestion observed under constrained metal usage

Evidenced by:
- DRC short and spacing violations
- Very high via count
- Long detailed routing runtime
- Congestion analyzed via terminal reports and visual inspection 

2. PDN Challenges
- Multiple PDN configurations were explored
- PDN failures highlighted the sensitivity of power grid geometry to floorplan dimensions and metal allocation
- Reinforced the importance of PDN planning early in the flow

3. Timing Behavior
- All timing paths met setup requirements with significant margin
- Critical paths dominated by ALU result-selection logic rather than carry chains
- Routing congestion impacted DRC quality more than timing in this design

## Known Limitations

- This design is not tape-out ready
- Final routed layout contains DRC violations due to intentional metal-layer constraints
- PDN was explored for learning purposes, not finalized for sign-off
- No IR-drop or EM sign-off analysis performed
- The project is intended as a physical design learning and exploration exercise

## Purpose of This Project

This project was created to:
- Gain hands-on experience with physical design concepts
- Understand routing congestion and PDN trade-offs
- Learn how to debug and interpret PD tool outputs
- Move beyond “running flows” to reasoning about physical effects


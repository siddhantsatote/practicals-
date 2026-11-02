MICROWIND .MSK FILES - HOW TO USE
=================================
Microwind: File > Open > pick the .MSK file. If the screen looks empty: View > Zoom All.
Then: Simulate > Run Simulation > Voltage vs time > Run (use "More" to extend the time if you
do not see enough cycles).

All files are Microwind's own example layouts (copied from your install), with clocks and
visible nodes already set. Only Exp07_carry_cell_simulate.MSK was edited (clocks added).

EXP 3  Exp03_differential_amplifier_layout.MSK   differential amplifier layout (V+ clock, Vout follower)
EXP 5  Exp05_current_mirror.MSK                  N1/N2 current mirror, VLoad ramp, reference voltage
EXP 6  Exp06_CMOS_inverter.MSK                   inverter (clock A, visible nA)
       Exp06_inverter_inv.MSK                    second inverter layout (clock "in", visible "inv")
       Exp06_AND2_nand_plus_inverter.MSK         NAND2 + inverter = AND2 (clocks a, b; output "and")
EXP 7  Exp07_half_adder.MSK                      half adder: Sum (XOR) and Carry (AND); clocks A, B
       Exp07_full_adder.MSK                      full adder: Sum and Carry; clocks A, B, C
       Exp07_carry_cell_simulate.MSK             mirror-adder carry cell (output ~Carry)
EXP 8  Exp08_mux2to1.MSK                         2:1 MUX (right-hand block: in0, in1, sel, out_f is the one to simulate)
       Exp08_transmission_gate_switch.MSK        transmission gate with enable inverter
EXP 9  Exp09_ring_oscillator_5stage.MSK          5-stage ring oscillator with enable (EnableOsc clock, output out5)
       Exp09_inverter_chain_3stage.MSK           3-inverter chain (visible nodes s1, s2, s3)
EXP 10 Exp10_XOR_and_AND_halfAdder.MSK           the Sum output of this half adder IS the XOR gate (xor2_Sum); same file as Exp07_half_adder

NOT AVAILABLE: a standalone NOR2 layout. Look in  ...\microwind35\examples\basic gates\  for it
(the And2 example came from that folder) and attach it if you want it prepared the same way.

Ring oscillator note: the enable clock rises at 0.8 ns, so run the simulation past 1 ns (More) to
see oscillation. Read the period between two rising edges of out5, then f = 1/T.

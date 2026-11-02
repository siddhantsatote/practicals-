MICROWIND .MSK & VERILOG FILES - COMPLETE PRACTICALS CATALOG (EXP 1 TO 10)
=============================================================================
SPPU TE E&TC (VLSI) - Analog & Digital CMOS Design Lab
All practicals are sorted into experiment folders with enhancements from Examples.

ORGANIZATION BY EXPERIMENT:
---------------------------
EXP 01: Exp01_Common_Source_Amplifier/
  - Exp01_common_source_layout.MSK          : Common Source stage layout (Vin_cs, Vo_cs, active load)

EXP 02: Exp02_Cascode_Amplifier/
  - Exp02_cascode_amplifier_layout.MSK      : Cascode amplifier stage (Vin_cs, Vb_cg, Vo_cascode)

EXP 03: Exp03_Differential_Amplifier/
  - Exp03_differential_amplifier_layout.MSK : differential amplifier with PMOS active load (V+ clock, Vout follower)
  - AmpliDiff2.MSK                          : Microwind original reference

EXP 04: Exp04_Comparator_Schmitt_Trigger/
  - Exp04_schmitt_trigger.MSK               : CMOS comparator with hysteresis (Trigger_Out & Inv_Out, clock1 input)

EXP 05: Exp05_MOS_Current_Mirror/
  - Exp05_current_mirror.MSK                : N1/N2 current mirror, Vss, Reference Voltage, VLoad ramp
  - mirror.MSK                              : Microwind original reference

EXP 06: Exp06_CMOS_Inverter_NAND_NOR/
  - Exp06_CMOS_inverter.MSK                 : Inverter layout (Wp=0.108um, Wn=0.08um, clock A, visible nA)
  - Exp06_inverter_inv.MSK                  : Inverter alternative layout (clock in, visible inv)
  - Exp06_Inverter_Sicard.MSK               : Sicard book reference layout
  - Exp06_NAND2.MSK                         : 2-input NAND (clocks a, b; output nand2)
  - Exp06_NAND3.MSK                         : 3-input NAND (clock a, b=c=1; output nand3)
  - Exp06_NOR2.MSK                          : 2-input NOR (clocks a, b; output nor2; unloaded & 10fF loaded)
  - Exp06_NOR3.MSK                          : 3-input NOR (clock a, b=c=0; output nor3)
  - Exp06_AND2_nand_plus_inverter.MSK       : 2-input AND (NAND2 + inverter)
  - Exp06_OR2.MSK                           : 2-input OR (NOR2 + inverter)
  - Exp06_AOI_Y1.MSK                        : Complex gate Y1 = ((A + B + C).D)'
  - Exp06_AOI_Y2.MSK                        : Complex gate Y2 = ((A.B) + (C.D))'
  - gates.v                                 : Verilog module for auto-layout (Yinv, Ynand, Ynor)
  - Exp06_gates_all.v                       : Full Verilog module including journal complex AOI gates (Y1..Y4)

EXP 07: Exp07_CMOS_Half_Adder_Full_Adder/
  - Exp07_half_adder.MSK                    : Half adder (Sum=XOR, Carry=AND; clocks A=2ns, B=4ns)
  - Exp07_full_adder.MSK                    : Full adder (Sum, Cout; clocks A=2ns, B=4ns, C=8ns)
  - Exp07_carry_cell_simulate.MSK           : High-speed mirror carry cell (output ~Carry)
  - Exp07_4bit_adder_Add4.MSK               : 4-bit ripple-carry adder layout (enhanced reference)
  - half_adder.v                            : Verilog half adder
  - full_adder.v                            : Verilog full adder

EXP 08: Exp08_2to1_Multiplexer/
  - Exp08_mux2to1.MSK                       : 2:1 MUX using NAND gates and inverter (in0, in1, sel, out_f)
  - Exp08_mux2to1_transmission_gate.MSK     : Standalone 2:1 MUX using Transmission Gates (6 transistors, Part B)
  - Exp08_transmission_gate.MSK             : Pure CMOS transmission gate (Enable, ~Enable, DataIn, DataOut)
  - Exp08_transmission_gate_switch.MSK      : TG with built-in inverter for complementary enable
  - mux_gates.v                             : Verilog 2:1 MUX

EXP 09: Exp09_CMOS_Ring_Oscillator/
  - Exp09_ring_oscillator_3stage.MSK        : 3-stage ring oscillator (s1, s2, s3)
  - Exp09_inverter_chain_3stage.MSK         : 3-inverter delay line
  - Exp09_ring_oscillator_5stage.MSK        : 5-stage ring oscillator with enable (EnableOsc, out5)
  - Exp09_ring_oscillator_7stage.MSK        : 7-stage ring oscillator for observation table
  - Exp09_VCO_oscillator.MSK                : Voltage Controlled Oscillator (tuning node Vcontrol)

EXP 10: Exp10_Stick_Diagram_and_CMOS_XOR/
  - Exp10_CMOS_XOR2.MSK                     : Dedicated Standalone 2-input CMOS XOR gate (clocks a, b; probes xor, nxor)
  - Exp10_XOR_and_AND_halfAdder.MSK         : Transistor-level half-adder XOR/AND cell
  - xor2.v                                  : Verilog 2-input XOR

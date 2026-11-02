        # ADCMOS Lab: Microwind Mask Layouts (.MSK) & Verilog Files

This directory contains the complete, organized mask layout (`.MSK`) files and Verilog (`.v`) synthesis sources for the **Analog & Digital CMOS Design Lab** (SPPU TE E&TC VLSI curriculum).

Every experiment from **1 to 10** has its dedicated folder with all necessary layout files, Verilog codes, input clocks, visible probes, and comprehensive experiment-specific documentation.

---

## Directory Organization by Experiment (1 to 10)

### [Exp01_Common_Source_Amplifier](./Exp01_Common_Source_Amplifier/)
- **Aim:** Common Source Amplifier layout & frequency response.
- **Files:** `Exp01_common_source_layout.MSK`, `README.md`

### [Exp02_Cascode_Amplifier](./Exp02_Cascode_Amplifier/)
- **Aim:** Cascode Amplifier (CS + CG) frequency response & Miller effect suppression.
- **Files:** `Exp02_cascode_amplifier_layout.MSK`, `README.md`

### [Exp03_Differential_Amplifier](./Exp03_Differential_Amplifier/)
- **Aim:** CMOS Differential Amplifier layout with active PMOS current mirror load.
- **Files:** `Exp03_differential_amplifier_layout.MSK`, `AmpliDiff2.MSK`, `README.md`

### [Exp04_Comparator_Schmitt_Trigger](./Exp04_Comparator_Schmitt_Trigger/)
- **Aim:** CMOS Comparator with hysteresis (Schmitt Trigger) to eliminate noise sensitivity.
- **Files:** `Exp04_schmitt_trigger.MSK` (enhanced from `Examples/Trigger.MSK`), `README.md`

### [Exp05_MOS_Current_Mirror](./Exp05_MOS_Current_Mirror/)
- **Aim:** Transistor-level NMOS current mirror layout and compliance characteristics.
- **Files:** `Exp05_current_mirror.MSK`, `mirror.MSK`, `README.md`

### [Exp06_CMOS_Inverter_NAND_NOR](./Exp06_CMOS_Inverter_NAND_NOR/)
- **Aim:** Standard Inverter, 2-input NAND, 3-input NAND, 2-input NOR, and complex journal AOI gates.
- **Files:**
  - `Exp06_CMOS_inverter.MSK`, `Exp06_inverter_inv.MSK`, `Exp06_Inverter_Sicard.MSK`
  - `Exp06_NAND2.MSK`, `Exp06_NAND3.MSK`
  - `Exp06_NOR2.MSK`, `Exp06_NOR3.MSK`
  - `Exp06_AND2_nand_plus_inverter.MSK`, `Exp06_OR2.MSK`
  - `Exp06_AOI_Y1.MSK` ($Y_1 = ((A + B + C) \cdot D)'$)
  - `Exp06_AOI_Y2.MSK` ($Y_2 = ((A \cdot B) + (C \cdot D))'$)
  - `gates.v` & `Exp06_gates_all.v` (Verilog auto-synthesis)
  - `README.md`

### [Exp07_CMOS_Half_Adder_Full_Adder](./Exp07_CMOS_Half_Adder_Full_Adder/)
- **Aim:** CMOS Half Adder, Full Adder, and multi-bit adder architectures.
- **Files:**
  - `Exp07_half_adder.MSK`, `Exp07_full_adder.MSK`, `Exp07_carry_cell_simulate.MSK`
  - `Exp07_4bit_adder_Add4.MSK` (enhanced from `Examples/Add4.MSK`)
  - `half_adder.v` & `full_adder.v`
  - `README.md`

### [Exp08_2to1_Multiplexer](./Exp08_2to1_Multiplexer/)
- **Aim:** 2:1 Multiplexer implementation via Logic Gates vs. Transmission Gates.
- **Files:**
  - `Exp08_mux2to1.MSK`: Logic-gate based 2:1 MUX
  - `Exp08_mux2to1_transmission_gate.MSK`: Standalone 2:1 Transmission Gate MUX (6 transistors, Part B)
  - `Exp08_transmission_gate.MSK` & `Exp08_transmission_gate_switch.MSK`
  - `mux_gates.v`
  - `README.md`

### [Exp09_CMOS_Ring_Oscillator](./Exp09_CMOS_Ring_Oscillator/)
- **Aim:** CMOS Ring Oscillator frequency & stage propagation delay measurement ($n = 3, 5, 7$).
- **Files:**
  - `Exp09_ring_oscillator_3stage.MSK` & `Exp09_inverter_chain_3stage.MSK` (3 stages)
  - `Exp09_ring_oscillator_5stage.MSK` (5 stages with `EnableOsc`)
  - `Exp09_ring_oscillator_7stage.MSK` (7 stages for lab manual table)
  - `Exp09_VCO_oscillator.MSK` (Voltage Controlled Oscillator)
  - `README.md`

### [Exp10_Stick_Diagram_and_CMOS_XOR](./Exp10_Stick_Diagram_and_CMOS_XOR/)
- **Aim:** Stick diagram layout methodology and physical design of CMOS 2-input XOR gate.
- **Files:**
  - `Exp10_CMOS_XOR2.MSK`: Dedicated Standalone 2-input CMOS XOR gate layout (`a`, `b` clocks; `xor`, `nxor` probes)
  - `Exp10_XOR_and_AND_halfAdder.MSK`: Half-adder based XOR cell
  - `xor2.v`
  - `README.md`

---

## Quick How-To for Microwind

1. **Opening a Layout:**
   - **File > Open**, navigate to the relevant experiment folder and select the `.MSK` file.
   - Click **View > Zoom All** (or scroll mouse wheel) if the layout does not center automatically.
2. **Checking DRC:**
   - Always run **Analysis > Design Rule Checker** before simulation. Ensure 0 DRC violations.
3. **Running Transient Simulation:**
   - Click **Simulate > Run Simulation** (or green Play button on toolbar).
   - Select **Voltage vs time** tab.
   - If more cycles are needed, click the **More** button in the simulation window.
4. **Measuring Delay:**
   - Check the **Delay** checkbox in the simulation window. Click on the 50% voltage transition of the input signal and the corresponding output transition to read delay (e.g. at 0.548 ns).
5. **Compiling Verilog (.v) to Layout:**
   - Click **File > Select Foundry** (select the technology node, e.g. 30 nm).
   - Click **Compile > Compile Verilog File**.
   - Browse to the `.v` file and click **Compile**.

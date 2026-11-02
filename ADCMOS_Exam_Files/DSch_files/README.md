# DSCH Digital Schematic Files (*.sch)

This directory contains digital schematic files (`*.sch`) for **DSCH** (the digital schematic editor in the Microwind tool suite).

These schematics allow you to visually inspect logic and transistor topologies, simulate with interactive push-buttons and LED lights, and export Verilog / SPICE netlists for Microwind layout generation.

---

## Schematics Catalog by Experiment

| File Name | Experiment & Topic | Type | Interactive Components / Notes |
|---|---|---|---|
| **`Exp01_common_source_amp.sch`** | **Exp 01: Common Source Amplifier** | Analog / CMOS | NMOS amplifier with active load, AC source ($V_{in}$), $V_{DD}, V_{SS}$ |
| **`Exp01_common_source_dc.sch`** | **Exp 01: CS Stage DC Biasing** | Analog / CMOS | DC bias analysis |
| **`Exp02_cascode_amplifier.sch`** | **Exp 02: Cascode Amplifier** | Analog / CMOS | CS + CG stacked stages |
| **`Exp03_differential_amplifier.sch`** | **Exp 03: Differential Amplifier** | Analog / CMOS | Differential pair with active current mirror load |
| **`Exp04_comparator_schmitt_trigger.sch`** | **Exp 04: Comparator & Schmitt Trigger** | Analog / Digital | Comparator with hysteresis loop |
| **`Exp05_current_mirror.sch`** | **Exp 05: MOS Current Mirror** | Analog / CMOS | Reference and copied mirror branches |
| **`Exp06_CMOS_inverter.sch`** | **Exp 06: CMOS Inverter** | Transistor | PMOS pull-up, NMOS pull-down, rails, and input/output |
| **`Exp06_NAND2_cmos.sch`** | **Exp 06: 2-Input CMOS NAND** | Transistor | 2 parallel PMOS, 2 series NMOS, interactive input buttons and output LED |
| **`Exp06_NAND3_cmos.sch`** | **Exp 06: 3-Input CMOS NAND** | Transistor | 3 parallel PMOS, 3 series NMOS, buttons & LED |
| **`Exp06_NAND4_cmos.sch`** | **Exp 06: 4-Input CMOS NAND** | Transistor | 4-input NAND gate |
| **`Exp06_NOR2_cmos.sch`** | **Exp 06: 2-Input CMOS NOR** | Transistor | 2 series PMOS, 2 parallel NMOS |
| **`Exp07_half_adder.sch`** | **Exp 07: CMOS Half Adder** | Gate & Circuit | Push-buttons $A, B$; Output LEDs `Sum`, `Carry` |
| **`Exp07_full_adder.sch`** | **Exp 07: CMOS Full Adder** | Gate & Circuit | 1-bit full adder with Carry generation |
| **`Exp08_mux2to1.sch`** | **Exp 08: 2:1 Multiplexer** | Gate & TG | Inputs $X_0, X_1$, Select $S$, Output $Y$ |
| **`Exp09_ring_oscillator.sch`** | **Exp 09: Ring Oscillator** | Digital | Inverter chain oscillator with feedback |
| **`Exp10_xor2_cmos.sch`** | **Exp 10: CMOS XOR Gate (Transistor)** | Transistor | Full 12-transistor complementary CMOS XOR cell with interactive buttons and LED |
| **`Exp10_xor2_gate.sch`** | **Exp 10: CMOS XOR Gate (Gate-Level)** | Gate | Logic XOR with truth table verification |

---

## How to Open in DSCH

1. Open **DSCH** (`Dsch35.exe`).
2. Click **File > Open** (shortcut `Ctrl + O`).
3. In the Open file dialog:
   - On the left quick-access bar, click **Desktop** $\to$ **praticals** $\to$ **ADCMOS** $\to$ **DSch_files**
   - Or click **Libraries / Documents** $\to$ **DSch_files**
4. Select any `*.sch` file (e.g. `Exp07_half_adder.sch` or `Exp06_NAND2_cmos.sch`).
5. Click **Open**.
6. Click the **Simulate** (Play) button in the toolbar:
   - Click the input buttons ($A, B$) with the mouse to toggle between `0` and `1`.
   - Watch the LEDs and wires illuminate to verify truth tables dynamically!


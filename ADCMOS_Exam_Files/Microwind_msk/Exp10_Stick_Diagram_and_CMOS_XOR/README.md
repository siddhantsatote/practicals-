# Experiment 10: Stick Diagram and CMOS XOR Gate

## Aim
To understand the methodology of Stick Diagrams for CMOS layout planning, design a CMOS XOR gate, draw its stick diagram, and simulate its full physical layout in Microwind.

## Files in this Folder

### 1. Microwind Layout Files (.MSK)
| File | Description | Inputs / Probes |
|------|-------------|-----------------|
| **`Exp10_CMOS_XOR2.MSK`** | **Dedicated Standalone CMOS XOR2 Gate Layout** (enhanced from `Examples/xor2.MSK`) | Inputs: `a`, `b` (clocked); Outputs: `xor`, `nxor` (both visible!); Rails: `vdd`, `vss` |
| **`Exp10_XOR_and_AND_halfAdder.MSK`** | Transistor-level Half Adder layout where the Sum output corresponds to the XOR cell (`xor2_Sum`) | Inputs: `A`, `B`; Outputs: `Sum` (XOR), `Carry` (AND) |

### 2. Verilog Synthesis File (.v)
- **`xor2.v`**: Standard 2-input XOR description for automatic layout compilation:
  ```verilog
  module xor2(input A, input B, output Y);
      assign Y = A ^ B;
  endmodule
  ```

---

## Stick Diagram Rules & Color Conventions
A stick diagram is an intermediate topological abstraction between a transistor schematic and a full mask layout:
- **Polysilicon (Red line):** Represents transistor gates. Where a poly line crosses a diffusion strip, a MOSFET is formed.
- **n-Diffusion (Green strip):** Represents NMOS source/drain regions. Situated in the p-substrate near the GND rail.
- **p-Diffusion (Yellow strip):** Represents PMOS source/drain regions. Situated in the n-well near the VDD rail.
- **Metal 1 (Blue lines):** Used for $V_{DD}$ (top horizontal rail), $V_{SS}$ (bottom horizontal rail), and interconnects.
- **Contact / Via (Black squares):** Form electrical connections between layers (metal-to-diffusion, metal-to-poly).

---

## CMOS XOR Gate Topology
Boolean equation: $Y = A \oplus B = \overline{A}\cdot B + A\cdot \overline{B}$

### Transistor Count:
- **Core XOR network:** 8 transistors (4 PMOS in pull-up, 4 NMOS in pull-down).
- **Inverters for $\overline{A}$ and $\overline{B}$:** 4 transistors (2 PMOS + 2 NMOS).
- **Total standalone CMOS XOR:** 12 transistors.

### Pull-Up & Pull-Down Networks:
- **Pull-Up Network (PMOS):** $(\overline{A} \parallel \overline{B})$ in series with $(A \parallel B)$
- **Pull-Down Network (NMOS):** $(A \text{ series } B)$ in parallel with $(\overline{A} \text{ series } \overline{B})$

---

## Truth Table
| A | B | XOR Y ($A \oplus B$) | XNOR ($\overline{\text{XOR}}$) |
|---|---|:--------------------:|:------------------------------:|
| 0 | 0 | **0** | 1 |
| 0 | 1 | **1** | 0 |
| 1 | 0 | **1** | 0 |
| 1 | 1 | **0** | 1 |

---

## How to Simulate in Microwind
1. Open Microwind: **File > Open**, select `Exp10_CMOS_XOR2.MSK`.
2. Click **View > Zoom All**.
3. Check DRC: **Analysis > Design Rule Checker** (ensure 0 DRC violations).
4. Simulate: **Simulate > Run Simulation**.
5. In **Voltage vs time**:
   - Observe inputs `a` and `b` oscillating with staggered periods.
   - Verify `xor` is high when $A \ne B$ and low when $A = B$.
   - Verify `nxor` provides the exact inverted output (XNOR function).


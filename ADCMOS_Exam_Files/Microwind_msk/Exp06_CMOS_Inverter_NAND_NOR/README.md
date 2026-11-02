# Experiment 06: CMOS Inverter, NAND, and NOR Gates

## Aim
To design, layout, and simulate CMOS Inverter, 2-input NAND, 3-input NAND, 2-input NOR, and complex logic gates in Microwind; verify their truth tables and measure propagation delays ($t_{PHL}$, $t_{PLH}$).

## Files in this Folder

### 1. Microwind Layout Files (.MSK)
| File | Gate Type | Description | Configured Nodes |
|------|-----------|-------------|------------------|
| `Exp06_CMOS_inverter.MSK` | Inverter ($Y_3$) | Standard CMOS Inverter ($W_p = 0.108\,\mu\text{m}, W_n = 0.08\,\mu\text{m}$) | Input: `A`, Output: `nA` (visible), Rails: `Vdd`, `Vss` |
| `Exp06_inverter_inv.MSK` | Inverter | Alternative compact inverter layout | Input: `in`, Output: `inv` (visible) |
| `Exp06_Inverter_Sicard.MSK` | Inverter | Author reference layout (Sicard) | Input: `A`, Output: `nA` (visible) |
| `Exp06_NAND2.MSK` | 2-input NAND | 2 PMOS parallel, 2 NMOS series | Inputs: `a`, `b`, Output: `nand2` (visible) |
| `Exp06_NAND3.MSK` | 3-input NAND ($Y_4$) | 3 PMOS parallel, 3 NMOS series | Input: `a` (clocked), `b=c=1`, Output: `nand3` (visible) |
| `Exp06_NOR2.MSK` | 2-input NOR | 2 PMOS series, 2 NMOS parallel (dual cells: unloaded & 10 fF loaded) | Inputs: `a`, `b`, Output: `nor2` (visible) |
| `Exp06_NOR3.MSK` | 3-input NOR | 3 PMOS series, 3 NMOS parallel | Input: `a` (clocked), `b=c=0`, Output: `nor3` (visible) |
| `Exp06_AND2_nand_plus_inverter.MSK` | 2-input AND | NAND2 followed by Inverter stage | Inputs: `a`, `b`, Output: `and` (visible) |
| `Exp06_OR2.MSK` | 2-input OR | NOR2 followed by Inverter stage | Inputs: `a`, `b`, Output: `or` (visible) |
| **`Exp06_AOI_Y1.MSK`** | **Complex AOI ($Y_1$)** | $Y_1 = ((A + B + C) \cdot D)'$ (Page 12 Part E) | Test inputs: $A=1, B=0, C=1, D=\text{pulse}$; Output: $Y_1 = \overline{D}$ |
| **`Exp06_AOI_Y2.MSK`** | **Complex AOI-22 ($Y_2$)** | $Y_2 = ((A \cdot B) + (C \cdot D))'$ (Page 12 Part E) | Test inputs: $A=1, B=0, C=1, D=\text{pulse}$; Output: $Y_2 = \overline{D}$ |

### 2. Verilog Synthesis Files (.v)
- **`gates.v`**: Standard 2-input basic gates module (`gates`), ready for **Compile > Compile Verilog File**.
- **`Exp06_gates_all.v`**: Complete suite containing both 2-input basic gates (`gates`) and journal complex AOI gates (`gates_all` implementing $Y_{inv}$, $Y_{nand2}$, $Y_{nor2}$, $Y_{and2}$, $Y_{or2}$, $Y_{nand3}$, $Y1=((A+B+C)\cdot D)'$, $Y2=((A\cdot B)+(C\cdot D))'$).

---

## Truth Tables

### Inverter
| A | Y (nA) |
|---|--------|
| 0 | 1 |
| 1 | 0 |

### 2-Input NAND and NOR
| A | B | NAND Y | NOR Y | AND Y | OR Y |
|---|---|--------|-------|-------|------|
| 0 | 0 | 1 | 1 | 0 | 0 |
| 0 | 1 | 1 | 0 | 0 | 1 |
| 1 | 0 | 1 | 0 | 0 | 1 |
| 1 | 1 | 0 | 0 | 1 | 1 |

---

## How to Simulate in Microwind

### Method A: Opening Pre-Built Layouts (.MSK)
1. Open Microwind: **File > Open**, select e.g. `Exp06_CMOS_inverter.MSK` or `Exp06_AOI_Y2.MSK`.
2. Click **View > Zoom All**.
3. Verify DRC: **Analysis > Design Rule Checker** (must be 0 errors).
4. Run Simulation: **Simulate > Run Simulation**.
5. In **Voltage vs time**:
   - Check that the output matches the truth table for all input combinations.
   - For $Y_2$ with $A=1, B=0, C=1$: verify output $Y_2$ is the inverted replica of the $D$ pulse waveform.
   - Check the **Delay** checkbox: click on the 50% transition points of the input edge and output edge to read $t_{PHL}$ and $t_{PLH}$.

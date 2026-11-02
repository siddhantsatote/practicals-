# Experiment 07: CMOS Half Adder and Full Adder

## Aim
To design, layout, and simulate CMOS Half Adder and Full Adder circuits in Microwind, both using manual layout and automatic Verilog compilation.

## Files in this Folder

### 1. Microwind Layout Files (.MSK)
| File | Circuit | Description | Input / Output Signals |
|------|---------|-------------|------------------------|
| `Exp07_half_adder.MSK` | Half Adder | Sum ($A \oplus B$) and Carry ($A \cdot B$) | Inputs: `A` (2 ns), `B` (4 ns); Outputs: `Sum`, `Carry` |
| `Exp07_full_adder.MSK` | Full Adder | Transistor-level 1-bit Full Adder | Inputs: `A` (2 ns), `B` (4 ns), `C` (8 ns); Outputs: `Sum`, `Carry` |
| `Exp07_carry_cell_simulate.MSK` | Mirror Carry Cell | High-speed carry generation stage ($\overline{\text{Cout}}$) | Inputs: `A`, `B`, `C`; Output: `~Carry` |
| `Exp07_4bit_adder_Add4.MSK` | 4-Bit Adder | 4-bit ripple-carry adder (enhanced from Microwind Examples) | Complete multi-bit arithmetic unit |

### 2. Verilog Synthesis Files (.v)
- **`half_adder.v`**: Behavioral Half Adder for auto-synthesis:
  ```verilog
  module half_adder(input A, input B, output S, output C);
      assign S = A ^ B;
      assign C = A & B;
  endmodule
  ```
- **`full_adder.v`**: Behavioral Full Adder for auto-synthesis:
  ```verilog
  module full_adder(input A, input B, input Cin, output Sum, output Cout);
      assign Sum  = A ^ B ^ Cin;
      assign Cout = (A & B) | (Cin & (A ^ B));
  endmodule
  ```

---

## Truth Tables

### Half Adder
| A | B | Carry (C) | Sum (S) |
|---|---|-----------|---------|
| 0 | 0 | 0 | 0 |
| 0 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 0 |

### Full Adder
| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
| 0 | 0 | 0   | 0   | 0    |
| 0 | 0 | 1   | 1   | 0    |
| 0 | 1 | 0   | 1   | 0    |
| 0 | 1 | 1   | 0   | 1    |
| 1 | 0 | 0   | 1   | 0    |
| 1 | 0 | 1   | 0   | 1    |
| 1 | 1 | 0   | 0   | 1    |
| 1 | 1 | 1   | 1   | 1    |

---

## How to Simulate in Microwind
1. Open Microwind: **File > Open**, select `Exp07_half_adder.MSK` or `Exp07_full_adder.MSK`.
2. Click **View > Zoom All**.
3. Verify DRC: **Analysis > Design Rule Checker**.
4. Simulate: **Simulate > Run Simulation**.
5. Observe that:
   - For `half_adder.MSK`: With input clocks having periods 2 ns and 4 ns, all four combinations $(00, 01, 10, 11)$ are covered in 4 ns.
   - For `full_adder.MSK`: With input clocks $A=2\,\text{ns}, B=4\,\text{ns}, C=8\,\text{ns}$, all eight combinations are generated sequentially across an 8 ns span.
6. To test Verilog synthesis: Use **Compile > Compile Verilog File**, select `half_adder.v` or `full_adder.v`, compile and simulate.


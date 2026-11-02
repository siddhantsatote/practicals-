# ASIC Flow & Digital CMOS Design Lab (ASSIC)

This directory contains the complete, verified, and organized practical repository for the **ASIC Flow & Digital CMOS Design Lab**.

All practicals (Experiments 1 through 8) are fully implemented with:
- **`Microwind_msk/`**: Mask layouts (`.MSK`) categorized by experiment, 100% verified for DRC compliance, N-well polarization, and zero electrical extraction conflicts.
- **`DSch_files/`**: Schematic diagrams (`.sch`) directly openable in DSCH 3.5.
- **`Verilog_HDL/`**: Synthesizable RTL designs and automated self-checking testbenches.
- **`stepsandtheory/`**: In-depth lab documentation, synthesis commands, critical path analyses, and result summaries.

---

## Directory Structure

```
ASSIC/
????????? DSch_files/                         # DSCH 3.5 Schematics (.sch)
???   ????????? Exp01_4bit_ripple_carry_adder.sch
???   ????????? Exp01_full_adder.sch
???   ????????? Exp02_sram_6t_cell.sch
???   ????????? Exp02_ram_8x8.sch
???   ????????? Exp02_rom_cell.sch
???   ????????? Exp03_4bit_parallel_adder.sch
???   ????????? Exp04_4bit_async_up_down_counter.sch
???   ????????? Exp05_cmos_inverter.sch
???   ????????? Exp05_nand2.sch
???   ????????? Exp05_nor2.sch
???   ????????? Exp06_half_adder.sch
???   ????????? Exp06_full_adder.sch
???   ????????? Exp07_transmission_gate.sch
???   ????????? Exp07_mux2to1.sch
???   ????????? Exp08_xor2_cmos.sch
????????? Microwind_msk/                      # Microwind Mask Layouts (.MSK)
???   ????????? Exp01_4bit_Ripple_Carry_Adder/
???   ????????? Exp02_RAM_ROM_Memory/
???   ????????? Exp03_4bit_Parallel_Adder/
???   ????????? Exp04_4bit_Async_UpDown_Counter/
???   ????????? Exp05_CMOS_Inverter_NAND_NOR/
???   ????????? Exp06_Half_Adder_Full_Adder/
???   ????????? Exp07_2to1_MUX_Transmission_Gate/
???   ????????? Exp08_Stick_Diagram_CMOS_XOR/
????????? Verilog_HDL/                        # Synthesizable RTL & Testbenches (.v)
???   ????????? Exp01_ripple_carry_adder_4bit.v & tb_rca.v
???   ????????? Exp02_ram_8x8.v & tb_ram_8x8.v
???   ????????? Exp03_parallel_adder_4bit.v & tb_parallel_adder_4bit.v
???   ????????? Exp04_up_down_counter.v & tb_up_down_counter.v
???   ????????? Exp05_cmos_gates.v
???   ????????? Exp06_adders.v
???   ????????? Exp07_mux_tg.v
???   ????????? Exp08_xor2.v
????????? stepsandtheory/                     # Full Experiment Manuals (.txt)
    ????????? Exp01_4bit_Ripple_Carry_Adder.txt
    ????????? Exp02_RAM_ROM_Memory_Design.txt
    ????????? Exp03_4bit_Parallel_Adder.txt
    ????????? Exp04_4bit_Asynchronous_UpDown_Counter.txt
    ????????? Exp05_CMOS_Inverter_NAND_NOR.txt
    ????????? Exp06_Half_Adder_and_Full_Adder.txt
    ????????? Exp07_2to1_Multiplexer_and_Transmission_Gate.txt
    ????????? Exp08_Stick_Diagram_and_CMOS_XOR.txt
```

---

## Experiment List & Curriculum Mapping

| Exp # | Experiment Title | Verilog RTL | DSCH Schematic | Microwind Layout |
|:-----:|:-----------------|:------------|:---------------|:-----------------|
| **1** | 4-bit Ripple Carry Adder (ASIC Flow) | `Exp01_ripple_carry_adder_4bit.v` | `Exp01_4bit_ripple_carry_adder.sch` | `Exp01_4bit_ripple_carry_adder.MSK` |
| **2** | RAM/ROM Memory Behavioral Modeling | `Exp02_ram_8x8.v`, `rom_8x8` | `Exp02_ram_8x8.sch`, `sram_6t` | `Exp02_6T_SRAM_cell.MSK`, `Ram64.MSK` |
| **3** | 4-bit Parallel Adder (Behavioral / Dataflow) | `Exp03_parallel_adder_4bit.v` | `Exp03_4bit_parallel_adder.sch` | `Exp03_4bit_parallel_adder.MSK` |
| **4** | 4-bit Asynchronous (Ripple) Up/Down Counter | `Exp04_up_down_counter.v` | `Exp04_4bit_async_up_down_counter.sch` | `Exp04_4bit_ripple_counter.MSK` |
| **5** | CMOS Standard Cells (Inverter, NAND, NOR) | `Exp05_cmos_gates.v` | `Exp05_cmos_inverter.sch`, `nand2`, `nor2` | `Exp05_CMOS_inverter.MSK`, `NAND2`, `NOR2` |
| **6** | CMOS Half Adder & Full Adder | `Exp06_adders.v` | `Exp06_half_adder.sch`, `full_adder` | `Exp06_half_adder.MSK`, `full_adder.MSK` |
| **7** | 2:1 Multiplexer & Transmission Gate | `Exp07_mux_tg.v` | `Exp07_transmission_gate.sch`, `mux2to1` | `Exp07_transmission_gate.MSK`, `mux2to1.MSK` |
| **8** | Stick Diagram & CMOS 2-input XOR Gate | `Exp08_xor2.v` | `Exp08_xor2_cmos.sch` | `Exp08_CMOS_XOR2.MSK`, `stick_diagram_xor.MSK` |

---

## Verification & Status

1. **Microwind Layouts:**
   - **N-Well Polarization:** All N-wells across all 18 `.MSK` files feature contacted N+ well taps tied to `VDD`. Zero floating N-well warnings.
   - **Node Extraction:** All power rails, input clocks, and bias voltages are routed on independent physical nodes. Zero label conflicts.
2. **DSCH Schematics:**
   - Converted to pure ASCII DSCH 3.5 syntax for immediate opening and logic simulation.
3. **Backup Copies for Open Dialogs:**
   - DSCH files mirrored to `C:\Users\admin\Documents\DSch_files\ASSIC\`
   - Microwind files mirrored to `C:\Users\admin\Documents\Microwind\ASSIC\`

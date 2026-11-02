# LTspice Schematic Files (.asc) & Netlists (.cir)

This folder contains the complete set of graphical schematic files (`*.asc`) and SPICE netlists (`*.cir`) for the **Analog & Digital CMOS Design Lab**.

> [!NOTE]
> LTspice defaults its file filter to **Schematics (*.asc)** when using **File > Open**. The schematics below can be directly opened in LTspice to view the circuit diagram, probe waveforms, and click the **Run** (Running Man) button.

---

## Schematics Catalog

| Schematic File | Experiment & Description | Analysis Directive | Nodes to Probe |
|---|---|---|---|
| **`Exp01_common_source.asc`** | **Exp 01: Common Source Amplifier**<br>NMOS amplifier with drain resistor $R_D=100\,\Omega$, $V_{DD}=12\,\text{V}$, input $V_{GG}=1.8\,\text{V} + V_{in}(\text{AC } 1)$ | `.ac dec 10 1 100meg` | `vo_cs` (gain & phase)<br>`vin_cs` |
| **`Exp02_cascode_vs_common_source.asc`** | **Exp 02: Cascode vs. Common Source**<br>Dual circuits on one sheet (CS on left, Cascode on right) for direct overlay Bode comparison | `.ac dec 100 1 100meg` | `vo_cs`<br>`vo_cascode` |
| **`Exp03a_diffamp_resistor_load.asc`** | **Exp 03A: Differential Amplifier (Resistor Load)**<br>Differential pair $M_1, M_2$ with tail current source $I_{SS}=30\,\text{mA}$, $R_D=100\,\Omega$ | `.tran 10m` | `vo1`, `vo2`,<br>`V(vo1)-V(vo2)` |
| **`Exp03b_diffamp_active_load.asc`** | **Exp 03B: Differential Amplifier (Active Load)**<br>Differential pair with PMOS active current mirror load ($M_5, M_6$) | `.tran 10m` | `vo3`, `vo4`,<br>`V(vo3)-V(vo4)` |
| **`Exp04_comparator.asc`** | **Exp 04: Non-Inverting Comparator**<br>Comparator with $V_{ref}=0.3\,\text{V}$ reference and $1\,\text{kHz}$ sine wave input | `.tran 5m` | `vin`, `vref`,<br>`vo` |
| **`Exp05a_current_mirror_op.asc`** | **Exp 05A: Cascode Current Mirror (Operating Point)**<br>Diode-connected reference branch ($M_0, M_1$) and output branch ($M_3, M_2$) | `.op` | Check log (Ctrl+L) for $I_{ref}$ and $I_{out}$ |
| **`Exp05b_current_mirror_dc_sweep.asc`** | **Exp 05B: Cascode Current Mirror (DC Sweep)**<br>Sweep output supply $V_M$ from $0\,\text{V}$ to $30\,\text{V}$ to show saturation region and calculate $R_{out}$ | `.dc VM 0 30 0.1` | `Id(M3)` |
| **`Exp09_ring_oscillator_ltspice.asc`** | **Exp 09: 5-Stage CMOS Ring Oscillator**<br>5-stage inverter ring with initial condition `.ic V(n1)=0` | `.tran 20n` | `n1`, `n2`, `n3`, `n4`, `n5` |

---

## How to Open and Simulate in LTspice

1. Open **LTspice**.
2. Click **File > Open** (shortcut `Ctrl + O`).
3. In the file browser, navigate to either:
   - `C:\Users\admin\Documents\LTspice\`
   - or `c:\Users\admin\Desktop\praticals\ADCMOS\ADCMOS_Exam_Files\LTspice\`
4. Select any `*.asc` file (e.g. `Exp01_common_source.asc`).
5. Click **Open**. The graphical schematic opens with all transistors, power supplies, resistors, and probes clearly drawn.
6. Click the **Run** button (Running Man icon in the toolbar, or **Simulate > Run**).
7. Click on labeled nodes (e.g. `vo_cs`) to plot waveforms immediately.


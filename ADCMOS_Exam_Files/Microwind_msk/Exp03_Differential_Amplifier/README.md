# Experiment 03: CMOS Differential Amplifier Layout

## Aim
To inspect and simulate the physical CMOS layout of a Differential Amplifier in Microwind, observe the differential pair operation, and measure the output response.

## Files in this Folder
1. **`Exp03_differential_amplifier_layout.MSK`**
   - CMOS differential amplifier layout with NMOS differential input pair and PMOS current mirror active load.
   - Configured with $V_{DD}$ rail (top), $V_{SS}$ rail (bottom), input clock pulse $V^+$, and output $V_{out}$ tied to $V^-$ (unity-gain follower configuration).
2. **`AmpliDiff2.MSK`**
   - Original reference example layout from Microwind.

## Circuit & Layout Topology
- **Input Pair:** Differential NMOS pair driven at the gates.
- **Active Load:** PMOS current mirror connected to the $V_{DD}$ rail.
- **Biasing:** Common tail node connected to current sink / tail transistor.
- **Simulation Mode:** Uses BSIM4 model directives (`TITLE #BSIM4`).

## How to Simulate in Microwind
1. Open Microwind: **File > Open**, select `Exp03_differential_amplifier_layout.MSK`.
2. If the canvas is not centered, click **View > Zoom All** (or use mouse scroll).
3. Check Design Rules: **Analysis > Design Rule Checker** (verify 0 DRC errors).
4. Run Simulation: **Simulate > Run Simulation** (or click the Green Play button).
5. Choose **Voltage vs time** or **Voltage vs voltage** to view transfer characteristics:
   - Observe $V_{out}$ tracking the non-inverting input $V^+$.
   - Note the linear operational range and saturation limits near $V_{DD}$ and $V_{SS}$.

## Companion LTspice Simulation
For full AC sweep, common-mode gain ($A_{cm}$), differential gain ($A_d$), and CMRR calculations, refer to:
- `../LTspice/Exp03a_diffamp_resistor_load.cir`
- `../LTspice/Exp03b_diffamp_active_load.cir`


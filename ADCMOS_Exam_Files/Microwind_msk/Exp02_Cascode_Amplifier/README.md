# Experiment 02: Frequency Response of Cascode Amplifier

## Aim
To study and simulate a Cascode Amplifier (Common Source + Common Gate) in Microwind and compare its bandwidth and Miller effect reduction against a single Common Source stage in LTspice.

## Files in this Folder
1. **`Exp02_cascode_amplifier_layout.MSK`**
   - CMOS layout of Cascode amplifier with stacked CS input NMOS and CG shielding NMOS under active load.
   - Probes: $V_{DD}$ rail, $V_{SS}$ rail, input $V_{in\_cs}$, CG bias $V_{b\_cg}$, and output $V_{o\_cascode}$.

## Why Cascode?
- In a single CS stage, Miller effect multiplies $C_{gd}$, degrading high-frequency bandwidth.
- A cascode configuration stacks a Common Gate transistor on top of the Common Source device. The CG transistor fixes the drain voltage of the CS stage, dramatically reducing Miller multiplication on $C_{gd}$ and yielding wider bandwidth and higher output resistance $R_{out} \approx g_{m2} r_{o2} r_{o1}$.

## How to Simulate
- **In Microwind:** Open `Exp02_cascode_amplifier_layout.MSK`, click **View > Zoom All**, and run **Simulate > Run Simulation**.
- **In LTspice:** For AC dual-curve Bode comparison, run `../LTspice/Exp02_cascode_vs_common_source.cir`.


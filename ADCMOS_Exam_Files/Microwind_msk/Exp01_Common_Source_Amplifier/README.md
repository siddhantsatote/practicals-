# Experiment 01: Common Source Amplifier

## Aim
To study and simulate an N-MOSFET Common Source Amplifier, analyze its layout in Microwind, and obtain its voltage gain and frequency response in LTspice.

## Files in this Folder
1. **`Exp01_common_source_layout.MSK`**
   - Transistor-level CMOS layout of Common Source stage with NMOS input transistor and PMOS active load.
   - Probes: $V_{DD}$ rail (top), $V_{SS}$ rail (bottom), input gate pulse $V_{in\_cs}$, and drain output $V_{o\_cs}$.

## Circuit Theory & Parameters
- **Topology:** Input goes to gate, output taken from drain, source connected to common ground ($V_{SS}$).
- **Mid-band Gain:** $A_v \approx -g_m (R_D \parallel r_o)$. The negative sign indicates a $180^\circ$ phase shift.
- **Miller Effect:** At high frequencies, input capacitance increases due to Miller multiplication: $C_{in} = C_{gs} + C_{gd}(1 + |A_v|)$, which bends the gain curve downwards.

## How to Simulate
- **In Microwind:** Open `Exp01_common_source_layout.MSK`, click **View > Zoom All**, and run **Simulate > Run Simulation** to observe transient inversion between $V_{in\_cs}$ and $V_{o\_cs}$.
- **In LTspice:** For AC small-signal Bode plot (gain in dB vs frequency), run `../LTspice/Exp01_common_source.cir`.


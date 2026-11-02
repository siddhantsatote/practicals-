# Experiment 05: MOS Current Mirror Layout

## Aim
To inspect and simulate an NMOS Current Mirror layout in Microwind, observe the mirroring of reference current into the load branch, and determine the output compliance range.

## Files in this Folder
1. **`Exp05_current_mirror.MSK`**
   - NMOS current mirror layout featuring transistor N1 (reference branch) and transistor N2 (copied/mirrored branch).
   - Signals: `Reference Voltage`, `VLoad` (voltage ramp), `Vss` ground rail.
2. **`mirror.MSK`**
   - Reference example layout from Microwind.

## Circuit Theory
- Diode-connected transistor $N1$ sets gate-to-source voltage: $V_{GS1} = V_{GS2}$.
- When both transistors operate in saturation ($V_{DS} \ge V_{GS} - V_{TH}$):
  $$I_{out} = I_{ref} \cdot \frac{(W/L)_2}{(W/L)_1}$$
- When sized identically, $(W/L)_1 = (W/L)_2 \implies I_{out} \approx I_{ref}$.
- Finite output resistance $r_o$ due to channel-length modulation ($\lambda$) causes $I_{out}$ to rise slightly with $V_{Load}$.

## How to Simulate in Microwind
1. Open Microwind: **File > Open**, select `Exp05_current_mirror.MSK`.
2. Click **View > Zoom All**.
3. Check DRC: **Analysis > Design Rule Checker**.
4. Simulate: **Simulate > Run Simulation**.
5. Select **Voltages and currents** or **Voltage vs time**:
   - Observe the current in N1 (reference current) and N2 (output current).
   - Notice that once $V_{Load}$ exceeds the saturation threshold $V_{DS,sat}$, $I_{out}$ becomes flat, acting as a high-impedance current source.

## Companion LTspice Simulation
- Operating point analysis: `../LTspice/Exp05a_current_mirror_op.cir`
- DC output resistance sweep: `../LTspice/Exp05b_current_mirror_dc_sweep.cir`


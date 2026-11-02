# Experiment 04: CMOS Comparator & Schmitt Trigger (Hysteresis)

## Aim
To study the CMOS Comparator and examine how positive feedback (Schmitt Trigger) introduces hysteresis to prevent noise-induced false switching.

## Files in this Folder
1. **`Exp04_schmitt_trigger.MSK`**
   - High-performance CMOS Schmitt Trigger layout enhanced from Microwind examples (`Trigger.MSK`).
   - Features dual-stage outputs: `Trigger_Out` (Schmitt Trigger output with hysteresis) and `Inv_Out` (Inverted output).
   - Input clock / ramp: `clock1` (sweeping through upper and lower threshold voltages $V_{TH}$ and $V_{TL}$).

## Theory & Why Schmitt Trigger?
- A standard open-loop comparator is extremely sensitive to noise around the reference voltage $V_{ref}$, causing rapid output oscillations (chatter).
- As noted in the lab manual (Exp 4 Step 10), adding positive feedback creates two separate thresholds ($V_{TH}$ and $V_{TL}$), providing noise immunity.

## How to Simulate in Microwind
1. Open Microwind: **File > Open**, select `Exp04_schmitt_trigger.MSK`.
2. Click **View > Zoom All**.
3. Run Simulation: **Simulate > Run Simulation**.
4. In **Voltage vs time**:
   - Observe `clock1` input signal swinging between rails.
   - Observe `Trigger_Out` transitioning sharply when the upper threshold is exceeded during the rising edge, and falling only when the lower threshold is crossed during the falling edge.
   - Switch to **Voltage vs voltage** to observe the classic Schmitt trigger hysteresis loop.

## Companion LTspice Simulation
- The primary transistor-level transient comparator is located in `../LTspice/Exp04_comparator.cir`.


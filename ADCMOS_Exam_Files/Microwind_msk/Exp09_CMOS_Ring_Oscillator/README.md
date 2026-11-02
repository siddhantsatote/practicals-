# Experiment 09: CMOS Ring Oscillator

## Aim
To design and simulate a CMOS Ring Oscillator in Microwind with an odd number of inverter stages ($n = 3, 5, 7$), measure oscillation frequencies $f_{osc}$, and determine the stage propagation delay $t_d$.

## Files in this Folder
1. **`Exp09_ring_oscillator_3stage.MSK`**
   - 3-stage CMOS ring oscillator (closed loop) with visible observation nodes (`s1`, `s2`, `s3`).
2. **`Exp09_inverter_chain_3stage.MSK`**
   - Original 3-inverter layout from Microwind book.
3. **`Exp09_ring_oscillator_5stage.MSK`**
   - 5-stage CMOS ring oscillator equipped with oscillation enable gate (`EnableOsc`).
   - Output node: `out5` (visible probe). Starts oscillating once `EnableOsc` goes High.
4. **`Exp09_ring_oscillator_7stage.MSK`**
   - 7-stage CMOS ring oscillator layout for completing the 3, 5, 7 stage comparative study.
   - Output node: `out7` (visible probe).
5. **`Exp09_VCO_oscillator.MSK`**
   - Voltage Controlled Oscillator (VCO) enhanced from Microwind Examples (`VCO.MSK`).
   - Features tuning node `Vcontrol` and output `Vhigh`. Demonstrates frequency tuning via control voltage.

---

## Theory & Formulas
- A ring oscillator consists of an **odd number** $n$ of inverters chained in a closed feedback loop: output of stage $n$ feeds input of stage 1.
- Because an odd number of inversions provides negative feedback, there is no DC stable state, forcing the circuit into continuous oscillation.
- A single transition must travel around the loop **twice** to complete one full cycle (rise then fall):
  $$T = 2 \cdot n \cdot t_d \implies f = \frac{1}{T} = \frac{1}{2 \cdot n \cdot t_d}$$
  $$\text{Propagation delay per stage: } t_d = \frac{T}{2 \cdot n}$$

---

## Observation & Measurement Table (Page 16 in Lab Guide)
| Stages ($n$) | Layout File to Open | Measured Period $T$ | Frequency $f = 1/T$ | Stage Delay $t_d = T / (2n)$ |
|:------------:|:--------------------|:-------------------:|:-------------------:|:----------------------------:|
| **3** | `Exp09_ring_oscillator_3stage.MSK` | Measure in simulator | $1/T$ | $T / 6$ |
| **5** | `Exp09_ring_oscillator_5stage.MSK` | Measure in simulator | $1/T$ | $T / 10$ |
| **7** | `Exp09_ring_oscillator_7stage.MSK` | Measure in simulator | $1/T$ | $T / 14$ |

---

## How to Simulate in Microwind
1. Open Microwind: **File > Open**, select e.g. `Exp09_ring_oscillator_5stage.MSK` or `Exp09_ring_oscillator_7stage.MSK`.
2. Click **View > Zoom All**.
3. Run Simulation: **Simulate > Run Simulation**.
4. **Important:** The enable signal `EnableOsc` transitions high at $0.8\,\text{ns}$. Run the simulation past $1\,\text{ns}$ (click **More** repeatedly) until stable oscillation cycles are displayed.
5. In the simulation waveform window:
   - Check the **Delay** box.
   - Click on two consecutive rising edges of the output to measure the period $T$.
   - Calculate frequency $f = 1/T$ and stage delay $t_d = T / (2 \cdot n)$.

## Companion LTspice Simulation
- Transistor-level ring oscillator with `.ic` initial conditions: `../LTspice/Exp09_ring_oscillator_ltspice.cir`.

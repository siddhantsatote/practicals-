MICROWIND .MSK FILES - HOW TO USE
=================================
Open in Microwind: File > Open > choose the .MSK file. If the screen looks empty click View > Zoom All.
Then: Simulate > Run Simulation > Voltage vs time > Run.

Exp06_CMOS_inverter.MSK              Inverter. Copy of Microwind's own example (examples\inverter\cmos.MSK). Has Vdd, Vss, clock A, visible node nA.
Exp06_AND2_nand_plus_inverter.MSK    NAND2 + inverter = AND2 (examples\basic gates\And2.MSK). Clocks a, b, visible output "and". The NAND stage is inside it.
Exp07_carry_cell_simulate.MSK        Carry cell of a full adder (output is ~Carry = NOT Cout). Clocks A=2ns, B=4ns, C=8ns period, visible node ~Carry.
                                     (Only the clock/visible lines were added to Microwind's carryCell.MSK.)
Exp08_transmission_gate_switch.MSK   NMOS+PMOS transmission gate with Enable/~Enable inverter (Exp 8 part B idea). DataIn sine, DataOut visible.
Exp03_differential_amplifier_layout.MSK  Differential amplifier layout (Exp 3 reference layout), Vout connected to V-.

These are Microwind's own example files (and one lightly edited copy), so they match your 3.5 install.
Not included: NOR2, XOR, MUX, half adder, ring oscillator. Microwind's own folder probably has some:
look in  ...\microwind35\examples\basic gates\  (And2.MSK came from there). Attach any you find and I can prepare them.

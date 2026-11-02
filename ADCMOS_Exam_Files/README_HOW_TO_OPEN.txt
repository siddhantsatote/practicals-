ADCMOS EXAM FILES - HOW TO OPEN THEM
====================================

LTspice files (folder LTspice) - Exp 1 to 5 and the Exp 9 ring oscillator
  1. Start LTspice.
  2. File > Open > choose the .cir file (set the file type box to "All Files" if you do not see it).
  3. LTspice shows the netlist text and a Run button; click Run (running-man icon).
     The simulation command is already inside the file.
  4. Click a node name or use Plot Settings > Add Trace to plot (for example V(vo_cs)).
  5. Exp 5: the "a" file gives the operating point (read it with View > SPICE Output Log);
     the "b" file gives the DC sweep (add trace Id(M3)).
  6. Exp 3: to try a load, delete the * at the start of ONE load line, save, Run again.

  They use generic transistor models so they run anywhere. To use the lab's models
  (AP9465GEM, FDS4559): put the .lib files in the same folder, delete the .model line,
  add   .lib AP9465GEM.lib   and replace NMOD / PMOD in the transistor lines with the
  model name found inside the .lib file.

  These are NETLISTS (text), so no schematic picture appears. If the exam needs a schematic
  screenshot, draw it with the guide for that experiment.

Microwind files (folder Microwind_Verilog) - Exp 6, 7, 8, 10
  1. Start Microwind, File > Select Foundry, choose the lab's rule file, File > New.
  2. Compile > Compile Verilog File > choose the .v file > Open.
  3. The layout is generated. Add a Clock (palette) on each input, a Visible node on each
     output, then Analysis > Design Rule Checker and Simulate > Run Simulation.
  Files: Exp06_inverter / nand2 / nor2 / gates_all / logic_functions, Exp07_half_adder /
  full_adder, Exp08_mux2to1_gates / mux2to1_equation, Exp10_xor2.

NOT INCLUDED
  - Microwind .MSK layout files. They cannot be written reliably without Microwind itself,
    and a file that fails to open would cost you time in the exam. The .v files compile to
    the same gates in seconds.
  - Exp 9 ring oscillator in Microwind: a feedback loop cannot be compiled from Verilog.
    Build one inverter, copy it 5 times and close the loop by hand (see the Exp 9 guide).
  - Transmission-gate mux (Exp 8 part B): draw by hand (see the Exp 8 guide).

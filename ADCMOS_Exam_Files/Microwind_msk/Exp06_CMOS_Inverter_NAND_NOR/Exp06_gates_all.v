// ============================================================================
// EXPERIMENT 6: CMOS INVERTER, NAND, NOR AND COMPLEX GATES
// Verilog synthesis file for Microwind (Compile -> Compile Verilog File)
// Reference: SPPU TE E&TC VLSI ADCMOS Lab Guide (Pages 10-12)
// ============================================================================

// ----------------------------------------------------------------------------
// Part D: Standard 2-Input CMOS Basic Gates
// ----------------------------------------------------------------------------
module gates(
    input  A,
    input  B,
    output Yinv,
    output Ynand,
    output Ynor
);
    assign Yinv  = ~A;
    assign Ynand = ~(A & B);
    assign Ynor  = ~(A | B);
endmodule


// ----------------------------------------------------------------------------
// Part E: Complete Gates & Complex AOI Functions from Practical Journal
//   Y_inv   = A'                     (Inverter)
//   Y_nand2 = (A . B)'               (2-input NAND)
//   Y_nor2  = (A + B)'               (2-input NOR)
//   Y_and2  = A . B                  (2-input AND)
//   Y_or2   = A + B                  (2-input OR)
//   Y_nand3 = (A . B . C)'           (3-input NAND, journal Y4)
//   Y_aoi1  = ((A + B + C) . D)'     (Journal Y1: AOI gate)
//   Y_aoi2  = ((A . B) + (C . D))'   (Journal Y2: AOI gate)
// ----------------------------------------------------------------------------
module gates_all(
    input  A,
    input  B,
    input  C,
    input  D,
    output Y_inv,
    output Y_nand2,
    output Y_nor2,
    output Y_and2,
    output Y_or2,
    output Y_nand3,
    output Y_aoi1,
    output Y_aoi2
);
    // Basic gates
    assign Y_inv   = ~A;
    assign Y_nand2 = ~(A & B);
    assign Y_nor2  = ~(A | B);
    assign Y_and2  = (A & B);
    assign Y_or2   = (A | B);

    // Journal 3-input and complex AOI gates
    assign Y_nand3 = ~(A & B & C);
    assign Y_aoi1  = ~((A | B | C) & D);
    assign Y_aoi2  = ~((A & B) | (C & D));
endmodule

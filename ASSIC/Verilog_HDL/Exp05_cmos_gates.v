module cmos_inverter (input a, output y);
    assign y = ~a;
endmodule

module cmos_nand2 (input a, b, output y);
    assign y = ~(a & b);
endmodule

module cmos_nor2 (input a, b, output y);
    assign y = ~(a | b);
endmodule

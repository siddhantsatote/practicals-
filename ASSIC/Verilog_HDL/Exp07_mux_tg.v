module mux2to1 (input d0, d1, s, output y);
    assign y = s ? d1 : d0;
endmodule

module transmission_gate (input in, en, en_b, inout out);
    assign out = (en && !en_b) ? in : 1'bz;
endmodule

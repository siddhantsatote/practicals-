`timescale 1ns / 1ps
module tb_ram_8x8;
    reg clk;
    reg we;
    reg [2:0] addr;
    reg [7:0] din;
    wire [7:0] dout;

    ram_8x8 uut (
        .clk(clk),
        .we(we),
        .addr(addr),
        .din(din),
        .dout(dout)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0; we = 0; addr = 0; din = 0;

        // Write data
        #10 we = 1; addr = 3'b000; din = 8'hAA;
        #10 addr = 3'b001; din = 8'hBB;
        #10 addr = 3'b010; din = 8'hCC;
        #10 addr = 3'b011; din = 8'hDD;

        // Read data
        #10 we = 0; addr = 3'b000;
        #10 addr = 3'b001;
        #10 addr = 3'b010;
        #10 addr = 3'b011;

        #20 $finish;
    end
endmodule

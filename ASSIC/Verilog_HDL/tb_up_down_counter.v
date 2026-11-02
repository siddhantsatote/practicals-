`timescale 1ns / 1ps
module tb_up_down_counter;
    reg clk;
    reg reset;
    reg up_down;
    wire [3:0] count;

    up_down_counter uut (
        .clk(clk),
        .reset(reset),
        .up_down(up_down),
        .count(count)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        up_down = 1;
        #10 reset = 0; // Release reset

        // Test Up counting
        #160;

        // Test Down counting
        up_down = 0;
        #160;

        $finish;
    end
endmodule

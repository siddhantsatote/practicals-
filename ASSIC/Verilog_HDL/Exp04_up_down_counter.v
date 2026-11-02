// -------------------------------------------------------------
// EXPERIMENT 4: 4-bit Asynchronous (Ripple) Up/Down Counter
// -------------------------------------------------------------
module up_down_counter (
    input clk,
    input reset,        // Active high reset
    input up_down,      // 1 for Up, 0 for Down
    output reg [3:0] count
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 4'b0000;
        else if (up_down)
            count <= count + 1'b1; // Up count
        else
            count <= count - 1'b1; // Down count
    end
endmodule

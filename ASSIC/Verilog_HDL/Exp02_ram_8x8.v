// -------------------------------------------------------------
// EXPERIMENT 2: RAM/ROM Memory Design (Behavioral Modeling)
// -------------------------------------------------------------
module ram_8x8 (
    input clk,
    input we,                // write enable
    input [2:0] addr,        // 3-bit address (0-7)
    input [7:0] din,         // data input
    output reg [7:0] dout    // data output
);
    reg [7:0] mem [0:7];     // 8 locations, each 8-bit

    always @(posedge clk) begin
        if (we)
            mem[addr] <= din;       // write operation
        else
            dout <= mem[addr];      // read operation
    end
endmodule

module rom_8x8 (
    input clk,
    input [2:0] addr,
    output reg [7:0] dout
);
    always @(posedge clk) begin
        case (addr)
            3'b000: dout <= 8'h11;
            3'b001: dout <= 8'h22;
            3'b010: dout <= 8'h33;
            3'b011: dout <= 8'h44;
            3'b100: dout <= 8'h55;
            3'b101: dout <= 8'h66;
            3'b110: dout <= 8'h77;
            3'b111: dout <= 8'h88;
            default: dout <= 8'h00;
        endcase
    end
endmodule

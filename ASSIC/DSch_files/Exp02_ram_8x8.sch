v3.5
# 8x8 Synchronous RAM Block
# Inputs: clk, we, addr[2:0], din[7:0] -> Output: dout[7:0]
C 20 20 25 35 0
t 15 25 clk
t 15 30 we
t 15 35 addr[2:0]
t 15 45 din[7:0]
t 50 35 dout[7:0]
t 30 15 RAM_8x8

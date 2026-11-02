v3.5
# 4-bit Asynchronous (Ripple) Up/Down Counter
# Cascaded T-FF / D-FF stages
C 10 15 10 12 0
C 25 15 10 12 0
C 40 15 10 12 0
C 55 15 10 12 0
w 20 21 25 21
w 35 21 40 21
w 50 21 55 21
t 5 21 clk
t 5 10 reset
t 5 30 up_down
t 20 18 Q0
t 35 18 Q1
t 50 18 Q2
t 65 18 Q3
t 30 8 Async_Counter_4bit

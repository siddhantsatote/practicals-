; ==============================================================================
; Experiment 08: Square Wave Generation (8051 Assembly)
; Page 48 of Alard College MCA Lab Manual
; ==============================================================================

ORG 0000H

HERE:
    CPL P1.0            ; Complement P1.0 to generate square wave
    ACALL DELAY         ; Call 20 ms delay
    SJMP HERE

; Delay subroutine using nested register loop
DELAY:
    MOV R2, #20
UP:
    MOV R3, #100
WAIT1:
    MOV R4, #20
WAIT:
    DJNZ R4, WAIT
    DJNZ R3, WAIT1
    DJNZ R2, UP
    RET

END

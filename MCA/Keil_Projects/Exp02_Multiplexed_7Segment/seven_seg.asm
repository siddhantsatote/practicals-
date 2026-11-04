; ==============================================================================
; Experiment 02: Multiplexed 7-Segment Display (8051 Assembly)
; ==============================================================================

ORG 0000H

START:
    ; Display digit '1' on Display 1 (P3.0 High, P3.1 Low)
    SETB P3.0
    CLR  P3.1
    MOV  P1, #06H        ; Pattern for '1'
    ACALL DELAY_1MS

    ; Display digit '6' on Display 2 (P3.0 Low, P3.1 High)
    CLR  P3.0
    SETB P3.1
    MOV  P1, #7DH        ; Pattern for '6'
    ACALL DELAY_1MS

    SJMP START

DELAY_1MS:
    MOV R2, #2
D1: MOV R3, #250
D2: DJNZ R3, D2
    DJNZ R2, D1
    RET

END

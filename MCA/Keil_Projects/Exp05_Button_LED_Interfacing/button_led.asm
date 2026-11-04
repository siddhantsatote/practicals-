; ==============================================================================
; Experiment 05: Button & LED Interfacing (8051 Assembly)
; ==============================================================================

ORG 0000H

    SETB P3.2           ; Make P3.2 input for push button
    MOV P1, #0FFH       ; Turn off all LEDs

MONITOR:
    JNB P3.2, BTN_PRESS ; If button is pressed (LOW), jump to BTN_PRESS
    MOV P1, #0AAH       ; Pattern 1: alternate LEDs
    ACALL DELAY
    MOV P1, #55H        ; Pattern 2: alternate LEDs
    ACALL DELAY
    SJMP MONITOR

BTN_PRESS:
    MOV P1, #00H        ; All LEDs ON
    ACALL DELAY
    MOV P1, #0FFH       ; All LEDs OFF
    ACALL DELAY
    SJMP MONITOR

DELAY:
    MOV R2, #200
D1: MOV R3, #250
D2: DJNZ R3, D2
    DJNZ R2, D1
    RET

END

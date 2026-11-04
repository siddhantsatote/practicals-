; ==============================================================================
; Experiment 03: DAC0808 Waveform Generation (8051 Assembly)
; Port 1 connected to DAC inputs
; ==============================================================================

ORG 0000H

MAIN_LOOP:
    ; Triangular Wave Generation
    MOV A, #00H
UP_RAMP:
    MOV P1, A
    INC A
    CJNE A, #0FFH, UP_RAMP

DOWN_RAMP:
    MOV P1, A
    DEC A
    JNZ DOWN_RAMP

    SJMP MAIN_LOOP

END

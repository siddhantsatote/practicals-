; ==============================================================================
; Experiment 04: Stepper Motor Interfacing (8051 Assembly)
; Port 2 (P2.0-P2.3) connected to ULN2003 Driver
; ==============================================================================

ORG 0000H

START:
    ; Step 1: 09H (Coils 1 & 4)
    MOV P2, #09H
    ACALL DELAY
    ; Step 2: 0CH (Coils 1 & 2)
    MOV P2, #0CH
    ACALL DELAY
    ; Step 3: 06H (Coils 2 & 3)
    MOV P2, #06H
    ACALL DELAY
    ; Step 4: 03H (Coils 3 & 4)
    MOV P2, #03H
    ACALL DELAY

    SJMP START

; Delay subroutine using registers
DELAY:
    MOV R2, #20
D1: MOV R3, #200
D2: MOV R4, #230
D3: DJNZ R4, D3
    DJNZ R3, D2
    DJNZ R2, D1
    RET

END

; ==============================================================================
; Experiment 09: Serial Port Communication (8051 Assembly)
; Page 52 of Alard College MCA Lab Manual
; ==============================================================================

ORG 0000H

START:
    MOV SCON, #50H      ; Mode 1, 8-bit UART, REN enabled
    MOV TMOD, #20H      ; Timer 1 Mode 2 (8-bit auto-reload)
    MOV TH1, #-3        ; 9600 baud rate (0FDH)
    SETB TR1            ; Start Timer 1

AGAIN:
    MOV SBUF, #'I'      ; Send character 'I' as per lab manual
WAIT_TX:
    JNB TI, WAIT_TX     ; Wait for TI flag
    CLR TI              ; Clear TI flag

    ; Optional delay between transmissions
    MOV R2, #100
D1: MOV R3, #250
D2: DJNZ R3, D2
    DJNZ R2, D1

    SJMP AGAIN

END

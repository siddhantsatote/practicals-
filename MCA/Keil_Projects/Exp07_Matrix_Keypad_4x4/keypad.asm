; ==============================================================================
; Experiment 07: 4x4 Matrix Keypad Interfacing (8051 Assembly)
; ==============================================================================

ORG 0000H

START:
    ; Scan Column 1 (P1.4 = 0)
    MOV P1, #0EFH
    JNB P1.0, K_1
    JNB P1.1, K_4
    JNB P1.2, K_7
    JNB P1.3, K_STAR

    ; Scan Column 2 (P1.5 = 0)
    MOV P1, #0DFH
    JNB P1.0, K_2
    JNB P1.1, K_5
    JNB P1.2, K_8
    JNB P1.3, K_0

    ; Scan Column 3 (P1.6 = 0)
    MOV P1, #0BFH
    JNB P1.0, K_3
    JNB P1.1, K_6
    JNB P1.2, K_9
    JNB P1.3, K_HASH

    SJMP START

K_1: MOV P2, #06H ; Display '1'
     ACALL DELAY
     SJMP START
K_2: MOV P2, #5BH ; Display '2'
     ACALL DELAY
     SJMP START
K_3: MOV P2, #4FH ; Display '3'
     ACALL DELAY
     SJMP START
K_4: MOV P2, #66H ; Display '4'
     ACALL DELAY
     SJMP START
K_5: MOV P2, #6DH ; Display '5'
     ACALL DELAY
     SJMP START
K_6: MOV P2, #7DH ; Display '6'
     ACALL DELAY
     SJMP START
K_7: MOV P2, #07H ; Display '7'
     ACALL DELAY
     SJMP START
K_8: MOV P2, #7FH ; Display '8'
     ACALL DELAY
     SJMP START
K_9: MOV P2, #6FH ; Display '9'
     ACALL DELAY
     SJMP START
K_0: MOV P2, #3FH ; Display '0'
     ACALL DELAY
     SJMP START
K_STAR: MOV P2, #77H
     ACALL DELAY
     SJMP START
K_HASH: MOV P2, #7CH
     ACALL DELAY
     SJMP START

DELAY:
    MOV R2, #100
D1: MOV R3, #250
D2: DJNZ R3, D2
    DJNZ R2, D1
    RET

END

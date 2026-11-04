; ==============================================================================
; Experiment 01: Memory Transfer & Arithmetic Operations (8051 Assembly)
; Alard College of Engineering & Management - MCA Lab
; ==============================================================================

ORG 0000H

; Part 1: Memory Transfer using Addressing Modes
    MOV A, #23H         ; Immediate addressing
    MOV R1, #30H        ; Load pointer into R1
    MOV @R1, A          ; Indirect addressing: Store 23H at memory location 30H

; Part 2: Block Data Transfer with Branching Loop
    MOV R0, #20H        ; Source memory block pointer
    MOV R1, #40H        ; Destination memory block pointer
    MOV R7, #05H        ; Loop counter (5 bytes)

UP:
    MOV A, @R0          ; Read byte from source
    MOV @R1, A          ; Write byte to destination
    INC R0              ; Increment source pointer
    INC R1              ; Increment destination pointer
    DJNZ R7, UP         ; Decrement counter and jump if not zero

; Part 3: Arithmetic Operations
    ; 1. Addition
    MOV A, #02H
    ADD A, #03H         ; A = 05H
    MOV R0, A           ; Store addition result

    ; 2. Subtraction
    CLR C               ; Clear carry/borrow flag
    MOV A, #05H
    SUBB A, #02H        ; A = 03H
    MOV R1, A           ; Store subtraction result

    ; 3. Multiplication
    MOV A, #03H
    MOV B, #04H
    MUL AB              ; A = Lower byte (0CH), B = Upper byte (00H)
    MOV R2, A
    MOV R3, B

    ; 4. Division
    MOV A, #95H
    MOV B, #10H
    DIV AB              ; A = Quotient (09H), B = Remainder (05H)
    MOV R4, A
    MOV R5, B

; Endless loop to halt execution cleanly in Keil (prevents Error 65)
HALT:
    SJMP HALT

END

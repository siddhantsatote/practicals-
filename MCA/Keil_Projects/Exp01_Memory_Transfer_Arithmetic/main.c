/*
 * Experiment 01: Simple Programs on Memory Transfer & Arithmetic Operations
 * Target: AT89C51 / 8051 Microcontroller
 * Toolchain: Keil C51
 */

#include <reg51.h>

// Function declarations
void memory_transfer_demo(void);
void block_transfer_demo(void);
void arithmetic_operations_demo(void);

// Global test variables
unsigned char data src_block[5] = {0x11, 0x22, 0x33, 0x44, 0x55};
unsigned char data dst_block[5];

unsigned char sum_res, sub_res;
unsigned int  mul_res;
unsigned char div_quot, div_rem;

void main(void) {
    memory_transfer_demo();
    block_transfer_demo();
    arithmetic_operations_demo();

    // Prevent program from exiting code space (avoids Keil Error 65)
    while (1) {
        P1 = 0x55;
        P1 = 0xAA;
    }
}

void memory_transfer_demo(void) {
    unsigned char val;
    val = 0x23;          // Immediate addressing (MOV A, #23H)
    P1 = val;            // Direct addressing to Port 1
}

void block_transfer_demo(void) {
    unsigned char i;
    // Block transfer 5 bytes from source to destination
    for (i = 0; i < 5; i++) {
        dst_block[i] = src_block[i];
    }
}

void arithmetic_operations_demo(void) {
    unsigned char a = 0x0A;
    unsigned char b = 0x03;

    sum_res  = a + b;           // 0x0D (13)
    sub_res  = a - b;           // 0x07 (7)
    mul_res  = (unsigned int)a * b; // 0x1E (30)
    div_quot = a / b;           // 0x03 (3)
    div_rem  = a % b;           // 0x01 (1)
}

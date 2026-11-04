/*
 * Experiment 08: Square Wave Generation using 8051 Timer & Interrupt
 * Target Pin: Port 1.0 (P1.0) and Port 1.5 (P1.5)
 * Crystal Frequency: 11.0592 MHz
 * Timer 0 configured in Mode 1 (16-bit Timer)
 * Demonstrates:
 *   1. Hardware Timer Interrupt (ISR vector 0x000B, interrupt 1)
 *   2. 50% Duty cycle square wave generation
 *   3. Verification with Keil Logic Analyzer
 */

#include <reg51.h>

sbit WAVE_OUT  = P1^0;
sbit WAVE_OUT2 = P1^5;

// Timer 0 Interrupt Service Routine (Vector 1 at 000BH)
void timer0_isr(void) interrupt 1 {
    // Reload timer values for 10 ms half-period (10 ms high, 10 ms low = 20 ms period / 50 Hz)
    // 10 ms / 1.085 us = 9216 machine cycles -> 65536 - 9216 = 56320 = 0xDC00
    TH0 = 0xDC;
    TL0 = 0x00;

    // Toggle output pins
    WAVE_OUT  = ~WAVE_OUT;
    WAVE_OUT2 = ~WAVE_OUT2;
}

void main(void) {
    WAVE_OUT  = 0;
    WAVE_OUT2 = 0;

    // 1. Configure Timer 0 in Mode 1 (16-bit timer)
    TMOD = 0x01;

    // 2. Load initial count
    TH0 = 0xDC;
    TL0 = 0x00;

    // 3. Enable Timer 0 Interrupt and Global Interrupts
    ET0 = 1; // Enable Timer 0 interrupt
    EA  = 1; // Enable global interrupt flag

    // 4. Start Timer 0
    TR0 = 1;

    // Background loop - CPU is free for other tasks while timer interrupt generates wave
    while (1) {
        // System alive indicator
    }
}

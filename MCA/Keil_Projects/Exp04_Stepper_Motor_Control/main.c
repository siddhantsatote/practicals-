/*
 * Experiment 04: Stepper Motor Interfacing with 8051 using Timer Delay
 * Motor connected to Port 2 (P2.0 - P2.3) via ULN2003 / L293D driver IC
 * Supports Clockwise, Counter-Clockwise, and Speed control via Timer
 */

#include <reg51.h>

#define MOTOR_PORT P2

// 4-step sequence (Full-step mode): Coil A, B, C, D
unsigned char code step_cw[4]  = {0x09, 0x0C, 0x06, 0x03}; // Clockwise: 1001, 1100, 0110, 0011
unsigned char code step_ccw[4] = {0x03, 0x06, 0x0C, 0x09}; // Counter-Clockwise

// Software delay using 8051 Timer 0
void timer0_delay(unsigned int count) {
    while (count--) {
        TMOD = (TMOD & 0xF0) | 0x01; // Timer 0, Mode 1 (16-bit timer)
        TL0 = 0x00;
        TH0 = 0xDC;                  // Delay approx 10 ms at 11.0592 MHz
        TR0 = 1;                     // Start Timer 0
        while (TF0 == 0);            // Wait for overflow
        TR0 = 0;                     // Stop Timer 0
        TF0 = 0;                     // Clear overflow flag
    }
}

void rotate_clockwise(unsigned int rotations) {
    unsigned int i;
    unsigned char s;
    for (i = 0; i < rotations * 48; i++) { // approx 48 full steps per revolution
        for (s = 0; s < 4; s++) {
            MOTOR_PORT = (MOTOR_PORT & 0xF0) | step_cw[s];
            timer0_delay(2); // 20 ms step delay
        }
    }
}

void rotate_counter_clockwise(unsigned int rotations) {
    unsigned int i;
    unsigned char s;
    for (i = 0; i < rotations * 48; i++) {
        for (s = 0; s < 4; s++) {
            MOTOR_PORT = (MOTOR_PORT & 0xF0) | step_ccw[s];
            timer0_delay(2);
        }
    }
}

void main(void) {
    MOTOR_PORT = 0x00;

    while (1) {
        // Rotate 2 revolutions Clockwise
        rotate_clockwise(2);
        timer0_delay(50); // Pause for 500 ms

        // Rotate 2 revolutions Counter-Clockwise
        rotate_counter_clockwise(2);
        timer0_delay(50); // Pause for 500 ms
    }
}

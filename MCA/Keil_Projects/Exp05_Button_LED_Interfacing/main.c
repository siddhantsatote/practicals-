/*
 * Experiment 05: Interfacing Push Button and 8 LEDs to 8051
 * 8 LEDs connected to Port 1 (P1.0 - P1.7) via 280 ohm resistors
 * Push Button connected to Port 3.2 (P3.2) with pull-up resistor
 * Demonstrates: Button debounce, LED toggle, Blinking, and Chaser patterns
 */

#include <reg51.h>

#define LED_PORT P1
sbit BUTTON = P3^2;

void delay_ms(unsigned int ms) {
    unsigned int i, j;
    for (i = 0; i < ms; i++)
        for (j = 0; j < 120; j++);
}

// Running Chaser Pattern
void led_chaser(void) {
    unsigned char pattern = 0x01;
    unsigned char i;
    for (i = 0; i < 8; i++) {
        LED_PORT = ~pattern; // Active-low LED display
        delay_ms(100);
        pattern <<= 1;
    }
}

// All LEDs Blinking
void led_blink_all(void) {
    LED_PORT = 0x00; // All LEDs ON
    delay_ms(300);
    LED_PORT = 0xFF; // All LEDs OFF
    delay_ms(300);
}

void main(void) {
    BUTTON = 1;        // Configure P3.2 as input
    LED_PORT = 0xFF;   // Turn all LEDs off

    while (1) {
        if (BUTTON == 0) { // Button pressed (Active Low)
            delay_ms(20);  // Debounce delay
            if (BUTTON == 0) {
                // Perform Chaser pattern when pressed
                led_chaser();
                while (BUTTON == 0); // Wait for button release
                delay_ms(20);
            }
        } else {
            // Idle: Periodic blink
            led_blink_all();
        }
    }
}

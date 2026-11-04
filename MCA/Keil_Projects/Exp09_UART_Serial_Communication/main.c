/*
 * Experiment 09: 8051 Serial Port (UART) Communication with PC (Both-Way)
 * Baud Rate: 9600 Baud
 * Crystal: 11.0592 MHz
 * Configuration:
 *   SCON = 0x50 (Mode 1, 8-bit UART, REN enabled)
 *   TMOD = 0x20 (Timer 1 Mode 2, 8-bit auto-reload)
 *   TH1  = 0xFD (-3 for 9600 baud)
 */

#include <reg51.h>

void uart_init(void) {
    SCON = 0x50; // Mode 1: 8-bit UART, Receive Enable (REN=1)
    TMOD = 0x20; // Timer 1 Mode 2 (8-bit auto-reload)
    TH1  = 0xFD; // 9600 Baud rate with 11.0592 MHz crystal (-3)
    TR1  = 1;    // Start Timer 1
    TI   = 0;    // Clear Transmit Interrupt flag
    RI   = 0;    // Clear Receive Interrupt flag
}

void uart_tx_char(char ch) {
    SBUF = ch;         // Load character into Serial Buffer
    while (TI == 0);   // Wait for transmission to finish
    TI = 0;            // Clear flag for next transmission
}

void uart_tx_string(char *str) {
    while (*str) {
        uart_tx_char(*str++);
    }
}

char uart_rx_char(void) {
    while (RI == 0);   // Wait for character to arrive
    RI = 0;            // Clear receive flag
    return SBUF;       // Return received character
}

void main(void) {
    char received_char;

    uart_init();

    // Send welcome banner to PC Serial Terminal
    uart_tx_string("\r\n========================================\r\n");
    uart_tx_string("  ALARD COLLEGE OF ENGG - MCA LAB      \r\n");
    uart_tx_string("  8051 SERIAL UART COMMUNICATION (9600)\r\n");
    uart_tx_string("========================================\r\n");
    uart_tx_string("Type any key on PC keyboard to echo:\r\n");

    while (1) {
        // Read character sent from PC
        received_char = uart_rx_char();

        // Echo back to PC with confirmation
        uart_tx_string("Received: '");
        uart_tx_char(received_char);
        uart_tx_string("'\r\n");

        // Also display on Port 1 LEDs
        P1 = ~received_char;
    }
}

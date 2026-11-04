/*
 * Experiment 07: Interfacing 4x4 Matrix Keypad to 8051 Microcontroller
 * Keypad Port: Port 1 (P1)
 *   Rows:    P1.0 - P1.3 (Inputs with internal pull-ups)
 *   Columns: P1.4 - P1.7 (Outputs grounded sequentially during scan)
 * Display Port: Port 2 (Displays 7-Segment pattern or ASCII character)
 */

#include <reg51.h>

#define KEYPAD_PORT P1
#define DISPLAY_PORT P2

// Keypad layout lookup table
unsigned char code key_map[4][4] = {
    {'1', '2', '3', 'A'},
    {'4', '5', '6', 'B'},
    {'7', '8', '9', 'C'},
    {'*', '0', '#', 'D'}
};

// 7-segment codes for key characters
unsigned char code seg_lut[] = {
    0x3F, 0x06, 0x5B, 0x4F, // 0, 1, 2, 3
    0x66, 0x6D, 0x7D, 0x07, // 4, 5, 6, 7
    0x7F, 0x6F, 0x77, 0x7C, // 8, 9, A, B
    0x39, 0x5E              // C, D
};

void delay_ms(unsigned int ms) {
    unsigned int i, j;
    for (i = 0; i < ms; i++)
        for (j = 0; j < 120; j++);
}

// Scans 4x4 keypad and returns detected key character, or 0 if no key pressed
unsigned char keypad_scan(void) {
    unsigned char col, row;
    unsigned char col_mask;

    for (col = 0; col < 4; col++) {
        // Drive one column LOW, others HIGH: 0xEF, 0xDF, 0xBF, 0x7F
        col_mask = ~(0x10 << col);
        KEYPAD_PORT = col_mask | 0x0F; // keep rows (P1.0-P1.3) pulled high

        // Check each row
        if ((KEYPAD_PORT & 0x01) == 0) { row = 0; goto KEY_FOUND; }
        if ((KEYPAD_PORT & 0x02) == 0) { row = 1; goto KEY_FOUND; }
        if ((KEYPAD_PORT & 0x04) == 0) { row = 2; goto KEY_FOUND; }
        if ((KEYPAD_PORT & 0x08) == 0) { row = 3; goto KEY_FOUND; }
    }
    return 0; // No key pressed

KEY_FOUND:
    delay_ms(20); // Debounce
    while ((KEYPAD_PORT & 0x0F) != 0x0F); // Wait for key release
    delay_ms(20);
    return key_map[row][col];
}

void main(void) {
    unsigned char key;
    DISPLAY_PORT = 0x00;

    while (1) {
        key = keypad_scan();
        if (key != 0) {
            // Output ASCII code of key to display port
            DISPLAY_PORT = key;
        }
    }
}

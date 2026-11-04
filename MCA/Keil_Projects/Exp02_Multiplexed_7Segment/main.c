/*
 * Experiment 02: Interfacing Multiplexed 7-Segment Display to 8051
 * Port 1: Segment lines (a, b, c, d, e, f, g, dp) via current-limiting resistors
 * P3.0: Display 1 Common Cathode enable (Digit 1 via NPN Transistor Q1)
 * P3.1: Display 2 Common Cathode enable (Digit 2 via NPN Transistor Q2)
 */

#include <reg51.h>

sbit DIGIT1_EN = P3^0;
sbit DIGIT2_EN = P3^1;

// Common Cathode 7-segment lookup table for 0-9: {0, 1, 2, 3, 4, 5, 6, 7, 8, 9}
// a=P1.0, b=P1.1, c=P1.2, d=P1.3, e=P1.4, f=P1.5, g=P1.6, dp=P1.7
unsigned char code seg_code[] = {
    0x3F, // 0: a,b,c,d,e,f
    0x06, // 1: b,c
    0x5B, // 2: a,b,d,e,g
    0x4F, // 3: a,b,c,d,g
    0x66, // 4: b,c,f,g
    0x6D, // 5: a,c,d,f,g
    0x7D, // 6: a,c,d,e,f,g
    0x07, // 7: a,b,c
    0x7F, // 8: a,b,c,d,e,f,g
    0x6F  // 9: a,b,c,d,f,g
};

void delay_ms(unsigned int ms) {
    unsigned int i, j;
    for (i = 0; i < ms; i++)
        for (j = 0; j < 120; j++);
}

void display_two_digits(unsigned char val) {
    unsigned char d10 = val / 10;
    unsigned char d1  = val % 10;

    // Show tens digit on Display 1
    DIGIT2_EN = 0;
    P1 = seg_code[d10];
    DIGIT1_EN = 1;
    delay_ms(2);

    // Show units digit on Display 2
    DIGIT1_EN = 0;
    P1 = seg_code[d1];
    DIGIT2_EN = 1;
    delay_ms(2);
}

void main(void) {
    unsigned char count = 16; // Display "16" as per lab manual
    unsigned int cycle;

    P1 = 0x00;
    DIGIT1_EN = 0;
    DIGIT2_EN = 0;

    while (1) {
        // Continuously multiplex to give continuous illusion via persistence of vision
        for (cycle = 0; cycle < 200; cycle++) {
            display_two_digits(count);
        }
        count++;
        if (count > 99) count = 0;
    }
}

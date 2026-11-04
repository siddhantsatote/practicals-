/*
 * Experiment 06: Interfacing 16x2 Alphanumeric LCD to 8051 Microcontroller
 * LCD Data lines D0-D7 connected to Port 2 (P2.0 - P2.7)
 * Control lines:
 *   RS (Register Select) = P3.5 (0 = Command, 1 = Data)
 *   RW (Read / Write)    = P3.6 (0 = Write, 1 = Read)
 *   EN (Enable)          = P3.7 (High-to-Low pulse)
 */

#include <reg51.h>

#define LCD_DATA P2

sbit LCD_RS = P3^5;
sbit LCD_RW = P3^6;
sbit LCD_EN = P3^7;

void delay_ms(unsigned int ms) {
    unsigned int i, j;
    for (i = 0; i < ms; i++)
        for (j = 0; j < 120; j++);
}

void lcd_cmd(unsigned char cmd) {
    LCD_DATA = cmd;
    LCD_RS = 0;         // Command Register
    LCD_RW = 0;         // Write operation
    LCD_EN = 1;
    delay_ms(2);
    LCD_EN = 0;         // Falling edge latch
    delay_ms(2);
}

void lcd_data_char(unsigned char ch) {
    LCD_DATA = ch;
    LCD_RS = 1;         // Data Register
    LCD_RW = 0;         // Write operation
    LCD_EN = 1;
    delay_ms(2);
    LCD_EN = 0;         // Falling edge latch
    delay_ms(2);
}

void lcd_init(void) {
    delay_ms(20);       // Wait for LCD power-up
    lcd_cmd(0x38);      // 2 lines, 5x7 matrix, 8-bit mode
    lcd_cmd(0x0C);      // Display ON, Cursor OFF
    lcd_cmd(0x06);      // Auto-increment cursor
    lcd_cmd(0x01);      // Clear display screen
    delay_ms(5);
    lcd_cmd(0x80);      // Force cursor to beginning of Line 1
}

void lcd_string(char *str) {
    while (*str) {
        lcd_data_char(*str++);
    }
}

void main(void) {
    lcd_init();

    // Line 1
    lcd_cmd(0x80);
    lcd_string("ALARD ENGG COLL");

    // Line 2
    lcd_cmd(0xC0);
    lcd_string("MCA LAB - 8051");

    while (1) {
        // Blink indicator or hold display
        delay_ms(1000);
    }
}

/*
 * Reference implementation for PIC18Fxxxx LCD Interfacing
 * As specified in Experiment 06 of Alard College MCA Practical Manual
 */

#define _XTAL_FREQ 20000000

// In PIC18F, TRIS registers set direction (0=Output, 1=Input)
// LAT registers write output
/*
#include <xc.h>

#define LCD_DATA_PORT LATD
#define LCD_RS LATBbits.LATB0
#define LCD_EN LATBbits.LATB1

void pic_lcd_cmd(unsigned char cmd) {
    LCD_DATA_PORT = cmd;
    LCD_RS = 0;
    LCD_EN = 1;
    __delay_ms(2);
    LCD_EN = 0;
}

void pic_lcd_data(unsigned char d) {
    LCD_DATA_PORT = d;
    LCD_RS = 1;
    LCD_EN = 1;
    __delay_ms(2);
    LCD_EN = 0;
}

void pic_lcd_init(void) {
    TRISD = 0x00;
    TRISB = 0x00;
    pic_lcd_cmd(0x38);
    pic_lcd_cmd(0x0C);
    pic_lcd_cmd(0x06);
    pic_lcd_cmd(0x01);
}
*/

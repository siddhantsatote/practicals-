/*
 * Experiment 03: Interfacing 8051 with ADC0804 and DAC0808
 * ADC: Analog Input connected to ADC0804, Digital Data read on Port 1
 * DAC: Digital Data output from Port 2 to DAC0808 to generate analog waveforms
 */

#include <reg51.h>

// ADC Control Pins
sbit ADC_RD   = P3^7;
sbit ADC_WR   = P3^6;
sbit ADC_INTR = P3^2;

// DAC Port
#define DAC_DATA P2

void delay_short(unsigned int t) {
    while (t--);
}

// Read digital value from ADC0804
unsigned char read_adc(void) {
    unsigned char val;
    P1 = 0xFF;         // Configure P1 as input port

    // Start Conversion (Pulse WR low then high)
    ADC_WR = 0;
    delay_short(2);
    ADC_WR = 1;

    // Wait for End of Conversion (INTR goes low)
    while (ADC_INTR == 1);

    // Read Digital Value (Pulse RD low)
    ADC_RD = 0;
    val = P1;
    ADC_RD = 1;

    return val;
}

// Generate Sawtooth / Ramp Wave on DAC
void generate_ramp(void) {
    unsigned char val;
    for (val = 0; val < 255; val++) {
        DAC_DATA = val;
        delay_short(10);
    }
}

// Generate Square Wave on DAC
void generate_square(void) {
    DAC_DATA = 0x00;
    delay_short(500);
    DAC_DATA = 0xFF;
    delay_short(500);
}

// Generate Triangular Wave on DAC
void generate_triangular(void) {
    unsigned char val;
    for (val = 0; val < 255; val++) {
        DAC_DATA = val;
        delay_short(5);
    }
    for (val = 255; val > 0; val--) {
        DAC_DATA = val;
        delay_short(5);
    }
}

void main(void) {
    unsigned char adc_value;

    while (1) {
        // 1. Read Analog channel from ADC
        adc_value = read_adc();

        // 2. Output to DAC or generate waveform
        generate_triangular();
    }
}

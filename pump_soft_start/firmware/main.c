/*
  FadeLED

  Uses PWM to fade an LED in and out, repeatedly.
*/

#include <stdint.h>
#include <pdk/device.h>
#include "auto_sysclock.h"
#include "delay.h"

#define INPUT_PIN             5     /* input pin is PA5 with an active low configuration */

// input is active low, so define helper for better readability below
#define isInputActive()       !(PA & (1 << INPUT_PIN))

#define PWM_MAX               255   /* 11-bit PWM peripheral */
#define PWM_OUTPUT_PIN        4     /* PWM output pin is PA4/PG1PWM */

// Targeting a 3 second soft startup
#define PWM_RAMP_DELAY_ms     59    /* delay in call to increase PWM duty cycle */
#define PWM_INC_VALUE         5     /* value to increase PWM duty cycle by */

// Main program
void main() {

  // Initialize hardware
  PAC &= ~(1 << INPUT_PIN);         /* Set input as input (all pins are input by default) */
  PADIER |= (1 << INPUT_PIN);       /* input as digital input */
  PAPH |= (1 << INPUT_PIN);         /* Enable pull-up resistor on input */
  PAC |= (1 << PWM_OUTPUT_PIN);     /* Set PWM_OUPUT_PIN as output (all pins are input by default) */
  
  // Setup PWM peripheral
  PWMG1CUBL = PWM_MAX << 5;         /* Set the PWM upper bound (lower 3 bits) */
  PWMG1CUBH = PWM_MAX >> 3;         /* (upper 5 bits) */
  PWMG1DTL = 0x00;                  /* Clear the PWM duty value */
  PWMG1DTH = 0x00;
  PWMG1C = (uint8_t)(PWMG1C_ENABLE | PWMG1C_OUT_PA4 | PWMG1C_CLK_IHRC);
  PWMG1S = 0x00;                    /* No pre-scaler */

  // Main processing loop
  while (1) {

    if (isInputActive()) {
      uint16_t pwmValue;
      // ramp up PWM output
      for (pwmValue = 0; pwmValue < PWM_MAX; pwmValue += PWM_INC_VALUE) {
        PWMG1DTL = pwmValue << 5;     /* Set PWM duty value (lower 3 bits) */
        PWMG1DTH = pwmValue >> 3;     /* (upper 8 bits) */
        _delay_ms(PWM_RAMP_DELAY_ms);
      }

      // set PWM output to max, ie pin is fully high         
      PWMG1DTL = PWM_MAX << 5;     /* Set PWM duty value (lower 3 bits) */
      PWMG1DTH = PWM_MAX >> 3;     /* (upper 8 bits) */
      while(isInputActive()) {
        _delay_ms(1000);
      }
    } else {
      // set PWM output to min, ie pin is fully low
      PWMG1DTL = 0;                 /* Set PWM duty value (lower 3 bits) */
      PWMG1DTH = 0;                 /* (upper 8 bits) */
      _delay_ms(50);                /* short delay for debounce */
    }
  }
}

// Startup code - Setup/calibrate system clock
unsigned char _sdcc_external_startup(void) {

  // Initialize the system clock (CLKMD register) with the IHRC, ILRC, or EOSC clock source and correct divider.
  // The AUTO_INIT_SYSCLOCK() macro uses F_CPU (defined in the Makefile) to choose the IHRC or ILRC clock source and divider.
  // Alternatively, replace this with the more specific PDK_SET_SYSCLOCK(...) macro from pdk/sysclock.h
  AUTO_INIT_SYSCLOCK();

  // Insert placeholder code to tell EasyPdkProg to calibrate the IHRC or ILRC internal oscillator.
  // The AUTO_CALIBRATE_SYSCLOCK(...) macro uses F_CPU (defined in the Makefile) to choose the IHRC or ILRC oscillator.
  // Alternatively, replace this with the more specific EASY_PDK_CALIBRATE_IHRC(...) or EASY_PDK_CALIBRATE_ILRC(...) macro from easy-pdk/calibrate.h
  AUTO_CALIBRATE_SYSCLOCK(TARGET_VDD_MV);

  return 0;   // Return 0 to inform SDCC to continue with normal initialization.
}

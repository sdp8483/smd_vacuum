# FadeLED Example

This example demonstrates how to fade an LED in and out using Pulse-Width-Modulation (PWM).

> _**Inspiration**: This example was inspired by the public domain [Fading](https://www.arduino.cc/en/Tutorial/Fading) example from Arduino._

### Hardware Circuit
For devices with an 11-bit PWM (specifically PWMG1) (i.e. PFS154/PFS173/PMS152/PMS154C), the LED is placed on the PA4 pin* (Port A, Bit 4), which is also one of the PG1PWM pins.

For other devices (i.e. PFS172/PMS15A/PMS150C/PMC171B), the 8-bit PWM output of timer 2 (TM2) is used, and the LED is placed on the PA3 pin* (Port A, Bit 3), which is also the TM2PWM pin.

In either case the LED is installed with a current sink configuration.

This means the negative leg (or cathode) of the LED is connected to the digital pin of the IC, and the positive leg (or anode) of the LED is connected through a current limiting resistor to VDD.
- When the digital pin is LOW, current will flow through the LED and it will light up.
- When the digital pin is HIGH, no current will flow and the LED will turn off.

This also means we have to invert the PWM output or else the brightness levels will be reversed.

>_*Note: Please consult the pinout for the specific microcontroller package used to identify the correct physical pin._

### Internal Peripherals Used:
- **11-bit PWM (PWMG1)**

... _or_ ...
- **8-bit timer 2 PWM (TM2)**  

### Toolchain:
- The open-source [Small Device C Compiler (SDCC)](http://sdcc.sourceforge.net/)
  - Requires version 3.9.0 or newer - version 4.0.0+ preferred
- The open-source [Easy PDK Programmer](https://github.com/free-pdk/easy-pdk-programmer-software)
  - Requires version 1.3 or newer
- The open-source [pdk-includes](https://github.com/free-pdk/pdk-includes) repository
  - Integrated via local copy into the include/ directory
- The open-source [easy-pdk-includes](https://github.com/free-pdk/easy-pdk-includes) repository
  - Integrated via local copy into the include/ directory
- Also requires 'make' and other common build tools

### Build Commands:
```
make clean
make build
make size (also calls build)
make program (also calls size which calls build)
make run
```
> Note: These commands can be chained as well.  i.e. `make clean program run`

### Customization:
Edit the variables at the top of the Makefile to:
- **DEVICE**: Use a different Padauk MCU (defaults to PFS154)
- **F_CPU**: Use a different frequency for the system clock (defaults to 1MHz, i.e. IHRC/16)
  > Note: The `AUTO_INIT_SYSCLOCK()` macro in the `_sdcc_external_startup()` method will automatically choose the correct internal oscillator (IHRC or ILRC) and clock divider based on the desired frequency.
  > The `AUTO_CALIBRATE_SYSCLOCK(vdd)` macro will install a placeholder for the correct internal oscillator (IHRC or ILRC) that the Easy PDK Programmer will use to calibrate to the desired frequency.
- **TARGET_VDD_MV**: Use a different voltage while calibrating the internal oscillator (IHRC or ILRC) (defaults to 4000mV)
- **TARGET_VDD**: Use a different voltage while the IC is operating (defaults to 4.0V)

> Note: All of these variables can be changed on the commandline as well.  i.e. `make DEVICE=PFS173 clean program run` 

### Compatibility
This example should run on every currently known Padauk microcontroller that is supported by SDCC and the Easy PDK Programmer.
A device specific include file (pdk/device/*.h) may need to be supplied for less common devices.

### Build Stats
- Code Size: 106 - 112 words (212 - 224 bytes)
- RAM usage: 8 bytes + stack
  - 7 of the bytes are used as method call parameters for the timing loop routines defined in the [delay.h](../include/delay.h) include file.

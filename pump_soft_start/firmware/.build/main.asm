;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mpdk14
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __sdcc_external_startup
	.globl _main
	.globl __delay_loop_32
	.globl __delay_loop_16
	.globl __delay_loop_8
	.globl __misclvr
	.globl __misc2
	.globl __misc
	.globl __pwmg2cubl
	.globl __pwmg2cubh
	.globl __pwmg2dtl
	.globl __pwmg2dth
	.globl __pwmg2s
	.globl __pwmg2c
	.globl __pwmg1cubl
	.globl __pwmg1cubh
	.globl __pwmg1dtl
	.globl __pwmg1dth
	.globl __pwmg1s
	.globl __pwmg1c
	.globl __pwmg0cubl
	.globl __pwmg0cubh
	.globl __pwmg0dtl
	.globl __pwmg0dth
	.globl __pwmg0s
	.globl __pwmg0c
	.globl __gpcs
	.globl __gpcc
	.globl __bgtr
	.globl __tm3b
	.globl __tm3s
	.globl __tm3ct
	.globl __tm3c
	.globl __tm2b
	.globl __tm2s
	.globl __tm2ct
	.globl __tm2c
	.globl __t16c
	.globl __t16m
	.globl __pbph
	.globl __pbc
	.globl __pb
	.globl __pbdier
	.globl __paph
	.globl __pac
	.globl __pa
	.globl __padier
	.globl __integs
	.globl __intrq
	.globl __inten
	.globl __eoscr
	.globl __ilrcr
	.globl __ihrcr
	.globl __clkmd
	.globl __sp
	.globl __flag
	.globl __delay_loop_32_PARM_1
	.globl __delay_loop_16_PARM_1
	.globl __delay_loop_8_PARM_1
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
__flag	=	0x0000
__sp	=	0x0002
__clkmd	=	0x0003
__ihrcr	=	0x000b
__ilrcr	=	0x0039
__eoscr	=	0x000a
__inten	=	0x0004
__intrq	=	0x0005
__integs	=	0x000c
__padier	=	0x000d
__pa	=	0x0010
__pac	=	0x0011
__paph	=	0x0012
__pbdier	=	0x000e
__pb	=	0x0014
__pbc	=	0x0015
__pbph	=	0x0016
__t16m	=	0x0006
__t16c::
	.ds 2
__tm2c	=	0x001c
__tm2ct	=	0x001d
__tm2s	=	0x0017
__tm2b	=	0x0009
__tm3c	=	0x0032
__tm3ct	=	0x0033
__tm3s	=	0x0034
__tm3b	=	0x0035
__bgtr	=	0x001a
__gpcc	=	0x0018
__gpcs	=	0x0019
__pwmg0c	=	0x0020
__pwmg0s	=	0x0021
__pwmg0dth	=	0x0022
__pwmg0dtl	=	0x0023
__pwmg0cubh	=	0x0024
__pwmg0cubl	=	0x0025
__pwmg1c	=	0x0026
__pwmg1s	=	0x0027
__pwmg1dth	=	0x0028
__pwmg1dtl	=	0x0029
__pwmg1cubh	=	0x002a
__pwmg1cubl	=	0x002b
__pwmg2c	=	0x002c
__pwmg2s	=	0x002d
__pwmg2dth	=	0x002e
__pwmg2dtl	=	0x002f
__pwmg2cubh	=	0x0030
__pwmg2cubl	=	0x0031
__misc	=	0x0008
__misc2	=	0x000f
__misclvr	=	0x001b
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
__delay_loop_8_PARM_1:
	.ds 1
__delay_loop_16_PARM_1:
	.ds 2
__delay_loop_32_PARM_1:
	.ds 4
_main_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	.area	HEADER (ABS)
	.org	 0x0020
	reti
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
	.area	PREG (ABS)
	.org 0x00
p::
	.ds 2
	.area	HEADER (ABS)
	.org 0x0000
	nop
	clear	p+1
	mov	a, #s_OSEG
	add	a, #l_OSEG + 1
	and	a, #0xfe
	mov.io	sp, a
	call	__sdcc_external_startup
	goto	s_GSINIT
	.area GSINIT
__sdcc_init_data:
	mov	a, #s_DATA
	mov	p, a
	goto	00002$
00001$:
	mov	a, #0x00
	idxm	p, a
	inc	p
	mov	a, #s_DATA
00002$:
	add	a, #l_DATA
	ceqsn	a, p
	goto	00001$
	.area GSFINAL
	goto	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	goto	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	delay.h: 34: void _delay_loop_8(uint8_t loop_ctr) {
;	-----------------------------------------
;	 function _delay_loop_8
;	-----------------------------------------
__delay_loop_8:
;	delay.h: 44: __endasm;
	00001$:
; 4 cycles per loop
	dzsn	__delay_loop_8_PARM_1 ; 1 cycle + 1 cycle for final skip
	goto	00001$ ; 2 cycles
00101$:
;	delay.h: 45: }
	ret
;	delay.h: 48: void _delay_loop_16(uint16_t loop_ctr) {
;	-----------------------------------------
;	 function _delay_loop_16
;	-----------------------------------------
__delay_loop_16:
;	delay.h: 65: __endasm;
	00001$:
; 8 cycles per loop
	nop	; 1 cycle
	dec	__delay_loop_16_PARM_1+0 ; 1 cycle
	subc	__delay_loop_16_PARM_1+1 ; 1 cycle
	mov	a, __delay_loop_16_PARM_1+0 ; 1 cycle
	or	a, __delay_loop_16_PARM_1+1 ; 1 cycle
	t1sn	f, z ; 1 cycle + 1 cycle for final skip
	goto	00001$ ; 2 cycles
00101$:
;	delay.h: 66: }
	ret
;	delay.h: 69: void _delay_loop_32(uint32_t loop_ctr) {
;	-----------------------------------------
;	 function _delay_loop_32
;	-----------------------------------------
__delay_loop_32:
;	delay.h: 94: __endasm;
	00001$:
; 12 cycles per loop
	nop	; 1 cycle
	dec	__delay_loop_32_PARM_1+0 ; 1 cycle
	subc	__delay_loop_32_PARM_1+1 ; 1 cycle
	subc	__delay_loop_32_PARM_1+2 ; 1 cycle
	subc	__delay_loop_32_PARM_1+3 ; 1 cycle
	mov	a, __delay_loop_32_PARM_1+0 ; 1 cycle
	or	a, __delay_loop_32_PARM_1+1 ; 1 cycle
	or	a, __delay_loop_32_PARM_1+2 ; 1 cycle
	or	a, __delay_loop_32_PARM_1+3 ; 1 cycle
	t1sn	f, z ; 1 cycle + 1 cycle for final skip
	goto	00001$ ; 2 cycles
00101$:
;	delay.h: 95: }
	ret
;	main.c: 25: void main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c: 28: PAC &= ~(1 << INPUT_PIN);         /* Set input as input (all pins are input by default) */
	set0.io	__pac, #5
;	main.c: 29: PADIER |= (1 << INPUT_PIN);       /* input as digital input */
	set1.io	__padier, #5
;	main.c: 30: PAPH |= (1 << INPUT_PIN);         /* Enable pull-up resistor on input */
	set1.io	__paph, #5
;	main.c: 31: PAC |= (1 << PWM_OUTPUT_PIN);     /* Set PWM_OUPUT_PIN as output (all pins are input by default) */
	set1.io	__pac, #4
;	main.c: 34: PWMG1CUBL = PWM_MAX << 5;         /* Set the PWM upper bound (lower 3 bits) */
	mov	a, #0xe0
	mov.io	__pwmg1cubl, a
;	main.c: 35: PWMG1CUBH = PWM_MAX >> 3;         /* (upper 5 bits) */
	mov	a, #0x1f
	mov.io	__pwmg1cubh, a
;	main.c: 36: PWMG1DTL = 0x00;                  /* Clear the PWM duty value */
	mov	a, #0x00
	mov.io	__pwmg1dtl, a
;	main.c: 37: PWMG1DTH = 0x00;
	mov	a, #0x00
	mov.io	__pwmg1dth, a
;	main.c: 38: PWMG1C = (uint8_t)(PWMG1C_ENABLE | PWMG1C_OUT_PA4 | PWMG1C_CLK_IHRC);
	mov	a, #0x87
	mov.io	__pwmg1c, a
;	main.c: 39: PWMG1S = 0x00;                    /* No pre-scaler */
	mov	a, #0x00
	mov.io	__pwmg1s, a
;	main.c: 42: while (1) {
00109$:
;	main.c: 44: if (isInputActive()) {
	mov.io	a, __pa
	and	a, #0x20
	ceqsn	a, #0x00
	goto	00106$
;	main.c: 47: for (pwmValue = 0; pwmValue < PWM_MAX; pwmValue += PWM_INC_VALUE) {
	clear	_main_sloc0_1_0+0
	clear	_main_sloc0_1_0+1
00111$:
;	main.c: 48: PWMG1DTL = pwmValue << 5;     /* Set PWM duty value (lower 3 bits) */
	mov	a, _main_sloc0_1_0+0
	swap	a
	and	a, #0xf0
	sl	a
	mov.io	__pwmg1dtl, a
;	main.c: 49: PWMG1DTH = pwmValue >> 3;     /* (upper 8 bits) */
	mov	a, _main_sloc0_1_0+1
	mov	p, a
	mov	a, _main_sloc0_1_0+0
	sr	p
	src	a
	sr	p
	src	a
	sr	p
	src	a
	mov.io	__pwmg1dth, a
;	main.c: 50: _delay_ms(PWM_RAMP_DELAY_ms);
	mov	a, #0xcd
	mov	__delay_loop_16_PARM_1+0, a
	mov	a, #0x1c
	mov	__delay_loop_16_PARM_1+1, a
	call	__delay_loop_16
;	main.c: 47: for (pwmValue = 0; pwmValue < PWM_MAX; pwmValue += PWM_INC_VALUE) {
	mov	a, _main_sloc0_1_0+0
	add	a, #0x05
	mov	p, a
	mov	a, _main_sloc0_1_0+1
	addc	a
	mov	_main_sloc0_1_0+1, a
	mov	a, p
	mov	_main_sloc0_1_0+0, a
	mov	a, _main_sloc0_1_0+1
	mov	p, a
	mov	a, _main_sloc0_1_0+0
	sub	a, #0xff
	mov	a, p
	subc	a
	t0sn.io	f, c
	goto	00111$
;	main.c: 54: PWMG1DTL = PWM_MAX << 5;     /* Set PWM duty value (lower 3 bits) */
	mov	a, #0xe0
	mov.io	__pwmg1dtl, a
;	main.c: 55: PWMG1DTH = PWM_MAX >> 3;     /* (upper 8 bits) */
	mov	a, #0x1f
	mov.io	__pwmg1dth, a
;	main.c: 56: while(isInputActive()) {
00102$:
	mov.io	a, __pa
	and	a, #0x20
	ceqsn	a, #0x00
	goto	00109$
;	main.c: 57: _delay_ms(1000);
	mov	a, #0x84
	mov	__delay_loop_32_PARM_1+0, a
	mov	a, #0x45
	mov	__delay_loop_32_PARM_1+1, a
	mov	a, #0x01
	mov	__delay_loop_32_PARM_1+2, a
	clear	__delay_loop_32_PARM_1+3
	call	__delay_loop_32
	goto	00102$
00106$:
;	main.c: 61: PWMG1DTL = 0;                 /* Set PWM duty value (lower 3 bits) */
	mov	a, #0x00
	mov.io	__pwmg1dtl, a
;	main.c: 62: PWMG1DTH = 0;                 /* (upper 8 bits) */
	mov	a, #0x00
	mov.io	__pwmg1dth, a
;	main.c: 63: _delay_ms(50);                /* short delay for debounce */
	mov	a, #0x68
	mov	__delay_loop_16_PARM_1+0, a
	mov	a, #0x18
	mov	__delay_loop_16_PARM_1+1, a
	call	__delay_loop_16
	goto	00109$
;	main.c: 66: }
	ret
;	main.c: 69: unsigned char _sdcc_external_startup(void) {
;	-----------------------------------------
;	 function _sdcc_external_startup
;	-----------------------------------------
__sdcc_external_startup:
;	main.c: 74: AUTO_INIT_SYSCLOCK();
	mov	a, #0x1c
	mov.io	__clkmd, a
;	main.c: 79: AUTO_CALIBRATE_SYSCLOCK(TARGET_VDD_MV);
	and	a, #'R'                       
	and	a, #'C'                       
	and	a, #(1)            
	and	a, #((1000000))     
	and	a, #((1000000)>>8)  
	and	a, #((1000000)>>16) 
	and	a, #((1000000)>>24) 
	and	a, #((4000))     
	and	a, #((4000)>>8)  
	and	a, #(0x0b)             
;	main.c: 81: return 0;   // Return 0 to inform SDCC to continue with normal initialization.
;	main.c: 82: }
	ret	#0x00
	.area CODE
	.area CONST
	.area CABS (ABS)

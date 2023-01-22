                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mpdk14
                                      7 	
                                      8 
                                      9 ; default segment ordering in RAM for linker
                                     10 	.area DATA
                                     11 	.area OSEG (OVR,DATA)
                                     12 
                                     13 ;--------------------------------------------------------
                                     14 ; Public variables in this module
                                     15 ;--------------------------------------------------------
                                     16 	.globl __sdcc_external_startup
                                     17 	.globl _main
                                     18 	.globl __delay_loop_32
                                     19 	.globl __delay_loop_16
                                     20 	.globl __delay_loop_8
                                     21 	.globl __misclvr
                                     22 	.globl __misc2
                                     23 	.globl __misc
                                     24 	.globl __pwmg2cubl
                                     25 	.globl __pwmg2cubh
                                     26 	.globl __pwmg2dtl
                                     27 	.globl __pwmg2dth
                                     28 	.globl __pwmg2s
                                     29 	.globl __pwmg2c
                                     30 	.globl __pwmg1cubl
                                     31 	.globl __pwmg1cubh
                                     32 	.globl __pwmg1dtl
                                     33 	.globl __pwmg1dth
                                     34 	.globl __pwmg1s
                                     35 	.globl __pwmg1c
                                     36 	.globl __pwmg0cubl
                                     37 	.globl __pwmg0cubh
                                     38 	.globl __pwmg0dtl
                                     39 	.globl __pwmg0dth
                                     40 	.globl __pwmg0s
                                     41 	.globl __pwmg0c
                                     42 	.globl __gpcs
                                     43 	.globl __gpcc
                                     44 	.globl __bgtr
                                     45 	.globl __tm3b
                                     46 	.globl __tm3s
                                     47 	.globl __tm3ct
                                     48 	.globl __tm3c
                                     49 	.globl __tm2b
                                     50 	.globl __tm2s
                                     51 	.globl __tm2ct
                                     52 	.globl __tm2c
                                     53 	.globl __t16c
                                     54 	.globl __t16m
                                     55 	.globl __pbph
                                     56 	.globl __pbc
                                     57 	.globl __pb
                                     58 	.globl __pbdier
                                     59 	.globl __paph
                                     60 	.globl __pac
                                     61 	.globl __pa
                                     62 	.globl __padier
                                     63 	.globl __integs
                                     64 	.globl __intrq
                                     65 	.globl __inten
                                     66 	.globl __eoscr
                                     67 	.globl __ilrcr
                                     68 	.globl __ihrcr
                                     69 	.globl __clkmd
                                     70 	.globl __sp
                                     71 	.globl __flag
                                     72 	.globl __delay_loop_32_PARM_1
                                     73 	.globl __delay_loop_16_PARM_1
                                     74 	.globl __delay_loop_8_PARM_1
                                     75 ;--------------------------------------------------------
                                     76 ; special function registers
                                     77 ;--------------------------------------------------------
                                     78 	.area RSEG (ABS)
      000000                         79 	.org 0x0000
                           000000    80 __flag	=	0x0000
                           000002    81 __sp	=	0x0002
                           000003    82 __clkmd	=	0x0003
                           00000B    83 __ihrcr	=	0x000b
                           000039    84 __ilrcr	=	0x0039
                           00000A    85 __eoscr	=	0x000a
                           000004    86 __inten	=	0x0004
                           000005    87 __intrq	=	0x0005
                           00000C    88 __integs	=	0x000c
                           00000D    89 __padier	=	0x000d
                           000010    90 __pa	=	0x0010
                           000011    91 __pac	=	0x0011
                           000012    92 __paph	=	0x0012
                           00000E    93 __pbdier	=	0x000e
                           000014    94 __pb	=	0x0014
                           000015    95 __pbc	=	0x0015
                           000016    96 __pbph	=	0x0016
                           000006    97 __t16m	=	0x0006
      000000                         98 __t16c::
      000000                         99 	.ds 2
                           00001C   100 __tm2c	=	0x001c
                           00001D   101 __tm2ct	=	0x001d
                           000017   102 __tm2s	=	0x0017
                           000009   103 __tm2b	=	0x0009
                           000032   104 __tm3c	=	0x0032
                           000033   105 __tm3ct	=	0x0033
                           000034   106 __tm3s	=	0x0034
                           000035   107 __tm3b	=	0x0035
                           00001A   108 __bgtr	=	0x001a
                           000018   109 __gpcc	=	0x0018
                           000019   110 __gpcs	=	0x0019
                           000020   111 __pwmg0c	=	0x0020
                           000021   112 __pwmg0s	=	0x0021
                           000022   113 __pwmg0dth	=	0x0022
                           000023   114 __pwmg0dtl	=	0x0023
                           000024   115 __pwmg0cubh	=	0x0024
                           000025   116 __pwmg0cubl	=	0x0025
                           000026   117 __pwmg1c	=	0x0026
                           000027   118 __pwmg1s	=	0x0027
                           000028   119 __pwmg1dth	=	0x0028
                           000029   120 __pwmg1dtl	=	0x0029
                           00002A   121 __pwmg1cubh	=	0x002a
                           00002B   122 __pwmg1cubl	=	0x002b
                           00002C   123 __pwmg2c	=	0x002c
                           00002D   124 __pwmg2s	=	0x002d
                           00002E   125 __pwmg2dth	=	0x002e
                           00002F   126 __pwmg2dtl	=	0x002f
                           000030   127 __pwmg2cubh	=	0x0030
                           000031   128 __pwmg2cubl	=	0x0031
                           000008   129 __misc	=	0x0008
                           00000F   130 __misc2	=	0x000f
                           00001B   131 __misclvr	=	0x001b
                                    132 ;--------------------------------------------------------
                                    133 ; ram data
                                    134 ;--------------------------------------------------------
                                    135 	.area DATA
      000002                        136 __delay_loop_8_PARM_1:
      000002                        137 	.ds 1
      000003                        138 __delay_loop_16_PARM_1:
      000003                        139 	.ds 2
      000005                        140 __delay_loop_32_PARM_1:
      000005                        141 	.ds 4
      000009                        142 _main_sloc0_1_0:
      000009                        143 	.ds 2
                                    144 ;--------------------------------------------------------
                                    145 ; overlayable items in ram
                                    146 ;--------------------------------------------------------
                                    147 ;--------------------------------------------------------
                                    148 ; Stack segment in internal ram
                                    149 ;--------------------------------------------------------
                                    150 	.area	SSEG
      00000B                        151 __start__stack:
      00000B                        152 	.ds	1
                                    153 
                                    154 ;--------------------------------------------------------
                                    155 ; absolute external ram data
                                    156 ;--------------------------------------------------------
                                    157 	.area DABS (ABS)
                                    158 ;--------------------------------------------------------
                                    159 ; interrupt vector
                                    160 ;--------------------------------------------------------
                                    161 	.area HOME
      000022                        162 __interrupt_vect:
                                    163 	.area	HEADER (ABS)
      000020                        164 	.org	 0x0020
      000020 7B 00                  165 	reti
                                    166 ;--------------------------------------------------------
                                    167 ; global & static initialisations
                                    168 ;--------------------------------------------------------
                                    169 	.area HOME
                                    170 	.area GSINIT
                                    171 	.area GSFINAL
                                    172 	.area GSINIT
                                    173 	.area	PREG (ABS)
      000000                        174 	.org 0x00
      000000                        175 p::
      000000                        176 	.ds 2
                                    177 	.area	HEADER (ABS)
      000000                        178 	.org 0x0000
      000000 00 00                  179 	nop
      000002 01 13                  180 	clear	p+1
      000004 0B 2F                  181 	mov	a, #s_OSEG
      000006 01 28                  182 	add	a, #l_OSEG + 1
      000008 FE 2C                  183 	and	a, #0xfe
      00000A 82 01                  184 	mov.io	sp, a
      00000C 8B 38                  185 	call	__sdcc_external_startup
      00000E 12 30                  186 	goto	s_GSINIT
                                    187 	.area GSINIT
      000024                        188 __sdcc_init_data:
      000024 02 2F                  189 	mov	a, #s_DATA
      000026 80 0B                  190 	mov	p, a
      000028 19 30                  191 	goto	00002$
      00002A                        192 00001$:
      00002A 00 2F                  193 	mov	a, #0x00
      00002C 80 03                  194 	idxm	p, a
      00002E 00 12                  195 	inc	p
      000030 02 2F                  196 	mov	a, #s_DATA
      000032                        197 00002$:
      000032 09 28                  198 	add	a, #l_DATA
      000034 00 17                  199 	ceqsn	a, p
      000036 15 30                  200 	goto	00001$
                                    201 	.area GSFINAL
      000038 11 30                  202 	goto	__sdcc_program_startup
                                    203 ;--------------------------------------------------------
                                    204 ; Home
                                    205 ;--------------------------------------------------------
                                    206 	.area HOME
                                    207 	.area HOME
      000022                        208 __sdcc_program_startup:
      000022 34 30                  209 	goto	_main
                                    210 ;	return from main will return to caller
                                    211 ;--------------------------------------------------------
                                    212 ; code
                                    213 ;--------------------------------------------------------
                                    214 	.area CODE
                                    215 ;	delay.h: 34: void _delay_loop_8(uint8_t loop_ctr) {
                                    216 ;	-----------------------------------------
                                    217 ;	 function _delay_loop_8
                                    218 ;	-----------------------------------------
      00003A                        219 __delay_loop_8:
                                    220 ;	delay.h: 44: __endasm;
      00003A                        221 	00001$:
                                    222 ; 4 cycles per loop
      00003A 82 11                  223 	dzsn	__delay_loop_8_PARM_1 ; 1 cycle + 1 cycle for final skip
      00003C 1D 30                  224 	goto	00001$ ; 2 cycles
      00003E                        225 00101$:
                                    226 ;	delay.h: 45: }
      00003E 7A 00                  227 	ret
                                    228 ;	delay.h: 48: void _delay_loop_16(uint16_t loop_ctr) {
                                    229 ;	-----------------------------------------
                                    230 ;	 function _delay_loop_16
                                    231 ;	-----------------------------------------
      000040                        232 __delay_loop_16:
                                    233 ;	delay.h: 65: __endasm;
      000040                        234 	00001$:
                                    235 ; 8 cycles per loop
      000040 00 00                  236 	nop	; 1 cycle
      000042 83 12                  237 	dec	__delay_loop_16_PARM_1+0 ; 1 cycle
      000044 84 10                  238 	subc	__delay_loop_16_PARM_1+1 ; 1 cycle
      000046 83 0F                  239 	mov	a, __delay_loop_16_PARM_1+0 ; 1 cycle
      000048 84 0E                  240 	or	a, __delay_loop_16_PARM_1+1 ; 1 cycle
      00004A 00 1A                  241 	t1sn	f, z ; 1 cycle + 1 cycle for final skip
      00004C 20 30                  242 	goto	00001$ ; 2 cycles
      00004E                        243 00101$:
                                    244 ;	delay.h: 66: }
      00004E 7A 00                  245 	ret
                                    246 ;	delay.h: 69: void _delay_loop_32(uint32_t loop_ctr) {
                                    247 ;	-----------------------------------------
                                    248 ;	 function _delay_loop_32
                                    249 ;	-----------------------------------------
      000050                        250 __delay_loop_32:
                                    251 ;	delay.h: 94: __endasm;
      000050                        252 	00001$:
                                    253 ; 12 cycles per loop
      000050 00 00                  254 	nop	; 1 cycle
      000052 85 12                  255 	dec	__delay_loop_32_PARM_1+0 ; 1 cycle
      000054 86 10                  256 	subc	__delay_loop_32_PARM_1+1 ; 1 cycle
      000056 87 10                  257 	subc	__delay_loop_32_PARM_1+2 ; 1 cycle
      000058 88 10                  258 	subc	__delay_loop_32_PARM_1+3 ; 1 cycle
      00005A 85 0F                  259 	mov	a, __delay_loop_32_PARM_1+0 ; 1 cycle
      00005C 86 0E                  260 	or	a, __delay_loop_32_PARM_1+1 ; 1 cycle
      00005E 87 0E                  261 	or	a, __delay_loop_32_PARM_1+2 ; 1 cycle
      000060 88 0E                  262 	or	a, __delay_loop_32_PARM_1+3 ; 1 cycle
      000062 00 1A                  263 	t1sn	f, z ; 1 cycle + 1 cycle for final skip
      000064 28 30                  264 	goto	00001$ ; 2 cycles
      000066                        265 00101$:
                                    266 ;	delay.h: 95: }
      000066 7A 00                  267 	ret
                                    268 ;	main.c: 26: void main() {
                                    269 ;	-----------------------------------------
                                    270 ;	 function main
                                    271 ;	-----------------------------------------
      000068                        272 _main:
                                    273 ;	main.c: 29: PAC &= ~(1 << INPUT_PIN);         /* Set input as input (all pins are input by default) */
      000068 51 1D                  274 	set0.io	__pac, #5
                                    275 ;	main.c: 30: PADIER |= (1 << INPUT_PIN);       /* input as digital input */
      00006A 4D 1F                  276 	set1.io	__padier, #5
                                    277 ;	main.c: 31: PAPH |= (1 << INPUT_PIN);         /* Enable pull-up resistor on input */
      00006C 52 1F                  278 	set1.io	__paph, #5
                                    279 ;	main.c: 32: PAC |= (1 << PWM_OUTPUT_PIN);     /* Set PWM_OUPUT_PIN as output (all pins are input by default) */
      00006E 11 1F                  280 	set1.io	__pac, #4
                                    281 ;	main.c: 35: PWMG1CUBL = PWM_MAX << 5;         /* Set the PWM upper bound (lower 3 bits) */
      000070 E0 2F                  282 	mov	a, #0xe0
      000072 AB 01                  283 	mov.io	__pwmg1cubl, a
                                    284 ;	main.c: 36: PWMG1CUBH = PWM_MAX >> 3;         /* (upper 5 bits) */
      000074 1F 2F                  285 	mov	a, #0x1f
      000076 AA 01                  286 	mov.io	__pwmg1cubh, a
                                    287 ;	main.c: 37: PWMG1DTL = 0x00;                  /* Clear the PWM duty value */
      000078 00 2F                  288 	mov	a, #0x00
      00007A A9 01                  289 	mov.io	__pwmg1dtl, a
                                    290 ;	main.c: 38: PWMG1DTH = 0x00;
      00007C 00 2F                  291 	mov	a, #0x00
      00007E A8 01                  292 	mov.io	__pwmg1dth, a
                                    293 ;	main.c: 39: PWMG1C = (uint8_t)(PWMG1C_ENABLE | PWMG1C_OUT_PA4 | PWMG1C_CLK_IHRC);
      000080 87 2F                  294 	mov	a, #0x87
      000082 A6 01                  295 	mov.io	__pwmg1c, a
                                    296 ;	main.c: 40: PWMG1S = 0x00;                    /* No pre-scaler */
      000084 00 2F                  297 	mov	a, #0x00
      000086 A7 01                  298 	mov.io	__pwmg1s, a
                                    299 ;	main.c: 44: while (1) {
      000088                        300 00109$:
                                    301 ;	main.c: 46: if (isInputActive()) {
      000088 D0 01                  302 	mov.io	a, __pa
      00008A 20 2C                  303 	and	a, #0x20
      00008C 00 2A                  304 	ceqsn	a, #0x00
      00008E 80 30                  305 	goto	00106$
                                    306 ;	main.c: 49: for (pwmValue = PWM_MIN; pwmValue < PWM_MAX; pwmValue += PWM_INC_VALUE) {
      000090 80 2F                  307 	mov	a, #0x80
      000092 89 0B                  308 	mov	_main_sloc0_1_0+0, a
      000094 0A 13                  309 	clear	_main_sloc0_1_0+1
      000096                        310 00111$:
                                    311 ;	main.c: 50: PWMG1DTL = pwmValue << 5;     /* Set PWM duty value (lower 3 bits) */
      000096 89 0F                  312 	mov	a, _main_sloc0_1_0+0
      000098 6E 00                  313 	swap	a
      00009A F0 2C                  314 	and	a, #0xf0
      00009C 6B 00                  315 	sl	a
      00009E A9 01                  316 	mov.io	__pwmg1dtl, a
                                    317 ;	main.c: 51: PWMG1DTH = pwmValue >> 3;     /* (upper 8 bits) */
      0000A0 8A 0F                  318 	mov	a, _main_sloc0_1_0+1
      0000A2 80 0B                  319 	mov	p, a
      0000A4 89 0F                  320 	mov	a, _main_sloc0_1_0+0
      0000A6 00 15                  321 	sr	p
      0000A8 6C 00                  322 	src	a
      0000AA 00 15                  323 	sr	p
      0000AC 6C 00                  324 	src	a
      0000AE 00 15                  325 	sr	p
      0000B0 6C 00                  326 	src	a
      0000B2 A8 01                  327 	mov.io	__pwmg1dth, a
                                    328 ;	main.c: 52: _delay_ms(PWM_RAMP_DELAY_ms);
      0000B4 E6 2F                  329 	mov	a, #0xe6
      0000B6 83 0B                  330 	mov	__delay_loop_16_PARM_1+0, a
      0000B8 03 2F                  331 	mov	a, #0x03
      0000BA 84 0B                  332 	mov	__delay_loop_16_PARM_1+1, a
      0000BC 20 38                  333 	call	__delay_loop_16
                                    334 ;	main.c: 49: for (pwmValue = PWM_MIN; pwmValue < PWM_MAX; pwmValue += PWM_INC_VALUE) {
      0000BE 89 0F                  335 	mov	a, _main_sloc0_1_0+0
      0000C0 04 28                  336 	add	a, #0x04
      0000C2 80 0B                  337 	mov	p, a
      0000C4 8A 0F                  338 	mov	a, _main_sloc0_1_0+1
      0000C6 60 00                  339 	addc	a
      0000C8 8A 0B                  340 	mov	_main_sloc0_1_0+1, a
      0000CA 80 0F                  341 	mov	a, p
      0000CC 89 0B                  342 	mov	_main_sloc0_1_0+0, a
      0000CE 8A 0F                  343 	mov	a, _main_sloc0_1_0+1
      0000D0 80 0B                  344 	mov	p, a
      0000D2 89 0F                  345 	mov	a, _main_sloc0_1_0+0
      0000D4 FF 29                  346 	sub	a, #0xff
      0000D6 80 0F                  347 	mov	a, p
      0000D8 61 00                  348 	subc	a
      0000DA 40 18                  349 	t0sn.io	f, c
      0000DC 4B 30                  350 	goto	00111$
                                    351 ;	main.c: 56: PWMG1DTL = PWM_MAX << 5;     /* Set PWM duty value (lower 3 bits) */
      0000DE E0 2F                  352 	mov	a, #0xe0
      0000E0 A9 01                  353 	mov.io	__pwmg1dtl, a
                                    354 ;	main.c: 57: PWMG1DTH = PWM_MAX >> 3;     /* (upper 8 bits) */
      0000E2 1F 2F                  355 	mov	a, #0x1f
      0000E4 A8 01                  356 	mov.io	__pwmg1dth, a
                                    357 ;	main.c: 58: while(isInputActive()) {
      0000E6                        358 00102$:
      0000E6 D0 01                  359 	mov.io	a, __pa
      0000E8 20 2C                  360 	and	a, #0x20
      0000EA 00 2A                  361 	ceqsn	a, #0x00
      0000EC 44 30                  362 	goto	00109$
                                    363 ;	main.c: 59: _delay_ms(1000);
      0000EE 84 2F                  364 	mov	a, #0x84
      0000F0 85 0B                  365 	mov	__delay_loop_32_PARM_1+0, a
      0000F2 45 2F                  366 	mov	a, #0x45
      0000F4 86 0B                  367 	mov	__delay_loop_32_PARM_1+1, a
      0000F6 01 2F                  368 	mov	a, #0x01
      0000F8 87 0B                  369 	mov	__delay_loop_32_PARM_1+2, a
      0000FA 08 13                  370 	clear	__delay_loop_32_PARM_1+3
      0000FC 28 38                  371 	call	__delay_loop_32
      0000FE 73 30                  372 	goto	00102$
      000100                        373 00106$:
                                    374 ;	main.c: 63: PWMG1DTL = 0;                 /* Set PWM duty value (lower 3 bits) */
      000100 00 2F                  375 	mov	a, #0x00
      000102 A9 01                  376 	mov.io	__pwmg1dtl, a
                                    377 ;	main.c: 64: PWMG1DTH = 0;                 /* (upper 8 bits) */
      000104 00 2F                  378 	mov	a, #0x00
      000106 A8 01                  379 	mov.io	__pwmg1dth, a
                                    380 ;	main.c: 65: _delay_ms(50);                /* short delay for debounce */
      000108 68 2F                  381 	mov	a, #0x68
      00010A 83 0B                  382 	mov	__delay_loop_16_PARM_1+0, a
      00010C 18 2F                  383 	mov	a, #0x18
      00010E 84 0B                  384 	mov	__delay_loop_16_PARM_1+1, a
      000110 20 38                  385 	call	__delay_loop_16
      000112 44 30                  386 	goto	00109$
                                    387 ;	main.c: 68: }
      000114 7A 00                  388 	ret
                                    389 ;	main.c: 71: unsigned char _sdcc_external_startup(void) {
                                    390 ;	-----------------------------------------
                                    391 ;	 function _sdcc_external_startup
                                    392 ;	-----------------------------------------
      000116                        393 __sdcc_external_startup:
                                    394 ;	main.c: 76: AUTO_INIT_SYSCLOCK();
      000116 1C 2F                  395 	mov	a, #0x1c
      000118 83 01                  396 	mov.io	__clkmd, a
                                    397 ;	main.c: 81: AUTO_CALIBRATE_SYSCLOCK(TARGET_VDD_MV);
      00011A 52 2C                  398 	and	a, #'R'                       
      00011C 43 2C                  399 	and	a, #'C'                       
      00011E 01 2C                  400 	and	a, #(1)            
      000120 40 2C                  401 	and	a, #((1000000))     
      000122 42 2C                  402 	and	a, #((1000000)>>8)  
      000124 0F 2C                  403 	and	a, #((1000000)>>16) 
      000126 00 2C                  404 	and	a, #((1000000)>>24) 
      000128 88 2C                  405 	and	a, #((5000))     
      00012A 13 2C                  406 	and	a, #((5000)>>8)  
      00012C 0B 2C                  407 	and	a, #(0x0b)             
                                    408 ;	main.c: 83: return 0;   // Return 0 to inform SDCC to continue with normal initialization.
                                    409 ;	main.c: 84: }
      00012E 00 02                  410 	ret	#0x00
                                    411 	.area CODE
                                    412 	.area CONST
                                    413 	.area CABS (ABS)

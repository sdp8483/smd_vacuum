(G-code generated by FlatCAM Evo vUnstable - Version Date: 2022/4/31)

(Name: soft_pump_start.drl_cnc)
(Type: G-code from Excellon)
(Units: MM)

(Created on Friday, 20 January 2023 at 09:10)

(This preprocessor is the default preprocessor.)
(It is made to work with MACH3 compatible motion controllers.)


(TOOLS DIAMETER: )
(Tool: 1 -> Dia: 0.8000999999999999)

(FEEDRATE Z: )
(Tool: 1 -> Feedrate: 300)

(FEEDRATE RAPIDS: )
(Tool: 1 -> Feedrate Rapids: 1500)

(Z_CUT: )
(Tool: 1 -> Z_Cut: -2.0)

(Tools Offset: )
(Tool: 1 -> Offset Z: 0.0)

(Z_MOVE: )
(Tool: 1 -> Z_Move: 2.0)

(Z Start: None mm)
(Z End: 15 mm)
(X,Y End: 0.0000, 0.0000 mm)
(Steps per circle: 16)
(Preprocessor Excellon: default)

(X range:  -23.6487 ...   -3.2499  mm)
(Y range:  -20.3391 ...   -1.9494  mm)

(Spindle Speed: 12000 RPM)
G21
G90
G94

G01 F300.00
G00 Z2.0000

M03 S12000
G4 P1
G00 X-4.7803 Y-17.3990
G01 Z-2.0000
G01 Z0
G00 Z2.0000
G00 X-4.7803 Y-19.9390
G01 Z-2.0000
G01 Z0
G00 Z2.0000
G00 X-12.4003 Y-19.9390
G01 Z-2.0000
G01 Z0
G00 Z2.0000
G00 X-12.4003 Y-17.3990
G01 Z-2.0000
G01 Z0
G00 Z2.0000
G00 X-20.0000 Y-17.4752
G01 Z-2.0000
G01 Z0
G00 Z2.0000
G00 X-17.5006 Y-13.8938
G01 Z-2.0000
G01 Z0
G00 Z2.0000
G00 X-17.5006 Y-11.3944
G01 Z-2.0000
G01 Z0
G00 Z2.0000
G00 X-21.1988 Y-8.8011
G01 Z-2.0000
G01 Z0
G00 Z2.0000
G00 X-23.0988 Y-2.4994
G01 Z-2.0000
G01 Z0
G00 Z2.0000
G00 X-6.9012 Y-3.7008
G01 Z-2.0000
G01 Z0
G00 Z2.0000
G00 X-6.9012 Y-6.2001
G01 Z-2.0000
G01 Z0
G00 Z2.0000
G00 X-3.7998 Y-8.3998
G01 Z-2.0000
G01 Z0
G00 Z2.0000
M05
G00 Z15.00
G00 X0.0 Y0.0



(G-code generated by FlatCAM Evo vUnstable - Version Date: 2022/4/31)

(Name: soft_pump_start-Edge_Cuts_cutout_cnc)
(Type: G-code from Geometry)
(Units: MM)

(Created on Friday, 20 January 2023 at 09:11)

(This preprocessor is the default preprocessor.)
(It is made to work with MACH3 compatible motion controllers.)

(TOOL DIAMETER: 1.0 mm)
(Feedrate_XY: 120.0 mm/min)
(Feedrate_Z: 60.0 mm/min)
(Feedrate rapids 1500.0 mm/min)

(Z_Cut: -2.0 mm)
(DepthPerCut: 0.5 mm <=>4 passes)
(Z_Move: 2.0 mm)
(Z Start: None mm)
(Z End: 15.0 mm)
(X,Y End: 0.0000, 0.0000 mm)
(Steps per circle: 16)
(Preprocessor Geometry: default)

(X range:  -25.5500 ...   -0.3500  mm)
(Y range:  -22.7500 ...   -0.3500  mm)

(Spindle Speed: 12000.0 RPM)
G21
G90
G94

G01 F120.00
G00 Z2.0000

M03 S12000.0
G4 P1.0
G01 F120.00
G00 X-0.3500 Y-1.5000
G01 F60.00
G01 Z-0.5000
G01 F120.00
G01 X-0.3502 Y-21.6147
G01 X-0.3598 Y-21.7123
G01 X-0.4036 Y-21.9326
G01 X-0.4494 Y-22.0670
G01 X-0.4896 Y-22.1401
G01 X-0.6229 Y-22.3388
G01 X-0.7341 Y-22.4560
G01 X-0.9599 Y-22.6104
G01 X-1.0599 Y-22.6625
G01 X-1.1818 Y-22.6995
G01 X-1.3877 Y-22.7402
G01 X-1.4853 Y-22.7498
G01 X-24.4000 Y-22.7500
G01 X-24.5123 Y-22.7402
G01 X-24.7326 Y-22.6964
G01 X-24.8670 Y-22.6506
G01 X-24.9401 Y-22.6104
G01 X-25.1388 Y-22.4771
G01 X-25.2560 Y-22.3659
G01 X-25.4104 Y-22.1401
G01 X-25.4625 Y-22.0401
G01 X-25.4995 Y-21.9182
G01 X-25.5402 Y-21.7123
G01 X-25.5498 Y-21.6147
G01 X-25.5500 Y-1.5000
G01 X-25.5402 Y-1.3877
G01 X-25.4964 Y-1.1674
G01 X-25.4506 Y-1.0330
G01 X-25.4104 Y-0.9599
G01 X-25.2771 Y-0.7612
G01 X-25.1659 Y-0.6440
G01 X-24.9401 Y-0.4896
G01 X-24.8401 Y-0.4375
G01 X-24.7182 Y-0.4005
G01 X-24.5123 Y-0.3598
G01 X-24.4147 Y-0.3502
G01 X-1.4853 Y-0.3502
G01 X-1.3877 Y-0.3598
G01 X-1.1818 Y-0.4005
G01 X-1.0599 Y-0.4375
G01 X-0.9724 Y-0.4818
G01 X-0.7853 Y-0.6060
G01 X-0.6868 Y-0.6868
G01 X-0.6060 Y-0.7853
G01 X-0.4818 Y-0.9724
G01 X-0.4375 Y-1.0599
G01 X-0.4005 Y-1.1818
G01 X-0.3574 Y-1.4022
G01 X-0.3500 Y-1.5000
G00 X-0.3500 Y-1.5000
G01 F60.00
G01 Z-1.0000
G01 F120.00
G01 X-0.3574 Y-1.4022
G01 X-0.4005 Y-1.1818
G01 X-0.4375 Y-1.0599
G01 X-0.4818 Y-0.9724
G01 X-0.6060 Y-0.7853
G01 X-0.6868 Y-0.6868
G01 X-0.7853 Y-0.6060
G01 X-0.9724 Y-0.4818
G01 X-1.0599 Y-0.4375
G01 X-1.1818 Y-0.4005
G01 X-1.3877 Y-0.3598
G01 X-1.4853 Y-0.3502
G01 X-24.4147 Y-0.3502
G01 X-24.5123 Y-0.3598
G01 X-24.7182 Y-0.4005
G01 X-24.8401 Y-0.4375
G01 X-24.9401 Y-0.4896
G01 X-25.1659 Y-0.6440
G01 X-25.2771 Y-0.7612
G01 X-25.4104 Y-0.9599
G01 X-25.4506 Y-1.0330
G01 X-25.4964 Y-1.1674
G01 X-25.5402 Y-1.3877
G01 X-25.5500 Y-1.5000
G01 X-25.5498 Y-21.6147
G01 X-25.5402 Y-21.7123
G01 X-25.4995 Y-21.9182
G01 X-25.4625 Y-22.0401
G01 X-25.4104 Y-22.1401
G01 X-25.2560 Y-22.3659
G01 X-25.1388 Y-22.4771
G01 X-24.9401 Y-22.6104
G01 X-24.8670 Y-22.6506
G01 X-24.7326 Y-22.6964
G01 X-24.5123 Y-22.7402
G01 X-24.4000 Y-22.7500
G01 X-1.4853 Y-22.7498
G01 X-1.3877 Y-22.7402
G01 X-1.1818 Y-22.6995
G01 X-1.0599 Y-22.6625
G01 X-0.9599 Y-22.6104
G01 X-0.7341 Y-22.4560
G01 X-0.6229 Y-22.3388
G01 X-0.4896 Y-22.1401
G01 X-0.4494 Y-22.0670
G01 X-0.4036 Y-21.9326
G01 X-0.3598 Y-21.7123
G01 X-0.3502 Y-21.6147
G01 X-0.3500 Y-1.5000
G00 X-0.3500 Y-1.5000
G01 F60.00
G01 Z-1.5000
G01 F120.00
G01 X-0.3502 Y-21.6147
G01 X-0.3598 Y-21.7123
G01 X-0.4036 Y-21.9326
G01 X-0.4494 Y-22.0670
G01 X-0.4896 Y-22.1401
G01 X-0.6229 Y-22.3388
G01 X-0.7341 Y-22.4560
G01 X-0.9599 Y-22.6104
G01 X-1.0599 Y-22.6625
G01 X-1.1818 Y-22.6995
G01 X-1.3877 Y-22.7402
G01 X-1.4853 Y-22.7498
G01 X-24.4000 Y-22.7500
G01 X-24.5123 Y-22.7402
G01 X-24.7326 Y-22.6964
G01 X-24.8670 Y-22.6506
G01 X-24.9401 Y-22.6104
G01 X-25.1388 Y-22.4771
G01 X-25.2560 Y-22.3659
G01 X-25.4104 Y-22.1401
G01 X-25.4625 Y-22.0401
G01 X-25.4995 Y-21.9182
G01 X-25.5402 Y-21.7123
G01 X-25.5498 Y-21.6147
G01 X-25.5500 Y-1.5000
G01 X-25.5402 Y-1.3877
G01 X-25.4964 Y-1.1674
G01 X-25.4506 Y-1.0330
G01 X-25.4104 Y-0.9599
G01 X-25.2771 Y-0.7612
G01 X-25.1659 Y-0.6440
G01 X-24.9401 Y-0.4896
G01 X-24.8401 Y-0.4375
G01 X-24.7182 Y-0.4005
G01 X-24.5123 Y-0.3598
G01 X-24.4147 Y-0.3502
G01 X-1.4853 Y-0.3502
G01 X-1.3877 Y-0.3598
G01 X-1.1818 Y-0.4005
G01 X-1.0599 Y-0.4375
G01 X-0.9724 Y-0.4818
G01 X-0.7853 Y-0.6060
G01 X-0.6868 Y-0.6868
G01 X-0.6060 Y-0.7853
G01 X-0.4818 Y-0.9724
G01 X-0.4375 Y-1.0599
G01 X-0.4005 Y-1.1818
G01 X-0.3574 Y-1.4022
G01 X-0.3500 Y-1.5000
G00 X-0.3500 Y-1.5000
G01 F60.00
G01 Z-2.0000
G01 F120.00
G01 X-0.3574 Y-1.4022
G01 X-0.4005 Y-1.1818
G01 X-0.4375 Y-1.0599
G01 X-0.4818 Y-0.9724
G01 X-0.6060 Y-0.7853
G01 X-0.6868 Y-0.6868
G01 X-0.7853 Y-0.6060
G01 X-0.9724 Y-0.4818
G01 X-1.0599 Y-0.4375
G01 X-1.1818 Y-0.4005
G01 X-1.3877 Y-0.3598
G01 X-1.4853 Y-0.3502
G01 X-24.4147 Y-0.3502
G01 X-24.5123 Y-0.3598
G01 X-24.7182 Y-0.4005
G01 X-24.8401 Y-0.4375
G01 X-24.9401 Y-0.4896
G01 X-25.1659 Y-0.6440
G01 X-25.2771 Y-0.7612
G01 X-25.4104 Y-0.9599
G01 X-25.4506 Y-1.0330
G01 X-25.4964 Y-1.1674
G01 X-25.5402 Y-1.3877
G01 X-25.5500 Y-1.5000
G01 X-25.5498 Y-21.6147
G01 X-25.5402 Y-21.7123
G01 X-25.4995 Y-21.9182
G01 X-25.4625 Y-22.0401
G01 X-25.4104 Y-22.1401
G01 X-25.2560 Y-22.3659
G01 X-25.1388 Y-22.4771
G01 X-24.9401 Y-22.6104
G01 X-24.8670 Y-22.6506
G01 X-24.7326 Y-22.6964
G01 X-24.5123 Y-22.7402
G01 X-24.4000 Y-22.7500
G01 X-1.4853 Y-22.7498
G01 X-1.3877 Y-22.7402
G01 X-1.1818 Y-22.6995
G01 X-1.0599 Y-22.6625
G01 X-0.9599 Y-22.6104
G01 X-0.7341 Y-22.4560
G01 X-0.6229 Y-22.3388
G01 X-0.4896 Y-22.1401
G01 X-0.4494 Y-22.0670
G01 X-0.4036 Y-21.9326
G01 X-0.3598 Y-21.7123
G01 X-0.3502 Y-21.6147
G01 X-0.3500 Y-1.5000
G00 Z2.0000
M05
G00 Z2.0000
G00 Z15.00
G00 X0.0 Y0.0


(G-CODE GENERATED BY FLATCAM vUnstable - www.flatcam.org - Version Date: 2022/3/1)

(Name: smd_vacuum-Edge_Cuts_cutout_cnc)
(Type: G-code from Geometry)
(Units: MM)

(Created on Tuesday, 03 May 2022 at 07:25)

(This preprocessor is the default preprocessor used by FlatCAM.)
(It is made to work with MACH3 compatible motion controllers.)

(TOOL DIAMETER: 1.0 mm)
(Feedrate_XY: 120.0 mm/min)
(Feedrate_Z: 60.0 mm/min)
(Feedrate rapids 1500.0 mm/min)

(Z_Cut: -2.0 mm)
(DepthPerCut: 0.5 mm <=>4 passes)
(Z_Move: 2.0 mm)
(Z Start: None mm)
(Z End: 22.0 mm)
(X,Y End: 0.0000, 0.0000 mm)
(Steps per circle: 16)
(Preprocessor Geometry: default)

(X range:  -73.6250 ...   -1.3750  mm)
(Y range:  -75.0250 ...   -1.3750  mm)

(Spindle Speed: 12000.0 RPM)
G21
G90
G94

G01 F120.00
G00 Z2.0000

M03 S12000.0
G01 F120.00
G00 X-1.3750 Y-5.5000
G01 F60.00
G01 Z-0.5000
G01 F120.00
G01 X-1.3752 Y-70.9147
G01 X-1.3870 Y-71.0219
G01 X-1.6534 Y-72.3613
G01 X-1.6890 Y-72.4786
G01 X-1.7467 Y-72.5866
G01 X-2.5054 Y-73.7221
G01 X-2.5832 Y-73.8168
G01 X-2.6779 Y-73.8946
G01 X-3.8134 Y-74.6533
G01 X-3.9214 Y-74.7110
G01 X-4.0387 Y-74.7466
G01 X-5.3781 Y-75.0130
G01 X-5.4853 Y-75.0248
G01 X-69.5000 Y-75.0250
G01 X-69.6219 Y-75.0130
G01 X-70.9613 Y-74.7466
G01 X-71.0786 Y-74.7110
G01 X-71.1866 Y-74.6533
G01 X-72.3221 Y-73.8946
G01 X-72.4168 Y-73.8168
G01 X-72.4946 Y-73.7221
G01 X-73.2533 Y-72.5866
G01 X-73.3110 Y-72.4786
G01 X-73.3466 Y-72.3613
G01 X-73.6130 Y-71.0219
G01 X-73.6248 Y-70.9147
G01 X-73.6250 Y-5.5000
G01 X-73.6130 Y-5.3781
G01 X-73.3466 Y-4.0387
G01 X-73.3110 Y-3.9214
G01 X-73.2533 Y-3.8134
G01 X-72.4946 Y-2.6779
G01 X-72.4168 Y-2.5832
G01 X-72.3221 Y-2.5054
G01 X-71.1866 Y-1.7467
G01 X-71.0786 Y-1.6890
G01 X-70.9613 Y-1.6534
G01 X-69.6219 Y-1.3870
G01 X-69.5147 Y-1.3752
G01 X-5.4706 Y-1.3757
G01 X-5.3781 Y-1.3870
G01 X-4.0387 Y-1.6534
G01 X-3.9214 Y-1.6890
G01 X-3.8134 Y-1.7467
G01 X-2.6779 Y-2.5054
G01 X-2.5832 Y-2.5832
G01 X-2.5054 Y-2.6779
G01 X-1.7467 Y-3.8134
G01 X-1.6890 Y-3.9214
G01 X-1.6534 Y-4.0387
G01 X-1.3870 Y-5.3781
G01 X-1.3750 Y-5.5000
G00 X-1.3750 Y-5.5000
G01 F60.00
G01 Z-1.0000
G01 F120.00
G01 X-1.3870 Y-5.3781
G01 X-1.6534 Y-4.0387
G01 X-1.6890 Y-3.9214
G01 X-1.7467 Y-3.8134
G01 X-2.5054 Y-2.6779
G01 X-2.5832 Y-2.5832
G01 X-2.6779 Y-2.5054
G01 X-3.8134 Y-1.7467
G01 X-3.9214 Y-1.6890
G01 X-4.0387 Y-1.6534
G01 X-5.3781 Y-1.3870
G01 X-5.4706 Y-1.3757
G01 X-69.5147 Y-1.3752
G01 X-69.6219 Y-1.3870
G01 X-70.9613 Y-1.6534
G01 X-71.0786 Y-1.6890
G01 X-71.1866 Y-1.7467
G01 X-72.3221 Y-2.5054
G01 X-72.4168 Y-2.5832
G01 X-72.4946 Y-2.6779
G01 X-73.2533 Y-3.8134
G01 X-73.3110 Y-3.9214
G01 X-73.3466 Y-4.0387
G01 X-73.6130 Y-5.3781
G01 X-73.6250 Y-5.5000
G01 X-73.6248 Y-70.9147
G01 X-73.6130 Y-71.0219
G01 X-73.3466 Y-72.3613
G01 X-73.3110 Y-72.4786
G01 X-73.2533 Y-72.5866
G01 X-72.4946 Y-73.7221
G01 X-72.4168 Y-73.8168
G01 X-72.3221 Y-73.8946
G01 X-71.1866 Y-74.6533
G01 X-71.0786 Y-74.7110
G01 X-70.9613 Y-74.7466
G01 X-69.6219 Y-75.0130
G01 X-69.5000 Y-75.0250
G01 X-5.4853 Y-75.0248
G01 X-5.3781 Y-75.0130
G01 X-4.0387 Y-74.7466
G01 X-3.9214 Y-74.7110
G01 X-3.8134 Y-74.6533
G01 X-2.6779 Y-73.8946
G01 X-2.5832 Y-73.8168
G01 X-2.5054 Y-73.7221
G01 X-1.7467 Y-72.5866
G01 X-1.6890 Y-72.4786
G01 X-1.6534 Y-72.3613
G01 X-1.3870 Y-71.0219
G01 X-1.3752 Y-70.9147
G01 X-1.3750 Y-5.5000
G00 X-1.3750 Y-5.5000
G01 F60.00
G01 Z-1.5000
G01 F120.00
G01 X-1.3752 Y-70.9147
G01 X-1.3870 Y-71.0219
G01 X-1.6534 Y-72.3613
G01 X-1.6890 Y-72.4786
G01 X-1.7467 Y-72.5866
G01 X-2.5054 Y-73.7221
G01 X-2.5832 Y-73.8168
G01 X-2.6779 Y-73.8946
G01 X-3.8134 Y-74.6533
G01 X-3.9214 Y-74.7110
G01 X-4.0387 Y-74.7466
G01 X-5.3781 Y-75.0130
G01 X-5.4853 Y-75.0248
G01 X-69.5000 Y-75.0250
G01 X-69.6219 Y-75.0130
G01 X-70.9613 Y-74.7466
G01 X-71.0786 Y-74.7110
G01 X-71.1866 Y-74.6533
G01 X-72.3221 Y-73.8946
G01 X-72.4168 Y-73.8168
G01 X-72.4946 Y-73.7221
G01 X-73.2533 Y-72.5866
G01 X-73.3110 Y-72.4786
G01 X-73.3466 Y-72.3613
G01 X-73.6130 Y-71.0219
G01 X-73.6248 Y-70.9147
G01 X-73.6250 Y-5.5000
G01 X-73.6130 Y-5.3781
G01 X-73.3466 Y-4.0387
G01 X-73.3110 Y-3.9214
G01 X-73.2533 Y-3.8134
G01 X-72.4946 Y-2.6779
G01 X-72.4168 Y-2.5832
G01 X-72.3221 Y-2.5054
G01 X-71.1866 Y-1.7467
G01 X-71.0786 Y-1.6890
G01 X-70.9613 Y-1.6534
G01 X-69.6219 Y-1.3870
G01 X-69.5147 Y-1.3752
G01 X-5.4706 Y-1.3757
G01 X-5.3781 Y-1.3870
G01 X-4.0387 Y-1.6534
G01 X-3.9214 Y-1.6890
G01 X-3.8134 Y-1.7467
G01 X-2.6779 Y-2.5054
G01 X-2.5832 Y-2.5832
G01 X-2.5054 Y-2.6779
G01 X-1.7467 Y-3.8134
G01 X-1.6890 Y-3.9214
G01 X-1.6534 Y-4.0387
G01 X-1.3870 Y-5.3781
G01 X-1.3750 Y-5.5000
G00 X-1.3750 Y-5.5000
G01 F60.00
G01 Z-2.0000
G01 F120.00
G01 X-1.3870 Y-5.3781
G01 X-1.6534 Y-4.0387
G01 X-1.6890 Y-3.9214
G01 X-1.7467 Y-3.8134
G01 X-2.5054 Y-2.6779
G01 X-2.5832 Y-2.5832
G01 X-2.6779 Y-2.5054
G01 X-3.8134 Y-1.7467
G01 X-3.9214 Y-1.6890
G01 X-4.0387 Y-1.6534
G01 X-5.3781 Y-1.3870
G01 X-5.4706 Y-1.3757
G01 X-69.5147 Y-1.3752
G01 X-69.6219 Y-1.3870
G01 X-70.9613 Y-1.6534
G01 X-71.0786 Y-1.6890
G01 X-71.1866 Y-1.7467
G01 X-72.3221 Y-2.5054
G01 X-72.4168 Y-2.5832
G01 X-72.4946 Y-2.6779
G01 X-73.2533 Y-3.8134
G01 X-73.3110 Y-3.9214
G01 X-73.3466 Y-4.0387
G01 X-73.6130 Y-5.3781
G01 X-73.6250 Y-5.5000
G01 X-73.6248 Y-70.9147
G01 X-73.6130 Y-71.0219
G01 X-73.3466 Y-72.3613
G01 X-73.3110 Y-72.4786
G01 X-73.2533 Y-72.5866
G01 X-72.4946 Y-73.7221
G01 X-72.4168 Y-73.8168
G01 X-72.3221 Y-73.8946
G01 X-71.1866 Y-74.6533
G01 X-71.0786 Y-74.7110
G01 X-70.9613 Y-74.7466
G01 X-69.6219 Y-75.0130
G01 X-69.5000 Y-75.0250
G01 X-5.4853 Y-75.0248
G01 X-5.3781 Y-75.0130
G01 X-4.0387 Y-74.7466
G01 X-3.9214 Y-74.7110
G01 X-3.8134 Y-74.6533
G01 X-2.6779 Y-73.8946
G01 X-2.5832 Y-73.8168
G01 X-2.5054 Y-73.7221
G01 X-1.7467 Y-72.5866
G01 X-1.6890 Y-72.4786
G01 X-1.6534 Y-72.3613
G01 X-1.3870 Y-71.0219
G01 X-1.3752 Y-70.9147
G01 X-1.3750 Y-5.5000
G00 Z2.0000
M05
G00 Z2.0000
G00 Z22.00
G00 X0.0 Y0.0


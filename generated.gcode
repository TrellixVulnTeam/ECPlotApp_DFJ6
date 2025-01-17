
; ###### Start Code ######

M906 Z20 ; reduce current for Z axis
M906 E200 ; Set current for Extruder motor
M203 Z20 ; Set max feedrate for Z axis
M304 D133.93 I3.87 P27.87


G90 ; Absolute Positioning
G92 Z0 ; Set Z height to 0
M117 Homing X and Y
G28 X Y;

G91 ; Relative Positioning
G0 X148 Y148 Z-15 F5000
G0 Z2
G92 Z0 ; Set Z height to 0
G90 ; Absolute Positioning

; ###### Start Code End ######

; ###### Pick Syringe Tool 2 - Electrochromic ######

G90 ; Absolute Positioning
M211 S0 ; Disable software end-stops

G0 X228 Z5 F10000
G0 Y309 F10000

G0 Y309 Z45

G0 Y230 F10000

G0 X321.3 Y108.4 Z30; Move to homing spot
G28 Z; Home Z nozzle

M206 Z6.36 ; Offset Z Homing position

; Move and Prime 
G0 Z25
G0 Y140
G0 Z10
G92 E0
G1 E2.7 F75
G4 S5
G1 E2.5 F300
G92 E0
G0 Z25 F10000
; Move and Prime End

G0 X310

M211 S1 ; Enable software end-stops

; ###### Pick Syringe Tool 2 - Electrochromic End ######
;
;The following gcode is for printing electrochromic layer !
;


G21 ; set units to millimeters
G90 ; use absolute coordinates
M82 ; use absolute distances for extrusion
G92 E0
G1 Z0.110 F1800.000
G1 E-0.20000 F720.00000
G92 E0
G1 Z2.610 F1800.000
G1 X271.513 Y173.931 F1800.000
G1 Z0.110 F1800.000
G1 E0.20000 F720.00000
G1 F900
G1 X280.713 Y173.931 E0.24552
G1 X280.713 Y193.131 E0.34052
G1 X271.513 Y193.131 E0.38603
G1 X271.513 Y174.081 E0.48029
G1 E0.28029 F720.00000
G92 E0
G1 Z2.610 F1800.000
G1 X272.292 Y175.138 F1800.000
G1 Z0.110 F1800.000
G1 E0.20000 F720.00000
G1 F900
G1 X272.292 Y192.781 E0.29521
G1 X272.292 Y174.281 E0.39505
G1 X273.141 Y174.281 E0.39963
G1 X273.141 Y192.781 E0.49947
G1 X273.990 Y192.781 E0.50405
G1 X273.990 Y174.281 E0.60389
G1 X274.839 Y174.281 E0.60847
G1 X274.839 Y192.781 E0.70831
G1 X275.688 Y192.781 E0.71289
G1 X275.688 Y174.281 E0.81273
G1 X276.538 Y174.281 E0.81731
G1 X276.538 Y192.781 E0.91715
G1 X277.387 Y192.781 E0.92173
G1 X277.387 Y174.281 E1.02157
G1 X278.236 Y174.281 E1.02615
G1 X278.236 Y192.781 E1.12599
G1 X279.085 Y192.781 E1.13057
G1 X279.085 Y174.281 E1.23041
G1 X279.934 Y174.281 E1.23499
G1 X279.934 Y192.781 E1.33483
G1 E1.13483 F720.00000
G92 E0
G1 Z2.610 F1800.000
G1 X271.513 Y170.555 F1800.000
G1 Z0.110 F1800.000
G1 E0.20000 F720.00000
G1 F900
G1 X271.513 Y151.355 E0.29500
G1 X280.713 Y151.355 E0.34052
G1 X280.713 Y170.555 E0.43551
G1 X271.663 Y170.555 E0.48029
G1 E0.28029 F720.00000
G92 E0
G1 Z2.610 F1800.000
G1 X279.934 Y170.205 F1800.000
G1 Z0.110 F1800.000
G1 E0.20000 F720.00000
G1 F900
G1 X279.934 Y151.705 E0.29984
G1 X279.085 Y151.705 E0.30442
G1 X279.085 Y170.205 E0.40426
G1 X278.236 Y170.205 E0.40884
G1 X278.236 Y151.705 E0.50868
G1 X277.387 Y151.705 E0.51326
G1 X277.387 Y170.205 E0.61310
G1 X276.538 Y170.205 E0.61768
G1 X276.538 Y151.705 E0.71751
G1 X275.688 Y151.705 E0.72210
G1 X275.688 Y170.205 E0.82193
G1 X274.839 Y170.205 E0.82652
G1 X274.839 Y151.705 E0.92635
G1 X273.990 Y151.705 E0.93094
G1 X273.990 Y170.205 E1.03077
G1 X273.141 Y170.205 E1.03536
G1 X273.141 Y151.705 E1.13519
G1 X272.292 Y151.705 E1.13978
G1 X272.292 Y170.205 E1.23961
G1 X272.292 Y152.562 E1.33483
G1 E1.13483 F720.00000
G92 E0
G1 Z2.610 F1800.000



; ###### Drop Syringe Tool 2 - Electrochromic ######

G90 ; Absolute Positioning
M211 S0 ; Disable software end-stops
G0 Z10 F10000
G0 X228 Y220 F10000
G0 Y270 Z40 F10000

G0 Y309 ; Move on top of tool holder

G91
M906 E75 ; Set current for Extruder motor
G0 E-80 F250
M906 E500 ; Set current for Extruder motor
G90


G0 Z0 F10000 ; Lower
G91 ; Relative Positioning
G0 Z-10 F10000
G90 ; Absolute Positioning

G0 Y230 F10000 ; Move away

G91 ; Relative Positioning
G0 Z-2 F10000
G0 Z2
G92 Z0 ; Set Z height to 0
G90 ; Absolute Positioning

M211 S1 ; Enable software end-stops

; ###### Drop Syringe Tool 2 - Electrochromic End ######

; ###### Pick Heat Gun ######
G90 ; Absolute Positioning
M211 S0 ; Disable software end-stops

G0 X90.2 Z5 F10000
G0 Y309 F10000

G0 Y309 Z45

G0 Y230 F10000

M211 S1 ; Enable software end-stops

; ###### Pick Heat Gun End ######

M400;
M106 S50; Fan speed (20%)
M190 S100; Heatgun temperature
;
;The following gcode is for printing electrochromic_cure layer !
;


G21 ; set units to millimeters
G90 ; use absolute coordinates
M82 ; use absolute distances for extrusion
G92 E0
G1 Z0.110 F1800.000
G1 E-0.20000 F720.00000
G92 E0
G1 Z2.610 F1800.000
G1 X273.613 Y176.031 F1800.000
G1 Z0.110 F1800.000
G1 E0.20000 F720.00000
G1 F30
G1 X278.613 Y176.031 E0.33756
G1 X278.613 Y191.031 E0.75025
G1 X273.613 Y191.031 E0.88781
G1 X273.613 Y176.181 E1.29637
G1 E1.09637 F720.00000
G92 E0
G1 Z2.610 F1800.000
G1 X273.613 Y168.455 F1800.000
G1 Z0.110 F1800.000
G1 E0.20000 F720.00000
G1 F30
G1 X273.613 Y153.455 E0.61269
G1 X278.613 Y153.455 E0.75025
G1 X278.613 Y168.455 E1.16294
G1 X273.763 Y168.455 E1.29637
G1 E1.09637 F720.00000
G92 E0
G1 Z2.610 F1800.000



M400;
M190 S0; Heatgun temperature
M106 S0; Fan speed (0%)

; ###### Drop Heat Gun ######
G90 ; Absolute Positioning
M211 S0 ; Disable software end-stops
G0 Z10 F10000
G0 X90.2 Y220 F10000
G0 Y270 Z45 F10000

G0 Y309 ; Move on top of tool holder

G0 Z0 F10000 ; Lower

G0 Y230 F10000 ; Move away

M211 S1 ; Enable software end-stops

; ###### Drop Heat Gun End ######

; ###### End Code ######

G0 X2 Y2

; ###### End Code End ######

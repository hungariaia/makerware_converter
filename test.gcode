M136 (enable build)
M73 P0
G162 X Y F2000(home XY axes maximum)
G161 Z F900(home Z axis minimum)
G92 X0 Y0 Z-5 A0 B0 (set Z to -5)
G1 Z0.0 F900(move Z to '0')
G161 Z F100(home Z axis minimum)
M132 X Y Z A B (Recall stored home offsets for XYZAB axis)
G92 X152 Y75 Z0 A0 B0
G1 X-141 Y-74 Z40 F3300.0 (move to waiting position)
G130 X20 Y20 A20 B20 (Lower stepper Vrefs while heating)
M135 T0
M104 S200 T0
M133 T0
G130 X127 Y127 A127 B127 (Set Stepper motor Vref to defaults)
; Makerbot Industries
; Miracle Grue 3.9.4
; This file contains digital fabrication directives
; in G-Code format for your 3D printer
; http://www.makerbot.com/support/makerware/documentation/slicer/
; 
; Right Toolhead Weight (grams): 6.17523 
; Right Toolhead Distance (mm): 2023.93 
; Duration: 1420.14 seconds 
; Active extruders in print: 0 
; Chunk 0 
; Lower Position  0 
; Upper Position  0.3 
; Thickness       0.3 
; Width           2.5 
G1 X105.400 Y-74.000 Z0.270 F9000.000 (Extruder Prime Dry Move)
G1 X-141 Y-74 Z0.270 F1800.000 E25.000 (Extruder Prime Start)
G92 A0 B0 (Reset after prime)
G1 Z0.000000 F1000
G1 X-141.0 Y-74.0 Z0.0 F1000 E0.0
G92 E0
G1 X-141.000 Y-74.000 Z0.000 F1500 A-1.30000; Retract 
G1 X-141.000 Y-74.000 Z0.000 F3000; Retract 
G1 X-141.000 Y-74.000 Z0.300 F1380; Travel Move 
M73 P0; Update Progress 
G1 X-12.680 Y-12.956 Z0.300 F9000; Travel Move 
G1 X-12.680 Y-12.956 Z0.300 F1500 A0.00000; Restart 
G1 X-1.956 Y-12.956 Z0.300 F600 A3.51477; Infill 
G1 X-1.956 Y-13.985 Z0.300 F600 A3.85207; Infill 
G1 X0.044 Y-9.384 Z0.300 F600 A5.49623; Connection 
G1 X13.985 Y-9.384 Z0.300 F600 A10.06533; Infill 
G1 X13.985 Y-5.813 Z0.300 F600 A11.23587; Connection 
G1 X0.044 Y-5.813 Z0.300 F600 A15.80497; Infill 
G1 X0.044 Y-2.242 Z0.300 F600 A16.97551; Infill 
G1 X13.985 Y-2.242 Z0.300 F600 A21.54461; Infill 
G1 X13.985 Y1.330 Z0.300 F600 A22.71514; Connection 
G1 X2.015 Y1.330 Z0.300 F600 A26.63831; Infill 
M73 P1; Update Progress 

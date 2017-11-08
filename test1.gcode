; -- START GCODE --
 G21                     ;set units to millimetres
 G90                     ;set to absolute positioning
 M106 S0                 ;set fan speed to zero (turned off)
 G28 X0 Y0               ;move to the X/Y origin (Home)
 G28 Z0                  ;move to the Z origin (Home)
 G1 Z15.0 F1200          ;move Z to position 15.0 mm
 G92 E0                  ;zero the extruded length
 G1 E20 F200             ;extrude 20mm of feed stock
 G92 E0                  ;zero the extruded length again
 G1 F7200                ;set feedrate to 120 mm/s
 ; -- end of START GCODE --
G1 X-41.0 Y26.0 Z40 F3300.0 (move to waiting position)
G1 X205.4 Y26.0 Z0.270 F9000.000 (Extruder Prime Dry Move)
G1 X-41.0 Y26.0 Z0.270 F1800.000 E25.000 (Extruder Prime Start)
G1 X-41.0 Y26.0 Z0.0 F1000 E0.0
G1 X-41.0 Y26.0 Z0.000 F1500 E-1.30000; Retract
G1 X-41.0 Y26.0 Z0.000 F3000; Retract
G1 X-41.0 Y26.0 Z0.300 F1380; Travel Move
G1 X87.32 Y87.044 Z0.300 F9000; Travel Move
G1 X87.32 Y87.044 Z0.300 F1500 E0.00000; Restart
G1 X98.044 Y87.044 Z0.300 F600 E3.51477; Infill
G1 X98.044 Y86.015 Z0.300 F600 E3.85207; Infill
G1 X100.044 Y90.616 Z0.300 F600 E5.49623; Connection
G1 X113.985 Y90.616 Z0.300 F600 E10.06533; Infill
G1 X113.985 Y94.187 Z0.300 F600 E11.23587; Connection
G1 X100.044 Y94.187 Z0.300 F600 E15.80497; Infill
G1 X100.044 Y97.758 Z0.300 F600 E16.97551; Infill
G1 X113.985 Y97.758 Z0.300 F600 E21.54461; Infill
G1 X113.985 Y101.33 Z0.300 F600 E22.71514; Connection
G1 X102.015 Y101.33 Z0.300 F600 E26.63831; Infillend_gcode =
 "; -- END GCODE --
 M104 S0                 ;set extruder temperature to zero (turned off)
 G91                     ;set to relative positioning
 G1 E-20 F300            ;retract the filament a bit to release some of the pressure
 G1 Z10                  ;move extruder up 10 mm
 G90                     ;set to absolute positioning
 G1 X0 Y180 F1200        ;expose the platform
 M84                     ;turn off steppers
 ; -- end of END GCODE --"

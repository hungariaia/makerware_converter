end_gcode =
"; -- END GCODE --
M104 S0                 ;set extruder temperature to zero (turned off)
G91                     ;set to relative positioning
G1 E-20 F300            ;retract the filament a bit to release some of the pressure
G1 Z10                  ;move extruder up 10 mm
G90                     ;set to absolute positioning
G1 X0 Y180 F1200        ;expose the platform
M84                     ;turn off steppers
; -- end of END GCODE --"

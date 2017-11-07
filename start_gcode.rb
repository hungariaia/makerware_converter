start_gcode =
"; -- START GCODE --
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
; -- end of START GCODE --"

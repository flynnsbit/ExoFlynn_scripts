Echo off
Echo - - - - 
if .%1==. goto NOARG
IF %1==Y goto in1
IF %1==y goto in1
if exist JOYSTICK rename JOYSTICK NOJOYSTICK
goto in2
:in1
if exist NOJOYSTICK rename NOJOYSTICK JOYSTICK
:in2
goto abort
:noarg
Echo Type CONFIG Y if you have a joystick,
Echo      CONFIG N if you are not using one.
:abort

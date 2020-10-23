ECHO OFF
chkscr
IF ERRORLEVEL 1 GOTO colour
:hercules
ECHO Mono system detected
sfhh
GOTO end
:colour
ECHO Colour system detected
sfhc
:end


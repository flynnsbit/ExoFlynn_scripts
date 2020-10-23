ECHO OFF
IF (%1)==() GOTO USAGE
goto doit

:USAGE
ECHO Usage INSTALL d
ECHO       Where d is the hard drive (C, D, etc.)
echo press cntrl-c
pause

:doit

MD %1:\BBIZ
%1:
cd\BBIZ
COPY a:*.*
install2

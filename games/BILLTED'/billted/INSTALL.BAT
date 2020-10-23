ECHO OFF
IF (%1)==() GOTO USAGE
goto doit

:USAGE
ECHO Usage INSTALL d
ECHO       Where d is the hard drive (C, D, etc.)
echo press cntrl-c
pause

:doit

MD %1:\CAPSTONE
MD %1:\CAPSTONE\BNT
%1:
cd\capstone\bnt
COPY a:*.*
install2

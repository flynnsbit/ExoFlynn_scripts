@echo off
newIntro
docshell menu.shl %1 %2 %3 %4 %5 %6 %7 %8 %9
if errorlevel 1 goto runit
goto exit
:runit
STRBALL %1 %2 %3 %4 %5 %6 %7 %8 %9
:exit

echo off
cls
DETECT %1 %2 %3 %4 %5 %6 %7 %8 %9
if errorlevel 1 goto top
goto exit
:top
docshell menu.shl %1 %2 %3 %4 %5 %6 %7 %8 %9
if errorlevel 1 goto runscuba
goto exit
:runscuba
SCUBA %1 %2 %3 %4 %5 %6 %7 %8 %9
goto top
:exit

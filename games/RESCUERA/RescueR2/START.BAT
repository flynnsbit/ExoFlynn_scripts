echo off
:top
docshell menu.shl %1 %2 %3 %4 %5 %6 %7 %8 %9
if errorlevel 1 goto runrov
goto exit
:runrov
ROVER2 %1 %2 %3 %4 %5 %6 %7 %8 %9
goto top
:exit

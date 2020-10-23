echo off
:top
docshell menu.shl /END %1 %2 %3 %4 %5 %6 %7 %8 %9
if errorlevel 1 goto runtiles
goto exit
:runtiles
DRAGON %1 %2 %3 %4 %5 %6 %7 %8 %9
goto top
:exit

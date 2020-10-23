@echo off
newintro %1 %2 %3 %4 %5 %6 %7 %8 %9
:rerun
docshell menu.shl %1 %2 %3 %4 %5 %6 %7 %8 %9
if errorlevel 5 goto hints
if errorlevel 1 goto runit
goto exit
:hints
hintcat %1 %2 %3 %4 %5 %6 %7 %8 %9
goto rerun
:runit
intro
:exit

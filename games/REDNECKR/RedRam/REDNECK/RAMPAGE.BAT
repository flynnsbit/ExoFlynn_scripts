@echo off
if %windir%==%windir% goto WinRedneck
eregcard.exe
rr.exe
goto End

:WinRedneck
start eregcard.pif
start rr.pif
goto End

:End



@echo off
if %windir%==%windir% goto WinRedneck
eregcard.exe
ra.exe
goto End

:WinRedneck
eregcard.exe
start ra.pif
goto End

:End



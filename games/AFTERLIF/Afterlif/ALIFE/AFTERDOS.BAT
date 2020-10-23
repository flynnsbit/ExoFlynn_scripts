@echo off
if exist *.swp del *.swp
set DOS4GVM=MAXMEM#16384 SWAPINC#0
ALIFEDOS.EXE AFTERDOS.INI %1 %2 %3 %4
set DOS4GVM=
if exist *.swp del *.swp


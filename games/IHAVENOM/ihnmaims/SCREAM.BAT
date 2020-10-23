@echo off

REM This batch files manages virtual memory for the game which is actually
REM in S.EXE. If your system has enough RAM (currently 8 Mbytes) then you
REM don't have to use virtual memory. The game is runs more smoothly when
REM not using virtual memory.

if exist *.swp del *.swp
set DOS4GVM=deleteswap minmem#3072 maxmem#65536 virtualsize#8192 swapinc#1024
S.EXE %1
set DOS4GVM=
if exist *.swp del *.swp

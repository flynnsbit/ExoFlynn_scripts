@ECHO OFF
MAKESWAP 4096 C:\EDPMI.SWP
SET DPMI32=SWAPFILE C:\EDPMI.SWP
start %1 %2 %3 %4 %5 %6 %7
DEL C:\EDPMI.SWP

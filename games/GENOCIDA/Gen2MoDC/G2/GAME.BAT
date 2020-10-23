@echo off
D:\G2\makeswap 4M C:\G2\edpmi.swp
SET DPMI32=SWAPFILE C:\G2\edpmi.swp
cls
gkey.exe -s opening.exe
gkey.exe -s g2.exe
SET DPMI32=
DEL C:\G2\edpmi.swp
cls

@echo off
cd\sierra\pqcol\pq4
:getDisk
echo Please insert PQ Collection CD #1 into your CD-ROM drive and then
pause
echo If you're having problems, you can exit back to MS-DOS by pressing CTRL-C
if not exist D:\PQCVER goto getDisk
sierra
cd..

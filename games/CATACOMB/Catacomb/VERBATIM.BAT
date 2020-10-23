echo off
cls
echo 










          ---- Running PC Disk Downunder Bonus Issue Menu -----

:loop1
if exist odm.exe goto odm:
echo Place Disk 1 of PC Disk Downunder in the drive and
pause
goto loop1
:odm
odm %1 %2 %3
PIRACY

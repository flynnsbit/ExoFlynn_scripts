@echo off
af.exe /n %1 %2 %3
if errorlevel = 255 goto exit
if errorlevel = 1 goto TNTerror
goto exit

:TNTerror
echo 

echo 

echo You do not have enough conventional memory to run the Nato Fighters
echo Expansion Disc! Please refer to your Install Guide on making a boot
echo disk that will free a total of 420K of memory.
echo 

goto exit

:exit

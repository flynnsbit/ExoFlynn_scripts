@echo off
af.exe %1 %2 %3
if errorlevel = 255 goto exit
if errorlevel = 1 goto TNTerror
goto exit

:TNTerror
echo 

echo 

echo You do not have enough conventional memory to run Advanced Tactical Fighters!
echo Please refer to your Install Guide on making a boot disk that will free
echo a total of 420K of memory.
echo 

goto exit

:exit

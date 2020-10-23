echo off
if exist madden.cfg goto frontend
setup

:frontend
echo John Madden Football ver 1.00
rem call checkcd.bat
  
:newscreens
cd screens
screens > sc.out
cd ..
if errorlevel 9 if not errorlevel 10 goto madden_load
if errorlevel 8 if not errorlevel 9 goto madden
goto end

:contscreens
cd screens
screens helloagain > sc.out
cd ..
if errorlevel 9 if not errorlevel 10 goto madden_load
if errorlevel 8 if not errorlevel 9 goto madden
goto end

:madden
cd action
moe %1
cd ..
if errorlevel 8 if not errorlevel 9 goto contscreens
goto end

:madden_load
cd action
moe load %1
cd ..
if errorlevel 8 if not errorlevel 9 goto contscreens
goto end

:end
mode co80

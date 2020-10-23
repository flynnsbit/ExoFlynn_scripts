@echo off
:pick
cls
echo.
echo Press 1 for Solar Winds Episode 1
echo Press 2 for Solar Winds Episode 2
echo Press 3 to exit
echo.
choice /c:123 /N Please Choose:

if errorlevel 3 goto gone
if errorlevel 2 goto sol2
if errorlevel 1 goto sol1

:sol1
cd solar1
solar1
goto pick

:sol2
cd solar2
solar2
goto pick

:gone
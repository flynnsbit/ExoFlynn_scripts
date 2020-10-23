@echo off
cls
echo.
echo Press 1 to play Wanderer v3.3 (Text)
echo Press 2 to play Wanderer v4.01 (SVGA)
echo Press 3 to Quit
echo.
choice /C:123 /N

if errorlevel = 3 goto exit
if errorlevel = 2 goto 4
if errorlevel = 1 goto 3

:3
cd 3
cls
WANDERER
goto exit

:4
cd 4
cls
WANDALLG
goto exit

:exit
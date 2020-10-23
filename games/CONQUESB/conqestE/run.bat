@echo off
cls
echo.
echo Press 1 for 16-bit version
echo Press 2 for 32-bit version
echo Press 3 to Quit
echo.
choice /C:123 /N

if errorlevel = 3 goto end
if errorlevel = 2 goto 32
if errorlevel = 1 goto 16

:16
call ce16
goto end

:32
call ce32
goto end

:end
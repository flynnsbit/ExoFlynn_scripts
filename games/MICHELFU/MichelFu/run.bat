:menu
@echo off
cls
echo.
echo Press 1 to launch Michel Futbol Master
echo Press 2 to launch Super Skills
echo Press 3 to Quit
echo.
choice /c:123 /n

if errorlevel = 3 goto end
if errorlevel = 2 goto ski
if errorlevel = 1 goto fut

:fut
@call michel2
goto menu

:ski
@call michel1
goto menu

:end
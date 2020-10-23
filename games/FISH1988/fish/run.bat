:menu
@echo off
cls
echo.
echo Press 1 for Fish, original DOS release
echo Press 2 for Fish, high res interpreter
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
@cd fish
@dofish .\DISK1.PIX .\DISK2.PIX M/G
@cd ..
goto menu

:bio2
cls
@magnetic FISH.MAG
goto menu

:quit
exit
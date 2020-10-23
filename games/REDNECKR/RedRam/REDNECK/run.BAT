@echo off
:menu
cls
echo.
echo Press 1 to Launch Redneck Rampage
echo Press 2 to Install the Cuss pack
echo Press 3 to Remove the Cuss pack
echo Press 4 to Run Setup
echo Press 5 to quit
echo.
choice /c:12345 /n Please Choose

if errorlevel = 5 goto quit
if errorlevel = 4 goto setup
if errorlevel = 3 goto uni
if errorlevel = 2 goto cuss
if errorlevel = 1 goto rr

:rr
mixer cdaudio 20
cls
@rr
goto menu

:setup
cls
@setup
goto menu

:cuss
unzip -o cuss.zip
cls
echo.
echo Installed!
echo.
pause
goto menu

:uni
@call uninstal
goto menu

:quit
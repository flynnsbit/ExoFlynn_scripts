@echo off
:menu
cls
echo.
echo Press 1 to launch Redneck Rampage
echo Press 2 to Install the Cuss pack
echo Press 3 to Remove the cuss pack
echo Press 4 to quit
echo.
choice /c:1234 /n Please Choose

if errorlevel = 4 goto quit
if errorlevel = 3 goto uni
if errorlevel = 2 goto cuss
if errorlevel = 1 goto rr

:rr
cls
@rr

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
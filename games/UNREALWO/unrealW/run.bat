@echo off 
cls
echo.
echo Press 1 to play UnReal World v1.00
echo Press 2 to play UnReal World v2.80
echo Press 3 to Quit
echo.
choice /c:123 /N Please Choose

if errorlevel = 3 goto end
if errorlevel = 2 goto v2
if errorlevel = 1 goto v1

:v1
cd URW100B
cls
loadfix urw
goto end

:v2
cd URW280
cls
config -set "cycles=9000"
urw
goto end

:end
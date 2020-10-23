:menu
@echo off
cls
echo.
echo Press 1 for XCar: Experimental Racing
echo Press 2 for XCar: Experimental Racing w/ 3DFX
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto 3dfx
rem if errorlevel = 3 goto xcarsc
rem if errorlevel = 2 goto mt32
if errorlevel = 1 goto xcarsb

:xcarsb
CONFIG -set "mididevice=default"
@cd XCAR
rem copy .\sb16\*.* .\
cls
@XCAR
cd ..
goto quit

:MT32
CONFIG -set "mididevice=mt32"
cd XCAR
copy .\mt32\*.* .\
cls
@XCAR
goto quit

:xcarsc
CONFIG -set "mididevice=fluidsynth"
@cd XCAR
copy .\sc55\*.* .\
cls
@cd XCAR
@XCAR
cd ..
goto quit

:3dfx
CONFIG -set "mididevice=default"
cls
@cd XCARFX
@XCARFX
cd ..
goto quit

:quit
exit
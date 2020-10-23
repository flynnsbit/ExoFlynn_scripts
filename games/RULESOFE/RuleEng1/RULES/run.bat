:menu
@echo off
cls
echo.
echo Press 1 for Rules of Engagement w/ SoundBlaster
echo Press 2 for Rules of Engagement w/ MT-32
echo Press 3 to Transfer Characters from Breach 2
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto TRAN
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@RULES
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@RULES
goto quit

:tran
e:
cd ..
cls
echo.
echo Once the characters have been imported, start the game and go to
echo "Fleet CMDR" on the left, and then "Convert" at the bottom. Now type
echo the path to the files, which in this case is C:
echo.
if exist .\breach2\*.b2l echo Breach 2 Character(s) Detected. Press 1 to import
if not exist .\breach2\*.b2l echo No Breach 2 Character(s) Detected.
if exist .\breach2\*.b2l dir .\breach2\*.b2l /b
echo.
echo Press 2 to Return to the previous menu.
echo.
choice /C:12 /N Please Choose:

if errorlevel = 2 goto menu
if errorlevel = 1 goto bre

:bre
cls
copy .\breach2\*.b2l .\RuleEng1\rules\
echo.
if exist .\RuleEng1\rules\*.b2l echo Copy Successful
if not exist .\RuleEng1\rules\*.b2l echo Copy Unsuccessful
echo.
pause
c:
goto menu

:quit
exit
:menu
@echo off
cls
echo.
echo Press 1 for Rules of Engagement 2 w/ SoundBlaster
echo Press 2 for Rules of Engagement 2 w/ Gravis Ultrasound
echo Press 3 for Rules of Engagement 2 w/ MT-32
echo Press 4 to Transfer Characters from Other Games
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto TRANM
if errorlevel = 3 goto MT32
if errorlevel = 2 goto GUS
if errorlevel = 1 goto SB16

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@RULES2
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@RULES2
goto quit

:GUS
CONFIG -set "mididevice=default"
copy .\gus\*.* .\
cd ..
cd ultrasnd
ULTRAMID
cd ..
cd roe2
cls
@RULES2
goto quit

:tranM
cls
echo.
echo Press 1 to Transfer Characters from Rules of Engagement 1
echo Press 2 to Transfer Characters from Breach 2
echo Press 3 to Return to the Previous Menu
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto menu
if errorlevel = 2 goto tranb
if errorlevel = 1 goto tranr

:tranr
e:
cd ..
cls
echo.
echo Once this import has been run, the next time you run Rules of Engagement 2
echo it will automatically import all Rules of Engagement 1 characters into your
echo character list.
echo.
echo Please ensure Rules of Engagement 1 is installed before attempting this process.
echo.
if exist .\ruleeng1\rules\Rules.cmd echo Rules of Engagement 1 Character(s) Detected. Press 1 to import
if not exist .\ruleeng1\rules\Rules.cmd echo No Rules of Engagement 1 Character(s) Detected.
echo.
echo Press 2 to Return to the previous menu.
echo.
choice /C:12 /N Please Choose:

if errorlevel = 2 goto menu
if errorlevel = 1 goto roe1

:tranb
e:
cd ..
cls
echo.
echo Once the characters have been imported, start the game and go to
echo "Recruiting" under the FWAF Admin heading, then select "Convert" at
echo the bottom. Now type the path to the files, which in this case is C:
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
copy .\breach2\*.b2l .\RuleEng2\roe2\
echo.
if exist .\RuleEng2\roe2\*.b2l echo Copy Successful
if not exist .\RuleEng2\roe2\*.b2l echo Copy Unsuccessful
echo.
pause
c:
goto menu

:roe1
cls
copy .\ruleeng1\rules\Rules.cmd .\RuleEng2\roe2\data\xfer.cmd
echo.
if exist .\RuleEng2\roe2\data\xfer.cmd echo Copy Successful
if not exist .\RuleEng2\roe2\data\xfer.cmd echo Copy Unsuccessful
echo.
pause
c:
goto menu

:quit
exit
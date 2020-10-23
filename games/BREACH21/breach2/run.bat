:menu
@echo off
cls
echo.
echo Press 1 for Breach 2
echo Press 2 for Advanced Tactical Training School
echo Press 3 for Campaign Disk #1 
echo Press 4 for Federation Collection #4: Death Before Dishonor 
echo Press 5 for Federation Collection #5: Winds of Steel
echo Press 6 for Federation Collection #6: Cry of War 
echo Press 7 to Quit
echo.
echo Options 2-6 mount the relevant floppy to the A:
echo Use the "add" scenario option to access these campaigns.
echo Relevant read me's for each campaign are in the extras
echo section.
echo.
choice /C:1234567 /N Please Choose:

if errorlevel = 7 goto quit
if errorlevel = 6 goto disk6
if errorlevel = 5 goto disk5
if errorlevel = 4 goto disk4
if errorlevel = 3 goto disk1
if errorlevel = 2 goto ATT
if errorlevel = 1 goto menu2

:ATT
mount a .\games\breach2\ATT -t floppy
goto menu2

:disk1
mount a .\games\breach2\Cam14 -t floppy
goto menu2

:disk4
mount a .\games\breach2\Col4 -t floppy
goto menu2

:disk5
mount a .\games\breach2\Col5 -t floppy
goto menu2

:disk6
mount a .\games\breach2\Col6 -t floppy
goto menu2

:menu2
@echo off
cls
echo.
echo Press 1 for Breach 2 w/ CMS
echo Press 2 for Breach 2 w/ SoundBlaster
echo Press 3 for Breach 2 w/ MT-32
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto MT32
if errorlevel = 2 goto SB16
if errorlevel = 1 goto CMS

:CMS
CONFIG -set "mididevice=default"
CONFIG -set "sbtype=gb"
copy .\cms\*.* .\
cls
@BREACH2
goto quit

:SB16
CONFIG -set "mididevice=default"
copy .\sb16\*.* .\
cls
@BREACH2
goto quit

:MT32
CONFIG -set "mididevice=mt32"
copy .\mt32\*.* .\
cls
@BREACH2
goto quit

:quit
exit
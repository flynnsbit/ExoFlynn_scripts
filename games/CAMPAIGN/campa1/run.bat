:menu
@echo off
cls
echo.
echo Press 1 for Campaign CD Version, w/ SoundBlaster [Requires Codesheet]
echo Press 2 for Campaign CD Version, w/ MT-32 [Requires Codesheet]
echo Press 3 for Campaign Floppy, including Mission Disk w/SoundBlaster
echo Press 4 for Campaign Floppy, including Mission Disk w/ MT-32
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto bio4
if errorlevel = 3 goto bio3
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cd campaign.cd
copy .\sb16\*.*
cd ..
cls
d:
@call go
@c:
goto menu

:bio2
cd campaign.cd
copy .\mt32\*.*
cd ..
cls
d:
@call go
@c:
goto menu

:bio3
cls
cd old
copy .\sb16\*.*
cls
@campaign
goto menu

:bio4
cls
cd old
copy .\mt32\*.*
cls
@campaign
goto menu

:quit
exit
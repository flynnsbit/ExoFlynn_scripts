echo off
:adv2
cls
if exist %2\play.tag goto adv2a
echo Please insert the PLAY disk.
pause
goto adv2
:adv2a
cls
echo Copying files...
copy %2\*.*>NUL
:adv3
cls
if exist %2\map.tag goto adv3a
echo Please insert the MAP disk.
pause
goto adv3
:adv3a
cls
echo Copying files...
copy %2\*.*>NUL
:adv1
cls
if exist %2\intro.tag goto adv1a
echo Please insert the INTRO disk.
pause
goto adv1
:adv1a
cls
echo Copying files...
copy %2\*.*>NUL
cls
install

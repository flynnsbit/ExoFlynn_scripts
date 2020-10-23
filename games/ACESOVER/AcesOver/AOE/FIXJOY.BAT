@echo off
if "%1" == "u" goto unfix
if "%1" == "U" goto unfix


echo Fixing Serial Joystick port....
rename aoecd.bat aoecdold.bat
rename aoecdjoy.bat aoecd.bat
rename game.pif gameold.pif
rename gamejoy.pif game.pif
echo Serial Joystick Port Fixed.
goto end
:unfix
echo Unfixing Serial Joystick port...
rename aoecd.bat aoecdjoy.bat
rename aoecdold.bat aoecd.bat
rename game.pif gamejoy.pif
rename gameold.pif game.pif
echo Serial Joystick port unfixed.
:end

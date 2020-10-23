echo off
cls
echo %0
pause
if "%0.bat" == "install.bat" goto fine
echo Please change to the directory that contains the
echo Hillsfar Program and re-run install.
echo Note: type "install" in all lower-case letters.
goto exit

:fine
if "%1" == "" goto nodrive
if "%2" == "" goto nodrive
echo Installing as %1:\%2
md %1:\%2
xcopy install.bat %1:\%2 /s
if not exist %1:\%2\install.bat goto died
copy *.* %1:\%2 >nul
if exist tools.cmp goto cdone

:nodrive
echo Usage: install X Y
echo where X=letter of your hard disk.
echo where Y=name of the directory
echo Example: install c HILLSFAR
goto exit

:died
echo There was an error creating %1:\%2
echo Hillsfar was not installed.
goto exit

:wrongo
echo Install must be run from the Hillsfar Cd only.
goto exit

:cdone
cd %1:\%2
%1:

cls
echo Hillsfar is now installed.
echo Run HILLSFAR.BAT to start playing
:exit


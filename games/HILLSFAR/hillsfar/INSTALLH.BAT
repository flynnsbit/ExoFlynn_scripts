echo off
cls
echo %0
pause
if "%0.bat" == "installh.bat" goto fine
echo Please change directory to the drive that contains the
echo Hillsfar Program Disk 1 and re-run installh.
echo note: type "installh" in all lower-case letters.
goto exit
:fine
if exist packwall.out goto wrongo
if "%1" == "" goto nodrive
echo Installing as %1:\Hillsfar
md %1:\hillsfar
copy installh.bat %1:\hillsfar
if not exist %1:\hillsfar\installh.bat goto died
copy *.* %1:\hillsfar >nul
if exist packwall.out goto cdone
:cget
echo Insert Disk #2 and press a key
pause
if exist hillsfar.exe goto cget
copy *.* %1:\hillsfar >nul
goto cdone
:nodrive
echo Usage: installh X
echo where X=letter of your hard disk. Example: installh c
goto exit
:died
echo There was an error creating %1:\Hillsfar.
echo Hillsfar not installed.
goto exit
:wrongo
echo installh must be run from the Hillsfar Program Disk 1 only.
goto exit
:cdone
cd %1:\hillsfar
%1:

cls
echo Hillsfar is now installed.
:exit

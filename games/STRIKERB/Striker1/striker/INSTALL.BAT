echo off
cls
echo Installing Striker to %1
md %1
xcopy *.* /s %1
if errorlevel 1 goto 2
cls
cd %1
echo Stiker succesfully installed to %1
goto 4
:2
echo .
echo .
echo Error during installation
echo Striker not installed
:3
echo type INSTALL 'PATH'
echo Eg. INSTALL C:\STRIKER
:4
echo .
echo .
echo .




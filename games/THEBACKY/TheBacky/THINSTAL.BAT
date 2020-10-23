cls
echo off
thinst

if errorlevel 8 goto oldver:
if errorlevel 7 goto quit:
if errorlevel 6 goto quit:
if errorlevel 5 goto quit:
if errorlevel 4 goto quit:
if errorlevel 3 goto quit:
if errorlevel 2 goto quit:

:okay
ren shsetup.cfg setup.cfg
cd..
thsetup
goto quit:

:oldver
ren install.exe setup.exe
cd..
thsetup

:quit
echo on
cls

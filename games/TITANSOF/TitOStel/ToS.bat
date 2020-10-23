@echo off
cd progs
:menu
cls
echo Titans of Steel Selection Menu.  v0.101
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo.
echo Select Program you want to run!
echo.
echo 1. Head Quarter  - Team / Titan management
echo 2. Factory       - Build / Modify Titans
echo 3. Battlefield   - Battle it out between Titans
echo 4. Quit          - Bye Bye
echo.
choice /c1234 Your Selection
if errorlevel 4 goto exit
if errorlevel 3 goto battle
if errorlevel 2 goto factory
if errorlevel 1 goto headquarters
goto menu
:headquarters
hq.exe
goto menu
:factory
factory.exe
goto menu
:battle
battle.exe
goto menu
:exit
cd ..
cls

@echo off

rem * This batch file checks for the presence of the QFG
rem * CD in the user's CD-ROM
rem * Greg Tomko-Pavia, modified for QG4 by Kevin Ray
rem * 12 November 93

if not "%0"=="CheckCD" goto Abort
if "%1"=="" goto Abort

echo Checking for Shadows of Darkness CD in drive %1:
if exist %1:qgcheck.bat goto Exit
cls
echo Please put the Shadows of Darkness CD into your CD-ROM and then
pause

:LoopCheck
if exist %1:qgcheck.bat goto Exit
echo.
echo Unable to detect the Shadows of Darkness CD in drive %1:.
echo You may abort this looping test by pressing Ctrl-C or
echo insert the CD into your CD-ROM and then
pause
goto LoopCheck

:Abort
echo.
echo This batch file is used automatically by the Shadows
echo of Darkness program. Please do not run it from the DOS
echo command line.
echo.

:Exit 


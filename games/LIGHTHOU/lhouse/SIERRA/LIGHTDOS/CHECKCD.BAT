@echo off
cls
if not "%0"=="CheckCD" goto Abort
if "%1"=="" goto Abort
echo Checking for LIGHTHOUSE CD in drive %1:
if exist %1:lhcheck.bat goto Exit
cls

:LoopCheck
if exist %1:\lhcheck.bat goto Exit
echo.
echo Unable to detect the LIGHTHOUSE CD in drive %1:.
echo You may abort this looping test by pressing Ctrl-C or
echo insert the CD into your CD-ROM and then
pause
goto LoopCheck

:Abort
echo.
echo This batch file is used automatically by
echo LIGHTHOUSE. Please do not run it from the
echo DOS command line.
echo.

:Exit 


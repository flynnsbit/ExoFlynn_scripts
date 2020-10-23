@echo off
if not "%0"=="CheckCD" goto Abort
if "%1"=="" goto Abort

echo Checking for Space Quest 6 CD in drive %1:
if exist %1:sqcheck.bat goto Exit
cls
echo Please put the Space Quest 6 CD into your CD-ROM and then
pause

:LoopCheck
if exist %1:sqcheck.bat goto Exit
echo.
echo Unable to detect the Space Quest 6 CD in drive %1:.
echo You may abort this looping test by pressing Ctrl-C or
echo insert the CD into your CD-ROM and then
pause
goto LoopCheck

:Abort
echo.
echo This batch file is used automatically by the Space
echo Quest 6 program. Please do not run it from the DOS
echo command line.
echo.

:Exit 


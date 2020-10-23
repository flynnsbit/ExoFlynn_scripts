@echo off

if "%1"=="" goto usage
if "%2"=="" goto usage

%1
cd %2
%3 %4 %5 %6 %7 %8 %9
if errorlevel 1 goto bad
goto done

:usage
echo Usage: %0 drv dir command
echo Runs (command) from drive (drv), directory (dir).
goto done

:bad
echo Something went wrong.  Try checking the DUKEDRV and DUKEDIR
echo settings in your browser.tdb file.  If that doesn't help, turn
echo off the "echo off" in MELTRUN.BAT, and see what's going on.

:done
pause

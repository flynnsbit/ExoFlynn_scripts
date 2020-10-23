@echo off
if exist empire.exe goto patchit
echo Instructions:
echo    Copy these files into your Empire Deluxe directory, and then
echo    run this 'RUNME.BAT' file again.  This will apply the patches
echo    to your current copy of Empire Deluxe, rerun the ECONFIG program
echo    and then show you the 'CHANGES.TXT' file.
goto byebye

:patchit
cls
echo We are about to apply the patches to upgrade your installed copy
echo of Empire Deluxe from either version 3.00 or version 3.10 to
echo Version 3.11.  After the files have been modified, we will rerun
echo the ECONFIG program because the configuration file format has
echo changed.  After this completes, you will be shown the 'CHANGES.TXT'
echo file which describes the enhancements included in this update.
pause Type any key to continue, Control-C to abort
cls
patch edupd311.rtp
if errorlevel 1 goto patchfail
echo The update process was successful.  We will now run ECONFIG
echo.
pause Type any key to continue, Control-C to abort
econfig
more <changes.txt
goto byebye

:patchfail
echo There seems to have been a problem updating Empire Deluxe.
echo Please re-install the game from the original disks and then
echo re-run this update.

:byebye
echo.
echo Thank You! --- White Wolf Productions, Inc.
pause Type any key to continue

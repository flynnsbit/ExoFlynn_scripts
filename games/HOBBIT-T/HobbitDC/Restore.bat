@echo off
if "%1" == "" goto noname
if not exist "HS%1.BAT" goto notfound

call HS%1.BAT
echo Game restored.
Look

goto exit

:noname
echo You must supply a save-name with RESTORE. "RESTORE xyz" will restore a saved
echo game from a save-file called "HSxyz.BAT".
goto exit

:notfound
echo Error: No file called "HS%1.BAT" was found.

:exit
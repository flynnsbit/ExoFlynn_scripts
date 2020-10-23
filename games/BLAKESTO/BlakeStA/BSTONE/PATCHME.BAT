@echo off
if "%1"=="1" goto patch

:message
echo.
echo This batch file is a remnant of having patched an Apogee game
echo on your hard drive.  It serves no other purpose, and may be deleted.
echo Deleting this batch file will not affect your game whatsoever.
echo.
echo -- Apogee Technical Support
echo.
goto end

:patch
patch patch.rtp
if exist patch.rtp del patch.rtp
if exist patch.exe del patch.exe
goto end

:end

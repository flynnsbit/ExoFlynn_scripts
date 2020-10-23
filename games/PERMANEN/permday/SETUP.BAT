@echo off
if not exist DAYLIGHT.exe goto wrong_dir
DAYLIGHT.exe --setup
goto end
:wrong_dir
echo.
echo Setup must be run from the folder containing the DAYLIGHT.exe file.
echo.
:end

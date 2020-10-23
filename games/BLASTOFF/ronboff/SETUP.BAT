@echo off
if not exist blastoff.exe goto wrong_dir
blastoff.exe --setup
goto end
:wrong_dir
echo.
echo Setup must be run from the folder containing the RON3.exe file.
echo.
:end

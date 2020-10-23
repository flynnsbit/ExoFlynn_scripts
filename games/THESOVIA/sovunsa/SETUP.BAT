@echo off
if not exist rotn3.exe goto wrong_dir
rotn3.exe --setup
goto end
:wrong_dir
echo.
echo Setup must be run from the folder containing the REALITY1.exe file.
echo.
:end

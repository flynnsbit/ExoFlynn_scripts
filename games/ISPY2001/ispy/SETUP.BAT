@echo off
if not exist spydos.exe goto wrong_dir
spydos.exe --setup
goto end
:wrong_dir
echo.
echo Setup must be run from the folder containing the spydos.exe file.
echo.
:end

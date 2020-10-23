@echo off
if not exist QFG.exe goto wrong_dir
QFG.exe --setup
goto end
:wrong_dir
echo.
echo Setup must be run from the folder containing the QFG.exe file.
echo.
:end

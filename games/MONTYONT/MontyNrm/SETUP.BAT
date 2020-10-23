@echo off
if not exist Monty.exe goto wrong_dir
Monty.exe --setup
goto end
:wrong_dir
echo.
echo Setup must be run from the folder containing the Monty.exe file.
echo.
:end

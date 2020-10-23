@echo off
if not exist Repossessor.exe goto wrong_dir
Repossessor.exe --setup
goto end
:wrong_dir
echo.
echo Setup must be run from the folder containing the Repossessor.exe file.
echo.
:end

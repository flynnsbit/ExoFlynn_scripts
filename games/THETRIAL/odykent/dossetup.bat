@echo off
if not exist Odysseus.exe goto wrong_dir
Odysseus.exe --setup
goto end
:wrong_dir
echo.
echo Setup must be run from the folder containing the Odysseus.exe file.
echo.
:end

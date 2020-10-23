@echo off
if not exist KQVGA.exe goto wrong_dir
KQVGA.exe --setup
goto end
:wrong_dir
echo.
echo Setup must be run from the folder containing the KQVGA.exe file.
echo.
:end

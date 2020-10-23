@echo off
if not exist ac.exe goto wrong_dir
ac --setup
goto end
:wrong_dir
echo.
echo AGS Setup must be run from the directory containing the AC.EXE file.
echo.
:end

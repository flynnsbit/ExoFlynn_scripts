@echo off
if not exist thebox.exe goto wrong_dir
THEBOX --setup
goto end
:wrong_dir
echo.
echo AGS Setup must be run from the directory containing the AC.EXE file.
echo.
:end

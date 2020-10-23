@echo off
if not exist Post.exe goto wrong_dir
Post.exe --setup
goto end
:wrong_dir
echo.
echo Setup must be run from the folder containing the Post.exe file.
echo.
:end

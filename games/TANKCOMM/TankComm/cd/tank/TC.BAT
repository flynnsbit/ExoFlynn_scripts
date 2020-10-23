@echo off

:start
setup.exe
if errorlevel 1 goto end
goto start

:end

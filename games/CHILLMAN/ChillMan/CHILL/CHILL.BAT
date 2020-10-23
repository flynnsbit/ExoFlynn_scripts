@echo off
if exist D:\chill.exe goto runchill
echo Please Insert Chill CD and run "chill.bat" again
goto end
:runchill
D:\chill.exe
:end

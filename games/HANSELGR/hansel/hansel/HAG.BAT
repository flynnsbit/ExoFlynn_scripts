@echo off 
mouseok 
if errorlevel 1 goto done 
Hag.exe
goto end
:done
echo You must load your mouse
echo driver before running the 
echo          game 
:end

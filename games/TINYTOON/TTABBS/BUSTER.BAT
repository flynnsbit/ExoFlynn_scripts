@echo off 
\BUSTER\mouseok 
if errorlevel 1 goto done 
cd \BUSTER 
Buster.exe
goto end
:done
echo You must load your mouse
echo driver before running the 
echo          game 
:end

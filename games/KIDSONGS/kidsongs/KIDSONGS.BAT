@echo off 
\KIDSONGS\mouseok 
if errorlevel 1 goto done 
cd \KIDSONGS 
kidsongs.exe
goto end
:done
echo You must load your mouse
echo driver before running the 
echo          game 
:end

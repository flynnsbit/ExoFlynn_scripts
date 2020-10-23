@echo off 
call D:\vesatest.exe  D 
if errorlevel 0 goto vesafound 
echo A VESA driver was not found on your system. Please rerun install 
echo and check the readme file for help on installing a VESA driver. 
goto end 
:vesafound 
C:\BGORGON\br.exe 
:end 
cd .. 

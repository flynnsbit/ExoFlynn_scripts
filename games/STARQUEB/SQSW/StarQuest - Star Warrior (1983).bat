@echo off
@set var=%cd% 
cd .. 
cd .. 
cd .. 
IF NOT EXIST ".\games\9livosak\" goto none 
".\dosbox\dosbox.exe" -conf ".\games\!dos\9livosak\dosbox.conf" -noconsole -exit 
del stdout.txt 
del stderr.txt
if exist .\games\CWSDPMI.swp del .\games\CWSDPMI.swp 
goto end
:none
cls
echo.
echo Game has not been installed 
echo.
echo.
echo Would you like to install the game?
echo.
choice

if errorlevel = 2 goto no
if errorlevel = 1 goto yes
:yes
cd %VAR%
call install.bat
goto end
:no
goto end

:end
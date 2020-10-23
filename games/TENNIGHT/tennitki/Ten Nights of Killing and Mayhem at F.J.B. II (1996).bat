@echo off
..\..\..\util\setconsole.exe /minimize
@set var=%cd% 
cd .. 
cd .. 
cd .. 
IF NOT EXIST ".\games\tennitki\" goto none 
".\dosbox\ece\dosbox.exe" -conf ".\games\!dos\tennitki\dosbox.conf" -noconsole -exit 
del stdout.txt 
del stderr.txt
if exist .\games\CWSDPMI.swp del .\games\CWSDPMI.swp 
goto end
:none
.\util\setconsole.exe /reset
cls
echo.
echo Game has not been installed 
echo.
echo.
echo Would you like to install the game?
echo.
.\util\choice

if errorlevel = 2 goto no
if errorlevel = 1 goto yes
:yes
cd %VAR%
call install.bat
goto end
:no
goto end

:end
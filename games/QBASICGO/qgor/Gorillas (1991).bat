@echo off 
cd .. 
cd .. 
cd .. 
IF NOT EXIST ".\games\A2TheUlt\" goto none 
".\dosbox\dosbox.exe" -conf ".\games\games\A2TheUlt\dosbox.conf" -noconsole -exit 
del stdout.txt 
del stderr.txt 
if exist .\games\CWSDPMI.swp del .\games\CWSDPMI.swp 
goto end 
:none 
cls 
echo. 
echo Game has not been installed 
echo. 
pause 
:end 

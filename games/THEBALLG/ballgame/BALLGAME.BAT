@echo off 
runit
if errorlevel 2 goto game2 

echo VGA/EGA selected. 
vegame
goto end 
:game2
echo TANDY selected. 
tagame
:end 
echo on
 
 

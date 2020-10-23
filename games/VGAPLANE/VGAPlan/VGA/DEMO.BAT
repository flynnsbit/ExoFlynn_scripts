if exist demo\pdata.hst goto startloop
md demo
copy demodat.exe demo
cd demo
demodat
cd ..
host demo
md pdata
:startloop
copy demo\player1.rst pdata\player1.rst
unpack pdata
planets pdata
maketurn pdata
copy pdata\player1.trn demo\player1.trn
cplayer demo /4
host demo
@echo off
echo.
echo Do another turn?
choice /c:yn /t:y,10
if errorlevel 2 goto endloop
goto startloop
:endloop


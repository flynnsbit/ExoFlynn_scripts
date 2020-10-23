echo off
md %winbootdir%\donglewa.re
md %winbootdir%\donglewa.re\dia_bolo
md %temp%\dia_bolo

echo set BLASTER=%blaster% > %winbootdir%\donglewa.re\dia_bolo\blaster.txt
echo off

copy .\infos\boprg.exe %temp%\dia_bolo
copy .\infos\boprg.pif %temp%\dia_bolo
copy .\infos\dia_bolo.ico %winbootdir%\donglewa.re\dia_bolo

copy .\infos\getcd.exe %winbootdir%
md %winbootdir%\STARTM~1\PROGRA~1\DIA_BOLO
copy .\infos\dmk\dia_bolo.bat %winbootdir%\STARTM~1\PROGRA~1\DIA_BOLO

%temp%\dia_bolo\boprg.exe /9 %temp%\dia_bolo %winbootdir%\donglewa.re\dia_bolo

del %temp%\dia_bolo\boprg.exe
del %temp%\dia_bolo\boprg.pif
rd %temp%\dia_bolo



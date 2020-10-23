echo off
echo Creando disco de arranque...
format a:/s/u/v:dinamic
cls
echo Copiando archivos de configuraci¢n
copy config.dmm a:config.sys
copy autoexec.dmm a:autoexec.bat
cls
echo Deja el disco en la disquetera y resetea el ordenador...



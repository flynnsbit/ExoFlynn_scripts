@echo off
echo INSTALANDO ARCHIVOS...
mkdir c:\perfectw
copy perfw.exe c:\perfectw >NUL
c:
cd c:\perfectw
rem c:
perfw.exe
del perfw.exe >NUL
echo -----------------------------------------------
echo INSTALACION COMPLETA. Pulsa PERFECTW para jugar
echo -----------------------------------------------

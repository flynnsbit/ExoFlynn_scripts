
@echo off

if exist diagnose.txt del diagnose.txt

echo The following information will assist you should you need  >> diagnose.txt
echo to call Interplay Technical Support.   >> diagnose.txt
echo. >> diagnose.txt
echo. >> diagnose.txt
echo. >> diagnose.txt



echo --------------------------------------- >> diagnose.txt
echo DOS/WINDOWS VERSION   >> diagnose.txt
echo --------------------------------------- >> diagnose.txt
echo. >> diagnose.txt
echo. >> diagnose.txt
echo. >> diagnose.txt
ver >> diagnose.txt
echo. >> diagnose.txt
echo. >> diagnose.txt
echo. >> diagnose.txt


echo --------------------------------------- >> diagnose.txt
echo CONFIG.SYS     >> diagnose.txt
echo --------------------------------------- >> diagnose.txt
echo. >> diagnose.txt
echo. >> diagnose.txt
echo. >> diagnose.txt
if exist c:\config.sys type c:\config.sys   >> diagnose.txt
echo. >> diagnose.txt
echo. >> diagnose.txt
echo. >> diagnose.txt


echo --------------------------------------- >> diagnose.txt
echo AUTOEXEC.BAT   >> diagnose.txt
echo --------------------------------------- >> diagnose.txt
echo. >> diagnose.txt
echo. >> diagnose.txt
echo. >> diagnose.txt
if exist c:\autoexec.bat type c:\autoexec.bat >> diagnose.txt
echo. >> diagnose.txt
echo. >> diagnose.txt
echo. >> diagnose.txt


echo --------------------------------------- >> diagnose.txt
echo \WINDOWS\DOS.BAT   >> diagnose.txt
echo --------------------------------------- >> diagnose.txt
echo. >> diagnose.txt
echo. >> diagnose.txt
echo. >> diagnose.txt
if exist c:\windows\dos.bat type c:\windows\dos.bat >> diagnose.txt
echo. >> diagnose.txt
echo. >> diagnose.txt
echo. >> diagnose.txt



echo --------------------------------------- >> diagnose.txt
echo \WINDOWS\DOSSTART.BAT   >> diagnose.txt
echo --------------------------------------- >> diagnose.txt
echo. >> diagnose.txt
echo. >> diagnose.txt
echo. >> diagnose.txt
if exist c:\windows\dosstart.bat type c:\windows\dosstart.bat >> diagnose.txt
echo. >> diagnose.txt
echo. >> diagnose.txt
echo. >> diagnose.txt





echo --------------------------------------- >> diagnose.txt
echo AVAILABLE MEMORY   >> diagnose.txt
echo --------------------------------------- >> diagnose.txt
echo. >> diagnose.txt
echo. >> diagnose.txt
echo. >> diagnose.txt
MEM/C >> diagnose.txt
echo. >> diagnose.txt
echo. >> diagnose.txt
echo. >> diagnose.txt



echo --------------------------------------- >> diagnose.txt
echo SET      >> diagnose.txt
echo --------------------------------------- >> diagnose.txt
SET   >> diagnose.txt
echo. >> diagnose.txt
echo. >> diagnose.txt
echo. >> diagnose.txt


r diagnose.txt

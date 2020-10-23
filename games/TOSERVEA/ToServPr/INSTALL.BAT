echo off
cls
if %1a == a goto noDriveSpecified
if %1 == c: goto begin
if %1 == C: goto begin
if %1 == d: goto begin
if %1 == D: goto begin
if %1 == e: goto begin
if %1 == E: goto begin
if %1 == f: goto begin
if %1 == F: goto begin
if %1 == g: goto begin
if %1 == G: goto begin
:begin
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                                       บ
echo บ            TO SERVE AND TO PROTECT SPEECH PACK INSTALLATION           บ
echo บ                                                                       บ
echo บ This will create a directory called %2\TSTP on your destination disk,   บ
echo บ and will install TSTP in that directory.                              บ
echo บ                                                                       บ
echo บ If you don't want to install TSTP now, press Ctrl-Break.              บ
echo บ                                                                       บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause

echo 
echo Creating directory %1\TSTP...
if not exist %1\TSTP\*.* goto go_on
:directoryExists
echo 
echo There is already a \TSTP directory on drive %1.  If you don't want to
echo install the TSTP SPEECK PACK into that directory, press Ctrl-Break.
echo Otherwise, press any key to install the TSTP SPEECH PACK into %1\TSTP.
pause
goto go_on2
:go_on
md %1\TSTP
:go_on2
copy *.* %1\TSTP
:installDone
cd %1\TSTP
echo 
echo The TSTP SPEECH PACK is now installed on your destination disk.
echo To run it, type "TSTP".
%1
goto done

:noDriveSpecified
echo 
echo Installation Error:  To install TSTP, you must specify the drive
echo that you wish to install to.  For example: if you are installing
echo to hard drive C:, then you should type
echo     INSTALL C:
echo ...and press Enter.
goto errorDone

:installationError
echo 
echo Installation Error: Perhaps there isn't enough space on your destination
echo disk.  TSTP installation requires at least 1800k free space.
goto errorDone

:errorDone
echo 
echo TSTP was not installed correctly.
:done

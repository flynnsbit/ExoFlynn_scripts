@echo off
cls
echo Dieses Programm erzeugt eine Boot-Diskette, mit deren Hilfe
echo Wissoll Circus Trophy gespielt werden kann, falls die normale
echo Rechnerkonfiguration dies nicht zul„át.
echo ÿ ÿ
pause
echo ÿ ÿ
if not exist C:\COMMAND.COM goto sonicht
format a: /s /u
echo SHELL=C:\COMMAND.COM C:\ /P >A:CONFIG.SYS
goto fertig
:sonicht
if not exist C:\DOS\COMMAND.COM goto son2
format a: /s /u
echo SHELL=C:\DOS\COMMAND.COM C:\ /P >A:CONFIG.SYS
goto fertig
:son2
echo Kann COMMAND.COM nicht finden!
goto ende
:fertig
echo C: > A:AUTOEXEC.BAT
echo PROMPT $P$G >> A:AUTOEXEC.BAT
echo Bootdisk fertig!
:ende

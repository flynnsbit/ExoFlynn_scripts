echo off
cls
type b:a.tex
pause	 CHECK YOUR DISKETTE DRIVE(S)
cls
echo Transferring SYSTEM and COMMAND.COM
a:sys.com b:
copy a:command.com b: >nul:
copy a:basica.com b: >nul:
cls
type b:b.tex

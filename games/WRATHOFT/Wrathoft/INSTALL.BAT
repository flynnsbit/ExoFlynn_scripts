@echo off >nul
echo off >nul
if !%3! == !ÿ! goto continue
cls >nul
if !%1! == !! goto usage
set WrathSource=A
if not !%2!  == !! set WrathSource=%2
echo Installing Wrath of the Demon on drive %1:. >con
echo Source drive is %WrathSource%:. >con
echo Press any key to continue, or CTRL-BREAK to abort. >con
pause <con >nul
%1:
md \wrath >nul
cd \wrath >nul
echo Please insert disk 1 in drive %WrathSource%: >con
pause >con <con
set WrathThree=0
if exist %WrathSource%:WRATH2.DAT set WrathThree=1
copy %WrathSource%:*.* >nul
install %1 %WrathSource% ÿ

:continue
echo Please insert disk 2 in drive %WrathSource%: >con
pause >con <con
copy %WrathSource%:*.* >nul
echo Please insert disk 3 in drive %WrathSource%: >con
pause >con <con
copy %WrathSource%:*.* >nul
if %WrathThree% == 1 goto Finished
echo Please insert disk 4 in drive %WrathSource%: >con
pause >con <con
copy %WrathSource%:*.* >nul
echo Please insert disk 5 in drive %WrathSource%: >con
pause >con <con
copy %WrathSource%:*.* >nul
echo Please insert disk 6 in drive %WrathSource%: >con
pause >con <con
copy %WrathSource%:*.* >nul
:Finished
echo Wrath of the demon has been installed.>con
echo To start, type WRATH [enter] >con
goto end

:usage
echo To install Wrath of the Demon on your hard disk, type >con
echo ÿ>con
echo     INSTALL drive1 [drive2]. >con
echo ÿ>con
echo where drive1 is the hard disk letter on which you want to >con
echo install, and drive2 is the source (floppy) drive. >con
echo Drive2 parameter is optional and defaults to A:. >con
echo You must not put a colon after drive letters. >con
echo ÿ>con
echo Please note that Wrath of the Demon requires 2.2 megs of hard
echo disk space. >con

:end
set WrathThree=
set WrathSource=

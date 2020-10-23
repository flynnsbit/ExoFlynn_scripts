echo off
if "%1"=="" goto insterr
if %1==cga goto doinst1
if %1==ega goto doinst1
if %1==tan goto doinst1
if %1==vga goto doinst1
if %1==all goto doinst1
if %1==CGA goto doinst1
if %1==EGA goto doinst1
if %1==TAN goto doinst1
if %1==VGA goto doinst1
if %1==ALL goto doinst1
goto insterr

:doinst1
if "%2"=="" goto insterr
if %2==c: goto doinst2
if %2==d: goto doinst2
if %2==C: goto doinst2
if %2==D: goto doinst2
:insterr
echo Incorrect Parameters Supplied !!!!
echo Correct usage - INST {CGA,EGA,TAN,VGA or ALL} {C: or D:}
goto instx

:doinst2
if exist %2\midwintr\midwintr.exe goto no_install
copy inst%1.bat %2\
%2\
cd \
inst%1 %2

:no_install
echo Game Version already Installed !!!!
:instx


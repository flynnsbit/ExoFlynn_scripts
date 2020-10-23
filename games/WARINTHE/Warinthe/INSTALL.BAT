echo off
if "%1"=="" goto drive
md %1\gulf
copy *.* %1\gulf
md %1\gulf\intro
copy intro\*.* %1\gulf\intro
md %1\gulf\data
copy data\*.* %1\gulf\data
md %1\gulf\speech
copy speech\*.* %1\gulf\speech
%1
cd %1\gulf
echo To play WAR IN THE GULF type GULF
echo GOOD LUCK!
goto end
:drive
echo SYNTAX - INSTALL [drive:] - e.g. INSTALL c:
:end
echo on

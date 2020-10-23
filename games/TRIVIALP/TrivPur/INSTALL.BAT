echo off
cls
if "%1" == "" goto DriveProm
if %1 == c: goto MakeDir
if %1 == C: goto MakeDir
if %1 == d: goto MakeDir
if %1 == D: goto MakeDir
if %1 == e: goto MakeDir
if %1 == E: goto MakeDir
if %1 == f: goto MakeDir
if %1 == F: goto MakeDir
:DriveProm
echo You must put in a valid drive name; for example
echo    install c:
goto Fini
:MakeDir
mkdir %1\tp
echo copying files now...
copy *.* %1\tp
copy %1\config.sys+fixcon.x %1\config.sys
%1
cd %1\tp
install2 %1
:Fini
echo



echo off
cls
wtsask.exe

if errorlevel 3 goto CGA
if errorlevel 2 goto TANDY
if errorlevel 1 goto EGA
goto END

:CGA
cga.exe
goto END

:EGA
ega.exe
goto END

:TANDY
tandy.exe
goto END

:END

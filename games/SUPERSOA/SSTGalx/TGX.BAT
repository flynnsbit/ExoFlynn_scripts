echo off
REM Treasure Galaxy! Version 1.0 
REM Install Version 2.0
REM May 26, 1994
cls
if not exist C:\TLC\TGX\TGX.EXE goto :notthere
C:
CD C:\TLC\TGX
TGX.EXE -SB -GV  %1 %2
CD \
goto :end
:notthere
echo Treasure Galaxy! was not found on this drive.
:end

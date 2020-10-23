echo off
cls
spacec
if errorlevel==3 goto vspace
if errorlevel==2 goto espace
if errorlevel==1 goto espace
echo Invalid Display Adapter
goto done
:espace
espace
goto done
:vspace
vspace
goto done
:done

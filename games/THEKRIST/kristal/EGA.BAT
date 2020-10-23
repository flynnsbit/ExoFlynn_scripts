echo off
cls
test
cls
if errorlevel 1 goto label0
xtal 1
goto exit
:label0
xtal 129
:exit

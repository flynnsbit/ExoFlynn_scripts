echo off
cls
test
cls
if errorlevel 1 goto label0
xtal 0
goto exit
:label0
xtal 128
:exit

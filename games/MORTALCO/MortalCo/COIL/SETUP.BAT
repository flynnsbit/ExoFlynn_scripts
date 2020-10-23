echo off
cls
set dos4g=quiet
config edit
if errorlevel 2 call coil4
if errorlevel 1 call coil

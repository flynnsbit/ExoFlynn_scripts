echo off
adchk
if errorlevel 1 goto NoAd
addvr
:NoAd
x %1

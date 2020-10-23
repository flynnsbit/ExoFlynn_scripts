echo off
checkcnf.exe /w
if errorlevel 1 goto error
md c:\dos
md c:\dos\pref
poxprg.exe
goto end
:error
echo on
pause
:end

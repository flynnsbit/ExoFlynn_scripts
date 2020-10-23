echo off
checkcnf.exe
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
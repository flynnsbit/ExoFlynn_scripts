echo off
goto one
wiz-p.exe

if ERRORLEVEL 3 goto THREE
if ERRORLEVEL 2 goto TWO
if ERRORLEVEL 1 goto ONE
goto END

:ONE
r32768.com
m1.com
m2.com
phantasi.exe

:TWO
wc.exe

:THREE
main.exe

:END

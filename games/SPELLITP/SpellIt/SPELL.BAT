echo off
if exist graphics.com goto nonstandard
print.exe
echo *
goto sound
:nonstandard
graphics.com
:sound
speechds.exe
if errorlevel 2 goto ck2
if errorlevel 1 goto ck1
goto start
												
:ck1
if exist sv3-pwm.exe goto sound1
echo *********************************
echo * Please insert the speech disk *
echo *********************************
pause
goto ck1
:sound1
sv3-pwm.exe
goto ckprog

:ck2
if exist sv3-dac.exe goto sound2
echo *********************************
echo * Please insert the speech disk *
echo *********************************
pause
goto ck2
:sound2
sv3-dac.exe
goto ckprog

:ckprog
if exist go.com goto start
echo **********************************
echo * Please insert the program disk *
echo **********************************
pause
goto ckprog

:start
cls
go
if exist graphics.com goto quit
printkil.com

:quit



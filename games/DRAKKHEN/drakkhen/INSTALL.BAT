echo off
cls
if "%1" == "" goto NoGood
if %1 == c: goto Good
if %1 == C: goto Good
if %1 == d: goto Good
if %1 == D: goto Good
if %1 == e: goto Good
if %1 == E: goto Good
if %1 == f: goto Good
if %1 == F: goto Good
if %1 == g: goto Good
if %1 == G: goto Good
if %1 == h: goto Good
if %1 == H: goto Good
if %1 == i: goto Good
if %1 == I: goto Good
if %1 == j: goto Good
if %1 == J: goto Good
if %1 == k: goto Good
if %1 == K: goto Good
if %1 == l: goto Good
if %1 == L: goto Good
if %1 == m: goto Good
if %1 == M: goto Good
if %1 == n: goto Good
if %1 == N: goto Good
if %1 == o: goto Good
if %1 == O: goto Good
if %1 == p: goto Good
if %1 == P: goto Good

echo "%1" is an invalid drive name.
goto End

:NoGood
echo Please specify onto which drive
echo you wish to install Drakkhen.
goto End

:Good
echo			*****************************************
echo			*		DRAKKHEN		*
echo			*	hard disk %1 installation 	*
echo			*	in directory %1\drakkhen	*
echo			*	Press Ctrl-C to cancel		*
echo			*****************************************
echo .
pause
if not exist %1\drakkhen\*.* goto ToutBon
echo		Error : The directory %1\DRAKKHEN already exists.
goto	End
:ToutBon
md %1\drakkhen
copy inst.drk %1\Drakkhen\inst.bat > NUL
if not exist %1\Drakkhen\inst.bat 	goto Error
%1\drakkhen\inst %1
goto End
:Error
echo		Error : Your hard disk is full !!!
:End

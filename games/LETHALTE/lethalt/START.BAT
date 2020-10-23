@echo off
if exist pend del pend >nul
:gamefin
copy 3.adl pfirst > nul
:menuloop
if not exist pfirst. goto normalmenu
menu nr 1
if exist p.cmd copy p.cmd oldp.cmd >nul
goto okgo
:normalmenu
menu ns nr 
if exist p.cmd copy p.cmd oldp.cmd >nul
:okgo
if not exist pfirst. goto skipdel
del pfirst. > nul
:skipdel
if not exist p.cmd goto exit
p %1 %2 %3 %4 %5
if errorlevel 1 goto errorexit
if exist pend goto gamefin
goto menuloop
:errorexit
if exist vid.com vid
if not exist vid.com mode co80 >nul
if exist memfail goto memfailexit
echo ...
echo Program Errors have occured.  Please contact Pie in the Sky Software.
echo Save the file p.out which has the error information for us.
type p.out
goto realexit
:memfailexit
echo   Sorry, but you don't have enough available DOS ram
echo   to run the game.  Please read the documentation to
echo   get more info about fixing this problem.
copy memfail con
del memfail
goto realexit
:exit  
if exist pend del pend >nul
if exist vid.com vid
if not exist vid.com mode co80 >nul
:realexit


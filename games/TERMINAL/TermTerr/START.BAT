@echo off
if exist memfail del memfail
if exist pend del pend >nul
memc
if exist memfail goto memfailexit
:uexist
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
if exist pend del pend >nul
pnocomp %1 %2 %3 %4 %5
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
@echo ____
echo   Error:  Do to insufficient or improperly configured memory you cannot
echo   run the game.  Please read the manual and refer to the memory report
echo   below to get more info about fixing this problem.
@echo ----
copy memfail con
goto realexit
:exit  
if exist vid.com vid
if not exist vid.com mode co80 >nul
:realexit


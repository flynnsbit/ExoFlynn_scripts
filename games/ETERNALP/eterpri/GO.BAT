
@echo off
if exist memfail del memfail
if exist pend del pend >nul
memc
if exist memfail goto memfailexit
:uexist
:normalmenu
if exist pend del pend >nul
pnocomp f pdata c %1 %2 %3 %4 %5 >p.out
if errorlevel 1 goto errorexit
if exist pend goto gamefin
goto gamefin
:errorexit
if exist vid.com vid
if not exist vid.com mode co80 >nul
if exist memfail goto memfailexit
echo ...
echo Program Errors have occured.  
echo Save the file p.out which has the error information for us.
type p.out
goto realexit
:memfailexit
@echo ____
echo   Error:  Do to insufficient or improperly configured memory you cannot
echo   run the game.  Please refer to the memory report
echo   below to get more info about what memory you need more of.
@echo ----
copy memfail con
goto realexit
:exit  
if exist vid.com vid
if not exist vid.com mode co80 >nul
:gamefin
:realexit


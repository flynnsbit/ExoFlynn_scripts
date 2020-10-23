@echo off
ROADEXE.EXE %1
if ERRORLEVEL 20 goto gotcha
if ERRORLEVEL 3 goto uh_oh
goto ende
:uh_oh
pause
cls
echo.
echo The execution of the program has been discontinued because of an error.
echo Please consult appendix B of the online-manual for possible solutions.
echo If you are unable to resolve the problem, please contact:
echo.
echo HomeBrew Software
echo 479 Mason Street, Suite 285
echo Vacaville, CA 95688-4542
echo.
echo USA
echo.
echo Voice: (707)-451-9653     FAX: (707)-451-2500
echo.
echo Would you like to read the manual now [Y/N] ?
ec.exe YN
if errorlevel 89 goto help
goto ende1
:help
call help.bat
goto ende
:gotcha
call order.bat
:ende1
echo.
:ende

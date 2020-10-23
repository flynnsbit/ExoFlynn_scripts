@echo off

if not "%0"=="CheckCD" goto Abort
if "%1"=="" goto Abort

echo Did you forget to put your Leisure Suit Larry 6 CD in drive %1:?
if exist %1:\hires\lsl6chk.bat goto FoundIt
echo.
echo Yep!  You forgot again.
echo Come on. Put the Leisure Suit Larry 6 CD into your CD-ROM drive and then
pause

:LoopCheck
if exist %1:\hires\lsl6chk.bat goto FoundIt
echo.
echo Unable to detect the Leisure Suit Larry 6 CD in drive %1:.
echo.
echo You may abort this looping test by pressing Ctrl-C or
echo insert the correct CD into your CD-ROM drive.
echo.
pause
goto LoopCheck

:Abort
echo.
echo This batch file is only used by the LSL6CD batch file.
echo Please do not run it from the DOS command line.
echo.
goto Exit

:FoundIt
echo.
echo Nope.  There it is.  Here we go!

:Exit 

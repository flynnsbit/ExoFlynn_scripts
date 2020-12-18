if %MEMMGR%=="EMM" (goto start1)
if NOT %MEMMGR%=="EMM" (goto warn1)

echo Invalid memory option: %method%
goto :eof

:start1
echo start1
REM change Echo Title to include current Memory manager selected in jchoice (Emm386 is currently selected)
REM echo copy run.bat option selected to launch.bat and add it to e:\launch.bat
REM Launch.bat needs to have a "call" for the game and then a self destruct at the end, reboot.

pause
exit

:warn1
echo Warning you do not have the correct memory manager set for this game.
pause
exit
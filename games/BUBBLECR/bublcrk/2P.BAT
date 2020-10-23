@echo off
:loop
rem Put in your port and speed here
bustmove -P2 -B2
echo Press Ctrl-Break to abort, or if you want to play another round
pause
goto loop

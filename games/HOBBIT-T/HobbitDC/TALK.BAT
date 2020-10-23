@echo off
rem talk to gandalf about (the) map
rem talk gandalf (the) map
rem talk to gandalf 

if "%4" == "the" talk %1 %2 %3 %5 %6
if "%2" == "the" talk %1 %3 %4 %5 %6

if not "%5" == "" goto toomany
if "%1" == "to" if "%3" == "about" talkhelp %2 %4
if "%1" == "to" talkhelp %2
if "%3" == "" talkhelp %1 %2

echo I don't understand that sentence.
goto exit

:toomany
echo There are too many words in that sentence.

:exit

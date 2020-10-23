@echo off
if exist conn2.bat goto dodiscon
echo No Connection Exists...
goto theend

:dodiscon
call conn2.bat

:theend


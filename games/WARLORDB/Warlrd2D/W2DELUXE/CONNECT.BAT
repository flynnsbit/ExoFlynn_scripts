@echo off
conn
if exist conn1.bat goto doconn
echo No Connection Established...        
goto theend

:doconn
call conn1.bat

:theend


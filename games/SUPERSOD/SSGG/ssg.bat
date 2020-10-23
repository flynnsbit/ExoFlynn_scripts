@echo off
REM cd \tlc\ssg
ssg %1 %2 %3 %4 %5 %6 %7 %8
if errorlevel 5 goto p286
goto end
:p286
echo You do not have a 286 computer.  You need
echo at least a 286 computer to run Gizmos & Gadgets!
:end





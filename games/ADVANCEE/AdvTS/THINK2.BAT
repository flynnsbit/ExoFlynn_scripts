echo off
cls
echo         Advanced Thinking Skills
echo       ----------------------------
echo               Please wait...
if .%1 == .c goto CGA
adapter
if errorlevel 2 goto VGA
if errorlevel 1 goto CGA
goto EXIT
:VGA
ve_psych ve_psych
goto EXIT
:CGA
ce_psych ce_psych
:EXIT
cls
echo  Thank you for playing our program. Play again soon.
echo on

:menu
@echo off
cls
echo.
echo Press 1 to run The Adventures of Alice Who Went Through the Looking Glass
echo Press 2 to run The Colossal Cave Adventure
echo Press 3 to run Crusade
echo Press 4 to run In The Year 2093
echo Press 5 to Quit
echo.
choice /C:12345 /N Please Choose:

if errorlevel = 5 goto quit
if errorlevel = 4 goto bio4
if errorlevel = 3 goto bio3
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
call alice
goto menu

:bio2
cls
call cave
goto menu

:bio3
cls
call crusade
goto menu

:bio4
cls
call sample
goto menu

:quit
exit
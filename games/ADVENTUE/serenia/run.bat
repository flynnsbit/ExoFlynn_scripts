:menu
@echo off
cls
echo.
echo Press 1 for Adventure in Serenia (1982)
echo Press 2 for The Wizard and the Princess (1984)
echo Press 3 to Quit
echo.
echo The Wizard and the Princess was originally released in 1980. When ported
echo to PC in 1982 it was renamed Adventure in Serenia. However 2 years later
echo the original version was ported to the PCJR. The 1984 PCJR version uses the
echo original graphics and resolution, and is much clearer.
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto WIZARD
if errorlevel = 1 goto SERENIA

:SERENIA
cls
@SERENIA
goto quit

:WIZARD
cls
@boot WIZPCJR.IMG
goto quit

:quit
exit
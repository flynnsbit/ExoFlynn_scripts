:menu
@echo off
cls
echo.
echo Press 1 to play the original Silverball (includes Nova table)
echo Press 2 to play Silverball +2 (adds Warbot & Duel)
echo Press 3 to Quit
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
cls
cd sb1
silver
cd ..
goto menu

:bio2
cls
silver
goto menu

:quit
exit
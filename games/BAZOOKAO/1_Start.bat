cd BORD
:start
echo.
echo Press 1 to launch B.O.R.D.
echo Press 2 to launch B.O.R.D. Edit
echo Press 3 to exit
echo.
choice /C:123 /N Please choose
IF errorlevel 3 goto exit
IF errorlevel 2 goto bcfg
IF errorlevel 1 goto local
:bcfg
BORDEDIT
goto start
:local
BORD -l
goto start
:exit

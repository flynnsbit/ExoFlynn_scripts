cd BOOBab
:start
echo.
echo Press 1 to launch Betrayal of the Obsidian Baboon
echo Press 2 to configure
echo Press 3 to exit
echo.
choice /C:123 /N Please choose
IF errorlevel 3 goto exit
IF errorlevel 2 goto cfg
IF errorlevel 1 goto local
:cfg
boobsys 0
goto start
:local
baboon 0
goto start
:exit

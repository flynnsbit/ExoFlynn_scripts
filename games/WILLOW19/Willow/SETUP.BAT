echo off
willow /s
if ERRORLEVEL 2 goto uninstall
if ERRORLEVEL 1 goto install
goto quit
:install
install
goto quit
:uninstall
install /UN
goto quit
:quit

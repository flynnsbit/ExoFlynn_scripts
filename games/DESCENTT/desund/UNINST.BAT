@echo off
cls
echo.
choice /c:yn "Are you sure you want to uninstall Descent To Undermountain "
echo.
if ErrorLevel 2 goto Exit
C:
\
del \system\dtu.ini
echo.
echo Uninstallation complete.
echo Thanks for playing!
echo.
deltree /y C:\desund
:Exit

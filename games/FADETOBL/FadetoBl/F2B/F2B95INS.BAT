@echo off

if not exist c:\f2B.bat goto INSTALL

CALL c:\f2b.bat INSTALL
install.exe >nul
goto END

:INSTALL

if not exist install.exe goto END
install.exe >nul
goto END

:END
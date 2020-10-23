
@echo off
if exist drivers\soundrv.com goto loadrv
cd drivers
setd
cd ..
:loadrv
drivers\soundrv >nul
stripkrx
drivers\soundrv u>nul


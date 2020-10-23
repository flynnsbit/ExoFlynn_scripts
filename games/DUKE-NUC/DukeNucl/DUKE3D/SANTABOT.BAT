echo off
if "%1" == "" goto BAD

cd nwinter
swtc DUKE3D.EXE /gNWINTER.GRP /XNWINTER.CON /a /q%1 /l8 /v2
cd ..
goto done

:BAD

echo SANTABOT usuage:
echo.
echo SANTABOT [# Players]
echo.
echo [# of bot] - Number of SantaBots to fight
echo.
:Done

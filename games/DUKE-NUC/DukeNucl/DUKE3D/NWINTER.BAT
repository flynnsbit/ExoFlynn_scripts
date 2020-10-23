@echo off
nwmain.exe
if errorlevel 3 goto WIN95
if errorlevel 2 goto Multi
if errorlevel 1 goto Single
goto done

:Win95

NW95.EXE
goto done

:Multi

cd nwinter
swtc SETUP.EXE /gNWINTER.GRP /xNWINTER.CON
cd ..
goto done

:Single

duke3d /gNWINTER.GRP /xNWINTER.CON

:Done
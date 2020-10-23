@echo off
if exist *.swp del *.swp
set dos4g=quiet
::set dos4gvm=@heli.vmc

helspiel.exe .\ d >>err

if errorlevel 255 goto ende
if errorlevel 100 goto NichtLoesch

:NichtLoesch
REM hier auf Abbruch (Alt+X) abtesten (exit(1))
if errorlevel 2 goto Simu
goto ende

:Simu
startsim.bat

:ende

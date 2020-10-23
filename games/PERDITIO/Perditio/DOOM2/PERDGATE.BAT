@echo off
:nine
cls
echo Running PERDITION'S GATE with version 1.9 Demos...
If exist PerdGate.wad ren doom2.wad doom2saf.wad
If exist PerdGate.wad ren PerdGate.wad doom2.wad
doom2 -file PGdemo19.wad
If exist doom2saf.wad ren doom2.wad PerdGate.wad 
If exist doom2saf.wad ren doom2saf.wad doom2.wad
goto end
:end

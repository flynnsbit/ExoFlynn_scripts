@echo off
cls
echo.
echo Press 1 for Grand Theft Auto
echo Press 2 for GTA: London 1969
echo Press 3 for GTA: London 1961
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

If errorlevel=4 goto quit
If errorlevel=3 goto london61
If errorlevel=2 goto london
If errorlevel=1 goto gta

:gta
cd gta
cd gtados
cls
echo.
echo Press 1 for Grand Theft Auto
echo Press 2 for Grand Theft Auto (3DFX)
echo Press 3 to Quit
echo.
choice /C:1234 /N Please Choose:

If errorlevel=3 goto quit
If errorlevel=2 goto gtfx
If errorlevel=1 goto gtnofx

:gtnofx
config -set "aspect=true"
cls
call gta24.exe
goto quit

:gtfx
config -set "aspect=false"
cls
call gtafx.exe
goto quit

:london
@imgmount -u d
@imgmount d .\games\GTA\cd\GTALONDON.cue -t iso
cd gta
cd gtados
cls
echo.
echo Press 1 for GTA: London 1969
echo Press 2 for GTA: London 1969 (3DFX)
echo Press 3 to Quit
echo.
choice /C:1234 /N Please Choose:

If errorlevel=3 goto quit
If errorlevel=2 goto 69fx
If errorlevel=1 goto 69nofx

:69nofx
config -set "aspect=true"
cls
call gta24_uk.exe
goto quit

:69fx
config -set "aspect=false"
cls
call gtafx_uk.exe
goto quit

:london61
@imgmount -u d
@imgmount d .\games\GTA\cd\GTALONDON.cue -t iso
cd gta
cd gtados 
cls
echo.
echo Press 1 for GTA: London 1961
echo Press 2 for GTA: London 1961 (3DFX)
echo Press 3 to Quit
echo.
choice /C:1234 /N Please Choose:

If errorlevel=3 goto quit
If errorlevel=2 goto 61fx
If errorlevel=1 goto 61nofx

:61fx
config -set "aspect=false"
cls
call gtafx_61.exe
goto quit

:61nofx
config -set "aspect=true"
cls
call gta24_61.exe
goto quit

:quit
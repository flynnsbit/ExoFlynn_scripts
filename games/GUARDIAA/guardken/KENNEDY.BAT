echo off
if x%1 == xSETUP goto s1
if x%1 == xsetup goto s1
:l1
cls
echo Loading ...
goi
if ERRORLEVEL 3 goto l5
if ERRORLEVEL 2 goto l4
if ERRORLEVEL 1 goto l3
if ERRORLEVEL 0 goto l2
:l5
echo Error: Invalid exit code. Returning to DOS . . .
goto l2
:l3
echo Would you like to play again (Y/N)?
getkey
if ERRORLEVEL 122 goto l6
if ERRORLEVEL 121 goto l1
if ERRORLEVEL 90  goto l6
if ERRORLEVEL 89  goto l1
:l6
cls
echo Have a nice day!
goto l2
:l4
rund Z k0
if ERRORLEVEL 2 goto l5
if ERRORLEVEL 1 goto l3
if ERRORLEVEL 0 goto l2
goto l5
:s1
cls
echo Guardians of Infinity: To Save Kennedy Setup
if EXIST $kf.ovl goto s2
echo Current Setup: Fast Display Adapter (EGA, VGA, MCGA, Mono, Some CGA)
goto s3
:s2
echo Current Setup: Slow Display Adapter (CGA with display flicker)
:s3
echo Choose Type of Adapter:
echo   1  Fast Adapter
echo   2  Slow Adapter (Fixes "flicker" or "snow" on screen)
echo   3  No Change
getkey
if ERRORLEVEL 52 goto s3
if ERRORLEVEL 51 goto s4
if ERRORLEVEL 50 goto s5
if ERRORLEVEL 49 goto s6
goto s3
:s5
echo Changing to Slow Adapter Mode
if EXIST $kf.ovl goto s4
ren $run.ovl $kf.ovl > nul
ren $ks.ovl $run.ovl > nul
goto s4
:s6
echo Changing to Fast Adapter Mode
if EXIST $ks.ovl goto s4
ren $run.ovl $ks.ovl > nul
ren $kf.ovl $run.ovl > nul
:s4
echo Press P to play the Kennedy Game, or any other key to return to DOS:
getkey
if ERRORLEVEL 113 goto l2
if ERRORLEVEL 112 goto l1
if ERRORLEVEL  81 goto l2
if ERRORLEVEL  80 goto l1
:l2


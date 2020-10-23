echo off
cls
if '%1' =='' goto nogood
if %1 == DeSkMaTe goto deskinstal
if '%2' =='' goto nogood
if %1 == A: goto chkdest
if %1 == B: goto chkdest
if %1 == a: goto chkdest
if %1 == b: goto chkdest
goto nogood
:chkdest
if %2 == C: goto doitnow
if %2 == D: goto doitnow
if %2 == E: goto doitnow
if %2 == F: goto doitnow
if %2 == c: goto doitnow
if %2 == d: goto doitnow
if %2 == e: goto doitnow
if %2 == f: goto doitnow
goto nogood
:deskinstal
echo        ษออออออออออออออออออออออออออออออออออออออออป
echo        บ   Wolfpack Hard Disk install Program   บ
echo        ศออออออออออออออออออออออออออออออออออออออออผ
echo ÿ
echo         Wolfpack will be installed into the current directory
echo ÿ
echo ÿ
echo              Type Cntrl-Break now to stop install
echo                     then type Y at prompt
echo                              OR
echo                Press any key to continue install
pause
copy a:instalh.dat instalh.bat 
goto dmlast

:DOITNOW
echo        ษออออออออออออออออออออออออออออออออออออออออป
echo        บ   Wolfpack Hard Disk install Program   บ
echo        ศออออออออออออออออออออออออออออออออออออออออผ
echo ÿ
echo                Installing Wolfpack on drive %2
echo ÿ
echo ÿ
echo ÿ
echo              Type Cntrl-Break now to stop install
echo                     then type Y at prompt
echo                              OR
echo                Press any key to continue install
pause
echo                 creating WOLFPACK directory
md %2\WOLFPACK
copy %1\instalh.dat %2\WOLFPACK\instalh.bat
if not exist %2\WOLFPACK\instalh.bat goto baddirs
goto last
:NOGOOD
cls
echo ÿ
echo Hard disk install program for WolfPack.
echo ÿ
echo            INSTALL [Source Drive] [Target Drive]
echo ÿ
echo To install wolfpack from drive A: to Hard Drive C: you would type
echo ÿ
echo                     INSTALL A: C:
goto endofit

:BADDIRS
echo ÿ
echo                Wolfpack install failed!
echo            Drive %2 may be full or not ready!
goto endofit

:dmlast
instalh.bat DeSkMaTe

:LAST
%2
cd\wolfpack
instalh.bat %1 %2

:ENDOFIT

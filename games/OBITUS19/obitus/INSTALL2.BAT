cls
echo здддддддддддддддддддддддд©
echo Ё                        цд©
echo Ё     Insert Disk 1      Ё Ё
echo Ё                        Ё Ё
echo юдбдддддддддддддддддддддды Ё
echo   юдддддддддддддддддддддддды
pause
copy %1*.* %2

rem
rem ;-------------------------------------
rem
rem   If 3.5 inch disk, don't copy disk 2
rem
rem ;-------------------------------------
rem
if exist %2wd2end.dat goto disk3

cls
echo здддддддддддддддддддддддд©
echo Ё                        цд©
echo Ё     Insert Disk 2      Ё Ё
echo Ё                        Ё Ё
echo юдбдддддддддддддддддддддды Ё
echo   юдддддддддддддддддддддддды
pause
copy %1*.* %2

:disk3
cls
echo здддддддддддддддддддддддд©
echo Ё                        цд©
echo Ё     Insert Disk 3      Ё Ё
echo Ё                        Ё Ё
echo юдбдддддддддддддддддддддды Ё
echo   юдддддддддддддддддддддддды
pause
copy %1*.* %2
rem ;-------------------------------------
rem
rem   If 3.5 inch disk, don't copy disk 4
rem
rem ;-------------------------------------
if exist %2tandy goto disk5

cls
echo здддддддддддддддддддддддд©
echo Ё                        цд©
echo Ё     Insert Disk 4      Ё Ё
echo Ё                        Ё Ё
echo юдбдддддддддддддддддддддды Ё
echo   юдддддддддддддддддддддддды
pause
copy %1*.* %2

:disk5
cls
echo здддддддддддддддддддддддд©
echo Ё                        цд©
echo Ё     Insert Disk 5      Ё Ё
echo Ё                        Ё Ё
echo юдбдддддддддддддддддддддды Ё
echo   юдддддддддддддддддддддддды
pause
copy %1*.* %2
rem ;-------------------------------------
rem
rem   If 3.5 inch disk, don't copy disk 6
rem
rem ;-------------------------------------
if exist %2endanim.dat goto diskdone
cls
echo здддддддддддддддддддддддд©
echo Ё                        цд©
echo Ё     Insert Disk 6      Ё Ё
echo Ё                        Ё Ё
echo юдбдддддддддддддддддддддды Ё
echo   юдддддддддддддддддддддддды
pause
copy %1*.* %2

:diskdone
cls
echo зддддддддддддддддддддддддддддддддддддддддддддддддддд©
echo Ё                                                   цд©
echo Ё  OBITUS is now installed on your disk, have fun!  Ё Ё
echo Ё                                                   Ё Ё
echo юдбддддддддддддддддддддддддддддддддддддддддддддддддды Ё
echo   юддддддддддддддддддддддддддддддддддддддддддддддддддды
%2
dir obitus.exe
goto end
:errend
:end
echo on

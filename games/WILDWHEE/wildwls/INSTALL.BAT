echo off
if @%1==@ goto usage
if @%2==@ goto usage
if @%3==@2 goto stage2
echo installing from %2 to %1
pause
md %1 >nul
copy %2\*.bat %1 >>%1\err.log
%1\install %1 %2 2
:stage2
md %1\spl >>%1\err.log
md %1\data >>%1\err.log
copy %2\*.exe %1 >>%1\err.log
copy %2\spl\*.* %1\spl >>%1\err.log
copy %2\data\*.* %1\data >>%1\err.log
if exist %2\data\cars00.msd goto end
:disc1
echo.
echo Please insert Car Data Disc 1 in drive %2
pause
if not exist %2\data\cars00.msd goto disc1
copy %2\data\*.* %1\data >>%1\err.log
if exist %2\data\cars09.msd goto end
:disc2
echo.
echo Please insert Car Data Disc 2 in drive %2
pause
if not exist %2\data\cars09.msd goto disc2
copy %2\data\*.* %1\data >>%1\err.log
copy %2\read.me %1 >>%1\err.log

:end
echo.
echo Change to %1 and type WILD to run game
echo see the READ.ME file for latest manual updates
goto exit

:usage
echo install {destination} {source}
echo.
echo eg install c:\wild a:
echo or install c:\games\wild b:

:exit



cls
if exist alien110.bin goto :end
:retry
echo Please insert NEW WORLDS DISK 2
pause
if not exist %1:\scenario\alien110.bin goto :retry
copy %1:\scenario\*.*
:end
cd\utopia
cls
echo The NEW WORLDS are now installed.
echo ú
echo Type UTOPIA to play.


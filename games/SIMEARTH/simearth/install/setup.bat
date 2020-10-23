@echo off
echo This batch-program makes temporarily a virtual drive
echo B: 
echo If you already have a logical drive 'b:' in use, then
echo this batch-program won't work.
echo You're on your own :( Sorry.
pause
subst B: .
B:
install
subst /d B:
echo.
echo.
echo.
echo I had to use DosBox for running SimEarth correctly
echo with the correct text display (for VGA 16 colors)
echo.
echo Enjoy SimEarth!
echo Decalies
pause
exit

subst /d a:
subst a: floppy
pause
imgset ide10 "/cd/menough/man1.iso"

pause
cd menough
echo.
echo This game spans 2 CDs. Press Ctrl+F4 when prompted to switch to the next disc.
echo.
pause
call run
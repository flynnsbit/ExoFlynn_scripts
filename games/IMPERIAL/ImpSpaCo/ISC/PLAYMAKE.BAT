echo off
cls
echo Insert a blank formatted diskette
echo into drive A: and
pause
copy orders.exe a: >nul
copy dpfview.com a: >nul
copy player.dpf a: >nul
copy p.bat a:g.bat >nul
echo PLAYER diskette creation completed.

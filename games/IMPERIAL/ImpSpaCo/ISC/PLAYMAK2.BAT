echo off
cls
echo Insert a blank formatted diskette
echo into drive B: and
pause
copy a:orders.exe b: >nul
copy a:dpfview.com b: >nul
copy a:player.dpf b: >nul
copy p.bat b:g.bat >nul
del a:player.dpf >nul
del a:p.bat >nul
del a:orders.exe >nul
del a:playmak1.bat >nul
del a:playmake.bat >nul
echo PLAYER diskette creation completed.

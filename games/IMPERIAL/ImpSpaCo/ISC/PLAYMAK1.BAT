echo off
cls
echo Diskette A is the GEN diskette
echo Diskette B is the PLAYER MASTER diskette
echo Insert proper diskette when called for.
pause
copy a:orders.exe b: >nul
cls
echo Diskette A is the GEN diskette
echo Diskette B is the PLAYER MASTER diskette
echo Insert proper diskette when called for.
copy a:dpfview.com b: >nul
cls
echo Diskette A is the GEN diskette
echo Diskette B is the PLAYER MASTER diskette
echo Insert proper diskette when called for.
copy a:player.dpf b: >nul
cls
echo Diskette A is the GEN diskette
echo Diskette B is the PLAYER MASTER diskette
echo Insert proper diskette when called for.
copy p.bat b:g.bat >nul
del a:player.dpf >nul
del a:p.bat >nul
del a:orders.exe >nul
del a:playmak2.bat >nul
del a:playmake.bat >nul
echo MASTER PLAYER DISKETTE creation
echo has been completed. Keep this
echo diskette as a MASTER to be
echo copied via DISKCOPY to make
echo additional PLAYER diskettes.

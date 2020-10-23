echo off
copy %1pkunzip.exe
rename test.1 pics.blk
if exist %1zip.2 goto b
:b1
echo Insert disk 1
pause
if not exist %1zip.2 goto b1
:b
pkunzip %1zip.2
add pics.blk test.2
if errorlevel 1 goto bad_add
del test.2
if exist %1zip.3 goto c
:c1
echo Insert disk 2
pause
if not exist %1zip.3 goto c1
:c
pkunzip %1zip.3
add pics.blk test.3
if errorlevel 1 goto bad_add
del test.3
if exist %1zip.4 goto d
:d1
echo Insert disk 2
pause
if not exist %1zip.4 goto d1
:d
pkunzip %1zip.4
add pics.blk test.4
if errorlevel 1 goto bad_add
del test.4
if exist %1zip.5 goto e
:e1
echo Insert disk 2
pause
if not exist %1zip.5 goto e1
:e
pkunzip %1zip.5
add pics.blk test.5
if errorlevel 1 goto bad_add
del test.5
del add.exe
if exist %1total.zip goto f
:f1
echo Insert disk 2
pause
if not exist %1total.zip goto f1
:f
pkunzip %1total.zip
if exist %1snds.zip goto g
:g1
echo Insert disk 3
pause
if not exist %1snds.zip goto g1
:g
pkunzip %1snds.zip
del pkunzip.exe
goto done
:bad_add
echo "Sorry, there was a problem building the picture file."
echo "Program is terminating."
:done
echo on

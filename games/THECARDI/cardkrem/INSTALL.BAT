echo off
inst
cls
if errorlevel=127 goto error
if errorlevel=2 goto harddrive2
if errorlevel=1 goto harddrive1
ECHO To play The Cardinal of the Kremlin type COK
goto end
:error
echo Installation program aborted.
goto end
:harddrive1
copy *.* c:\capstone\cok
echo Insert disk 2A and press a key...
inst e1
copy *.* c:\capstone\cok
echo Insert disk 2B and press a key...
inst e2
copy *.* c:\capstone\cok
ECHO To play The Cardinal of the Kremlin type C: then CD \CAPSTONE\COK then COK
goto end
:harddrive2
copy *.* d:\capstone\cok
echo Insert disk 2A and press a key...
inst e1
copy *.* d:\capstone\cok
echo Insert disk 2B and press a key...
inst e2
copy *.* d:\capstone\cok
ECHO To play The Cardinal of the Kremlin type D: then CD \CAPSTONE\COK then COK
:end


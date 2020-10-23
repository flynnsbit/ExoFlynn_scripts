@echo off
echo off
if .%3. == .do2nd. goto do2nd
cls

if %1x==x goto spellItOut
if %2x==x goto spellItOut

if %1==a: goto try2nd
if %1==A: goto try2nd
if %1==b: goto try2nd
if %1==B: goto try2nd
goto unusual

:try2nd
if %2==c: goto doinstall
if %2==C: goto doinstall
if %2==d: goto doinstall
if %2==D: goto doinstall
if %2==e: goto doinstall
if %2==E: goto doinstall

:unusual
echo Install %1 %2 is invalid.  Please use the drive's letter followed
echo by a colon:
goto sample

:spellItOut
echo Please specify which drive to install "Tunnels & Trolls" from and to, 
echo for example:
:sample
echo 
echo         install a: c:
goto end

:doinstall
echo         ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo         บ                                                             บ
echo         บ                         Tunnels & Trolls                    บ
echo         บ                                                             บ
echo         บ                    Hard Disk Install Utility                บ
echo         บ                                                             บ
echo         บ                                                             บ
echo         บ Tunnels & Trolls will be install on drive %2 in a directory บ
echo         บ called "TNT".  If you do not wish to do this, press Ctrl-C. บ
echo         บ                                                             บ
echo         บ If all is acceptable, press any key...                      บ
echo         บ                                                             บ
echo         ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo 
pause
echo 

if exist %2\TNT\*.* goto isdir
mkdir %2\TNT 
goto changedir

:isdir
echo WARNING:  The directory %2\TNT already exists. Press Ctrl-C if you
echo           don't want to overwrite the contents of that directory.
echo 
pause
echo 

:changedir
cd %2\TNT 
:docopy
if exist %1\id1 goto docopy1
echo Insert "Disk 1" and
pause
goto docopy
:docopy1
echo Copying "Disk 1" files to %2\TNT...
copy %1\*.* %2 > nul
%2
install %1 %2 do2nd

:do2nd
:insert2
if exist %1\id2 goto docopy2
echo 
echo Insert "Disk 2" and
pause
goto insert2
:docopy2
echo Copying "Disk 2" files to %2\TNT...
copy %1\*.* > nul

:insert3
if exist %1\id3 goto docopy3
echo 
echo Insert "Disk 3" and
pause
goto insert3
:docopy3
echo Copying "Disk 3" files to %2\TNT...
copy %1\*.* > nul

:insert4
if exist %1\id4 goto docopy4
echo 
echo Insert "Disk 4" and
pause
goto insert4
:docopy4
echo Copying "Disk 4" files to %2\TNT...
copy %1\*.* > nul

:insert5
if exist %1\id5 goto docopy5
echo 
echo Insert "Disk 5" and
pause
goto insert5 
:docopy5
echo Copying "Disk 5" files to %2\TNT...
copy %1\*.* > nul

:insert6
if exist %1\id6 goto docopy6
echo 
echo Insert "Disk 6" and
pause
goto insert6
:docopy6
echo Copying "Disk 6" files to %2\TNT...
copy %1\*.* > nul

if not exist id1 goto error
if not exist id2 goto error
if not exist id3 goto error
if not exist id4 goto error
if not exist id5 goto error
if not exist id6 goto error
goto success

:error
echo ERROR:  Installation of "TNT" into %2\TNT was unsuccessful.  This might
echo         be because your hard disk is full.  "TNT" needs at least 1,836K of
echo         free disk space.
goto end

:success
echo 
echo SUCCESS:  Installation of "TNT" into %2\TNT was successful.
echo           To play TNT type: TNT
echo 
:end
echo 

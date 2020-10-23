  Echo off
  CLS
  Echo One moment, please...
  IF "%@%"=="12345678901" goto Env OK
  Ctty NUL:
  Set @=12345678901
  Ctty CON:
  IF "%@%"=="12345678901" goto Env OK
  IF NOT "%@%"=="12345678901" %COMSPEC% /c %0 %1 %2 %3
  goto EXIT

:Env OK
  Set @=
  Set XD=C:
  Set XF=A:
  IF NOT "%1"=="?" GoTo Check parm
  Echo.
  Echo FORD.BAT will install FORD to your fixed disk drive.
  Echo.

:Syntax
  Echo.
  Echo To use FORD.BAT:
  Echo.
  Echo Type: FORD c: FROM a:
  Echo.
  Echo Where c: is your fixed disk drive letter (usually C:), 
  Echo   and a: is your floppy disk drive letter (usually A: or B:).
  Echo.
  Echo and press [ENTER].
  Echo.
  GoTo Exit

:Check parm
  IF NOT "%1"=="" SET XD=%1
  IF "%2"=="" GoTo Ready to Copy
  Set XF=%2
  For %%w in (from FROM From fROM) do if "%2"=="%%w" set XF=F
  IF %XF%==F IF "%3"=="" goto Syntax
  IF %XF%==F SET XF=%3
  For %%d in (a A b B c C d D e E f F g G h H i I) do if "%XF%"=="%%d:" GoTo Ready to copy
  For %%d in (j J k K l L m M n N o O p P q Q r R) do if "%XF%"=="%%d:" GoTo Ready to copy
  For %%d in (s S t T u U v V w W x X y Y z Z    ) do if "%XF%"=="%%d:" GoTo Ready to copy
  Echo %XF% - parameter not recognized.
  Echo.
  GoTo Syntax

:Ready to Copy
  Echo.
  Echo FORD SoftAd Installation, 2/7/92.
  Echo You must have 3,300,000 bytes free on your %XD% drive to install
  Echo this program.
  Echo.
  Echo Installing FORD from %XF% to %XD%\FORD
  Echo Press SPACEBAR to continue, or CONTROL-C to stop.
  Echo (Press CONTROL-C and use "%0 ?" for more information.)
  pause > NUL:
  Echo.
  Ctty NUL:
  IF NOT EXIST %XD%\FORD\*.* MkDir %XD%\FORD
  Ctty CON:
  %XD%:
  CD \FORD

:CHECKIFDISK1
  IF EXIST %XF%fordshw1.exe Goto DISK1
  Echo Insert Disk 1 in drive %XF%.
  Echo Press SPACEBAR to continue, or CONTROL-C to stop.
  pause > NUL:
  Goto CHECKIFDISK1

:DISK1
  Echo Copying fordshw1.exe to %XD%\FORD ...
  Echo.


  COPY %XF%fordshw1.exe > nul:
  IF EXIST %XD%\FORD\fordshw1.exe GOTO NEXTDISK


:Error while copying 1
  Echo.
  Echo Error copying fordshw1.exe to %XD%\FORD directory!
  Echo There is probably not enough room on the disk.
  Echo.
  Echo Installation not completed.
  Goto EXIT

:NEXTDISK                            
  Echo Insert Disk 2 in drive %XF%.
  Echo Press SPACEBAR to continue, or CONTROL-C to stop.
  pause > NUL:
  IF NOT EXIST %XF%fordshw2.exe Goto NEXTDISK

  Echo.
  Echo Building ford.glb
  Echo This may take a while...
  Echo.

  fordshw1
  del fordshw1.exe > nul:

  IF EXIST %XD%\FORD\ford.glb GOTO COPYFORDSHW2

:Error while exploding ford.glb
  Echo.
  Echo Error creating ford.glb in %XD%\FORD directory!
  Echo There is probably not enough room on the disk.
  Echo.
  Echo Installation not completed.
  Echo.
  Goto EXIT

:COPYFORDSHW2
  Echo.
  Echo Copying fordshw2.exe to %XD%\FORD ...
  Echo.

  COPY %XF%fordshw2.exe > nul:
  IF EXIST %XD%\FORD\fordshw2.exe GOTO DOUNZIP


:Error while copying 2
  Echo.
  Echo Error copying fordshw2.exe in %XD%\FORD directory!
  Echo There is probably not enough room on the disk.
  Echo.
  Echo Installation not completed.
  Echo.
  Goto EXIT

:DOUNZIP
  fordshw2
  del fordshw2.exe > nul:

  IF EXIST %XD%\FORD\FORDSIM.RSC goto FINI

:Error while copying 3
  Echo.
  Echo Error creating FORD.exe in %XD%\FORD directory!
  Echo There is probably not enough room on the disk.
  Echo.
  Echo Installation not completed.
  Echo.
  Goto EXIT

:FINI
  Echo.
  Echo To run the program:
  Echo    1. Type %XD%     and press ENTER.
  Echo    2. Type CD \FORD and press ENTER.
  Echo    3. Type FORD     and press ENTER.
  Echo.

:EXIT
  IF EXIST %XD%\FORD\fordshw1.exe del %XD%\FORD\fordshw1.exe
  IF EXIST %XD%\FORD\fordshw2.exe del %XD%\FORD\fordshw2.exe
  Set XD=
  Set XF=
  Set @=

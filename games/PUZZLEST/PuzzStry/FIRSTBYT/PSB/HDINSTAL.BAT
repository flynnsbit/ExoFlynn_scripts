Echo Off
Echo (C)Copyright First Byte Corporation  1988
Echo - - - - -
if not .%1 == . goto HASARG
Echo You must supply the Hard Disk drive number as an argument:
Echo   HDINSTALL C:
goto  ABORT
:HASARG
if not exist %1\Firstbyt\psb\psb goto s1
Echo A Hard Disk install has already been performed ..
goto ABORT
:s1
md %1\FirstByt
md %1\FirstByt\psb
Echo We are about to copy all files to your Hard
Echo Disk directory %1\FirstByt\psb ....
Echo - - - - -
Echo (Hit Ctrl-C to stop installation)
Echo - - - - -
pause
Echo Copying all Disk 1 files ..
copy *.* %1\FirstByt\psb
if exist PSB goto DONE
Echo Insert Disk #2 in this Drive and
for %%h in (pause shd) do %%h %1 %2
:DONE
%1
cd %1\FirstByt\psb
if exist SPEECH.EXE goto DONE1
Echo Performing normal INSTALL from Hard Disk ..
Echo - - - - -
install %2 *
:DONE1
Echo Done installing onto your Hard Disk.  You may run the product from the
Echo Hard Disk by typing RUN and then ENTER.
:ABORT
pause

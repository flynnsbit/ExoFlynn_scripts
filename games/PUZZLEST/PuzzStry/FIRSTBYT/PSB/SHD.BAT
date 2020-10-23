Echo Copying all Disk 2 files ..
copy *.* %1\FirstByt\psb
%1
cd %1\FirstByt\psb
if exist SPEECH.EXE goto DONE1
Echo Performing normal INSTALL from Hard Disk ..
Echo - - - - -
install %2 *
:DONE1
Echo Done installing onto your Hard Disk.  You may run the product from the
Echo Hard Disk by typing RUN and then ENTER.
pause

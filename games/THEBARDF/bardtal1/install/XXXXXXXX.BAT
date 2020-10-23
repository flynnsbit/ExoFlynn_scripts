echo off
IF %1x==x goto finished
echo Remove  Program  disk from your floppy drive.

:picture
echo Insert  Picture  Disk in same floppy drive.
pause
IF EXIST BIGPIC goto sofar
echo Remove this disk from your floppy drive.
goto picture

:sofar
COPY *.* %1\BARDTALE
%1
copy items.srt items
del items.srt
del install.bat
del yesno.com
echo                                                                        .
echo Before playing the first time,
echo follow the instructions in Game Configuration.
echo Specifically, type
echo      setup
echo                                                                        .
echo To play after that, simply give the DOS commands
echo      cd \bardtale
echo      bard
echo                                                                        .

echo  FINISHED INSTALLING Bard's Tale in %1\BARDTALE
:finished

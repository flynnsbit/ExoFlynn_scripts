echo off
IF %1x==x goto finished
echo Remove STARFLIGHT A disk from your floppy drive.
echo Insert STARFLIGHT B Disk in same floppy drive.
pause
echo on
COPY *.COM %1\STARFLT\PLAY
echo off
%1
type \STARFLT\PLAY\hdnotesa.txt
pause
type \STARFLT\PLAY\hdnotesb.txt
echo  FINISHED INSTALLING STARFLIGHT in %1\STARFLT
:finished

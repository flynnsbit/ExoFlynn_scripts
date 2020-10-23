echo off
IF EXIST HDINSTL.BAT goto sofar
echo  You must be logged onto your floppy.
echo  If your floppy is A:, type:
echo          A:
echo  "You should now see the A> prompt."
goto finished
:sofar
IF x%1==xC: goto ok
IF x%1==xc: goto ok
IF x%1==xD: goto ok
IF x%1==xd: goto ok
IF x%1==xE: goto ok
IF x%1==xe: goto ok
IF x%1==xF: goto ok
IF x%1==xf: goto ok
IF x%1==xG: goto ok
IF x%1==xg: goto ok
IF x%1==xH: goto ok
IF x%1==xh: goto ok
IF x%1==xI: goto ok
IF x%1==xi: goto ok
goto err
:ok
echo **********************************************************************
echo *  This batch file will install Starflight on your hard disk %1      *
echo *  It will create a root directory STARFLT and two subdirectories:   *
echo *   STARFLT\PLAY  and STARFLT\SAVE                                   *
echo *  In all, this will use 1.4 MB of disk space on your Hard Disk.     *
echo *  Hit space bar to continue this process,                           *
echo *  or hit ^C (Control and C together) to Abort this process.         *
echo **********************************************************************
echo  STARFLIGHT Disk must be in your floppy drive.
yesno
echo on
mkdir %1\STARFLT
mkdir %1\STARFLT\PLAY
mkdir %1\STARFLT\SAVE
echo off
cd %1\STARFLT\PLAY
IF NOT EXIST %1STARFLT.COM goto chain
echo **********************************************************************
echo *  Starflight has already been installed on this system,             *
echo *  continuing will eliminate any game in progress.                   *
echo *  Hit space bar to continue this process,                           *
echo *  or hit ^C (Control and C together) to Abort this process.         *
echo **********************************************************************
yesno

:chain
echo on
COPY *.COM %1
COPY hdnotesa.txt %1
COPY hdnotesb.txt %1
COPY remember.bat %1
COPY goback.bat %1
COPY throwout.bat %1
copy xxxxxxxx.bat %1
%1xxxxxxxx %1

echo off
%1
type hdnotesa.txt
pause
type hdnotesb.txt
echo  FINISHED INSTALLING STARFLIGHT in %1\STARFLT
goto finished

:err
echo off
echo  Syntax is HDINSTL [Device Specifier:]
echo  For example, if your hard disk is C:, type:
echo          HDINSTL C:
:finished

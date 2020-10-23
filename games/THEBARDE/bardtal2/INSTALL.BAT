echo off
IF EXIST INSTALL.BAT goto sofar
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
echo *  This batch file will install Destiny Knight on your hard disk %1  *
echo *  In directory  \DESTKNIT                                           *
echo *  This will use 750 KB of disk space on your Hard Disk.             *
echo *  Hit space bar to continue this process,                           *
echo *  or hit ^C (Control and C together) to Abort this process.         *
echo **********************************************************************
echo  Destiny Knight Program Disk must be in your floppy drive.
yesno
echo on
mkdir %1\DESTKNIT
echo off
cd %1\DESTKNIT
IF NOT EXIST %1DK.EXE goto chain
echo **********************************************************************
echo *  Destiny Knight has already been installed on this system,         *
echo *  continuing will eliminate the existing character roster.          *
echo *  Hit space bar to continue this process,                           *
echo *  or hit ^C (Control and C together) to Abort this process.         *
echo **********************************************************************
yesno

:chain
copy *.* %1

cls
echo                                                                        .
echo Before playing the first time,
echo follow the instructions in Game Configuration.
echo Specifically, type
echo      setup
echo                                                                        .
echo To play after that, simply give the DOS commands
echo      cd \DESTKNIT
echo      dk
echo                                                                        .

echo  FINISHED INSTALLING Destiny Knight in %1\DESTKNIT

:err
echo off
echo  Syntax is INSTALL [Drive Letter:]
echo  For example, if your hard disk is C:, type:
echo          INSTALL C:
:finished

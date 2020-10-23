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

echo off
echo  Syntax is INSTALL [Drive Letter:]
echo  For example, if your hard disk is C:, type:
echo          INSTALL C:
goto finished

:ok
echo **********************************************************************
echo *  This batch file will install Bard's Tale on your hard disk %1     *
echo *  In directory  \BARDTALE                                           *
echo *  This will use 750 KB of disk space on your Hard Disk.             *
echo *  Hit space bar to continue this process,                           *
echo *  or hit ^C (Control and C together) to Abort this process.         *
echo **********************************************************************
echo  Bard's Tale Program Disk must be in your floppy drive.
yesno
echo on
mkdir %1\BARDTALE
echo off
cd %1\BARDTALE
IF NOT EXIST %1BARD.EXE goto chain
echo **********************************************************************
echo *  Bard's Tale has already been installed on this system,            *
echo *  continuing will eliminate the existing character roster.          *
echo *  Hit space bar to continue this process,                           *
echo *  or hit ^C (Control and C together) to Abort this process.         *
echo **********************************************************************
yesno

copy *.* %1
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
goto finished

:finished

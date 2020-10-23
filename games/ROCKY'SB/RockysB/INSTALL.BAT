echo off
cls
echo +-------------------------------------+
echo *      WELCOME TO ROCKY'S BOOTS.      *
echo *                                     *
echo * This procedure will install  PC-DOS *
echo * versions  2.0 up to 3.3  or  MS-DOS *
echo * versions  2.0  up  to  3.1  on your *
echo * Rocky's    Boots   disk.    Certain *
echo * versions of  MS-DOS  3.2 and above, *
echo * may not fit on  this disk.   Still, *
echo * we recommend that you attempt to do *
echo * the install,  as it can  do no harm *
echo * if DOS won't fit.                   *
echo *                                     *
echo * If you cannot install  DOS  on your *
echo * Rocky's  Boots  disk,  it's easy to *
echo * run Rocky's  Boots by following the *
echo * alternative   startup    procedures *
echo * given at the end of these installa- *
echo * tion directions.                    *
echo +-------------------------------------+
b:
echo -
echo DO YOU WANT TO CONTINUE WITH
queue   THE INSTALL PROCEDURE:
if errorlevel 1 goto :QUIT
echo -
echo ARE YOUR DOS FILES ON
queue   A HARD DISK:
if errorlevel 1 goto :NOTHARD
echo -
if exist c:command.com goto :CGA
:NOTHARD
set sysdisk=a:
echo -
queue DO YOU HAVE 2 FLOPPY DRIVES:
if not errorlevel 1 goto :DRIVES2
echo -
echo +-------------------------------------+
echo * When asked to  insert your diskette *
echo * for Drive A: use your DOS diskette. *
echo *                                     *
echo * When asked to  insert your diskette *
echo * for Drive B: use your Rocky's Boots *
echo * diskette.                           *
echo +-------------------------------------+
goto :GSYS
:DRIVES2
echo -
echo PLACE YOUR DOS DISK IN THE A: DRIVE.
pause
echo -
goto :GSYS
:CGA
set sysdisk= C:
:GSYS
%sysdisk%
echo COPYING COMMAND.COM FILE ...
copy command.com b:
echo -
echo TRANSFERRING SYSTEM FILES ...
sys b:
echo -
echo +-------------------------------------+
echo * If you  had  "No room for system on *
echo * destination disk," you should start *
echo * Rocky's  Boots  by  placing  it  in *
echo * either  the A: or B: drive.  If you *
echo * use  the  A:  drive,  set the drive *
echo * prompt to  A  by  typing  A:,  then *
echo * pressing  ENTER.  If you use the B: *
echo * drive, set the drive prompt to B by *
echo * typing  B:,  then  pressing  ENTER. *
echo * Then type RB and press ENTER.       *
echo *                                     *
echo * If your  "System transferred,"  DOS *
echo * has been  installed on your Rocky's *
echo * Boots disk.  Now your disk is ready *
echo * to use.  You may start  the program *
echo * as stated above,  or you may choose *
echo * to  put  Rocky's Boots  in  your A: *
echo * drive and restart your  computer by *
echo * pressing CTRL+ALT+DEL.              *
echo +-------------------------------------+
:QUIT
set sysdisk=
set harddisk=

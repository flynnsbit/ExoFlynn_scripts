echo off
if %1a == a goto nopath
goto instal
:nopath
echo      *-------------------------------------------------------*
echo      *  Sir AddaLot's "Mini" Math Adventure Install Program  *
echo      *       Please specify the drive where you wish         *
echo      *       to install Sir AddaLot , for example:           *
echo      *               install C:                              *
echo      *-------------------------------------------------------*
goto endinst

:badpath
echo      *
echo      *
echo      *
echo      *
echo      *
echo      *-------------------------------------------------------*
echo      *  Sir AddaLot's "Mini" Math Adventure Install Program  *
echo      *     the specified drive : %1 does not exist.          *
echo      *       Please specify the drive where you wish         *
echo      *       to install Sir AddaLot , for example:           *
echo      *                 install C:                            *
echo      *-------------------------------------------------------*
goto endinst

:instal
echo      *-------------------------------------------------------*
echo      *  Sir AddaLot's "Mini" Math Adventure Install Program  *
echo      *        Welcome to the install program!                *
echo      *-------------------------------------------------------*
echo      *  Sir AddaLot's "Mini" Math Adventure Install Program  *
echo      *        will create the following directory:           *
echo      *                    %1/AddaLotM                        *
echo      *-------------------------------------------------------*
echo      *
echo      Press the Control Key and the C at the same time to quit.
echo               -or-
pause

echo      *-----------------------------------------------------*
echo      *             INSTALLATION IN PROGRESS!               *
echo      *-----------------------------------------------------*

md %1\AddaLotM
copy *.doc %1\AddaLotM
copy *.diz %1\AddaLotM
copy *.frm %1\AddaLotM
copy *.bat %1\AddaLotM

if not exist %1\AddaLotM\*.* goto badpath
md %1\AddaLotM\Dungeon
copy AddaLotM.001 %1\AddaLotM\AddaLotM.exe
copy AddaLotM.002 %1\AddaLotM\Dungeon\AddaLotM.exe
%1
cd \AddaLotM\Dungeon
echo      *-----------------------------------------------------*
echo      *               UNARCHIVING FILES                     *
echo      *-----------------------------------------------------*
AddaLotM
del AddaLotM.exe
cd \AddaLotM
AddaLotM
del AddaLotM.exe
echo      *-------------------------------------------------------*
echo      *   To play Sir AddaLot's "Mini" Math Adventure type:   *
echo      *              AddaLot (enter)                          *
echo      *     Enjoy the game, watch out for the dragon!         *
echo      *-------------------------------------------------------*
:endinst

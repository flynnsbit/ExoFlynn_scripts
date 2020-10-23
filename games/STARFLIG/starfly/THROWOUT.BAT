echo off
if x%1==x goto needname
if not exist \starflt\%1\starflt.com  goto notfound
echo **********************************************************************
echo *  This will remove the game state "%1",
echo *  freeing its disk space for re-use.                                *
echo *  That game state will no longer be available to GO BACK to.        *
echo *                                                                    *
echo *  Hit any key to continue this process,                             *
echo *  or hit ^C (Control and C together) to Abort this process.         *
echo **********************************************************************
echo on
PAUSE
DEL \STARFLT\%1\*.COM
echo off
if %1==save goto finished
if %1==SAVE goto finished
echo on
RMDIR \STARFLT\%1
goto finished

:notfound
echo **********************************************************************
echo *  You must supply the name of the game state to be removed          *
echo *  from the disk. For example, to remove a game named "cross", type: *
echo *          THROWOUT CROSS                                            *
echo *  No game was found by the name "%1".
echo **********************************************************************
goto finished

:needname
echo **********************************************************************
echo *  You must supply the name of the game state to be removed          *
echo *  from the disk. For example, to remove a game named "cross", type: *
echo *          THROWOUT CROSS                                            *
echo **********************************************************************

:finished

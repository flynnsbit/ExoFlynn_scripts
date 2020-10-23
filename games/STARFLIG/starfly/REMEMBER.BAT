echo off
if x%1==x goto instruct
echo on
mkdir \%1
copy *.com \%1
goto finished
:instruct
echo **********************************************************************
echo *  This will REMEMBER your current game state in the SAVE directory, *
echo *  writing over any previously remembered game named SAVE.           *
echo *  If you wish to save multiple games, Abort this, and invoke this   *
echo *  again, but with a name.  To give it the name "cross", type:       *
echo *          REMEMBER CROSS                                            *
echo *  Later, to abandon an unfavorable game state, and set the game     *
echo *  back to the remembered state, type:                               *
echo *          GOBACK CROSS                                              *
echo *  To throw away a saved game, reclaiming the disk space, type:      *
echo *          THROWOUT CROSS                                            *
echo *  Hit any key to continue this process,                             *
echo *  or hit ^C (Control and C together) to Abort this process.         *
echo **********************************************************************
echo on
PAUSE
mkdir \STARFLT\save
COPY *.COM  \STARFLT\SAVE
:finished

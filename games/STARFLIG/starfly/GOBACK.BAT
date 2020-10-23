echo off
echo **********************************************************************
echo *  This puts your game state back to the time you typed:             *
echo *          REMEMBER %1
echo *  Do this only if you are dis-satisfied with your current           *
echo *  game state, and wish to GO BACK to that previous state.           *
echo *  Hit any key to continue this process,                             *
echo *  or hit ^C (Control and C together) to Abort this process.         *
echo **********************************************************************
PAUSE
if x%1==x goto fromsave
echo on
copy \starflt\%1\*.com \starflt\play
goto finished
:fromsave
echo on
COPY \STARFLT\SAVE\*.COM \STARFLT\PLAY
:finished

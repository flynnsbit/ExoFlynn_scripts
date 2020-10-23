echo off
echo RESET will restore all files on the disk and will rerun setup.
echo Continue only if you want to start THE PRESIDENT IS MISSING from
echo the beginning.
ECHO ----------------------------------------------------------------
echo TO CANCEL - HOLD DOWN THE Ctrl KEY AND AT THE SAME TIME PUSH THE C KEY.
ECHO ----------------------------------------------------------------
PAUSE
ECHO ARE YOU SURE YOU WANT TO CONTINUE?
ECHO IF NOT... HOLD DOWN THE Ctrl KEY AND AT THE SAME TIME PUSH THE C KEY.
ECHO ----------------------------------------------------------------
PAUSE
ECHO RESTORING THE PRESIDENT IS MISSING...
ECHO ON
COPY *.TBB *.TBL
COPY AGENT.FIB *.FIL
COPY SA.B SA
ECHO OFF


ECHO ABOUT TO RUN SETUP...
PAUSE
SU


ECHO REMOVING REACH for the SKIES VIDEO FILES
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
IF NOT EXIST v_*.seq echo NO FILES TO DELETE
IF NOT EXIST v_*.seq goto STOPNOW
if not "%1" == "" copy v_*.seq %1\
dir v_*.seq /w
ECHO These are the files which are about to be deleted.
ECHO If you are not willing to continue then press control and C together.
PAUSE
del v_*.seq
ECHO Operation complete...
:STOPNOW

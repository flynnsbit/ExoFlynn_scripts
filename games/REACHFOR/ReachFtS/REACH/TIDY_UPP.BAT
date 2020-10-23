ECHO REMOVING REACH for the SKIES PHOTO FILES
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

IF NOT EXIST ph*.seq echo NO FILES TO DELETE
IF NOT EXIST ph*.seq goto STOPNOW
IF NOT "%1" == "" COPY ph*.seq %1\
dir ph*.seq /w
ECHO These are the files which are about to be deleted.
ECHO If you are not willing to continue then press control and C together.
PAUSE
del ph*.seq
ECHO Operation complete...
:STOPNOW

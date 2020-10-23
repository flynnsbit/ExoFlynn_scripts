ECHO REMOVING REACH for the SKIES PLAYER RECORD AND HISCORE FILES
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
IF NOT EXIST *.ply echo NO FILES TO DELETE
IF NOT EXIST *.ply goto STOPNOW
IF not "%1" == "" COPY *.ply %1\
dir *.ply /w
ECHO These are the files which are about to be deleted.
ECHO If you are not willing to continue then press control and C together.
PAUSE
del *.ply
ECHO Operation complete...
:stopnow

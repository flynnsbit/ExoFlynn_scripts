echo off
if %1.==. goto infrm

MD %1
COPY CF.FIL %1\cf.fil
COPY STATUS.TBL %1\status.tbl
COPY SA %1\sa
goto end
:infrm

ECHO  ***** HERE IS A LISTING OF ALL YOUR SAVED GAMES (EXCEPT SA) *****
DIR *.
:end
ECHO  --- DONE ---

echo off
if %1.==. goto infrm
COPY %1\*.*
goto end
:infrm
ECHO  ***** HERE IS A LISTING OF ALL YOUR SAVED GAMES (EXCEPT SA) *****
DIR *.
ECHO ----- DONE -----
:end

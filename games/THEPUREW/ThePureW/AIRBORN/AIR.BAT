@ECHO OFF
IF NOT "%ULTRADIR%"=="" ULTRAMID.EXE
SOUNDRV
MIDPAK 10
AIRBORN.EXE
MIDPAK U
SOUNDRV U
IF NOT "%ULTRADIR%"=="" ULTRAMID -f


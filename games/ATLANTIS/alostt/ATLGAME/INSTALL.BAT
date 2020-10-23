@echo off
md c:\atlgame
copy *.* c:\atlgame
c:
cd \atlgame
setsound.exe
echo .
echo . Next time you want to play, type:
echo . Pour jouer la prochaine fois, vous taperez:
echo .         C:
echo .         CD \ATLGAME
echo .         ATLDOS
echo .
pause
atldos.exe

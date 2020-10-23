echo off
cls
echo Installing batman on drive c:
echo The game will be placed into a directory called BATMAN.
echo Press Ctrl-C to abort or press SPACE to install.
pause

md c:\batman
copy *.* c:\batman

echo Insert disk 3/4 then press space.
pause
copy *.* c:\batman

c:
cd \batman
echo Batman is now installed on hard disk,
echo enter BATMAN to run the game.

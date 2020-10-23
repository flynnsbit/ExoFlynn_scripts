echo off
rem install the game on c:
cls
echo                  THUD RIDGE Hard Disk Installation
echo            This will install your CGA disk onto drive C:
echo                     Press Control-C to QUIT, or
pause
c:
cd \
mkdir thud
cd thud
echo                          Copying Files Now... 
copy a:*.* c:\thud > NUL
cls
echo Installation is complete. Type "THUD" to play.

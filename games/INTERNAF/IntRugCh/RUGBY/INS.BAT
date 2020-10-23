echo off
echo Creating Directory RUGBY
md rugby
cd rugby
echo Copying Files
copy %1*.*
cd ..
echo Campos Rugby is now installed
echo To run the game enter the following:
echo CD \RUGBY
echo RUGBY




@echo off
echo Installing SHOGI MASTER on your hard disk (%2) from your floppy (%1).  
echo A \SHOGI directory will be created on %2 and all SHOGI MASTER files 
echo (about 360 Kbytes) will be copied from %1 to %2\SHOGI.
echo Press any key to continue or Control-C to cancel.
pause
echo Creating SHOGI directory on %2 drive.
mkdir %2\SHOGI
echo Copying to %2 drive.
copy %1*.* %2\SHOGI
echo To run Shogi Master:
echo %2
echo CD \SHOGI
echo SHOGI
echo or, if you have a Hercules Card,
echo SHOHERC

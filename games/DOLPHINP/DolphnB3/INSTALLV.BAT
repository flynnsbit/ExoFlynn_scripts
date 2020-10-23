echo off
echo ***      DOLPHIN SIMULATOR VOYAGE DISK III         ***
echo ***      HARD DISK (C:) INSTALLATION ROUTINE       ***
echo ***  Copyright Dolphin Marine Systems, Inc.  1994  ***
ECHO  
echo This routine copies into DOLPHIN directory on hard disk C:
echo If this is not right, hit [cntl]+[brk] and start over.
PAUSE
echo Copying VOYAGE DISK to Directory.
copy *.* c:\dolphin
dir c:\dolphin\*.*/w
echo If there are at least 100 files in the directory, and if
echo there were NO BAD COMMAND messages, then INSTALL is done!

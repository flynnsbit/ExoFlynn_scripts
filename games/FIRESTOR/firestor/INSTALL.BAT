@echo off
echo Install will create the directory FSSW on your C drive
echo and load the Firestorm files into it.
echo Press Ctrl C to abort installation.
pause
c:
cd\
mkdir fssw
copy a:\*.* c:\fssw
cd fssw
PAUSE

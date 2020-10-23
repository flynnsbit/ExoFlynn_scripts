echo off
echo Install Program for See The USA
echo Please Insert East/Midwest Disk now...
Pause
C:
cd \
MKDIR CDUSA
CD \CDUSA
copy a:*.*
echo Please Insert Central/South Disk now...
Pause
copy a:*.*
echo Please Insert West Disk now...
Pause
copy a:*.*
echo Please reinsert your Master/Sample Question Disk now.
Pause
copy a:*.*
copy thrdrive.cdu define.cdu
copy hardusa.exe cdusap.exe
copy usa2.bat cdusa.bat
copy qedit2.bat qedit.bat
echo See The USA is now installed. Type CDUSA to run the program.

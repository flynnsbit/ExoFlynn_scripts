echo off
cls
echo ---- Careful! This program changes your Blaster settings. ----
echo Use only this program if you experience problems settings up
echo your soundcard
echo These changes will only take effect if you
echo don't close your DOS-Window (in Windows)
echo or reboot your System.
echo The Set-Variable Blaster will be configured as if you haven't
echo got a Soundcard installed. Then you will be able to make much
echo more detailed soundsetup choices in Gloriana's setup program..
echo ...
echo The old settings will be saved in a File called SETALT.txt.
echo +------------------------------------------------------------------+
ECHO I BEWARE! Settings this Blaster-Variable                           I
ECHO I will only work if you haven't got DOS-Shells active.             I
ECHO I So please ensure you have quit any DOS-Shells,                   I
ECHO I Norton Commander or similar before starting.                     I
echo +------------------------------------------------------------------+
echo ...
echo If you do not wish to proceed please press 
echo Ctrl + Break 
pause
SET >SETALT.TXT
SET BLASTER=
echo New Set-Variables:
SET
pause


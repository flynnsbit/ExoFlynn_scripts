cd ISHAR2
copy .\ishar1\*.sav .\ishar2\
cd ishar1
echo.
echo Use the Numeric Pad, with Numlock ON, when prompted for language choice.
echo.
echo This game supports the transfer of save files from Ishar 1. Assuming Ishar 1
echo is installed and a save file exists, once you start Ishar 2 click the
echo Disk Icon (top right) and then click the I-II icon. You will need to type the
echo exact file name to load the save.
echo.
echo Here is a list of the detected save files from Ishar I:
echo -------------------------------------------------------
If exist *.sav dir *.sav /B
If not exist *.sav echo No Save Files Detected
echo.
pause
start

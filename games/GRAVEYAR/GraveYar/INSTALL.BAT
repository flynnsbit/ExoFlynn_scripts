echo off
cls
if "%1"=="" goto NODRIVE
echo ***********************************************
echo ***  INSTALLING GRAVE YARDAGE TO DRIVE %1   ***
echo ***********************************************
cd %1\
md %1\GY
copy \ %1\GY >NUL
del %1\GY\install.bat >NUL
echo ***********************************************
echo ***      Please Insert Disk  Number 2       ***
echo ***********************************************
pause
copy \art16 %1\GY >NUL
copy \d2 %1\GY >NUL
copy \*.tms %1\GY >NUL
%1:
cd GY
echo ***********************************************
echo *** GRAVE YARDAGE NOW INSTALLED ON DRIVE %1 ***
echo ***                                         ***
echo ***          Type GY to begin game          ***
echo ***********************************************
goto END
:NODRIVE
echo ***********************************************
echo ***     NO DESTINATION DRIVE SPECIFIED!     ***
echo ***********************************************
:END

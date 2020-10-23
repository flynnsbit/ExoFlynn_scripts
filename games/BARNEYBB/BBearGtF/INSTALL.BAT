ECHO OFF
ECHO.
ECHO This program will install Barney Bear Goes To The Farm
ECHO on your Hard Drive.
ECHO (You may press CONTROL-C to abort) 
PAUSE
ECHO.
ECHO Creating Directory C:\BBFARM
MD C:\BBFARM
ECHO.

ECHO Copying root directory...
copy *.* C:\BBFARM

ECHO.
ECHO Creating sub-directories
ECHO PART-1
ECHO PART-2
ECHO PART-3
ECHO PART-4

MD C:\BBFARM\PART-1
MD C:\BBFARM\PART-2
MD C:\BBFARM\PART-3
MD C:\BBFARM\PART-4

C:\BBFARM\INSTAL2.BAT


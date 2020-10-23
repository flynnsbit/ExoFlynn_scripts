ECHO OFF
ECHO.
ECHO This program will install Barney Bear goes to Space on your Hard Drive.
ECHO (You may press CONTROL-C to abort) 
PAUSE
ECHO.
ECHO Creating Directory C:\BBSPACE
MD C:\BBSPACE
ECHO.

ECHO Copying root directory...
copy *.* C:\BBSPACE

ECHO.
ECHO Creating sub-directories
ECHO PART-1
ECHO PART-2
ECHO PART-3
ECHO PART-4

MD C:\BBSPACE\PART-1
MD C:\BBSPACE\PART-2
MD C:\BBSPACE\PART-3
MD C:\BBSPACE\PART-4

C:\BBSPACE\INSTAL2.BAT


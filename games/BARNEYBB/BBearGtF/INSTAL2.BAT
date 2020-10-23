ECHO OFF
ECHO.
ECHO Copying PART-1 files to Hard Disk
XCOPY PART-1 C:\BBFARM\PART-1\ /S

ECHO.
ECHO Please check that disk with PART-2 is inserted in drive.
ECHO.
PAUSE
XCOPY PART-2 C:BBFARM\PART-2\ /S

ECHO.
ECHO Please check that disk with PART-3 is inserted in drive.
ECHO.
PAUSE
XCOPY PART-3 C:BBFARM\PART-3\ /S

ECHO.
ECHO Please check that disk with PART-4 is inserted in drive.
ECHO.
PAUSE
XCOPY PART-4 C:BBFARM\PART-4\ /S

ECHO.
ECHO Files copied.
CD C:\BBFARM
C:
ECHO.
ECHO Type FARM to run Barney Bear



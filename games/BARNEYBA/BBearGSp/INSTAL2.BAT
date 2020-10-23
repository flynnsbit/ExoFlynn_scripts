ECHO OFF
ECHO.
ECHO Copying PART-1 files to Hard Disk
XCOPY PART-1 C:\BBSPACE\PART-1\ /S

ECHO.
ECHO Please check that disk with PART-2 is inserted in drive.
ECHO.
PAUSE
XCOPY PART-2 C:BBSPACE\PART-2\ /S

ECHO.
ECHO Please check that disk with PART-3 is inserted in drive.
ECHO.
PAUSE
XCOPY PART-3 C:BBSPACE\PART-3\ /S

ECHO.
ECHO Please check that disk with PART-4 is inserted in drive.
ECHO.
PAUSE
XCOPY PART-4 C:BBSPACE\PART-4\ /S

ECHO.
ECHO Files copied.
CD C:\BBSPACE
C:
ECHO.
ECHO Type SPACE to run Barney Bear



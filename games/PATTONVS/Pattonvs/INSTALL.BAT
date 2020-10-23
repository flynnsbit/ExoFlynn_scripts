ECHO OFF
CLS
IF %1. == . GOTO NOPARMS
ECHO *   This batch file installs "Patton vs. Rommel" from your Master to the
ECHO *   working disk of your choice.
ECHO *   Press the Control and C keys simultaneously to cancel this batch file
ECHO *   and return to DOS.
ECHO *
PAUSE
CLS
ECHO *   INSTALLING TO DISKETTE
ECHO *   Single drive systems:
ECHO *   The installation requires an already formatted diskette, and takes
ECHO *   about 3 minutes.  Type: INSTALL A(cr)
ECHO *
ECHO *   Two (or more) drive systems:
ECHO *   The installation requires an already formatted diskette, and takes
ECHO *   about 3 minutes.
ECHO *
ECHO *   INSTALLING TO HARD DISK
ECHO *   PVR requires about 360K of space, and will create a directory called
ECHO *   PVR at the root.  
ECHO *
ECHO *   INSTALLING TO RAM DISK
ECHO *   Please be sure that you have already installed all of the drivers
ECHO *   required to access this device. 
ECHO *   See your DOS users' manual for information on installing and using
ECHO *   RAM disks.
ECHO *
ECHO *   Press any key to begin installing PVR on your selected disk, or press
ECHO *   the Control and C keys simultaneously to end this batch file and
ECHO *   return to DOS.
ECHO *
PAUSE
CLS
ECHO *   Starting installation.
ECHO *  
IF %1. == A. GOTO FINST
IF %1. == a. GOTO FINST
MD %1:\PVR
ECHO *
ECHO *   Please wait...
ECHO *
COPY a:*.* %1:\PVR > nul
ECHO *
ECHO *   Installation complete.  To start PVR, change the default drive and
ECHO *   path to the device containing installed PVR files.  Make sure that
ECHO *   your PVR Master is in drive A.  Type:
ECHO *
ECHO *   %1:(cr)
ECHO *   cd \PVR(cr)
ECHO *   PVRMAIN(cr)
ECHO *
ECHO *               Have Fun, and thank you for your purchasing an
ECHO *                         Electronic Arts product.
GOTO DONE
:FINST
DUP A A
REM ***DUP copyrighted 1987 Elecronic Arts
ECHO *
ECHO *   Installation complete.  To start PVR, type PVRMAIN(cr)
ECHO *   When requested by the program, insert the Master disk
ECHO *   into your drive.  
ECHO *
ECHO *               Have Fun, and thank you for your purchasing an
ECHO *                         Electronic Arts product.
GOTO DONE
:NOPARMS
CLS
ECHO *   To install "Patton vs. Rommel", you need to include the letter that 
ECHO *   tells INSTALL where you want your PVR files.
ECHO *
ECHO *   For example, if you wish to install PVR to C: you would type:
ECHO *
ECHO *   INSTALL C
ECHO *
ECHO *   Go ahead and try again.
:DONE

echo off
cls
echo                     ************  MINDPLAY  ************
echo                   ***  HARD DISK INSTALLATION PROGRAM  ***
echo ÿÿ
echo                (C) Advanced Software Technologies, 1986-1990
echo ÿÿ
echo ÿÿ
echo      This batch file will transfer the files on this program diskette
echo      and install them for proper operation on any hard drive from C - D.
echo ÿÿ
echo      The proper way to use the 'INSTALL' installation file is like this:
echo ÿÿ
echo            INSTALLA [hard drive (C-D)] [name of your subdirectory]
echo
echo      For instance, if your hard drive is C, your diskette is in drive A,
echo      your subdirectory is named 'PROGRAM' you would enter the installation
echo      command: ÿÿ
echo ÿÿ
echo                            INSTALLA C PROGRAM
echo ÿÿ
echo      This will CREATE a subdirectory named 'PROGRAM' in drive C,
echo      transfer the programs on this diskette to it, and install them.
echo ÿÿ
echo            IF YOU DO NOT WISH TO CONTINUE PRESS "CTRL-BREAK"
echo ÿÿ
pause
cls
echo                ***  HARD DISK INSTALLATION PROGRAM  ***
echo ÿÿ
echo ---------------------------------------------------------------------
echo ÿÿ
echo ÿÿ
echo      Make sure your program diskette is in drive A, AND THE SMALL
echo      SQUARE WRITE PROTECT NOTCH IN THE TOP RIGHT HAND CORNER OF YOUR
echo      PROGRAM DISK IS OFF.
echo ÿÿ
echo      If you did not include a directory name after "INSTALLA <drive>",
echo      all of the files on the program diskette will be moved onto the
echo      main directory, but the installation program 'ACCESS.COM' will not
echo      install them.  When you move the programs on this diskette, the
echo      new programs, you will overwrite any programs of the same name
echo      that are in the main directory of the hard drive and you may lose
echo      valuable programs forever.  Besides, it makes your main directory
echo      look messy and that makes it harder to find your other programs.
echo ÿÿ
echo ÿÿ
echo           IF YOU DO NOT WISH TO CONTINUE PRESS "CTRL-BREAK" NOW!!!
echo ÿÿ
echo ÿÿ
pause
cls
%1:
cd %1:\
if exist install.bat goto ERROR
md %2
cls
cd %2
if exist command.com goto ERROR
cls
A:
echo                      The following files are being moved
echo                      to your hard drive:
echo ÿÿ
echo ÿÿ
copy *.* %1:
cls
%1:
erase INSTALLA.BAT
erase INSTALLB.BAT
erase UNINSTALL.BAT
echo               ***   THE INSTALLATION PROCESS IS COMPLETE   ***
echo ÿÿ
goto QUIT
:ERROR
cls
echo ÿÿ
echo ÿÿ
echo ÿÿ
echo ÿÿ
echo ÿÿ
echo ÿÿ
echo               ***  YOU MUST SUPPLY THE LETTER FOR THE HARD  ***
echo               ***  DRIVE ON WHICH THIS SOFTWARE IS TO BE    ***
echo               ***  INSTALLED.  AFTER YOU TYPE "INSTALL" YOU ***
echo               ***  MUST TYPE THE DRIVE LETTER AND THEN THE  ***
echo               ***  SUBDIRECTORY NAME LIKE THIS:             ***
echo ÿÿ
echo                         INSTALLA C (YOUR SUBDIRECTORY)
echo ÿÿ
echo ÿÿ
echo ÿÿ
:QUIT

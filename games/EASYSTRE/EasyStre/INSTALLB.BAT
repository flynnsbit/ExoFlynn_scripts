echo off
cls
echo                     ***********  MINDPLAY  ***********
echo                   ***  HARD DISK INSTALLATION PROGRAM  ***
echo ��
echo                (C) Advanced Software Technologies, 1986-1990
echo ��
echo ��
echo      This batch file will transfer the files on this program diskette
echo      and install them for proper operation on any hard drive from C - D.
echo ��
echo      The proper way to use the 'INSTALL' installation file is like this:
echo ��
echo            INSTALLB [hard drive (C-D)] [name of your subdirectory]
echo ��
echo      For instance, if your hard drive is C, your diskette is in drive B,
echo      and your subdirectory is named 'PROGRAM' you would enter the 
echo      installation command:
echo ��
echo ��
echo                            INSTALLB C PROGRAM
echo ��
echo      This will CREATE a subdirectory named 'PROGRAM' in drive C,
echo      transfer the programs on this diskette to it, and install them.
echo ��
echo            IF YOU DO NOT WISH TO CONTINUE PRESS "CTRL-BREAK"
echo ��
pause
cls
echo                ***  HARD DISK INSTALLATION PROGRAM  ***
echo ��
echo ---------------------------------------------------------------------
echo ��
echo ��
echo      Make sure your program diskette is in drive B, AND THAT THE SMALL
echo      SQUARE WRITE PROTECT NOTCH IN THE TOP RIGHT HAND CORNER OF YOUR
echo      PROGRAM DISK IS OFF.
echo ��
echo      If you did not include a directory name after "INSTALLB <drive>",
echo      all of the files on the program diskette will be moved onto the
echo      main directory, but the installation program 'ACCESS.COM' will not
echo      install them.  When you move the programs on this diskette, the
echo      new programs, you will overwrite any programs of the same name
echo      that are in the main directory of the hard drive and you may lose
echo      valuable programs forever.  Besides, it makes your main directory
echo      look messy and that makes it harder to find your other programs.
echo ��
echo ��
echo           IF YOU DO NOT WISH TO CONTINUE PRESS "CTRL-BREAK" NOW!!!
echo ��
echo ��
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
B:
echo                      The following files are being moved
echo                      to your hard drive:
echo ��
echo ��
copy *.* %1:
cls
%1:
erase INSTALLA.BAT
erase INSTALLB.BAT
erase UNINSTAL.BAT
echo ��
echo               ***   THE INSTALLATION PROCESS IS COMPLETE   ***
echo ��
goto QUIT
:ERROR
cls
echo ��
e ho ��
echo ��
echo ��
echo ��
echo ��
echo               ***  YOU MUST SUPPLY THE LETTER FOR THE HARD  ***
echo               ***  DRIVE ON WHICH THIS SOFTWARE IS TO BE    ***
echo               ***  INSTALLED.  AFTER YOU TYPE "INSTALL" YOU ***
echo               ***  MUST TYPE THE DRIVE LETTER AND THEN THE  ***
echo               ***  SUBDIRECTORY NAME LIKE THIS:             ***
echo ��
echo                         INSTALLB C (YOUR SUBDIRECTORY)
echo ��
echo ��
echo ��
:QUIT

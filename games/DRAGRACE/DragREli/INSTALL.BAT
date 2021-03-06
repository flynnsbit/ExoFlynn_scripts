echo off
cls
REM
REM (C) Henry Roberts, 1986
REM
echo              ***  HARD DISK INSTALLATION PROGRAM  ***
echo                               ��
echo                               ��
echo This batch file will transfer the files on this program diskette
echo onto a hard disk in drive C.  After the files have been transferred
echo the protected files will be installed onto the hard drive so that
echo they will operate properly.
echo                                ��
echo The proper way to use the 'INSTALL' installation file is like this:
echo                                ��
echo         INSTALL "the name of your subdirectory goes here"
echo                                ��
echo For instance, if your subdirectory is to be named 'PROGRAM' you would
echo enter the installation command like this:
echo                                ��
echo         INSTALL PROGRAM
echo                                ��
echo This will CREATE a subdirectory named 'PROGRAM' and transfer all
echo of the programs on this diskette to it.
echo                                ��
echo           IF YOU DO NOT WISH TO CONTINUE PRESS "CTRL-BREAK"
echo                                ��
pause
cls
echo               ***  HARD DISK INSTALLATION PROGRAM  ***
echo                                ��
echo ---------------------------------------------------------------------
echo                                ��
echo                                ��
echo Make sure your program diskette is in drive A AND THAT THE WRITE
echo PROTECT NOTCH ON THE SIDE OF YOUR PROGRAM DISKETTE IS NOT COVERED
echo WITH A PIECE OF TAPE.
echo                                ��
echo If you did not include a directory name after "INSTALL", all of
echo files on the program diskette will be installed onto the main
echo directory.  This is usually a bad idea since it is common for
echo program diskettes to have one or more files with the same name.
echo When you install the new programs, you will overwrite a program
echo file that already exists and loose the use of the old program
echo forever.  Besides, it makes your main directory look messy and
echo that makes it harder to find something when you want it.
echo                                ��
echo                                ��
echo     IF YOU DO NOT WISH TO CONTINUE PRESS "CTRL-BREAK" NOW!!!
echo                                ��
echo                               ��
pause
cls
C:
cd\
md %1
cls
cd %1
cls
A:
echo                     The following files are installed
echo                     onto drive C:
echo                                ��
echo                                ��
copy *.* c:
cls
C:
erase INSTALL.BAT
erase UNINSTAL.EXE
erase I2.EXE
A:
I2
echo                                ��
echo       ***   THE INSTALLATION PROCESS IS COMPLETE   ***
echo                                ��

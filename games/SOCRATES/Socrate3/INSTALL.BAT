echo off
cls
echo 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo �                                 SOCRATES 3.0                                �
echo �     ********************    INSTALLATION PROGRAM    ********************    �
echo �                      (C) Machiavelli Designs Inc., 1993                     �
echo �                                                                             �
echo �     This program will transfer the files on the SOCRATES diskette and       �
echo �     install them properly on any hard drive from C: to F:.                  �
echo �                                                                             �
echo �     To use this installation program, type:                                 �
echo �                                                                             �
echo �                     INSTALL [hard_drive_name from C: to F:]                 �
echo �                                                                             �
echo �     and press the ENTER key.                                                �
echo �     For example, if you want to install SOCRATES 3.0 on your C: disk,       �
echo �     please type the following command:                                      �
echo �                                                                             �
echo �                                  INSTALL C:                                 �
echo �                                                                             �
echo �     and press the ENTER key.                                                �
echo �     This will create a subdirectory named "\socrates" on the C: drive,      �
echo �     transfer the programs to it, and change them into normal files.         �
echo 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo ��
echo    *****  Please press:  "Y" to continue, or any other key to EXIT...  ***** 
query
if errorlevel 1 goto QUIT
cls
query/p %1 socrates
if errorlevel 3 goto error3
if errorlevel 2 goto error2
query/D
if errorlevel 1 goto driveb
query/c %1
if errorlevel 1 goto colon
md %1:\socrates > nul
cd %1:\socrates
A:
echo                      Installing SOCRATES 3.0 to:
echo                      %1:\socrates
echo ��
echo ��
unzip soc.zip %1:
echo  
goto complete
:colon
md %1\socrates 
cd %1\socrates
A:
echo                      Installing SOCRATES 3.0 to:
echo                      %1\socrates
echo ��
echo ��
unzip soc.zip %1 
echo  
goto complete
:driveb
cls
query/c %1
if errorlevel 1 goto colon2
md %1:\socrates > nul
cd %1:\socrates
B:
echo                      Installing SOCRATES 3.0 to:
echo                      %1:\socrates
echo ��
echo ��
unzip soc.zip %1:\socrates 
echo  
goto complete
:colon2
md %1\socrates > nul
cd %1\socrates
B:
echo                      Installing SOCRATES 3.0 to:
echo                      %1\socrates
echo ��
echo ��
unzip soc.zip %1 
echo  
:complete
cls
echo          浜様様様様様様様様様様様様様様様様様様様様様様様様様様様融
echo          �                      SOCRATES 3.0                      �
echo          �                                                        �
echo          �     **********  INSTALLATION COMPLETED  **********     �
echo          �                                                        �
echo          �     The installation process is now completed.         �
echo          �                                                        �
echo          �     To play SOCRATES 3.0:                              �
echo          �                                                        �
echo          �     1.  Change to the hard disk where SOCRATES is      �
echo          �         installed and type:                            �
echo          �                                                        �
echo          �                      cd \socrates                      �
echo          �                                                        �
echo          �         and press the ENTER key.                       �
echo          �                                                        �
echo          �     2.  Please verify that the original SOCRATES       �
echo          �         diskette is in either the A: or B: drive.      �
echo          �                                                        �
echo          �     3.  Then type:                                     �
echo          �                            soc                         �
echo          �                                                        �
echo          �         and press the ENTER key.                       �
echo          藩様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
goto QUIT
:ERROR2
cls
echo ��
echo ��
echo ��
echo          浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo          �                      SOCRATES 3.0                       �
echo          �                                                         �
echo          �     ************  INSTALLATION ERROR  ************      �
echo          �                                                         �
echo          �     Please remember to type the letter of the hard      �
echo          �     disk, on which you want to install SOCRATES.        �
echo          �                                                         �
echo          �     After you type the word "INSTALL", please type      �
echo          �     the one letter name of the hard disk.               �
echo          �                                                         �
echo          �     For example to install SOCRATES on your D: disk,    �
echo          �     please type:                                        �
echo          �                                                         �
echo          �                        INSTALL D:                       �
echo          �                                                         �
echo          �     and press the ENTER key.                            �
echo          藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo ��
echo ��
echo ��
GOTO QUIT
:ERROR3
cls
echo ��
echo ��
echo          浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo          �                      SOCRATES 3.0                       �
echo          �                                                         �
echo          �     ************  INSTALLATION ERROR  ************      �
echo          �                                                         �
echo          �     The hard disk name you have typed will not work     �
echo          �     with this installation program. Check your          �
echo          �     documentation for instructions on how to load       �
echo          �     SOCRATES manually or try this installation          �
echo          �     program again with a hard disk letter between       �
echo          �     C: and F:.                                          �
echo          �                                                         �
echo          �     For example to install SOCRATES on your D: disk,    �
echo          �     please type:                                        �
echo          �                                                         �
echo          �                        INSTALL D:                       �
echo          �                                                         �
echo          �     and press the ENTER key.                            �
echo          藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo ��
echo ��
echo ��
:QUIT


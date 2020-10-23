echo off
cls
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                 SOCRATES 3.0                                บ
echo บ     ********************    INSTALLATION PROGRAM    ********************    บ
echo บ                      (C) Machiavelli Designs Inc., 1993                     บ
echo บ                                                                             บ
echo บ     This program will transfer the files on the SOCRATES diskette and       บ
echo บ     install them properly on any hard drive from C: to F:.                  บ
echo บ                                                                             บ
echo บ     To use this installation program, type:                                 บ
echo บ                                                                             บ
echo บ                     INSTALL [hard_drive_name from C: to F:]                 บ
echo บ                                                                             บ
echo บ     and press the ENTER key.                                                บ
echo บ     For example, if you want to install SOCRATES 3.0 on your C: disk,       บ
echo บ     please type the following command:                                      บ
echo บ                                                                             บ
echo บ                                  INSTALL C:                                 บ
echo บ                                                                             บ
echo บ     and press the ENTER key.                                                บ
echo บ     This will create a subdirectory named "\socrates" on the C: drive,      บ
echo บ     transfer the programs to it, and change them into normal files.         บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo ÿÿ
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
echo ÿÿ
echo ÿÿ
unzip soc.zip %1:
echo  
goto complete
:colon
md %1\socrates 
cd %1\socrates
A:
echo                      Installing SOCRATES 3.0 to:
echo                      %1\socrates
echo ÿÿ
echo ÿÿ
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
echo ÿÿ
echo ÿÿ
unzip soc.zip %1:\socrates 
echo  
goto complete
:colon2
md %1\socrates > nul
cd %1\socrates
B:
echo                      Installing SOCRATES 3.0 to:
echo                      %1\socrates
echo ÿÿ
echo ÿÿ
unzip soc.zip %1 
echo  
:complete
cls
echo          ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo          บ                      SOCRATES 3.0                      บ
echo          บ                                                        บ
echo          บ     **********  INSTALLATION COMPLETED  **********     บ
echo          บ                                                        บ
echo          บ     The installation process is now completed.         บ
echo          บ                                                        บ
echo          บ     To play SOCRATES 3.0:                              บ
echo          บ                                                        บ
echo          บ     1.  Change to the hard disk where SOCRATES is      บ
echo          บ         installed and type:                            บ
echo          บ                                                        บ
echo          บ                      cd \socrates                      บ
echo          บ                                                        บ
echo          บ         and press the ENTER key.                       บ
echo          บ                                                        บ
echo          บ     2.  Please verify that the original SOCRATES       บ
echo          บ         diskette is in either the A: or B: drive.      บ
echo          บ                                                        บ
echo          บ     3.  Then type:                                     บ
echo          บ                            soc                         บ
echo          บ                                                        บ
echo          บ         and press the ENTER key.                       บ
echo          ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
goto QUIT
:ERROR2
cls
echo ÿÿ
echo ÿÿ
echo ÿÿ
echo          ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo          บ                      SOCRATES 3.0                       บ
echo          บ                                                         บ
echo          บ     ************  INSTALLATION ERROR  ************      บ
echo          บ                                                         บ
echo          บ     Please remember to type the letter of the hard      บ
echo          บ     disk, on which you want to install SOCRATES.        บ
echo          บ                                                         บ
echo          บ     After you type the word "INSTALL", please type      บ
echo          บ     the one letter name of the hard disk.               บ
echo          บ                                                         บ
echo          บ     For example to install SOCRATES on your D: disk,    บ
echo          บ     please type:                                        บ
echo          บ                                                         บ
echo          บ                        INSTALL D:                       บ
echo          บ                                                         บ
echo          บ     and press the ENTER key.                            บ
echo          ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo ÿÿ
echo ÿÿ
echo ÿÿ
GOTO QUIT
:ERROR3
cls
echo ÿÿ
echo ÿÿ
echo          ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo          บ                      SOCRATES 3.0                       บ
echo          บ                                                         บ
echo          บ     ************  INSTALLATION ERROR  ************      บ
echo          บ                                                         บ
echo          บ     The hard disk name you have typed will not work     บ
echo          บ     with this installation program. Check your          บ
echo          บ     documentation for instructions on how to load       บ
echo          บ     SOCRATES manually or try this installation          บ
echo          บ     program again with a hard disk letter between       บ
echo          บ     C: and F:.                                          บ
echo          บ                                                         บ
echo          บ     For example to install SOCRATES on your D: disk,    บ
echo          บ     please type:                                        บ
echo          บ                                                         บ
echo          บ                        INSTALL D:                       บ
echo          บ                                                         บ
echo          บ     and press the ENTER key.                            บ
echo          ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo ÿÿ
echo ÿÿ
echo ÿÿ
:QUIT


echo off
cls
if %1a == a: goto WHATDRIVE
if %1b == b: goto WHATDRIVE
if %1 == c: goto START
if %1 == C: goto START
if %1 == d: goto START
if %1 == D: goto START
if %1 == e: goto START
if %1 == E: goto START
if %1 == f: goto START
if %1 == F: goto START 
goto NOTDRIVE
:START
echo  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo  �                                                                       �
echo  �                   Puffwort's Evil Scheme, Installation                �
echo  �                                                                       �
echo  �    *  This will create a directory called %1\PUFFWORT on your hard    �
echo  �       disk and will install the game files in that directory.         �
echo  �                                                                       �
echo  �    *  Once the program is installed you can run it by typing PUFF     � 
echo  �       and pressing ENTER.                                             �
echo  �                                                                       �
echo  �    *  It is important that you run the GO.BAT file.  It contains      �
echo  �       important information.  To read this information, type GO       �
echo  �       and press ENTER from your DOS prompt.  You may do this either   �
echo  �       before or after you install the game program.                   �
echo  �                                                                       �
echo  �    *  If you do not want this program installed at this time, press   �
echo  �       CTRL + C.                                                       �
echo  �                                                                       �
echo  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo 
pause
cls
if exist %1\PUFFWORT\*.* goto CHECK
echo Making directory %1\PUFFWORT . . .
md %1\PUFFWORT
:CHECK
if exist PUFF.EXE goto CONTINUE
echo 
echo Place the disk containing the game files in the active drive.
echo 
pause
goto CHECK
:CONTINUE
echo 
echo Copying game files . . .
copy *.* %1\PUFFWORT
if not exist %1\PUFFWORT\PUFF.EXE goto INSTALLERROR
cd %1\PUFFWORT
echo 
cls
echo Puffwort's Evil Scheme is installed on your hard disk.  
echo 
echo To run the game type PUFF and press ENTER.
echo 
%1
echo 
goto DONE
:WHATDRIVE
cls
echo Installation Error:  To install the game on your hard disk, you
echo must include the drive as part of the install command.  For
echo example, to install the games on drive C, type INSTALL C: and
echo press ENTER.
goto ERRORQUIT
:NOTDRIVE
cls
echo Installation Error: The hard drive letter can be a letter from C to F,
echo For example, INSTALL C: will install the game on drive C.  You must
echo include a colon after the drive letter.
goto ERRORQUIT
:INSTALLERROR
cls
echo Installation Error: Do you have enough space on your hard disk?
echo Did you give the proper hard drive letter?
goto ERRORQUIT
:ERRORQUIT
echo 
echo Puffwort's Evil Scheme was not installed correctly.
echo 
:DONE

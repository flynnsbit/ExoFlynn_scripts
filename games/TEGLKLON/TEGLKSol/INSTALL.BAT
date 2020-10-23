REM -----------------------------------------------------
REM Run this batch file to install TEGL. SEE USAGE AT END
REM -----------------------------------------------------
@echo off
cls
set tginpath=\tegl
REM -- CHECK THE COMMAND LINE PARAMETERS
IF "%1p" == "p" GOTO USAGE
IF "%2p" == "p" GOTO USAGE
set tginsrc=%1
set tgindrv=%2
IF %tgindrv% == %tginsrc% GOTO FATAL1
IF "%2" == "a:" GOTO FATAL2
IF "%2" == "b:" GOTO FATAL2
IF "%2" == "A:" GOTO FATAL2
IF "%2" == "B:" GOTO FATAL2
IF "%2" == "c" GOTO FATAL4
IF "%2" == "C" GOTO FATAL4
IF "%2" == "d" GOTO FATAL4
IF "%2" == "D" GOTO FATAL4
IF "%2" == "e" GOTO FATAL4
IF "%2" == "E" GOTO FATAL4
IF "%2" == "f" GOTO FATAL4
IF "%2" == "F" GOTO FATAL4
IF "%1" == "a" GOTO FATAL4
IF "%1" == "b" GOTO FATAL4
IF "%1" == "A" GOTO FATAL4
IF "%1" == "B" GOTO FATAL4
IF NOT EXIST %1\install.bat GOTO USAGE

type what.txt
pause
cls
echo ���������������������������������������������������Ŀ
echo � INSTALL PATHS:                                    �
echo �����������������������������������������������������
echo � Source drive is %1
echo � Target drive is %2
echo � Target directory is %2%tginpath%
echo ���������������������������������������������������Ŀ
echo �If you are ready to continue with installation     �
echo �press a key otherwise press Ctrl-Break to cancel   �
echo �����������������������������������������������������
pause
REM �����������������������������������������������������
REM INSTALLATION BEGINS HERE. Change to target drive
REM then create the directory.
echo installing . . .
%tgindrv%
cd \
md %tginpath%
IF NOT EXIST %tgindrv%%tginpath%\PRN GOTO FATAL3
cd %tginpath%
copy %tginsrc%\*.*
cls
echo ��������������������������������������������������������Ŀ
echo � Installation is complete!                              �
echo ��������������������������������������������������������Ĵ
echo � Information files will now be displayed. Press the     �
echo � Escape Key after reading each file. To run the games   �
echo � type help or go.                                       �
echo ����������������������������������������������������������
pause
readme
:FATAL1
echo ��������������������������������������������Ŀ
echo � Source and destination are the same!!!     �
echo � INSTALL CANNOT CONTINUE.                   �
echo ����������������������������������������������
GOTO END
:FATAL2
echo �������������������������������������������Ŀ
echo �Cannot install to Drive A: or B:           �
echo ���������������������������������������������
GOTO END
:FATAL3
echo ------------------------------------------
%tginsrc%
echo ������������������������������������������Ŀ
echo � Could not create target directory.       �
echo ��������������������������������������������
GOTO END
:FATAL4
echo ����������������������������������������������Ŀ
echo �  Invalid drive specifier. Include colon.     �
echo ������������������������������������������������
GOTO END
:USAGE
echo ������������������������������������������������Ŀ
echo � You must specify the SOURCE drive and the      �
echo � DESTINATION drive as arguments to install as   �
echo � the first two arguments include the colons.    �
echo � EXAMPLE: install a: c:                         �
echo ��������������������������������������������������
:END

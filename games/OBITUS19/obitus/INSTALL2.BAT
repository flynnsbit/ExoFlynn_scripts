cls
echo 旼컴컴컴컴컴컴컴컴컴컴컴커
echo �                        쳐�
echo �     Insert Disk 1      � �
echo �                        � �
echo 읕쩡컴컴컴컴컴컴컴컴컴컴켸 �
echo   읕컴컴컴컴컴컴컴컴컴컴컴켸
pause
copy %1*.* %2

rem
rem ;-------------------------------------
rem
rem   If 3.5 inch disk, don't copy disk 2
rem
rem ;-------------------------------------
rem
if exist %2wd2end.dat goto disk3

cls
echo 旼컴컴컴컴컴컴컴컴컴컴컴커
echo �                        쳐�
echo �     Insert Disk 2      � �
echo �                        � �
echo 읕쩡컴컴컴컴컴컴컴컴컴컴켸 �
echo   읕컴컴컴컴컴컴컴컴컴컴컴켸
pause
copy %1*.* %2

:disk3
cls
echo 旼컴컴컴컴컴컴컴컴컴컴컴커
echo �                        쳐�
echo �     Insert Disk 3      � �
echo �                        � �
echo 읕쩡컴컴컴컴컴컴컴컴컴컴켸 �
echo   읕컴컴컴컴컴컴컴컴컴컴컴켸
pause
copy %1*.* %2
rem ;-------------------------------------
rem
rem   If 3.5 inch disk, don't copy disk 4
rem
rem ;-------------------------------------
if exist %2tandy goto disk5

cls
echo 旼컴컴컴컴컴컴컴컴컴컴컴커
echo �                        쳐�
echo �     Insert Disk 4      � �
echo �                        � �
echo 읕쩡컴컴컴컴컴컴컴컴컴컴켸 �
echo   읕컴컴컴컴컴컴컴컴컴컴컴켸
pause
copy %1*.* %2

:disk5
cls
echo 旼컴컴컴컴컴컴컴컴컴컴컴커
echo �                        쳐�
echo �     Insert Disk 5      � �
echo �                        � �
echo 읕쩡컴컴컴컴컴컴컴컴컴컴켸 �
echo   읕컴컴컴컴컴컴컴컴컴컴컴켸
pause
copy %1*.* %2
rem ;-------------------------------------
rem
rem   If 3.5 inch disk, don't copy disk 6
rem
rem ;-------------------------------------
if exist %2endanim.dat goto diskdone
cls
echo 旼컴컴컴컴컴컴컴컴컴컴컴커
echo �                        쳐�
echo �     Insert Disk 6      � �
echo �                        � �
echo 읕쩡컴컴컴컴컴컴컴컴컴컴켸 �
echo   읕컴컴컴컴컴컴컴컴컴컴컴켸
pause
copy %1*.* %2

:diskdone
cls
echo 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
echo �                                                   쳐�
echo �  OBITUS is now installed on your disk, have fun!  � �
echo �                                                   � �
echo 읕쩡컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴� �
echo   읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
%2
dir obitus.exe
goto end
:errend
:end
echo on

echo off
cls
echo �            �����������������������������������������������ͻ
echo             ��        InfoQuiz SECURE Program  v1.1          �
echo             ��        (c) 1991 Desert Frog Software          �
echo             ������������������������������������������������ͼ
echo �            �����������������������������������������������ͻ
echo �            �                  WARNING!                     �
echo �            �                                               �
echo �            �    This SECURE program is meant to be used    �
echo �            �   only as a deterrent - It is not foolproof!  �
echo �            �                                               �
echo �            �    Keep this program out of student's reach   �
echo �            �                                               �
echo �            �����������������������������������������������ͼ
echo �
echo �
pause
If %1: == : Goto NOTE
If %1 == L Goto LOCK
If %1 == l Goto LOCK
If %1 == U Goto UNLOCK
If %1 == u Goto UNLOCK
:NOTE
cls
echo �       To use the SECURE program, use the following parameters:
echo �
echo �                      SECURE [u,l] [filename]
echo �
echo �               Use either the letter L or U - not both
echo �
echo  �       NOTE: Type only the first eight letters of the filename
echo �              Do not include the filename's extension
echo �
echo �
echo �
pause
goto END
:LOCK
If %2 : == : Goto NOTE
If exist = %2.q2e Goto GOLOCK
goto NONAMEL
:GOLOCK
cls
echo �            �����������������������������������������������ͻ
echo             ��        InfoQuiz SECURE Program  v1.1          �
echo             ��        (c) 1991 Desert Frog Software          �
echo             ������������������������������������������������ͼ
echo �
echo                         �Locking File: %2
echo �
rename %2.q2e %2.q2s
echo               �%2 is now locked and safe from editing
echo �
echo �
echo �
echo �
pause
goto END
:UNLOCK
If %2 : == : Goto NOTE
If exist = %2.q2s Goto GOUNLOCK
Goto NONAMEU
:GOUNLOCK
cls
echo �            �����������������������������������������������ͻ
echo             ��        InfoQuiz SECURE Program  v1.1          �
echo             ��        (c) 1991 Desert Frog Software          �
echo             ������������������������������������������������ͼ
echo �
echo                         �Unlocking File: %2
echo �
rename %2.q2s %2.q2e
echo              �%2 is now unlocked and ready for editing
echo �
echo �
echo �
echo �
echo �
pause
goto END
:NONAMEL
cls
echo �      The filename you entered does not exist or is already locked.
echo �
echo �                Please check your directory and try again.
echo �
pause
goto END
:NONAMEU
cls
echo �     The filename you entered does not exist or is already unlocked.
echo �
echo �               Please check your directory and try again.
echo �
pause
goto END
:END
echo �

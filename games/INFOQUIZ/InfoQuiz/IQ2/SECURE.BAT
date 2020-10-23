echo off
cls
echo ÿ            ษอออออออออออออออออออออออออออออออออออออออออออออออป
echo             ÿบ        InfoQuiz SECURE Program  v1.1          บ
echo             ÿบ        (c) 1991 Desert Frog Software          บ
echo             ÿศอออออออออออออออออออออออออออออออออออออออออออออออผ
echo ÿ            ษอออออออออออออออออออออออออออออออออออออออออออออออป
echo ÿ            บ                  WARNING!                     บ
echo ÿ            บ                                               บ
echo ÿ            บ    This SECURE program is meant to be used    บ
echo ÿ            บ   only as a deterrent - It is not foolproof!  บ
echo ÿ            บ                                               บ
echo ÿ            บ    Keep this program out of student's reach   บ
echo ÿ            บ                                               บ
echo ÿ            ศอออออออออออออออออออออออออออออออออออออออออออออออผ
echo ÿ
echo ÿ
pause
If %1: == : Goto NOTE
If %1 == L Goto LOCK
If %1 == l Goto LOCK
If %1 == U Goto UNLOCK
If %1 == u Goto UNLOCK
:NOTE
cls
echo ÿ       To use the SECURE program, use the following parameters:
echo ÿ
echo ÿ                      SECURE [u,l] [filename]
echo ÿ
echo ÿ               Use either the letter L or U - not both
echo ÿ
echo  ÿ       NOTE: Type only the first eight letters of the filename
echo ÿ              Do not include the filename's extension
echo ÿ
echo ÿ
echo ÿ
pause
goto END
:LOCK
If %2 : == : Goto NOTE
If exist = %2.q2e Goto GOLOCK
goto NONAMEL
:GOLOCK
cls
echo ÿ            ษอออออออออออออออออออออออออออออออออออออออออออออออป
echo             ÿบ        InfoQuiz SECURE Program  v1.1          บ
echo             ÿบ        (c) 1991 Desert Frog Software          บ
echo             ÿศอออออออออออออออออออออออออออออออออออออออออออออออผ
echo ÿ
echo                         ÿLocking File: %2
echo ÿ
rename %2.q2e %2.q2s
echo               ÿ%2 is now locked and safe from editing
echo ÿ
echo ÿ
echo ÿ
echo ÿ
pause
goto END
:UNLOCK
If %2 : == : Goto NOTE
If exist = %2.q2s Goto GOUNLOCK
Goto NONAMEU
:GOUNLOCK
cls
echo ÿ            ษอออออออออออออออออออออออออออออออออออออออออออออออป
echo             ÿบ        InfoQuiz SECURE Program  v1.1          บ
echo             ÿบ        (c) 1991 Desert Frog Software          บ
echo             ÿศอออออออออออออออออออออออออออออออออออออออออออออออผ
echo ÿ
echo                         ÿUnlocking File: %2
echo ÿ
rename %2.q2s %2.q2e
echo              ÿ%2 is now unlocked and ready for editing
echo ÿ
echo ÿ
echo ÿ
echo ÿ
echo ÿ
pause
goto END
:NONAMEL
cls
echo ÿ      The filename you entered does not exist or is already locked.
echo ÿ
echo ÿ                Please check your directory and try again.
echo ÿ
pause
goto END
:NONAMEU
cls
echo ÿ     The filename you entered does not exist or is already unlocked.
echo ÿ
echo ÿ               Please check your directory and try again.
echo ÿ
pause
goto END
:END
echo ÿ

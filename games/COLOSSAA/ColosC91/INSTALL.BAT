@echo off
echo off
cls
if %1x == x goto nodest
if %1 == A: goto start
if %1 == a: goto start
if %1 == B: goto start
if %1 == b: goto start
if %1 == C: goto start
if %1 == c: goto start
if %1 == D: goto start
if %1 == d: goto start
if %1 == E: goto start
if %1 == e: goto start
if %1 == F: goto start
if %1 == f: goto start
if %1 == G: goto start
if %1 == g: goto start
goto nodest
:start
echo    旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
echo    �                                                                 �
echo    �   Colossal Cave  The First Adventure                            �
echo    �                                                                 �
echo    �   Hard Disk Installation Program  v2.0                          �
echo    �                                                                 �
echo    �                                                                 �
echo    �   This program will put a copy of Colossal Cave on your hard    �
echo    �   drive (%1).   It will be placed  in a subdirectory  titled    �
echo    �   \FIRSTADV.   It will occupy approximately 380 bytes, some-    �
echo    �   what larger than  one floppy disk.   You need not  install    �
echo    �   this program onto a floppy disk; it will run as-is.           �
echo    �                                                                 �
echo    �   Press any key to begin, or  {CTRL}{C}  followed by {Y}  to    �
echo    �   escape.                                                       �
echo    �                                                                 �
echo    읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
echo    �
echo    �
echo   \ /
echo  �
pause
echo  �
echo    �
echo    �
echo   \ /
echo  �
echo  Copying files . . .  (please wait)
md %1\FIRSTADV > NUL
copy start.exe %1\FIRSTADV\*.* > NUL
copy 앹���.exe %1\FIRSTADV\*.* > NUL
copy firstadv.* %1\FIRSTADV\*.* > NUL
del %1\FIRSTADV\firstadv.exe > NUL
del %1\FIRSTADV\firstadv.zip > NUL
del %1\FIRSTADV\firstadv.lzh > NUL
copy -------- %1\FIRSTADV\*.* > NUL
copy readme %1\FIRSTADV\*.* > NUL
copy manual %1\FIRSTADV\*.* > NUL
copy whatsnew.v15 %1\FIRSTADV\*.* > NUL
copy register.doc %1\FIRSTADV\*.* > NUL
echo  �
echo    �
echo    �
echo   \ /
goto alldone
:nodest
echo  �
echo   旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
echo   �                                                     �
echo   �   Usage:  INSTALL [drive letter]:                   �
echo   �                                                     �
echo   �   i.e.  to install on drive C -- type INSTALL C:    �
echo   �                                                     �
echo   읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
goto end
:alldone
echo  �
echo   旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
echo   �                                                     �
echo   �   Installation complete.                            �
echo   �                                                     �
echo   �   To run Colossal Cave  The First Adventure:        �
echo   �                                                     �
echo   �                %1                                   �
echo   �                CD \FIRSTADV                         �
echo   �                START                                �
echo   �                                                     �
echo   읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
:end


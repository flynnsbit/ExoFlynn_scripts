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
echo    зддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддд©
echo    Ё                                                                 Ё
echo    Ё   Colossal Cave  The First Adventure                            Ё
echo    Ё                                                                 Ё
echo    Ё   Hard Disk Installation Program  v2.0                          Ё
echo    Ё                                                                 Ё
echo    Ё                                                                 Ё
echo    Ё   This program will put a copy of Colossal Cave on your hard    Ё
echo    Ё   drive (%1).   It will be placed  in a subdirectory  titled    Ё
echo    Ё   \FIRSTADV.   It will occupy approximately 380 bytes, some-    Ё
echo    Ё   what larger than  one floppy disk.   You need not  install    Ё
echo    Ё   this program onto a floppy disk; it will run as-is.           Ё
echo    Ё                                                                 Ё
echo    Ё   Press any key to begin, or  {CTRL}{C}  followed by {Y}  to    Ё
echo    Ё   escape.                                                       Ё
echo    Ё                                                                 Ё
echo    юддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддды
echo    Ё
echo    Ё
echo   \ /
echo  Ъ
pause
echo  Ъ
echo    Ё
echo    Ё
echo   \ /
echo  Ъ
echo  Copying files . . .  (please wait)
md %1\FIRSTADV > NUL
copy start.exe %1\FIRSTADV\*.* > NUL
copy ²ЛЧЛ².exe %1\FIRSTADV\*.* > NUL
copy firstadv.* %1\FIRSTADV\*.* > NUL
del %1\FIRSTADV\firstadv.exe > NUL
del %1\FIRSTADV\firstadv.zip > NUL
del %1\FIRSTADV\firstadv.lzh > NUL
copy -------- %1\FIRSTADV\*.* > NUL
copy readme %1\FIRSTADV\*.* > NUL
copy manual %1\FIRSTADV\*.* > NUL
copy whatsnew.v15 %1\FIRSTADV\*.* > NUL
copy register.doc %1\FIRSTADV\*.* > NUL
echo  Ъ
echo    Ё
echo    Ё
echo   \ /
goto alldone
:nodest
echo  Ъ
echo   зддддддддддддддддддддддддддддддддддддддддддддддддддддд©
echo   Ё                                                     Ё
echo   Ё   Usage:  INSTALL [drive letter]:                   Ё
echo   Ё                                                     Ё
echo   Ё   i.e.  to install on drive C -- type INSTALL C:    Ё
echo   Ё                                                     Ё
echo   юддддддддддддддддддддддддддддддддддддддддддддддддддддды
goto end
:alldone
echo  Ъ
echo   зддддддддддддддддддддддддддддддддддддддддддддддддддддд©
echo   Ё                                                     Ё
echo   Ё   Installation complete.                            Ё
echo   Ё                                                     Ё
echo   Ё   To run Colossal Cave  The First Adventure:        Ё
echo   Ё                                                     Ё
echo   Ё                %1                                   Ё
echo   Ё                CD \FIRSTADV                         Ё
echo   Ё                START                                Ё
echo   Ё                                                     Ё
echo   юддддддддддддддддддддддддддддддддддддддддддддддддддддды
:end


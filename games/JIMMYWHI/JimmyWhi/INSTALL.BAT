echo off
cls
echo         ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
echo         лл                                                         лл
echo         лл             JIMMY WHITE'S WHIRLWIND SNOOKER             лл
echo         лл                                                         лл
echo         лл                 (c) 1991 Archer Maclean                 лл
echo         лл                                                         лл
echo         лл             Hard Disk  Installation Program             лл
echo         лл                                                         лл
echo         ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
echo џ
echo џ
echo џ
echo џ
if not %1~==~ goto gotdrive
echo         To Install J.W.'S WHIRLWIND SNOOKER to DRIVE B type INSTALL B:
echo         To Install J.W.'S WHIRLWIND SNOOKER to DRIVE C type INSTALL C:
echo         To Install J.W.'S WHIRLWIND SNOOKER to DRIVE D type INSTALL D:
echo џ
goto end

:gotdrive
if %0==b:install goto bdrive
if %0==B:INSTALL goto bdrive
if %0==a:install goto adrive
if not %0==A:INSTALL goto install1

:adrive
A:
goto install1
:bdrive
B:
goto install1

:install1
if exist JWWS.EXE goto gotdisk1
echo Insert SNOOKER Disk into Floppy Drive
pause
goto install1
:gotdisk1

echo Installing J.W.'S WHIRLWIND SNOOKER to %1\SNOOKER\
echo џ
if exist %1\SNOOKER\*.* goto direxists
pause
mkdir %1\SNOOKER
goto notexists

:direxists
echo Directory %1\SNOOKER already exists. Press "CTRL C" to Abort.
echo џ
pause

:notexists
echo Copying J.W.'S WHIRLWIND SNOOKER Files, please wait . . .
copy trsi.exe %1\snooker > NUL
Copy trsi.NFO %1\SNOOKER > NUL
COPY RUNME.bat %1\snooker >NUL
copy SNOOKER.BAT %1\SNOOKER > NUL
copy JWWS.EXE %1\SNOOKER > NUL
copy MUSIC.EXE %1\SNOOKER > NUL
copy SNOOKER.MID %1\SNOOKER > NUL
copy TOCCATA.MID %1\SNOOKER > NUL
if not exist %1\SNOOKER\TOCCATA.MID goto error
echo џ
goto done

:error
echo џ
echo џ
echo Error:
echo џ
echo J.W.'S WHIRLWIND SNOOKER has not been installed on your hard disk.
echo џ
echo This program requires at least 200K of free disk space.
goto end

:done
cd %1\SNOOKER
%1
cls
echo џ
echo џ
echo J.W.'S WHIRLWIND SNOOKER has now been installed on your hard disk.
echo џ
echo To run J.W.'S WHIRLWIND SNOOKER, type SNOOKER
echo џ
:end

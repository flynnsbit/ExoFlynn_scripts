echo off
cls
echo               ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo               º°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°ºÄ¿
echo               º°°                                            °°º ³
echo               º°°          CAMPAIGN "MISSIONS DISK"          °°º ³
echo               º°°                                            °°º ³
echo               º°°             Hard Disk Install              °°º ³
echo               º°°                                            °°º ³
echo               º°°     Copyright (c) 1993 Empire Software     °°º ³
echo               º°°                                            °°º ³
echo               º°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°º ³
echo               ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼ ³
echo ÿ               ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo ÿ
if not %1~==~ goto gotdrive
echo ÿ
echo The CAMPAIGN "MISSIONS DISK" must be installed to your CAMPAIGN directory:-
echo ÿ
echo Type INSTALL followed by the name of your Campaign directory.
echo ÿ
echo For Example,
echo ÿ
echo    INSTALL C:\CAMPAIGN
echo    INSTALL D:\CAMPAIGN
echo    INSTALL E:\CAMPAIGN
echo ÿ
goto dos

:gotdrive
if %0==b:install goto bdrive
if %0==B:INSTALL goto bdrive
if %0==a:install goto adrive
if not %0==A:INSTALL goto begin

:adrive
A:
goto begin
:bdrive
B:

:begin
echo                         Installing "MISSIONS DISK" to:
echo ÿ
echo                                  %1\
echo ÿ
echo                 press any key to continue or "CTRL C" to abort
pause > NUL
echo ÿ

:install1
if exist MISSIONS.EXE goto gotdisk1
echo            Please insert "CAMPAIGN MISSIONS DISK" and press any key
pause > NUL
goto install1

:gotdisk1
echo               Copying MISSIONS DISK to %1\...please wait
MISSIONS.EXE %1\ > NUL
if not errorlevel 27 goto error

goto done
:error
cls
echo ÿ
echo ÿ
echo                           !! Installation Has Failed !!
echo ÿ
echo            "MISSIONS DISK" has not been installed on your hard disk.
echo ÿ
echo            This program requires at least 3.5 Mb of free disk space.
echo ÿ
echo ÿ
echo ÿ
goto dos

:done
cls
echo ÿ
echo ÿ
echo ÿ                   °°±±²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²±±°°
echo ÿ                   °°±±²²                           ²²±±°°
echo ÿ                   °°±±²²   Installation Complete   ²²±±°°
echo ÿ                   °°±±²²                           ²²±±°°
echo ÿ                   °°±±²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²±±°°
echo ÿ
echo ÿ
echo       "CAMPAIGN MISSIONS DISK" has now been installed on your hard disk.
echo ÿ
echo ÿ
echo ÿ
echo ÿ
:dos


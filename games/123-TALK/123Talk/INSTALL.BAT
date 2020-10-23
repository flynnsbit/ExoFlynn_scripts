@echo off
echo [2;44;1;33m
cls
echo.
echo      ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
echo      лллллпппппппппппппппппппппппппппппппппппппппппппппппппппппппппплллллл 
echo      лллллоллллллллллллллллллллллллллллллллллллллллллллллллллллллллнлллллл 
echo      лллллоллллллллллл                                 ллллллллллллнлллллл
echo      лллллоллллллллллл           INSTALLING            Блллллллллллнлллллл
echo      лллллоллллллллллл                                 Блллллллллллнлллллл
echo      лллллоллллллллллл            123-TALK             Блллллллллллнлллллл
echo      лллллоллллллллллл                                 Блллллллллллнлллллл
echo      лллллоллллллллллллБББББББББББББББББББББББББББББББББлллллллллллнлллллл
echo      лллллоллллллллллллллллллллллллллллллллллллллллллллллллллллллллнлллллл
echo      лллллммммммммммммммммммммммммммммммммммммммммммммммммммммммммммлллллл
echo      ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
ECHO.
ECHO      123-TALK is a NEW EDUCATIONAL PROGRAM with REAL HUMAN SPEECH that
ECHO      teaches children how to talk, learn how to count, learn addition 
ECHO      and learn subtraction. EXCELLENT FEMALE SPEECH QUALITY THAT PLAYS
ECHO      THRU THE PC SPEAKER. Lead your child into the next century with
ECHO      this interactive talking package. SOUND BLASTER VERSION AVAILABLE.
echo.
echo  To which HARD DRIVE would you like to INSTALL 123-TALK ?
echo  (Please enter drive C, D, E, F or Q to QUIT)
KEY CDEFQ

IF ERRORLEVEL 5 GOTO QUIT
IF ERRORLEVEL 4 GOTO FDRIVE
IF ERRORLEVEL 3 GOTO EDRIVE
IF ERRORLEVEL 2 GOTO DDRIVE
IF ERRORLEVEL 1 GOTO CDRIVE


:CDRIVE
cls
echo.
echo * Installing 123-TALK to the 123-TALK sub directory on your C drive *
echo.
MD C:\123-talk
COPY *.* C:\123-talk
cls
echo.
C:
CD \123-talk
ECHO [0;40m
cls
RUNME
goto quit

:DDRIVE
cls
echo.
echo * Installing 123-TALK to the 123-TALK sub directory on your D drive *
echo.
MD D:\123-TALK
COPY *.* D:\123-TALK
cls
echo.
D:
CD \123-TALK
ECHO [0;40m
cls
RUNME
goto quit

:EDRIVE
cls
echo.
echo * Installing 123-TALK to the 123-TALK sub directory on your E drive *
echo.
MD E:\123-TALK
COPY *.* E:\123-TALK
cls
echo.
E:
CD \123-TALK
ECHO [0;40m
cls
RUNME
goto quit

:FDRIVE
cls
echo.
echo * Installing 123-TALK to the 123-TALK sub directory on your F drive *
echo.
MD F:\123-TALK
COPY *.* F:\123-TALK
cls
echo.
F:
CD \123-TALK
ECHO [0;40m
cls
RUNME
goto quit

:QUIT
ECHO [0;40m
cls


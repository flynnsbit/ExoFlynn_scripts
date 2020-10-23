@ECHO OFF
CLS
:NOTHING
    IF "%1" == "" GOTO NOTHING1
:SPECIFIED
    ECHO Lharc is Copyright by Haruyasu Yoshizaki.
    ECHO      ÿ
    ECHO Installing Barracuda on drive %1
    ECHO ÿ
    MD %1\GLYNK   >nul
    MD %1\GLYNK\BCUDA >nul
    ECHO Coping game files....  Please Wait.
    COPY BCUDA1.DAT %1\GLYNK\BCUDA\BCUDA1.EXE   >nul
    %1
    CD\GLYNK\BCUDA
    ECHO Extracting game files...
    BCUDA1.EXE
    REN BCUDA1.049 BCUDA1.COM  >nul
    DEL BCUDA1.EXE
    ECHO ÿ
    ECHO Barracuda Secret Mission 1 is now ready to play!  Type BCUDA1 to start.
    GOTO END
:NOTHING1
    ECHO To successfully install Barracuda Secret Mission 1 on your Hard
    ECHO Drive you must specify what drive to install Barracuda on.
    ECHO ÿ
    ECHO INSTALL C:
    ECHO To install in drive C:
    GOTO END
:END

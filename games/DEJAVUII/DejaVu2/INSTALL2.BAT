:CHKF1
IF EXIST %SRCDRIVE%:KGRAPHIC.VGA GOTO FILE1THERE
ECHO Please insert the other disk.
PAUSE
%SRCDRIVE%:
%DSTDRIVE%:
GOTO CHKF1
:FILE1THERE 
COPY %SRCDRIVE%:KGRAPHIC.VGA %DSTDRIVE%:

:CHKF2
IF EXIST %SRCDRIVE%:STARTUP.DAT GOTO FILE2THERE
ECHO Please insert the other disk.
PAUSE
%SRCDRIVE%:
%DSTDRIVE%:
GOTO CHKF2
:FILE2THERE 
COPY %SRCDRIVE%:STARTUP.DAT %DSTDRIVE%:


:CHKF3
IF EXIST %SRCDRIVE%:TITLE.DAT GOTO FILE3THERE
ECHO Please insert the other disk.
PAUSE
%SRCDRIVE%:
%DSTDRIVE%:
GOTO CHKF3
:FILE3THERE 
COPY %SRCDRIVE%:TITLE.DAT %DSTDRIVE%:


:CHKF4
IF EXIST %SRCDRIVE%:DIPLOMA.DAT GOTO FILE4THERE
ECHO Please insert the other disk.
PAUSE
%SRCDRIVE%:
%DSTDRIVE%:
GOTO CHKF4
:FILE4THERE 
COPY %SRCDRIVE%:DIPLOMA.DAT %DSTDRIVE%:


:CHKF5
IF EXIST %SRCDRIVE%:FILTER.DAT GOTO FILE5THERE
ECHO Please insert the other disk.
PAUSE
%SRCDRIVE%:
%DSTDRIVE%:
GOTO CHKF5
:FILE5THERE 
COPY %SRCDRIVE%:FILTER.DAT %DSTDRIVE%:


:CHKF6
IF EXIST %SRCDRIVE%:GAMEFILE.DAT GOTO FILE6THERE
ECHO Please insert the other disk.
PAUSE
%SRCDRIVE%:
%DSTDRIVE%:
GOTO CHKF6
:FILE6THERE 
COPY %SRCDRIVE%:GAMEFILE.DAT %DSTDRIVE%:


:CHKF7
IF EXIST %SRCDRIVE%:OBJECT.DAT GOTO FILE7THERE
ECHO Please insert the other disk.
PAUSE
%SRCDRIVE%:
%DSTDRIVE%:
GOTO CHKF7
:FILE7THERE 
COPY %SRCDRIVE%:OBJECT.DAT %DSTDRIVE%:


:CHKF8
IF EXIST %SRCDRIVE%:DEJAVUII.EXE GOTO FILE8THERE
ECHO Please insert the other disk.
PAUSE
%SRCDRIVE%:
%DSTDRIVE%:
GOTO CHKF8
:FILE8THERE 
COPY %SRCDRIVE%:DEJAVUII.EXE %DSTDRIVE%:


:CHKF9
IF EXIST %SRCDRIVE%:TEXT.DAT GOTO FILE9THERE
ECHO Please insert the other disk.
PAUSE
%SRCDRIVE%:
%DSTDRIVE%:
GOTO CHKF9
:FILE9THERE 
COPY %SRCDRIVE%:TEXT.DAT %DSTDRIVE%:


:CHKF10
IF EXIST %SRCDRIVE%:SOUND.DAT GOTO FILE10THERE
ECHO Please insert the other disk.
PAUSE
%SRCDRIVE%:
%DSTDRIVE%:
GOTO CHKF10
:FILE10THERE 
COPY %SRCDRIVE%:SOUND.DAT %DSTDRIVE%:

:CHKF11
IF EXIST %SRCDRIVE%:GRAPHICS.DAT GOTO FILE11THERE
ECHO Please insert the other disk.
PAUSE
%SRCDRIVE%:
%DSTDRIVE%:
GOTO CHKF11
:FILE11THERE 
COPY %SRCDRIVE%:GRAPHICS.DAT %DSTDRIVE%:
ECHO Installation complete. Type DEJAVUII and ENTER to start the game.


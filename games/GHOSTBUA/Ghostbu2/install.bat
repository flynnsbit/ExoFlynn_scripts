ECHO OFF 
:RESTART
IF NOT "%3"=="" GOTO SETUP
IF "%1"=="C:" GOTO DRIVEC
IF "%1"=="D:" GOTO DRIVED
IF "%1"=="c:" GOTO DRIVEC
IF "%1"=="d:" GOTO DRIVED
:TOPMENU
CLS
ECHO     -------------------------------------------------------------------------
ECHO                      GHOSTBUSTERS II INSTALL AND SETUP MENU
ECHO     -------------------------------------------------------------------------
ECHO                    PLEASE PRESS A FUNCTION KEY TO PICK CHOICE
ECHO                ( F1 ) - TO INSTALL GHOSTBUSTERS II TO A HARD DRIVE
ECHO                ( F2 ) - TO OVERRIDE THE AUTODETECT SEQUENCE
ECHO                ( F3 ) - TO RETURN TO DOS
:REPLY
REPLY
IF ERRORLEVEL 62 GOTO REPLY
IF ERRORLEVEL 61 GOTO EXIT
IF ERRORLEVEL 60 GOTO SETUP
IF ERRORLEVEL 59 GOTO HINSTALL
GOTO REPLY

:HINSTALL
CLS
ECHO     -------------------------------------------------------------------------
ECHO                        GHOSTBUSTERS II HARD DRIVE INSTALL MENU
ECHO     -------------------------------------------------------------------------
ECHO                     GHOSTBUSTERS II WILL CREATE A DIRECTORY CALLED
ECHO                       GB2 ON THE CHOOSEN HARD DRIVE LISTED BELOW
ECHO                      PLEASE PRESS A FUNCTION KEY TO PICK CHOICE
ECHO                                ( F1 ) - DRIVE C:
ECHO                                ( F2 ) - DRIVE D:
ECHO                                ( F3 ) - ABORT INSTALL
:REPLY
REPLY
IF ERRORLEVEL 62 GOTO REPLY  
IF ERRORLEVEL 61 GOTO TOPMENU
IF ERRORLEVEL 60 GOTO DRIVED
IF ERRORLEVEL 59 GOTO DRIVEC
GOTO REPLY
:DRIVEC
CLS
ECHO     -------------------------------------------------------------------------
ECHO                      GHOSTBUSTERS II HARD DRIVE INSTALL TO C:
ECHO     -------------------------------------------------------------------------
ECHO                           PLEASE FOLLOW ALL INSTRUCTIONS
ECHO                                HIT ANY KEY TO BEGIN
PAUSE >NUL
ECHO                             CREATING C:\GB2 DIRECTORY
MD C:\GB2 >NUL
ECHO                           COPYING GAME FILES FROM DISK 1
COPY *.* C:\GB2 >NUL
ECHO                          *DISK 1 IS COMPLETE REMOVE DISK*
:REPLAY
ECHO                          *PLEASE PLACE DISK 2 INTO DRIVE*
ECHO                                HIT ANY KEY TO BEGIN
PAUSE >NUL
IF EXIST LAB GOTO TWO
GOTO REPLAY
:TWO
ECHO                           COPYING GAME FILES FROM DISK 2
COPY *.* C:\GB2 >NUL
ECHO                          *DISK 2 IS COMPLETE REMOVE DISK*
:REPLAY2
ECHO                          *PLEASE PLACE DISK 3 INTO DRIVE*
ECHO                                HIT ANY KEY TO BEGIN
PAUSE >NUL
IF EXIST PARK.DAT GOTO THREE
GOTO REPLAY2
:THREE
ECHO                           COPYING GAME FILES FROM DISK 3
COPY *.* C:\GB2 >NUL
ECHO                          *DISK 3 IS COMPLETE REMOVE DISK*
:REPLAY3
ECHO                          *PLEASE PLACE DISK 4 INTO DRIVE*
ECHO                                HIT ANY KEY TO BEGIN
PAUSE >NUL
IF EXIST HQ GOTO FOUR
GOTO REPLAY3
:FOUR
ECHO                           COPYING GAME FILES FROM DISK 4
COPY *.* C:\GB2 >NUL
ECHO                         **DISK 4 IS COMPLETE REMOVE DISK**
ECHO                            ** INSTALLATION COMPLETE **
ECHO                               ** TYPE GB2 TO BEGIN **
C:
CD\GB2
GOTO EXIT
                    
:DRIVED
CLS
ECHO     -------------------------------------------------------------------------
ECHO                      GHOSTBUSTERS II HARD DRIVE INSTALL TO D:
ECHO     -------------------------------------------------------------------------
ECHO                           PLEASE FOLLOW ALL INSTRUCTIONS
ECHO                                HIT ANY KEY TO BEGIN
PAUSE >NUL
ECHO                             CREATING D:\GB2 DIRECTORY
MD D:\GB2 >NUL
ECHO                           COPYING GAME FILES FROM DISK 1
COPY *.* D:\GB2 >NUL
ECHO                          *DISK 1 IS COMPLETE REMOVE DISK*
:REPLAYD
ECHO                          *PLEASE PLACE DISK 2 INTO DRIVE*
ECHO                                HIT ANY KEY TO BEGIN
PAUSE >NUL
IF EXIST LAB GOTO TWOD
GOTO REPLAYD
:TWOD
ECHO                           COPYING GAME FILES FROM DISK 2
COPY *.* D:\GB2 >NUL
ECHO                          *DISK 2 IS COMPLETE REMOVE DISK*
:REPLAY2D
ECHO                          *PLEASE PLACE DISK 3 INTO DRIVE*
ECHO                                HIT ANY KEY TO BEGIN
PAUSE >NUL
IF EXIST PARK.DAT GOTO THREED
GOTO REPLAY2D
:THREED
ECHO                           COPYING GAME FILES FROM DISK 3
COPY *.* D:\GB2 >NUL
ECHO                          *DISK 3 IS COMPLETE REMOVE DISK*
:REPLAY3D
ECHO                          *PLEASE PLACE DISK 4 INTO DRIVE*
ECHO                                HIT ANY KEY TO BEGIN
PAUSE >NUL
IF EXIST HQ GOTO FOURD
GOTO REPLAY3D
:FOURD
ECHO                           COPYING GAME FILES FROM DISK 4
COPY *.* D:\GB2 >NUL
ECHO                         **DISK 4 IS COMPLETE REMOVE DISK**
ECHO                            ** INSTALLATION COMPLETE **
ECHO                               ** TYPE GB2 TO BEGIN **
D:
CD\GB2
GOTO EXIT

:SETUP
IF NOT "%3"=="" GOTO JUMP
CLS
ECHO     -------------------------------------------------------------------------
ECHO                              GHOSTBUSTERS II SETUP MENU
ECHO     -------------------------------------------------------------------------
ECHO                  GHOSTBUSTERS II IS SET UP TO AUTODETECT THE EQUIPMENT 
ECHO                  IN YOUR COMPUTER. THIS MENU ALLOWS YOU TO OVERRIDE THE 
ECHO              AUTODETECT. IF YOU FIND THE PROGRAM IS NOT DETECTING CORRECTLY,
ECHO                             CONTINUE WITH THIS PROCEDURE.
ECHO                      PLEASE PRESS A FUNCTION KEY TO PICK CHOICE
ECHO                            ( F1 ) - TO CONTINUE WITH SETUP
ECHO                            ( F2 ) - TO ABORT SETUP PROCEDURE
:REPLY
REPLY
IF ERRORLEVEL 61 GOTO REPLY
IF ERRORLEVEL 60 GOTO TOPMENU
IF ERRORLEVEL 59 GOTO 2SETUP
GOTO REPLY
:2SETUP
IF NOT "%3"=="" GOTO JUMP
LASTSAVE
:JUMP
CLS
ECHO     -------------------------------------------------------------------------
ECHO                              GHOSTBUSTERS II SETUP MENU
ECHO     -------------------------------------------------------------------------
ECHO                               CHOSEN VIDEO MODE:  %1
ECHO                               CHOSEN SOUND MODE:  %2
ECHO                             CHOSEN INPUT DEVICE:  %3
ECHO                      PLEASE PRESS A FUNCTION KEY TO PICK CHOICE
ECHO                            ( F1 ) - CHANGE VIDEO MODE
ECHO                            ( F2 ) - CHANGE SOUND MODE
ECHO                            ( F3 ) - CHANGE INPUT DEVICE
ECHO                            ( F4 ) - TO SAVE SETUP FILE TO DISK
ECHO                            ( F5 ) - TO ABORT SETUP PROCEDURE 
:REPLY
REPLY
IF ERRORLEVEL 64 GOTO REPLY
IF ERRORLEVEL 63 GOTO TOPMENU
IF ERRORLEVEL 62 GOTO SAVEFILE
IF ERRORLEVEL 61 GOTO INPUT
IF ERRORLEVEL 60 GOTO SOUND
IF ERRORLEVEL 59 GOTO VIDEO
GOTO REPLY

:INPUT
CLS
ECHO     -------------------------------------------------------------------------
ECHO                              GHOSTBUSTERS II INPUT MENU
ECHO     -------------------------------------------------------------------------
ECHO                      PLEASE PRESS A FUNCTION KEY TO PICK CHOICE
ECHO                            ( F1 ) - CHOOSE KEYBOARD
ECHO                            ( F2 ) - CHOOSE JOYSTICK
ECHO                            ( F3 ) - CHOOSE MOUSE
ECHO                            ( F4 ) - KEEP CURRENT CHOICE
:REPLY
REPLY
IF ERRORLEVEL 63 GOTO REPLY
IF ERRORLEVEL 62 GOTO JUMP 
IF ERRORLEVEL 61 GOTO MOUSE
IF ERRORLEVEL 60 GOTO JOYSTICK
IF ERRORLEVEL 59 GOTO KEYBOARD
GOTO REPLY
:MOUSE
RECALL %1 %2 MOUSE
:JOYSTICK
RECALL %1 %2 JOYSTICK
:KEYBOARD
RECALL %1 %2 KEYBOARD
:SOUND
CLS
ECHO     -------------------------------------------------------------------------
ECHO                              GHOSTBUSTERS II SOUND MENU
ECHO     -------------------------------------------------------------------------
ECHO                      PLEASE PRESS A FUNCTION KEY TO PICK CHOICE
ECHO                            ( F1 ) - CHOOSE PC SPEAKER
ECHO                            ( F2 ) - CHOOSE TANDY CHIP
ECHO                            ( F3 ) - CHOOSE ADLIB CARD
ECHO                            ( F4 ) - CHOOSE ROLAND MT-32
ECHO                            ( F5 ) - KEEP CURRENT CHOICE
:REPLY
REPLY
IF ERRORLEVEL 64 GOTO REPLY
IF ERRORLEVEL 63 GOTO JUMP
IF ERRORLEVEL 62 GOTO ROLAND
IF ERRORLEVEL 61 GOTO ADLIB
IF ERRORLEVEL 60 GOTO TANDY
IF ERRORLEVEL 59 GOTO SPEAKER
GOTO REPLY
:ROLAND
RECALL %1 ROLAND %3
:ADLIB
RECALL %1 ADLIB %3
:TANDY
RECALL %1 TANDY %3
:SPEAKER
RECALL %1 SPEAKER %3

:VIDEO
CLS
ECHO     -------------------------------------------------------------------------
ECHO                              GHOSTBUSTERS II VIDEO MENU
ECHO     -------------------------------------------------------------------------
ECHO                      PLEASE PRESS A FUNCTION KEY TO PICK CHOICE
ECHO                            ( F1 ) - CHOOSE CGA 4 COLOR
ECHO                            ( F2 ) - CHOOSE TANDY 16 COLOR
ECHO                            ( F3 ) - CHOOSE EGA 16 COLOR
ECHO                            ( F4 ) - CHOOSE HERCULES
ECHO                            ( F5 ) - KEEP CURRENT CHOICE
:REPLY
REPLY
IF ERRORLEVEL 64 GOTO REPLY
IF ERRORLEVEL 63 GOTO JUMP
IF ERRORLEVEL 62 GOTO HERC
IF ERRORLEVEL 61 GOTO EGA
IF ERRORLEVEL 60 GOTO TGA
IF ERRORLEVEL 59 GOTO CGA
GOTO REPLY
:CGA
RECALL CGA %2 %3
:TGA
RECALL TGA %2 %3
:EGA
RECALL EGA %2 %3
:HERC
RECALL HERC %2 %3

:SAVEFILE
ECHO ECHO OFF >GB2.BAT
ECHO CLS >>GB2.BAT
ECHO GBII %1 %2 %3 >>GB2.BAT
ECHO INSTALL %1 %2 %3 >LASTSAVE.BAT
ECHO                             ** SETUP FILE HAS BEEN SAVED **
ECHO                              ** HIT ANY KEY TO CONTINUE **
PAUSE >NUL
GOTO TOPMENU
:EXIT


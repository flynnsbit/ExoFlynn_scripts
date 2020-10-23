ECHO OFF 
:TOPMENU
IF NOT "%6"=="" GOTO JUMP
LASTSAVE
:JUMP
CLS
ECHO     -------------------------------------------------------------------------
ECHO                           TONGUE OF THE FATMAN SETUP MENU
ECHO     -------------------------------------------------------------------------
ECHO                               CHOSEN VIDEO MODE:  %1
ECHO                        CHOSEN NUMBER OF PLAYERS:  %2
ECHO                             CHOSEN INPUT DEVICE:  %3
ECHO                       CHOSEN SOUND EFFECTS MODE:  %4
ECHO                       CHOSEN SOUND SUPPORT MODE:  %5
ECHO                            CHOSEN MACHINE SPEED:  %6
ECHO                      PLEASE PRESS A FUNCTION KEY TO PICK CHOICE
ECHO                            ( F1 ) - EXPLANATION & INSTRUCTIONS
ECHO                            ( F2 ) - CHANGE VIDEO MODE
ECHO                            ( F3 ) - CHANGE NUMBER OF PLAYERS
ECHO                            ( F4 ) - CHANGE INPUT DEVICE
ECHO                            ( F5 ) - CHANGE SOUND EFFECTS MODE
ECHO                            ( F6 ) - CHANGE SOUND SUPPORT MODE
ECHO                            ( F7 ) - CHANGE MACHINE SPEED
ECHO                            ( F8 ) - TO SAVE SETUP FILE TO DISK
ECHO                            ( F9 ) - TO ABORT SETUP PROCEDURE 
:REPLY
REPLY
IF ERRORLEVEL 68 GOTO REPLY
IF ERRORLEVEL 67 GOTO EXIT
IF ERRORLEVEL 66 GOTO SAVEFILE
IF ERRORLEVEL 65 GOTO SPEED
IF ERRORLEVEL 64 GOTO SOUND
IF ERRORLEVEL 63 GOTO EFFECTS
IF ERRORLEVEL 62 GOTO INPUT
IF ERRORLEVEL 61 GOTO PLAYERS
IF ERRORLEVEL 60 GOTO VIDEO
IF ERRORLEVEL 59 GOTO INST
GOTO REPLY

:INST
CLS
ECHO     -------------------------------------------------------------------------
ECHO                        TONUGE OF THE FATMAN SETUP INSTRUCTIONS
ECHO     -------------------------------------------------------------------------
ECHO        TONGUE OF THE FATMAN WILL ATTEMPT TO AUTODETECT THE DEVICES IN YOUR 
ECHO        COMPUTER. IF YOU ARE NOT GETTING THE RESULTS YOU DESIRE OR YOU WISH
ECHO        TO SET A CERTAIN CONFIGURATION THAT WILL ALWAYS BOOT WITH THE LAST
ECHO         SAVED CONFIGURATION, THEN SET YOUR CHOICES AND PRESS F8 TO SAVE.
ECHO                              EXPLANATION OF CHOICES:
ECHO           1. VIDEO:  FATMAN SUPPORTS CGA, EGA, TANDY, AND VGA GRAPHIC
ECHO                      MODES. CHECK YOUR HARDWARE MANUAL IF YOU ARE UNSURE 
ECHO                      OF WHAT TYPE YOU HAVE.
ECHO           2. GAME:   FATMAN OFFERS BOTH ONE AND TWO PLAYER GAMES. FATMAN
ECHO                      ALSO OFFERS A SELF-RUNNING DEMO MODE.
ECHO           3. INPUT:  FATMAN SUPPORT JOYSTICKS IF YOU HAVE THEM, OTHERWISE
ECHO                      IT DEFAULTS TO KEYBOARD.
ECHO           4. SFX:    IF YOU CHOOSE THIS OPTION DIGITIZED SOUND EFFECTS WILL
ECHO                      BE USED DURING FIGHTING INSTEAD OF MUSIC. 
ECHO           5. SOUND:  THIS OPTION ALLOWS YOU TO PICK FROM A WIDE VARIETY
ECHO                      OF SOUND BOARDS AND BUILT-IN CHIPS.
ECHO           6. SPEED:  THIS OPTION IS TO ALLOW USERS WITH SLOW MACHINES
ECHO                      TO PICK THE SLOW OPTION WHICH WILL SHUT OFF EXTRA
ECHO                      ANIMATION AND SCROLLING TO INCREASE SPEED. USERS
ECHO                      WITH 286 AND ABOVE SHOULD CHOOSE THE FAST OPTION
ECHO     -------------------------------------------------------------------------
ECHO                              ** HIT ANY KEY TO CONTINUE **
PAUSE >NUL
GOTO JUMP

:SPEED
CLS
ECHO     -------------------------------------------------------------------------
ECHO                            TONUGE OF THE FATMAN SPEED MENU
ECHO     -------------------------------------------------------------------------
ECHO                      PLEASE PRESS A FUNCTION KEY TO PICK CHOICE
ECHO                            ( F1 ) - CHOOSE FAST MODE
ECHO                            ( F2 ) - CHOOSE SLOW MODE
ECHO                            ( F3 ) - KEEP CURRENT CHOICE
:REPLY
REPLY
IF ERRORLEVEL 61 GOTO REPLY
IF ERRORLEVEL 60 GOTO SLOW
IF ERRORLEVEL 59 GOTO FAST
GOTO REPLY
:SLOW
RECALL %1 %2 %3 %4 %5 /SLOW
:FAST
RECALL %1 %2 %3 %4 %5 /FAST

:EFFECTS
CLS
ECHO     -------------------------------------------------------------------------
ECHO                        TONUGE OF THE FATMAN SOUND EFFECTS MENU
ECHO     -------------------------------------------------------------------------
ECHO                      PLEASE PRESS A FUNCTION KEY TO PICK CHOICE
ECHO                          ( F1 ) - CHOOSE SOUND EFFECTS MODE
ECHO                          ( F2 ) - CHOOSE NO SOUND EFFECTS MODE
ECHO                          ( F3 ) - KEEP CURRENT CHOICE
:REPLY
REPLY
IF ERRORLEVEL 61 GOTO REPLY
IF ERRORLEVEL 60 GOTO NOSFX
IF ERRORLEVEL 59 GOTO SFX
GOTO REPLY
:NOSFX
RECALL %1 %2 %3 /NOSFX %5 %6
:SFX
RECALL %1 %2 %3 /SFX %5 %6

:PLAYERS
CLS
ECHO     -------------------------------------------------------------------------
ECHO                           TONUGE OF THE FATMAN PLAYERS MENU
ECHO     -------------------------------------------------------------------------
ECHO                      PLEASE PRESS A FUNCTION KEY TO PICK CHOICE
ECHO                            ( F1 ) - CHOOSE ONE PLAYER MODE
ECHO                            ( F2 ) - CHOOSE TWO PLAYER MODE
ECHO                            ( F3 ) - CHOOSE DEMO MODE
ECHO                            ( F4 ) - KEEP CURRENT CHOICE
:REPLY
REPLY
IF ERRORLEVEL 62 GOTO REPLY
IF ERRORLEVEL 61 GOTO DEMO
IF ERRORLEVEL 60 GOTO TWO
IF ERRORLEVEL 59 GOTO ONE
GOTO REPLY
:ONE
RECALL %1 /ONE %3 %4 %5 %6
:TWO
RECALL %1 /TWO %3 %4 %5 %6
:DEMO
RECALL %1 /DEMO %3 %4 %5 %6


:INPUT
CLS
ECHO     -------------------------------------------------------------------------
ECHO                            TONUGE OF THE FATMAN INPUT MENU
ECHO     -------------------------------------------------------------------------
ECHO                      PLEASE PRESS A FUNCTION KEY TO PICK CHOICE
ECHO                            ( F1 ) - CHOOSE KEYBOARD
ECHO                            ( F2 ) - CHOOSE JOYSTICK
ECHO                            ( F3 ) - KEEP CURRENT CHOICE
:REPLY
REPLY
IF ERRORLEVEL 62 GOTO REPLY
IF ERRORLEVEL 61 GOTO JUMP 
IF ERRORLEVEL 60 GOTO JOYSTICK
IF ERRORLEVEL 59 GOTO KEYBOARD
GOTO REPLY
:JOYSTICK
RECALL %1 %2 /JOY %4 %5 %6
:KEYBOARD
RECALL %1 %2 /NOJOY %4 %5 %6

:SOUND
CLS
ECHO     -------------------------------------------------------------------------
ECHO                            TONGUE OF THE FATMAN SOUND MENU
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
RECALL %1 %2 %3 %4 /ROLAND %6
:ADLIB
RECALL %1 %2 %3 %4 /ADLIB %6
:TANDY
RECALL %1 %2 %3 %4 /TANDY %6
:SPEAKER
RECALL %1 %2 %3 %4 /SPEAKER %6

:VIDEO
CLS
ECHO     -------------------------------------------------------------------------
ECHO                            TONGUE OF THE FATMAN VIDEO MENU  
ECHO     -------------------------------------------------------------------------
ECHO                      PLEASE PRESS A FUNCTION KEY TO PICK CHOICE
ECHO                            ( F1 ) - CHOOSE CGA 4 COLOR
ECHO                            ( F2 ) - CHOOSE TANDY 16 COLOR
ECHO                            ( F3 ) - CHOOSE EGA 16 COLOR
ECHO                            ( F4 ) - CHOOSE MCGA/VGA 256 COLOR
ECHO                            ( F5 ) - KEEP CURRENT CHOICE
:REPLY
REPLY
IF ERRORLEVEL 64 GOTO REPLY
IF ERRORLEVEL 63 GOTO JUMP
IF ERRORLEVEL 62 GOTO VGA
IF ERRORLEVEL 61 GOTO EGA
IF ERRORLEVEL 60 GOTO TGA
IF ERRORLEVEL 59 GOTO CGA
GOTO REPLY
:CGA
RECALL /CGA %2 %3 %4 %5 %6
:TGA
RECALL /TDY %2 %3 %4 %5 %6
:EGA
RECALL /EGA %2 %3 %4 %5 %6
:VGA
RECALL /VGA %2 %3 %4 %5 %6

:SAVEFILE
ECHO %1>>PARMS.DAT
ECHO %2>>PARMS.DAT
ECHO %3>>PARMS.DAT
ECHO %4>>PARMS.DAT
ECHO %5>>PARMS.DAT
ECHO %6>>PARMS.DAT
ECHO SETUP %1 %2 %3 %4 %5 %6 >LASTSAVE.BAT
ECHO                             ** SETUP FILE HAS BEEN SAVED **
ECHO                              ** HIT ANY KEY TO CONTINUE **
PAUSE >NUL
:EXIT


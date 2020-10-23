
@echo off

cls
echo.
echo.
echo To continue in English, press the letter "E"
echo.
echo To continue in French,  press the letter "F"
echo.
echo To continue in German,  press the letter "G"
echo.
echo To quit installation,   press the letter "X"
echo.

what c "Enter a letter > " efgx

if not exist c:\what.exe copy what.exe c:\
if "%what%" == "E" goto QGAENGLISH
if "%what%" == "F" goto QGAFRENCH
if "%what%" == "G" goto QGAGERMAN
if "%what%" == "X" goto EXIT
if "%what%" == "" goto EXIT


:QGAENGLISH
if exist wedyjest goto SHOWENGLISH
cls
echo You probably typed "D:\INSTALL".
echo.
echo You should have typed "D:", pressed ENTER, then typed "INSTALL"
echo.
echo This install must be run from the Quest for Glory Anthology CD #1's
echo root directory.
echo.
echo Go to the root directory of your QFG Anthology CD #1
echo and run this install again.
pause
goto EXIT

:SHOWENGLISH
cls
echo              ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo              º           Quest for Glory Anthology CD             º
echo              ÇÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¶
echo              º    Press the appropriate letter to install the     º
echo              º    game of your choice.  The (number) in the       º
echo              º    parenthesis is the required hard drive space    º
echo              º                                                    º
echo              º     A. QFG1 original 16 color version     (3 meg)  º
echo              º     B. QFG1 remake 256 color version      (7 meg)  º
echo              º     C. QFG2                               (5 meg)  º
echo              º     D. QFG3 English                       (8 meg)  º
echo              º     E. QFG3 French                        (8 meg)  º
echo              º     F. QFG3 German                        (8 meg)  º
echo              º     G. QFG3 Italian                       (8 meg)  º
echo              º     H. QFG3 Spanish                       (8 meg)  º
echo              º     I. QFG4 German,  non-voice version   (15 meg)  º
echo              º     J. QFG4 English, voice version  (1 or 20 meg)  º
echo              º     K. QFG5 Demo                                   º
echo              º                                                    º
echo              º     M. Display README file                         º
echo              º     N. Make a boot disk                            º
echo              º     X. Press X to exit to DOS                      º
echo              ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
echo.

what c "Enter a letter > " abcdefghijkmnx

if not exist c:\what.exe copy what.exe c:\
if "%what%" == "A" goto QG1OLDENG
if "%what%" == "B" goto QG1NEWENG
if "%what%" == "C" goto QG2ENG
if "%what%" == "D" goto QG3EENG
if "%what%" == "E" goto QG3FENG
if "%what%" == "F" goto QG3GENG
if "%what%" == "G" goto QG3IENG
if "%what%" == "H" goto QG3SENG
if "%what%" == "I" goto QG4G35ENG
if "%what%" == "J" goto QG4CDENG
if "%what%" == "K" goto QG5MSG
if "%what%" == "M" goto READMEENG
if "%what%" == "N" goto MAKEBDENG
if "%what%" == "X" goto EXIT
if "%what%" == "" goto EXIT


:QG5MSG
cls
echo.
echo The Demo for Quest for Glory 5: Dragonfire must be installed
echo from the other CD in this Quest for Glory Collection.
echo.
echo Please quit this INSTALL, insert the other CD, and run SETUP to
echo install the QFG5 demo.
echo.
echo Thanks!
echo.
pause
goto SHOWENGLISH


:QG1OLDENG
cls
echo.
echo Installing Quest for Glory 1 original version
echo.
what c "Enter your hard drive letter > " cdefghijklmnopqrstuvwxyz
if "%what%" == "" goto exit
echo.
rem makepath sometimes bombs, so use DOS 
md %what%:\SIERRA
makepath %what%:\SIERRA\QGANTH
makepath %what%:\SIERRA\QGANTH\QG1OLD
if errorlevel 1 goto noMakeEng
cd %what%:\SIERRA\QGANTH\QG1OLD
echo Copying files--please wait
copy QG1OLD\*.*  %what%:\sierra\QGANTH\QG1OLD\*.*
copy QG1OLD\QG1OLD.BAT  %what%:\sierra\QGANTH\QG1OLD.BAT
set ddir=%what%:\sierra\QGANTH\QG1OLD
echo videoDrv = EGA320.DRV                       > %ddir%\resource.cfg
echo.
echo Please select your music card for QFG1 original:
echo.
echo 1. Soundblaster or compatible (including Adlib)
echo 2. Roland MT-32, MT-100, or LAPC-1 sound module
echo 3. IBM PC Internal Speaker
echo.
what c "Enter a number > " 123
if "%what%"=="1" echo soundDrv=ADL.DRV          >> %ddir%\resource.cfg
if "%what%"=="2" echo soundDrv=MT32.DRV         >> %ddir%\resource.cfg
if "%what%"=="3" echo soundDrv=STD.DRV          >> %ddir%\resource.cfg
echo kbdDrv   = IBMKBD.DRV                      >> %ddir%\resource.cfg
echo mouseDrv = YES                             >> %ddir%\resource.cfg
echo.
echo Quest for Glory 1 original version installation is complete.
echo.
echo To play QG1, go to %ddir%\ and type: QG1OLD
pause
goto SHOWENGLISH


:QG1NEWENG
cls
echo.
echo Installing Quest for Glory 1 remake version
echo.
what c "Enter your hard drive letter > " cdefghijklmnopqrstuvwxyz
if "%what%" == "" goto exit
echo.
rem makepath sometimes bombs, so use DOS 
md %what%:\SIERRA
makepath %what%:\SIERRA\QGANTH
makepath %what%:\SIERRA\QGANTH\QG1NEW
if errorlevel 1 goto noMakeEng
cd %what%:\SIERRA\QGANTH\QG1NEW
echo Copying files--please wait
copy QG1NEW\*.*  %what%:\sierra\QGANTH\QG1NEW\*.*
copy QG1NEW\QG1NEW.BAT  %what%:\sierra\QGANTH\QG1NEW.BAT
set ddir=%what%:\sierra\QGANTH\QG1NEW
echo videoDrv=VGA320.DRV                        > %ddir%\resource.cfg
echo Please select your music card for QFG1 Remake:
echo.
echo 1. Soundblaster or compatible (including Adlib)
echo 2. General MIDI
echo 3. Roland MT-32 or compatible
echo 4. IBM PC Internal Speaker
echo.
what c "Enter a number > " 1234
if "%what%"=="1" echo soundDrv=ADL.DRV 220      >> %ddir%\resource.cfg
if "%what%"=="2" echo soundDrv=GENMIDI.DRV      >> %ddir%\resource.cfg
if "%what%"=="3" echo soundDrv=MT32.DRV         >> %ddir%\resource.cfg
if "%what%"=="4" echo soundDrv=STD.DRV          >> %ddir%\resource.cfg
echo.
echo Please select your sound effects card for QFG1 Remake:
echo.
echo 1. Soundblaster or compatible
echo 2. Pro Audio Spectrum or compatible
echo 3. Disney Sound Source
echo 4. None
echo.
what c "Enter a number > " 1234
if "%what%"=="1" echo audioDrv=AUDBLAST.DRV 220 >> %ddir%\resource.cfg
if "%what%"=="2" echo audioDrv=AUDPRO.DRV       >> %ddir%\resource.cfg
if "%what%"=="3" echo audioDrv=AUDDISNY.DRV     >> %ddir%\resource.cfg
if "%what%"=="4" echo audioDrv=AUDNONE.DRV      >> %ddir%\resource.cfg
echo joyDrv = NO                                >> %ddir%\resource.cfg
echo kbdDrv = IBMKBD.DRV                        >> %ddir%\resource.cfg
echo mouseDrv = STDMOUSE.DRV                    >> %ddir%\resource.cfg
echo memoryDrv = NO                             >> %ddir%\resource.cfg
echo minHunk = 223k                             >> %ddir%\resource.cfg
echo directory = \SIERRA\QGANTH\QG1NEW          >> %ddir%\resource.cfg
echo cmd = HERO                                 >> %ddir%\resource.cfg
echo language = 1                               >> %ddir%\resource.cfg
echo.
echo Quest for Glory 1 Remake version installation is complete.
echo.
echo To play QG1NEW, go to %ddir%\ and type: QG1NEW
pause
goto SHOWENGLISH


:QG2ENG
cls
echo.
echo Installing Quest for Glory 2
echo.
what c "Enter your hard drive letter > " cdefghijklmnopqrstuvwxyz
if "%what%" == "" goto exit
echo.
rem makepath sometimes bombs, so use DOS 
md %what%:\SIERRA
makepath %what%:\SIERRA\QGANTH
makepath %what%:\SIERRA\QGANTH\QG2
if errorlevel 1 goto noMakeEng
cd %what%:\SIERRA\QGANTH\QG2
echo Copying files--please wait
copy QG2\*.*  %what%:\sierra\QGANTH\QG2\*.*
copy QG2\QG2.BAT  %what%:\sierra\QGANTH\QG2.BAT
set ddir=%what%:\sierra\QGANTH\QG2
echo videoDrv = EGA320.DRV                       > %ddir%\resource.cfg
echo.
echo Please select your music card for QFG2:
echo.
echo 1. Soundblaster or compatible (including Adlib)
echo 2. Soundblaster alternate (if choice #1 doesn't work)
echo 3. Roland MT-32, MT-100, or LAPC-1 sound module
echo 4. IBM PC Internal Speaker
echo.
what c "Enter a number > " 1234
if "%what%"=="1" echo soundDrv=ADL.DRV          >> %ddir%\resource.cfg
if "%what%"=="2" echo soundDrv=SNDBLAST.DRV     >> %ddir%\resource.cfg
if "%what%"=="3" echo soundDrv=MT32.DRV         >> %ddir%\resource.cfg
if "%what%"=="4" echo soundDrv=STD.DRV          >> %ddir%\resource.cfg
echo kbdDrv   = IBMKBD.DRV                      >> %ddir%\resource.cfg
echo mouseDrv = YES                             >> %ddir%\resource.cfg
echo.
echo Quest for Glory 2 installation is complete.
echo.
echo To play QG2, go to %ddir%\ and type: QG2
pause
goto SHOWENGLISH


:QG3EENG
cls
echo.
echo Installing Quest for Glory 3 English version
echo.
what c "Enter your hard drive letter > " cdefghijklmnopqrstuvwxyz
if "%what%" == "" goto exit
echo.
rem makepath sometimes bombs, so use DOS 
md %what%:\SIERRA
makepath %what%:\SIERRA\QGANTH
makepath %what%:\SIERRA\QGANTH\QG3E
if errorlevel 1 goto noMakeEng
cd %what%:\SIERRA\QGANTH\QG3E
echo Copying files--please wait
copy QG3E\*.*  %what%:\sierra\QGANTH\QG3E\*.*
copy QG3E\QG3E.BAT  %what%:\sierra\QGANTH\QG3E.BAT
set ddir=%what%:\sierra\QGANTH\QG3E
echo videoDrv=VGA320.DRV                        > %ddir%\resource.cfg
echo Please select your music card for QFG3:
echo.
echo 1. Soundblaster or compatible (including Adlib)
echo 2. General MIDI
echo 3. Roland MT-32 or compatible
echo 4. Pro Audio Spectrum
echo 5. IBM PC Internal Speaker
echo.
what c "Enter a number > " 12345
if "%what%"=="1" echo soundDrv=ADL.DRV          >> %ddir%\resource.cfg
if "%what%"=="2" echo soundDrv=GENMIDI.DRV      >> %ddir%\resource.cfg
if "%what%"=="3" echo soundDrv=MT32.DRV         >> %ddir%\resource.cfg
if "%what%"=="4" echo soundDrv=PROAUDIO.DRV     >> %ddir%\resource.cfg
if "%what%"=="5" echo soundDrv=STD.DRV          >> %ddir%\resource.cfg
echo.
echo Please select your sound effects card for QFG3:
echo.
echo 1. Soundblaster or compatible
echo 2. Mediavision Thunderboard or compatible
echo 3. Pro Audio Spectrum
echo 4. Disney Sound Source
echo 5. None
echo.
what c "Enter a number > " 12345
if "%what%"=="1" echo audioDrv=AUDBLAST.DRV     >> %ddir%\resource.cfg
if "%what%"=="2" echo audioDrv=AUDTHUND.DRV     >> %ddir%\resource.cfg
if "%what%"=="3" echo audioDrv=AUDPRO.DRV       >> %ddir%\resource.cfg
if "%what%"=="4" echo audioDrv=AUDDISNY.DRV     >> %ddir%\resource.cfg
if "%what%"=="5" echo audioDrv=AUDNONE.DRV      >> %ddir%\resource.cfg
echo joyDrv = NO                                >> %ddir%\resource.cfg
echo kbdDrv = IBMKBD.DRV                        >> %ddir%\resource.cfg
echo mouseDrv = STDMOUSE.DRV                    >> %ddir%\resource.cfg
echo memoryDrv = NO                             >> %ddir%\resource.cfg
echo directory = \SIERRA\QGANTH\QG3E            >> %ddir%\resource.cfg
echo minHunk = 223k                             >> %ddir%\resource.cfg
echo.
echo Quest for Glory 3 English version installation is complete.
echo.
echo To play QG3E, go to %ddir%\ and type: QG3E
pause
goto SHOWENGLISH


:QG3FENG
cls
echo.
echo Installing Quest for Glory 3 French version
echo.
what c "Enter your hard drive letter > " cdefghijklmnopqrstuvwxyz
if "%what%" == "" goto exit
echo.
rem makepath sometimes bombs, so use DOS 
md %what%:\SIERRA
makepath %what%:\SIERRA\QGANTH
makepath %what%:\SIERRA\QGANTH\QG3F
if errorlevel 1 goto noMakeEng
cd %what%:\SIERRA\QGANTH\QG3F
echo Copying files--please wait
copy QG3F\*.*  %what%:\sierra\QGANTH\QG3F\*.*
copy QG3F\QG3F.BAT  %what%:\sierra\QGANTH\QG3F.BAT
set ddir=%what%:\sierra\QGANTH\QG3F
echo videoDrv=VGA320.DRV                        > %ddir%\resource.cfg
echo Please select your music card for QFG3:
echo.
echo 1. Soundblaster or compatible (including Adlib)
echo 2. General MIDI
echo 3. Roland MT-32 or compatible
echo 4. Pro Audio Spectrum
echo 5. IBM PC Internal Speaker
echo.
what c "Enter a number > " 12345
if "%what%"=="1" echo soundDrv=ADL.DRV          >> %ddir%\resource.cfg
if "%what%"=="2" echo soundDrv=GENMIDI.DRV      >> %ddir%\resource.cfg
if "%what%"=="3" echo soundDrv=MT32.DRV         >> %ddir%\resource.cfg
if "%what%"=="4" echo soundDrv=PROAUDIO.DRV     >> %ddir%\resource.cfg
if "%what%"=="5" echo soundDrv=STD.DRV          >> %ddir%\resource.cfg
echo.
echo Please select your sound effects card for QFG3:
echo.
echo 1. Soundblaster or compatible
echo 2. Mediavision Thunderboard or compatible
echo 3. Pro Audio Spectrum
echo 4. Disney Sound Source
echo 5. None
echo.
what c "Enter a number > " 12345
if "%what%"=="1" echo audioDrv=AUDBLAST.DRV     >> %ddir%\resource.cfg
if "%what%"=="2" echo audioDrv=AUDTHUND.DRV     >> %ddir%\resource.cfg
if "%what%"=="3" echo audioDrv=AUDPRO.DRV       >> %ddir%\resource.cfg
if "%what%"=="4" echo audioDrv=AUDDISNY.DRV     >> %ddir%\resource.cfg
if "%what%"=="5" echo audioDrv=AUDNONE.DRV      >> %ddir%\resource.cfg
echo joyDrv = NO                                >> %ddir%\resource.cfg
echo kbdDrv = IBMKBD.DRV                        >> %ddir%\resource.cfg
echo mouseDrv = STDMOUSE.DRV                    >> %ddir%\resource.cfg
echo memoryDrv = NO                             >> %ddir%\resource.cfg
echo directory = \SIERRA\QGANTH\QG3F            >> %ddir%\resource.cfg
echo minHunk = 223k                             >> %ddir%\resource.cfg
echo.
echo Quest for Glory 3 French version installation is complete.
echo.
echo To play QG3F, go to %ddir%\ and type: QG3F
pause
goto SHOWENGLISH


:QG3GENG
cls
echo.
echo Installing Quest for Glory 3 German version
echo.
what c "Enter your hard drive letter > " cdefghijklmnopqrstuvwxyz
if "%what%" == "" goto exit
echo.
rem makepath sometimes bombs, so use DOS 
md %what%:\SIERRA
makepath %what%:\SIERRA\QGANTH
makepath %what%:\SIERRA\QGANTH\QG3G
if errorlevel 1 goto noMakeEng
cd %what%:\SIERRA\QGANTH\QG3G
echo Copying files--please wait
copy QG3G\*.*  %what%:\sierra\QGANTH\QG3G\*.*
copy QG3G\QG3G.BAT  %what%:\sierra\QGANTH\QG3G.BAT
set ddir=%what%:\sierra\QGANTH\QG3G
echo videoDrv=VGA320.DRV                        > %ddir%\resource.cfg
echo Please select your music card for QFG3:
echo.
echo 1. Soundblaster or compatible (including Adlib)
echo 2. General MIDI
echo 3. Roland MT-32 or compatible
echo 4. Pro Audio Spectrum
echo 5. IBM PC Internal Speaker
echo.
what c "Enter a number > " 12345
if "%what%"=="1" echo soundDrv=ADL.DRV          >> %ddir%\resource.cfg
if "%what%"=="2" echo soundDrv=GENMIDI.DRV      >> %ddir%\resource.cfg
if "%what%"=="3" echo soundDrv=MT32.DRV         >> %ddir%\resource.cfg
if "%what%"=="4" echo soundDrv=PROAUDIO.DRV     >> %ddir%\resource.cfg
if "%what%"=="5" echo soundDrv=STD.DRV          >> %ddir%\resource.cfg
echo.
echo Please select your sound effects card for QFG3:
echo.
echo 1. Soundblaster or compatible
echo 2. Mediavision Thunderboard or compatible
echo 3. Pro Audio Spectrum
echo 4. Disney Sound Source
echo 5. None
echo.
what c "Enter a number > " 12345
if "%what%"=="1" echo audioDrv=AUDBLAST.DRV     >> %ddir%\resource.cfg
if "%what%"=="2" echo audioDrv=AUDTHUND.DRV     >> %ddir%\resource.cfg
if "%what%"=="3" echo audioDrv=AUDPRO.DRV       >> %ddir%\resource.cfg
if "%what%"=="4" echo audioDrv=AUDDISNY.DRV     >> %ddir%\resource.cfg
if "%what%"=="5" echo audioDrv=AUDNONE.DRV      >> %ddir%\resource.cfg
echo joyDrv = NO                                >> %ddir%\resource.cfg
echo kbdDrv = IBMKBD.DRV                        >> %ddir%\resource.cfg
echo mouseDrv = STDMOUSE.DRV                    >> %ddir%\resource.cfg
echo memoryDrv = NO                             >> %ddir%\resource.cfg
echo directory = \SIERRA\QGANTH\QG3G            >> %ddir%\resource.cfg
echo minHunk = 223k                             >> %ddir%\resource.cfg
echo.
echo Quest for Glory 3 German version installation is complete.
echo.
echo To play QG3G, go to %ddir%\ and type: QG3G
pause
goto SHOWENGLISH


:QG3IENG
cls
echo.
echo Installing Quest for Glory 3 Italian version
echo.
what c "Enter your hard drive letter > " cdefghijklmnopqrstuvwxyz
if "%what%" == "" goto exit
echo.
rem makepath sometimes bombs, so use DOS 
md %what%:\SIERRA
makepath %what%:\SIERRA\QGANTH
makepath %what%:\SIERRA\QGANTH\QG3I
if errorlevel 1 goto noMakeEng
cd %what%:\SIERRA\QGANTH\QG3I
echo Copying files--please wait
copy QG3I\*.*  %what%:\sierra\QGANTH\QG3I\*.*
copy QG3I\QG3I.BAT  %what%:\sierra\QGANTH\QG3I.BAT
set ddir=%what%:\sierra\QGANTH\QG3I
echo videoDrv=VGA320.DRV                        > %ddir%\resource.cfg
echo Please select your music card for QFG3:
echo.
echo 1. Soundblaster or compatible (including Adlib)
echo 2. General MIDI
echo 3. Roland MT-32 or compatible
echo 4. Pro Audio Spectrum
echo 5. IBM PC Internal Speaker
echo.
what c "Enter a number > " 12345
if "%what%"=="1" echo soundDrv=ADL.DRV          >> %ddir%\resource.cfg
if "%what%"=="2" echo soundDrv=GENMIDI.DRV      >> %ddir%\resource.cfg
if "%what%"=="3" echo soundDrv=MT32.DRV         >> %ddir%\resource.cfg
if "%what%"=="4" echo soundDrv=PROAUDIO.DRV     >> %ddir%\resource.cfg
if "%what%"=="5" echo soundDrv=STD.DRV          >> %ddir%\resource.cfg
echo.
echo Please select your sound effects card for QFG3:
echo.
echo 1. Soundblaster or compatible
echo 2. Mediavision Thunderboard or compatible
echo 3. Pro Audio Spectrum
echo 4. Disney Sound Source
echo 5. None
echo.
what c "Enter a number > " 12345
if "%what%"=="1" echo audioDrv=AUDBLAST.DRV     >> %ddir%\resource.cfg
if "%what%"=="2" echo audioDrv=AUDTHUND.DRV     >> %ddir%\resource.cfg
if "%what%"=="3" echo audioDrv=AUDPRO.DRV       >> %ddir%\resource.cfg
if "%what%"=="4" echo audioDrv=AUDDISNY.DRV     >> %ddir%\resource.cfg
if "%what%"=="5" echo audioDrv=AUDNONE.DRV      >> %ddir%\resource.cfg
echo joyDrv = NO                                >> %ddir%\resource.cfg
echo kbdDrv = IBMKBD.DRV                        >> %ddir%\resource.cfg
echo mouseDrv = STDMOUSE.DRV                    >> %ddir%\resource.cfg
echo memoryDrv = NO                             >> %ddir%\resource.cfg
echo directory = \SIERRA\QGANTH\QG3I            >> %ddir%\resource.cfg
echo minHunk = 223k                             >> %ddir%\resource.cfg
echo.
echo Quest for Glory 3 Italian version installation is complete.
echo.
echo To play QG3I, go to %ddir%\ and type: QG3I
pause
goto SHOWENGLISH


:QG3SENG
cls
echo.
echo Installing Quest for Glory 3 Spanish version
echo.
what c "Enter your hard drive letter > " cdefghijklmnopqrstuvwxyz
if "%what%" == "" goto exit
echo.
rem makepath sometimes bombs, so use DOS 
md %what%:\SIERRA
makepath %what%:\SIERRA\QGANTH
makepath %what%:\SIERRA\QGANTH\QG3S
if errorlevel 1 goto noMakeEng
cd %what%:\SIERRA\QGANTH\QG3S
echo Copying files--please wait
copy QG3S\*.*  %what%:\sierra\QGANTH\QG3S\*.*
copy QG3S\QG3S.BAT  %what%:\sierra\QGANTH\QG3S.BAT
set ddir=%what%:\sierra\QGANTH\QG3S
echo videoDrv=VGA320.DRV                        > %ddir%\resource.cfg
echo Please select your music card for QFG3:
echo.
echo 1. Soundblaster or compatible (including Adlib)
echo 2. General MIDI
echo 3. Roland MT-32 or compatible
echo 4. Pro Audio Spectrum
echo 5. IBM PC Internal Speaker
echo.
what c "Enter a number > " 12345
if "%what%"=="1" echo soundDrv=ADL.DRV          >> %ddir%\resource.cfg
if "%what%"=="2" echo soundDrv=GENMIDI.DRV      >> %ddir%\resource.cfg
if "%what%"=="3" echo soundDrv=MT32.DRV         >> %ddir%\resource.cfg
if "%what%"=="4" echo soundDrv=PROAUDIO.DRV     >> %ddir%\resource.cfg
if "%what%"=="5" echo soundDrv=STD.DRV          >> %ddir%\resource.cfg
echo.
echo Please select your sound effects card for QFG3:
echo.
echo 1. Soundblaster or compatible
echo 2. Mediavision Thunderboard or compatible
echo 3. Pro Audio Spectrum
echo 4. Disney Sound Source
echo 5. None
echo.
what c "Enter a number > " 12345
if "%what%"=="1" echo audioDrv=AUDBLAST.DRV     >> %ddir%\resource.cfg
if "%what%"=="2" echo audioDrv=AUDTHUND.DRV     >> %ddir%\resource.cfg
if "%what%"=="3" echo audioDrv=AUDPRO.DRV       >> %ddir%\resource.cfg
if "%what%"=="4" echo audioDrv=AUDDISNY.DRV     >> %ddir%\resource.cfg
if "%what%"=="5" echo audioDrv=AUDNONE.DRV      >> %ddir%\resource.cfg
echo joyDrv = NO                                >> %ddir%\resource.cfg
echo kbdDrv = IBMKBD.DRV                        >> %ddir%\resource.cfg
echo mouseDrv = STDMOUSE.DRV                    >> %ddir%\resource.cfg
echo memoryDrv = NO                             >> %ddir%\resource.cfg
echo directory = \SIERRA\QGANTH\QG3S            >> %ddir%\resource.cfg
echo minHunk = 223k                             >> %ddir%\resource.cfg
echo.
echo Quest for Glory 3 Spanish version installation is complete.
echo.
echo To play QG3S, go to %ddir%\ and type: QG3S
pause
goto SHOWENGLISH


:QG4G35ENG
cls
echo.
echo Installing Quest for Glory 4 German floppy non-talking version
echo.
what c "Enter your hard drive letter > " cdefghijklmnopqrstuvwxyz
if "%what%" == "" goto exit
echo.
rem makepath sometimes bombs, so use DOS 
md %what%:\SIERRA
makepath %what%:\SIERRA\QGANTH
makepath %what%:\SIERRA\QGANTH\QG4G35
if errorlevel 1 goto noMakeEng
cd %what%:\SIERRA\QGANTH\QG4G35
echo Copying files--please wait
copy QG4G35\*.*  %what%:\sierra\QGANTH\QG4G35\*.*
copy QG4G35\QG4G35.BAT  %what%:\sierra\QGANTH\QG4G35.BAT
set ddir=%what%:\sierra\QGANTH\QG4G35
echo videoDrv=VGA.DRV                        > %ddir%\resource.cfg
echo Please select your music card for QFG4 German floppy version:
echo.
echo 1. Soundblaster or compatible (including Adlib)
echo 2. Soundblaster alternate (if choice #1 doesn't work)
echo 3. Soundblaster Pro
echo 4. General MIDI
echo 5. Roland MT-32 or compatible
echo 6. Pro Audio Spectrum
echo 7. Microsoft Sound System
echo 8. IBM PC Internal Speaker
echo 9. No music 
echo.
what c "Enter a number > " 123456789
if "%what%"=="1" echo soundDrv=ADL.DRV          >> %ddir%\resource.cfg
if "%what%"=="2" echo soundDrv=SADL.DRV         >> %ddir%\resource.cfg
if "%what%"=="3" echo soundDrv=SBPRO.DRV        >> %ddir%\resource.cfg
if "%what%"=="4" echo soundDrv=GENMIDI.DRV      >> %ddir%\resource.cfg
if "%what%"=="5" echo soundDrv=MT32.DRV         >> %ddir%\resource.cfg
if "%what%"=="6" echo soundDrv=PROAUDIO.DRV     >> %ddir%\resource.cfg
if "%what%"=="7" echo soundDrv=MICROSOF.DRV     >> %ddir%\resource.cfg
if "%what%"=="8" echo soundDrv=STD.DRV          >> %ddir%\resource.cfg
if "%what%"=="9" echo soundDrv=MIDNONE.DRV      >> %ddir%\resource.cfg
echo.
echo Please select your sound effects card for QFG4 German floppy version:
echo.
echo 1. Soundblaster or compatible
echo 2. Mediavision Thunderboard or compatible
echo 3. Pro Audio Spectrum 16
echo 4. Pro Audio Spectrum
echo 5. Microsoft Sound System
echo 6. No sound effects
echo.
what c "Enter a number > " 123456
if "%what%"=="1" echo audioDrv=DACBLAST.DRV     >> %ddir%\resource.cfg
if "%what%"=="2" echo audioDrv=DACTHUND.DRV     >> %ddir%\resource.cfg
if "%what%"=="3" echo audioDrv=DACPRO.DRV       >> %ddir%\resource.cfg
if "%what%"=="4" echo audioDrv=DACPRO16.DRV     >> %ddir%\resource.cfg
if "%what%"=="5" echo audioDrv=DACMSSYS.DRV     >> %ddir%\resource.cfg
if "%what%"=="6" echo audioDrv=DACNONE.DRV      >> %ddir%\resource.cfg
echo joyDrv = NO                                >> %ddir%\resource.cfg
echo cmd = SHADOWS                              >> %ddir%\resource.cfg
echo space = 15000                              >> %ddir%\resource.cfg
echo mouseDrv = NONE                            >> %ddir%\resource.cfg
echo memoryDrv = NONE                           >> %ddir%\resource.cfg
echo minMemory = 1500k                          >> %ddir%\resource.cfg
echo audiosize = 26k                            >> %ddir%\resource.cfg
echo brightness = 0                             >> %ddir%\resource.cfg
echo language = 49                              >> %ddir%\resource.cfg
echo patchdir = .\                             >> %ddir%\resource.cfg
echo.
echo Quest for Glory 4 German floppy version installation is complete.
echo.
echo To play QG4G35, go to %ddir%\ and type: QG4G35
pause
goto SHOWENGLISH


:QG4CDENG
cls
echo.
echo Installing Quest for Glory 4 English voice version
echo.
inst.exe /f
echo.
what c "Enter your CD-ROM drive letter > " defghijklmnopqrstuvwxyz
%what%:\
set cdrom=%what%
echo.
what c "Enter your hard drive letter > " cdefghijklmnopqrstuvwxyz
echo.
rem makepath sometimes bombs, so use DOS 
md %what%:\SIERRA
makepath %what%:\SIERRA\QGANTH
makepath %what%:\SIERRA\QGANTH\SAVES
makepath %what%:\SIERRA\QGANTH\SAVES\ERROR52
makepath %what%:\SIERRA\QGANTH\SAVES\ERROR52\DOS
if errorlevel 1 goto noMakeEng
cd %what%:\SIERRA\QGANTH\SAVES\ERROR52\DOS
echo Copying files--please wait
copy %cdrom%:\SAVES\ERROR52\DOS\*.*  %what%:\sierra\QGANTH\SAVES\ERROR52\DOS\*.*
echo Quest for Glory 4 installation is complete.
echo.
echo To play QG4CD, go to %what%\SIERRA\QGANTH\QG4CD and type: QG4CD
pause
goto SHOWENGLISH


:READMEENG
cls
type readme | more
pause
cd ..
goto SHOWENGLISH


:MAKEBDENG
cls
echo              ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo              º                QFG Boot Disk Maker                 º
echo              ÇÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¶
echo              º    Press the appropriate letter to make the boot   º
echo              º                disk of your choice.                º
echo              º                                                    º
echo              º         A.   QFG 1 / 2 / 3 boot disk               º
echo              º         B.   QFG 4 boot disk                       º
echo              º                                                    º
echo              º             Press C to return to Main Menu         º
echo              ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
echo.

what c "Enter a letter > " abc

if not exist c:\what.exe copy what.exe c:\
if "%what%" == "A" goto QG1BDENG
if "%what%" == "B" goto QG4BDENG
if "%what%" == "C" goto SHOWENGLISH
if "%what%" == "" goto SHOWENGLISH

:QG1BDENG
cls
bootdisk -dsierra\qganth
pause
goto SHOWENGLISH

:QG4BDENG
cls
bootdisk -c -p -dsierra\qganth
pause
goto SHOWENGLISH

:noMakeEng
echo.
echo Directory creation error.
echo Please create a SIERRA directory from the
echo root of your %what%: drive and try again.
echo.
goto EXIT



:QGAFRENCH
if exist wedyjest goto SHOWFRENCH
cls
echo Ce programme d'installation doit être lancé depuis le CD-Rom.
echo Ouvrez le répertoire racine du CD-Rom de QFG Anthology
echo puis relancez l'installation.
pause
goto EXIT

:SHOWFRENCH
cls
echo        ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo        º         CD-Rom de Quest for Glory Anthology             º     
echo        ÇÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¶
echo        º  Appuyez sur la lettre appropri‚e pour installer le     º
echo        º    jeu de votre choix. Le chiffre entre parenthŠse      º
echo        º      indique l'espace requis sur le disque dur.         º
echo        º                                                         º
echo        º    A. Version originale de QFG1 en 16 couleurs  (3 Mo)  º
echo        º    B. Nouvelle version de QFG1 en 256 couleurs  (7 Mo)  º
echo        º    C. QFG2                                      (5 Mo)  º
echo        º    D. QFG3 - Anglais                            (8 Mo)  º
echo        º    E. QFG3 - Fran‡ais                           (8 Mo)  º
echo        º    F. QFG3 - Allemand                           (8 Mo)  º
echo        º    G. QFG3 - Italien                            (8 Mo)  º
echo        º    H. QFG3 - Espagnol                           (8 Mo)  º
echo        º    I. Version allemande sans paroles de QFG4   (15 Mo)  º
echo        º    J. Version parlante en anglais de QFG4 (1 ou 20 Mo)  º
echo        º    K. QFG5 Demo                                         º
echo        º                                                         º
echo        º    M. Afficher le fichier LISEZMOI                      º
echo        º    N. Cr‚er une disquette de d‚marrage                  º
echo        º           Appuyez sur X pour rejoindre le DOS           º
echo        ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
echo.

what c "Entrez une lettre > " abcdefghijkmnx

if not exist c:\what.exe copy what.exe c:\
if "%what%" == "A" goto QG1OLDFRE
if "%what%" == "B" goto QG1NEWFRE
if "%what%" == "C" goto QG2FRE
if "%what%" == "D" goto QG3EFRE
if "%what%" == "E" goto QG3FFRE
if "%what%" == "F" goto QG3GFRE
if "%what%" == "G" goto QG3IFRE
if "%what%" == "H" goto QG3SFRE
if "%what%" == "I" goto QG4G35FRE
if "%what%" == "J" goto QG4CDFRE
if "%what%" == "K" goto QG5FRE
if "%what%" == "M" goto READMEFRE
if "%what%" == "N" goto MAKEBDFRE
if "%what%" == "X" goto EXIT
if "%what%" == "" goto EXIT


:QG5MSG
cls
echo.
echo The Demo for Quest for Glory 5: Dragonfire must be installed
echo from the other CD in this Quest for Glory Collection.
echo.
echo Please quit this INSTALL, insert the other CD, and run SETUP to
echo install the QFG5 demo.
echo.
echo Thanks!
echo.
pause
goto SHOWFRENCH


:QG1OLDFRE
cls
echo.
echo Installer la version originale de Quest for Glory 1
echo.
what c "Entrez la lettre de votre disque dur > " cdefghijklmnopqrstuvwxyz
if "%what%" == "" goto exit
echo.
echo Ce programme installera automatiquement le jeu dans le sous-
echo r‚pertoire %what%:\SIERRA\QGANTH\QG1OLD. Si cela ne vous
echo convient pas, appuyez sur CTRL-C pour annuler l'installation.
echo Vous pouvez personnellement installer le jeu en cr‚ant
echo le r‚pertoire de votre choix et copier tous les fichiers
echo depuis le r‚pertoire QG1OLD plac‚ sur le CD-Rom.
echo Si %what%:\SIERRA\QGANTH\QG1OLD vous convient...
pause
md %what%:\SIERRA
makepath %what%:\SIERRA\QGANTH
makepath %what%:\SIERRA\QGANTH\QG1OLD
if errorlevel 1 goto noMakeFre
cd %what%:\SIERRA\QGANTH\QG1OLD
echo Copie des fichiers... Veuillez patienter.
copy QG1OLD\*.*  %what%:\sierra\QGANTH\QG1OLD\*.*
copy QG1OLD\QG1OLD.BAT  %what%:\sierra\QGANTH\QG1OLD.BAT
echo.
echo Installation termin‚e
echo Pour lancer la nouvelle version de QG1, ouvrez le
echo r‚pertoire %what%:\SIERRA\QGANTH et entrez: QG1OLD
pause
goto SHOWFRENCH


:QG1NEWFRE
cls
echo.
echo Installer la nouvelle version de Quest for Glory 1
echo.
what c "Entrez la lettre de votre disque dur > " cdefghijklmnopqrstuvwxyz
if "%what%" == "" goto exit
echo.
echo Ce programme installera automatiquement le jeu dans le sous-
echo r‚pertoire %what%:\SIERRA\QGANTH\QG1NEW. Si cela ne vous
echo convient pas, appuyez sur CTRL-C pour annuler l'installation.
echo Vous pouvez personnellement installer le jeu en cr‚ant
echo le r‚pertoire de votre choix et copier tous les fichiers
echo depuis le r‚pertoire QG1NEW plac‚ sur le CD-Rom.
echo Si %what%:\SIERRA\QGANTH\QG1NEW vous convient...
pause
md %what%:\SIERRA
makepath %what%:\SIERRA\QGANTH
makepath %what%:\SIERRA\QGANTH\QG1NEW
if errorlevel 1 goto noMakeFre
cd %what%:\SIERRA\QGANTH\QG1NEW
echo Copie des fichiers... Veuillez patienter.
copy QG1NEW\*.*  %what%:\sierra\QGANTH\QG1NEW\*.*
copy QG1NEW\QG1NEW.BAT  %what%:\sierra\QGANTH\QG1NEW.BAT
echo.
echo Installation termin‚e
echo Pour lancer la nouvelle version de QG1, ouvrez le
echo r‚pertoire %what%:\SIERRA\QGANTH\ et entrez: QG1NEW
pause
goto SHOWFRENCH


:QG2FRE
cls
echo.
echo Installer Quest for Glory 2
echo.
what c "Entrez la lettre de votre disque dur > " cdefghijklmnopqrstuvwxyz
if "%what%" == "" goto exit
echo.
echo Ce programme installera automatiquement le jeu dans le sous-
echo r‚pertoire %what%:\SIERRA\QGANTH\QG2. Si cela ne vous
echo convient pas, appuyez sur CTRL-C pour annuler l'installation.
echo Vous pouvez personnellement installer le jeu en cr‚ant
echo le r‚pertoire de votre choix et copier tous les fichiers
echo depuis le r‚pertoire QG2 plac‚ sur le CD-Rom.
echo Si %what%:\SIERRA\QGANTH\QG2 vous convient...
pause
md %what%:\SIERRA
makepath %what%:\SIERRA\QGANTH
makepath %what%:\SIERRA\QGANTH\QG2
if errorlevel 1 goto noMakeFre
cd %what%:\SIERRA\QGANTH\QG2
echo Copie des fichiers... Veuillez patienter.
copy QG2\*.*  %what%:\sierra\QGANTH\QG2\*.*
copy QG2\QG2.BAT  %what%:\sierra\QGANTH\QG2.BAT
echo.
echo Installation termin‚e
echo Pour lancer QG2, ouvrez le
echo r‚pertoire %what%:\SIERRA\QGANTH\ et entrez: QG2
pause
goto SHOWFRENCH


:QG3EFRE
cls
echo.
echo Installer la version anglaise de Quest for Glory 3
echo.
what c "Entrez la lettre de votre disque dur > " cdefghijklmnopqrstuvwxyz
if "%what%" == "" goto exit
echo.
echo Ce programme installera automatiquement le jeu dans le sous-
echo r‚pertoire %what%:\SIERRA\QGANTH\ QG3E. Si cela ne vous convient pas
echo satisfait, appuyez sur CTRL-C pour annuler l'installation.
echo Vous pouvez personnellement installer le jeu en cr‚ant
echo le r‚pertoire de votre choix et copier tous les fichiers
echo depuis le r‚pertoire QG3E plac‚ sur le CD-Rom.
echo Si %what%:\SIERRA\QGANTH\ QG3E vous convient...
pause
md %what%:\SIERRA
makepath %what%:\SIERRA\QGANTH
makepath %what%:\SIERRA\QGANTH\QG3E
if errorlevel 1 goto noMakeFre
cd %what%:\SIERRA\QGANTH\QG3E
echo Copie des fichiers... Veuillez patienter.
copy QG3E\*.*  %what%:\sierra\QGANTH\QG3E\*.*
copy QG3E\QG3E.BAT  %what%:\sierra\QGANTH\QG3E.BAT
echo.
echo Installation termin‚e
echo Pour lancer QG3E, ouvrez le
echo r‚pertoire %what%:\SIERRA\QGANTH\ et entrez: QG3E
pause
goto SHOWFRENCH


:QG3FFRE
cls
echo.
echo Installer la version fran‡aise de Quest for Glory 3
echo.
what c "Entrez la lettre de votre disque dur > " cdefghijklmnopqrstuvwxyz
if "%what%" == "" goto exit
echo.
echo Ce programme installera automatiquement le jeu dans le sous-
echo r‚pertoire %what%:\SIERRA\QGANTH\ QG3F. Si cela ne vous
echo convient pas, appuyez sur CTRL-C pour annuler l'installation.
echo Vous pouvez personnellement installer le jeu en cr‚ant
echo le r‚pertoire de votre choix et copier tous les fichiers
echo depuis le r‚pertoire QG3F plac‚ sur le CD-Rom.
echo Si %what%:\SIERRA\QGANTH\ QG3F vous convient...
pause
md %what%:\SIERRA
makepath %what%:\SIERRA\QGANTH
makepath %what%:\SIERRA\QGANTH\QG3F
if errorlevel 1 goto noMakeFre
cd %what%:\SIERRA\QGANTH\QG3F
echo Copie des fichiers... Veuillez patienter.
copy QG3F\*.*  %what%:\sierra\QGANTH\QG3F\*.*
copy QG3F\QG3F.BAT  %what%:\sierra\QGANTH\QG3F.BAT
echo.
echo Installation termin‚e
echo Pour lancer QG3F, ouvrez le
echo r‚pertoire de %what%:\SIERRA\QGANTH\ et entrez: QG3F
pause
goto SHOWFRENCH


:QG3GFRE
cls
echo.
echo Installer la version allemande de Quest for Glory 3
echo.
what c "Entrez la lettre de votre disque dur > " cdefghijklmnopqrstuvwxyz
if "%what%" == "" goto exit
echo.
echo Ce programme installera automatiquement le jeu dans le sous-
echo r‚pertoire %what%:\SIERRA\QGANTH\ QG3G. Si cela ne vous
echo convient pas, appuyez sur CTRL-C pour annuler l'installation.
echo Vous pouvez personnellement installer le jeu en cr‚ant
echo le r‚pertoire de votre choix et copier tous les fichiers
echo depuis le r‚pertoire QG3G plac‚ sur le CD-Rom.
echo Si %what%:\SIERRA\QGANTH\ QG3G vous convient...
pause
md %what%:\SIERRA
makepath %what%:\SIERRA\QGANTH
makepath %what%:\SIERRA\QGANTH\QG3G
if errorlevel 1 goto noMakeFre
cd %what%:\SIERRA\QGANTH\QG3G
echo Copie des fichiers... Veuillez patienter.
copy QG3G\*.*  %what%:\sierra\QGANTH\QG3G\*.*
copy QG3G\QG3G.BAT  %what%:\sierra\QGANTH\QG3G.BAT
echo.
echo Installation termin‚e
echo Pour lancer QG3G, ouvrez le
echo r‚pertoire de %what%:\QGANTH\SIERRA\ et entrez: QG3G
pause
goto SHOWFRENCH



:QG3IFRE
cls
echo.
echo Installer la version italien de Quest for Glory 3
echo.
what c "Entrez la lettre de votre disque dur > " cdefghijklmnopqrstuvwxyz
if "%what%" == "" goto exit
echo.
echo Ce programme installera automatiquement le jeu dans le sous-
echo r‚pertoire %what%:\SIERRA\QGANTH\QG3I. Si cela ne vous
echo convient pas, appuyez sur CTRL-C pour annuler l'installation.
echo Vous pouvez personnellement installer le jeu en cr‚ant
echo le r‚pertoire de votre choix et copier tous les fichiers
echo depuis le r‚pertoire QG3I plac‚ sur le CD-Rom.
echo Si %what%:\SIERRA\QGANTH\QG3I vous convient...
pause
md %what%:\SIERRA
makepath %what%:\SIERRA\QGANTH
makepath %what%:\SIERRA\QGANTH\QG3I
if errorlevel 1 goto noMakeFre
cd %what%:\SIERRA\QGANTH\QG3I
echo Copie des fichiers... Veuillez patienter.
copy QG3I\*.*  %what%:\sierra\QGANTH\QG3I\*.*
copy QG3I\QG3I.BAT  %what%:\sierra\QGANTH\QG3I.BAT
echo.
echo Installation termin‚e
echo Pour lancer QG3I, ouvrez le
echo r‚pertoire de %what%:\QGANTH\SIERRA\ et entrez: QG3I
pause
goto SHOWFRENCH


:QG3SFRE
cls
echo.
echo Installer la version espagnol de Quest for Glory 3
echo.
what c "Entrez la lettre de votre disque dur > " cdefghijklmnopqrstuvwxyz
if "%what%" == "" goto exit
echo.
echo Ce programme installera automatiquement le jeu dans le sous-
echo r‚pertoire %what%:\SIERRA\QGANTH\QG3S. Si cela ne vous
echo convient pas, appuyez sur CTRL-C pour annuler l'installation.
echo Vous pouvez personnellement installer le jeu en cr‚ant
echo le r‚pertoire de votre choix et copier tous les fichiers
echo depuis le r‚pertoire QG3S plac‚ sur le CD-Rom.
echo Si %what%:\SIERRA\QGANTH\QG3S vous convient...
pause
md %what%:\SIERRA
makepath %what%:\SIERRA\QGANTH
makepath %what%:\SIERRA\QGANTH\QG3S
if errorlevel 1 goto noMakeFre
cd %what%:\SIERRA\QGANTH\QG3S
echo Copie des fichiers... Veuillez patienter.
copy QG3S\*.*  %what%:\sierra\QGANTH\QG3S\*.*
copy QG3S\QG3S.BAT  %what%:\sierra\QGANTH\QG3S.BAT
echo.
echo Installation termin‚e
echo Pour lancer QG3S, ouvrez le
echo r‚pertoire de %what%:\QGANTH\SIERRA\ et entrez: QG3S
pause
goto SHOWFRENCH


:QG4G35FRE
cls
echo.
echo Installer la version allemande sans paroles de Quest for Glory 4
echo.
what c "Entrez la lettre de votre disque dur > " cdefghijklmnopqrstuvwxyz
if "%what%" == "" goto exit
echo.
echo Ce programme installera automatiquement le jeu dans le sous-
echo r‚pertoire %what%:\SIERRA\QGANTH\QG4G35. Si cela ne vous
echo convient pas, appuyez sur CTRL-C pour annuler l'installation.
echo Vous pouvez personnellement installer le jeu en cr‚ant
echo le r‚pertoire de votre choix et copier tous les fichiers
echo depuis le r‚pertoire QG4G35 plac‚ sur le CD-Rom.
echo Si %what%:\SIERRA\QGANTH\QG4G35 vous convient...
pause
md %what%:\SIERRA
makepath %what%:\SIERRA\QGANTH
makepath %what%:\SIERRA\QGANTH\QG4G35
if errorlevel 1 goto noMakeFre
cd %what%:\SIERRA\QGANTH\QG4G35
echo Copie des fichiers... Veuillez patienter.
copy QG4G35\*.*  %what%:\sierra\QGANTH\QG4G35\*.*
copy QG4G35\QG4G35.BAT  %what%:\sierra\QGANTH\QG4G35.BAT
echo.
echo Installation termin‚e
echo Pour lancer QG4G35, ouvrez le
echo r‚pertoire de %what%:\SIERRA\QGANTH\ et entrez: QG4G35
pause
goto SHOWFRENCH


:QG4CDFRE
cls
echo.
echo Installer la version parlante en anglais de Quest for Glory 4
echo.
inst.exe /f
echo.
goto SHOWFRENCH


:READMEFRE
cls
type readme | more
pause
cd ..
goto SHOWFRENCH


:MAKEBDFRE
cls
echo              ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo              º            Disquette de d‚marrage de QFG           º
echo              ÇÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¶
echo              º    Appuyez sur la lettre appropri‚e pour cr‚er     º
echo              º    la disquette de d‚marrage de votre choix.       º
echo              º                                                    º
echo              º    A. Disquette de d‚marrage pour QFG 1 / 2 / 3    º
echo              º    B. Disquette de d‚marrage pour QFG 4            º
echo              º                                                    º
echo              º    Appuyez sur C pour rejoindre le Menu Principal  º
echo              ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
echo.

what c "Entrez une lettre > " abc

if not exist c:\what.exe copy what.exe c:\
if "%what%" == "A" goto QG1BDFRE
if "%what%" == "B" goto QG4BDFRE
if "%what%" == "C" goto SHOWFRENCH
if "%what%" == "" goto SHOWFRENCH

:QG1BDFRE
cls
cd french
bootdisk -dsierra\qganth
pause
cd ..
goto SHOWFRENCH

:QG4BDFRE
cls
cd french
bootdisk -c -p -dsierra\qganth
pause
cd ..
goto SHOWFRENCH

:noMakeFre
echo.
echo Erreur de cr‚ation de r‚pertoire.
echo Veuillez cr‚er un r‚pertoire SIERRA depuis
echo la racine du lecteur %what%:, puis essayez … nouveau.
echo.
goto EXIT




:QGAGERMAN
if exist wedyjest goto SHOWGERMAN
cls
echo Das Installationsprogramm muá von der CD gestartet werden.
echo Wechseln Sie zum Hauptverzeichnis der QGF Anthology CD,
echo und starten Sie das Programm noch einmal.
pause
goto EXIT

:SHOWGERMAN
cls
echo              ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo              º            Quest for Glory Anthology CD             º
echo              ÇÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¶
echo              º    Drcken Sie die entsprechende Taste, um das      º
echo              º   gewnschte Spiel zu installieren. Die (Zahl) in   º
echo              º  Klammern gibt den erforderlichen Speicherplatz an. º
echo              º                                                     º
echo              º     A. QFG1 Original 16 Farben Version     (3 MB)   º
echo              º     B. QFG1 Remake 256 Farben Version      (7 MB)   º
echo              º     C. QFG2                                (5 MB)   º
echo              º     D. QFG3 Englisch                       (8 MB)   º
echo              º     E. QFG3 Franz”sisch                    (8 MB)   º
echo              º     F. QFG3 Deutsch                        (8 MB)   º
echo              º     G. QFG3 Italian                        (8 MB)   º
echo              º     H. QFG3 Spanish                        (8 MB)   º
echo              º     I. QFG4 Deutsch, keine Sprache         (15 MB)  º
echo              º     J. QFG4 Englisch, Sprachversion (1 oder 20 MB)  º
echo              º     K. QFG5 Demo                                    º
echo              º                                                     º
echo              º     M. README Datei lesen                           º
echo              º     N. Ladediskette anfertigen                      º
echo              º                                                     º
echo              º         X drcken, um zu DOS zurckzukehren         º
echo              ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
echo.

what c "Buchstaben eingeben > " abcdefghijkmnx

if not exist c:\what.exe copy what.exe c:\
if "%what%" == "A" goto QG1OLDGER
if "%what%" == "B" goto QG1NEWGER
if "%what%" == "C" goto QG2GER
if "%what%" == "D" goto QG3EGER
if "%what%" == "E" goto QG3FGER
if "%what%" == "F" goto QG3GGER
if "%what%" == "G" goto QG3IGER
if "%what%" == "H" goto QG3SGER
if "%what%" == "I" goto QG4G35GER
if "%what%" == "J" goto QG4CDGER
if "%what%" == "K" goto QG5GER
if "%what%" == "M" goto READMEGER
if "%what%" == "N" goto MAKEBDGER
if "%what%" == "X" goto EXIT
if "%what%" == "" goto EXIT


:QG5GER
cls
echo.
echo The Demo for Quest for Glory 5: Dragonfire must be installed
echo from the other CD in this Quest for Glory Collection.
echo.
echo Please quit this INSTALL, insert the other CD, and run SETUP to
echo install the QFG5 demo.
echo.
echo Thanks!
echo.
pause
goto SHOWGERMAN


:QG1OLDGER
cls
echo.
echo Installiere Quest for Glory 1 Originalversion
echo.
what c "Geben Sie die Kennung Ihrer Festplatte an > " cdefghijklmnopqrstuvwxyz
if "%what%" == "" goto exit
echo.
echo Das Programm installiert das Spiel automatisch in das Unterverzeichnis
echo %what%:\SIERRA\QGANTH\QG1OLD. Falls Sie das nicht wnschen,
echo k”nnen Sie STRG-C drcken, um die Installation jetzt abzubrechen.
echo Sie k”nnen das Spiel dann selbst installieren, indem Sie irgendwo auf
echo der Festplatte ein Verzeichnis erstellen und dann alle Dateien aus dem
echo Verzeichnis QG1OLD auf der CD dorthin kopieren. Falls Sie mit
echo %what%:\SIERRA\QGANTH\QG1OLD zufrieden sind, ...
pause
md %what%:\SIERRA
makepath %what%:\SIERRA\QGANTH
makepath %what%:\SIERRA\QGANTH\QG1OLD
if errorlevel 1 goto noMakeGer
cd %what%:\SIERRA\QGANTH\QG1OLD
echo Kopiere Dateien -- Bitte warten
copy QG1OLD\*.*  %what%:\sierra\QGANTH\QG1OLD\*.*
copy QG1OLD\QG1OLD.BAT  %what%:\sierra\QGANTH\QG1OLD.BAT
echo.
echo Installation vollst„ndig
echo Um QG1 Remake zu spielen, wechseln Sie zu %what%:\SIERRA\QGANTH,
echo und geben Sie ein: QG1OLD
pause
goto SHOWGERMAN


:QG1NEWGER
cls
echo.
echo Installiere Quest for Glory 1 Remake
echo.
what c " Geben Sie die Kennung Ihrer Festplatte an > " cdefghijklmnopqrstuvwxyz
if "%what%" == "" goto exit
echo.
echo Das Programm installiert das Spiel automatisch in das Unterverzeichnis
echo %what%:\SIERRA\QGANTH\QG1NEW. Falls Sie das nicht wnschen,
echo k”nnen Sie STRG-C drcken, um die Installation jetzt abzubrechen.
echo Sie k”nnen das Spiel dann selbst installieren, indem Sie irgendwo auf
echo der Festplatte ein Verzeichnis erstellen und dann alle Dateien aus dem
echo Verzeichnis QG1NEW auf der CD dorthin kopieren. Falls Sie mit
echo %what%:\SIERRA\QGANTH\QG1NEW zufrieden sind, ...
pause
md %what%:\SIERRA
makepath %what%:\SIERRA\QGANTH
makepath %what%:\SIERRA\QGANTH\QG1NEW
if errorlevel 1 goto noMakeGer
cd %what%:\SIERRA\QGANTH\QG1NEW
echo Dateien werden kopiert--Bitte warten
copy QG1NEW\*.*  %what%:\sierra\QGANTH\QG1NEW\*.*
copy QG1NEW\QG1NEW.BAT  %what%:\sierra\QGANTH\QG1NEW.BAT
echo.
echo Installation vollst„ndig
echo Um QG1 Remake zu spielen, wechseln Sie zu %what%:\SIERRA\QGANTH\, und
echo geben Sie ein: QG1NEW
pause
goto SHOWGERMAN


:QG2GER
cls
echo.
echo Installiere Quest for Glory 2
echo.
what c " Geben Sie die Kennung Ihrer Festplatte an > " cdefghijklmnopqrstuvwxyz
if "%what%" == "" goto exit
echo.
echo Das Programm installiert das Spiel automatisch in das Unterverzeichnis
echo %what%:\SIERRA\QGANTH\QG2. Falls Sie das nicht wnschen,
echo k”nnen Sie STRG-C drcken, um die Installation jetzt abzubrechen.
echo Sie k”nnen das Spiel dann selbst installieren, indem Sie irgendwo auf
echo der Festplatte ein Verzeichnis erstellen und dann alle Dateien aus dem
echo Verzeichnis QG2 auf der CD dorthin kopieren. Falls Sie mit
echo %what%:\SIERRA\QGANTH\QG2 zufrieden sind, ...
pause
md %what%:\SIERRA
makepath %what%:\SIERRA\QGANTH
makepath %what%:\SIERRA\QGANTH\QG2
if errorlevel 1 goto noMakeGer
cd %what%:\SIERRA\QGANTH\QG2
echo Dateien werden kopiert--Bitte warten
copy QG2\*.*  %what%:\sierra\QGANTH\QG2\*.*
copy QG2\QG2.BAT  %what%:\sierra\QGANTH\QG2.BAT
echo.
echo Installation vollst„ndig
echo Um QG2 zu spielen, wechseln Sie zu %what%:\SIERRA\QGANTH\, und
echo geben Sie ein: QG2
pause
goto SHOWGERMAN


:QG3EGER
cls
echo.
echo Installiere Quest for Glory 3 Englisch
echo.
what c " Geben Sie die Kennung Ihrer Festplatte an > " cdefghijklmnopqrstuvwxyz
if "%what%" == "" goto exit
echo.
echo Das Programm installiert das Spiel automatisch in das Unterverzeichnis
echo %what%:\SIERRA\QGANTH\QG3E. Falls Sie das nicht wnschen,
echo k”nnen Sie STRG-C drcken, um die Installation jetzt abzubrechen.
echo Sie k”nnen das Spiel dann selbst installieren, indem Sie irgendwo auf
echo der Festplatte ein Verzeichnis erstellen und dann alle Dateien aus dem
echo Verzeichnis QG3E auf der CD dorthin kopieren. Falls Sie mit
echo %what%:\SIERRA\QGANTH\QG3E zufrieden sind, ...
pause
md %what%:\SIERRA
makepath %what%:\SIERRA\QGANTH
makepath %what%:\SIERRA\QGANTH\QG3E
if errorlevel 1 goto noMakeGer
cd %what%:\SIERRA\QGANTH\QG3E
echo Dateien werden kopiert--Bitte warten
copy QG3E\*.*  %what%:\sierra\QGANTH\QG3E\*.*
copy QG3E\QG3E.BAT  %what%:\sierra\QGANTH\QG3E.BAT
echo.
echo Installation vollst„ndig
echo Um QG3E zu spielen, wechseln Sie zu %what%:\SIERRA\QGANTH\, und
echo geben Sie ein: QG3E
pause
goto SHOWGERMAN


:QG3FGER
cls
echo.
echo Installiere Quest for Glory 3 Franz”sisch
echo.
what c " Geben Sie die Kennung Ihrer Festplatte an > " cdefghijklmnopqrstuvwxyz
if "%what%" == "" goto exit
echo.
echo Das Programm installiert das Spiel automatisch in das Unterverzeichnis
echo %what%:\SIERRA\QGANTH\QG3F. Falls Sie das nicht wnschen,
echo k”nnen Sie STRG-C drcken, um die Installation jetzt abzubrechen.
echo Sie k”nnen das Spiel dann selbst installieren, indem Sie irgendwo auf
echo der Festplatte ein Verzeichnis erstellen und dann alle Dateien aus dem
echo Verzeichnis QG3F auf der CD dorthin kopieren. Falls Sie mit
echo %what%:\SIERRA\QGANTH\QG3F zufrieden sind, ...
pause
md %what%:\SIERRA
makepath %what%:\SIERRA\QGANTH
makepath %what%:\SIERRA\QGANTH\QG3F
if errorlevel 1 goto noMakeGer
cd %what%:\SIERRA\QGANTH\QG3F
echo Dateien werden kopiert--Bitte warten
copy QG3F\*.*  %what%:\sierra\QGANTH\QG3F\*.*
copy QG3F\QG3F.BAT  %what%:\sierra\QGANTH\QG3F.BAT
echo.
echo Installation vollst„ndig
echo Um QG3F zu spielen, wechseln Sie zu %what%:\SIERRA\QGANTH\, und
echo geben Sie ein: QG3F
pause
goto SHOWGERMAN


:QG3GGER
cls
echo.
echo Installiere Quest for Glory 3 Deutsch
echo.
what c " Geben Sie die Kennung Ihrer Festplatte an > " cdefghijklmnopqrstuvwxyz
if "%what%" == "" goto exit
echo.
echo Das Programm installiert das Spiel automatisch in das Unterverzeichnis
echo %what%:\SIERRA\QGANTH\QG3G. Falls Sie das nicht wnschen,
echo k”nnen Sie STRG-C drcken, um die Installation jetzt abzubrechen.
echo Sie k”nnen das Spiel dann selbst installieren, indem Sie irgendwo auf
echo der Festplatte ein Verzeichnis erstellen und dann alle Dateien aus dem
echo Verzeichnis QG3G auf der CD dorthin kopieren. Falls Sie mit
echo %what%:\SIERRA\QGANTH\QG3G zufrieden sind, ...
pause
md %what%:\SIERRA
makepath %what%:\SIERRA\QGANTH
makepath %what%:\SIERRA\QGANTH\QG3G
if errorlevel 1 goto noMakeGer
cd %what%:\SIERRA\QGANTH\QG3G
echo Dateien werden kopiert--Bitte warten
copy QG3G\*.*  %what%:\sierra\QGANTH\QG3G\*.*
copy QG3G\QG3G.BAT  %what%:\sierra\QGANTH\QG3G.BAT
echo.
echo Installation vollst„ndig
echo Um QG3G zu spielen, wechseln Sie zu %what%:\QGANTH\SIERRA\, und
echo geben Sie ein: QG3G
pause
goto SHOWGERMAN



:QG3IGER
cls
echo.
echo Installiere Quest for Glory 3 Italian
echo.
what c " Geben Sie die Kennung Ihrer Festplatte an > " cdefghijklmnopqrstuvwxyz
if "%what%" == "" goto exit
echo.
echo Das Programm installiert das Spiel automatisch in das Unterverzeichnis
echo %what%:\SIERRA\QGANTH\QG3I. Falls Sie das nicht wnschen,
echo k”nnen Sie STRG-C drcken, um die Installation jetzt abzubrechen.
echo Sie k”nnen das Spiel dann selbst installieren, indem Sie irgendwo auf
echo der Festplatte ein Verzeichnis erstellen und dann alle Dateien aus dem
echo Verzeichnis QG3I auf der CD dorthin kopieren. Falls Sie mit
echo %what%:\SIERRA\QGANTH\QG3I zufrieden sind, ...
pause
md %what%:\SIERRA
makepath %what%:\SIERRA\QGANTH
makepath %what%:\SIERRA\QGANTH\QG3I
if errorlevel 1 goto noMakeGer
cd %what%:\SIERRA\QGANTH\QG3I
echo Dateien werden kopiert--Bitte warten
copy QG3I\*.*  %what%:\sierra\QGANTH\QG3I\*.*
copy QG3I\QG3I.BAT  %what%:\sierra\QGANTH\QG3I.BAT
echo.
echo Installation vollst„ndig
echo Um QG3I zu spielen, wechseln Sie zu %what%:\QGANTH\SIERRA\, und
echo geben Sie ein: QG3I
pause
goto SHOWGERMAN

:QG3SGER
cls
echo.
echo Installiere Quest for Glory 3 Spanish
echo.
what c " Geben Sie die Kennung Ihrer Festplatte an > " cdefghijklmnopqrstuvwxyz
if "%what%" == "" goto exit
echo.
echo Das Programm installiert das Spiel automatisch in das Unterverzeichnis
echo %what%:\SIERRA\QGANTH\QG3S. Falls Sie das nicht wnschen,
echo k”nnen Sie STRG-C drcken, um die Installation jetzt abzubrechen.
echo Sie k”nnen das Spiel dann selbst installieren, indem Sie irgendwo auf
echo der Festplatte ein Verzeichnis erstellen und dann alle Dateien aus dem
echo Verzeichnis QG3S auf der CD dorthin kopieren. Falls Sie mit
echo %what%:\SIERRA\QGANTH\QG3S zufrieden sind, ...
pause
md %what%:\SIERRA
makepath %what%:\SIERRA\QGANTH
makepath %what%:\SIERRA\QGANTH\QG3S
if errorlevel 1 goto noMakeGer
cd %what%:\SIERRA\QGANTH\QG3S
echo Dateien werden kopiert--Bitte warten
copy QG3S\*.*  %what%:\sierra\QGANTH\QG3S\*.*
copy QG3S\QG3S.BAT  %what%:\sierra\QGANTH\QG3S.BAT
echo.
echo Installation vollst„ndig
echo Um QG3S zu spielen, wechseln Sie zu %what%:\QGANTH\SIERRA\, und
echo geben Sie ein: QG3S
pause
goto SHOWGERMAN



:QG4G35GER
cls
echo.
echo Installiere Quest for Glory 4 Deutsch, Diskettenversion, keine Sprache.
echo.
what c " Geben Sie die Kennung Ihrer Festplatte an > " cdefghijklmnopqrstuvwxyz
if "%what%" == "" goto exit
echo.
echo Das Programm installiert das Spiel automatisch in das Unterverzeichnis
echo %what%:\SIERRA\QGANTH\QG4G35. Falls Sie das nicht wnschen,
echo k”nnen Sie STRG-C drcken, um die Installation jetzt abzubrechen.
echo Sie k”nnen das Spiel dann selbst installieren, indem Sie irgendwo auf
echo der Festplatte ein Verzeichnis erstellen und dann alle Dateien aus dem
echo Verzeichnis QG4G35 auf der CD dorthin kopieren. Falls Sie mit
echo %what%:\SIERRA\QGANTH\QG4G35 zufrieden sind, ...
pause
md %what%:\SIERRA
makepath %what%:\SIERRA\QGANTH
makepath %what%:\SIERRA\QGANTH\QG4G35
if errorlevel 1 goto noMakeGer
cd %what%:\SIERRA\QGANTH\QG4G35
echo Dateien werden kopiert--Bitte warten
copy QG4G35\*.*  %what%:\sierra\QGANTH\QG4G35\*.*
copy QG4G35\QG4G35.BAT  %what%:\sierra\QGANTH\QG4G35.BAT
echo.
echo Installation vollst„ndig
echo Um QG4G35 zu spielen, wechseln Sie zu %what%:\SIERRA\QGANTH\, und
echo geben Sie ein: QG4G35
pause
goto SHOWGERMAN


:QG4CDGER
cls
echo.
echo Installiere Quest for Glory 4 Englisch, Sprachversion
echo.
inst.exe /f
echo.
goto SHOWGERMAN


:READMEGER
cls
type readme | more
pause
cd ..
goto SHOWGERMAN


:MAKEBDGER
cls
echo              ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo              º            QFG Ladediskettenprogramm          º
echo              ÇÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¶
echo              º   Drcken Sie die entsprechende Taste, um     º
echo              º   die gewnschte Ladediskette zu erstellen    º
echo              º                                               º
echo              º        A.   QFG1 / 2 / 3 Ladediskette         º
echo              º        B.   QFG4 Ladediskette                 º
echo              º                                               º
echo              º        C drcken, um Hauptmen zu ”ffnen      º
echo              ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
echo.

what c "Buchstaben eingeben > " abc

if not exist c:\what.exe copy what.exe c:\
if "%what%" == "A" goto QG1BDGER
if "%what%" == "B" goto QG4BDGER
if "%what%" == "C" goto SHOWGERMAN
if "%what%" == "" goto SHOWGERMAN

:QG1BDGER
cls
cd german
bootdisk -dsierra\qganth
pause
cd ..
goto SHOWGERMAN

:QG4BDGER
cls
cd german
bootdisk -c -p -dsierra\qganth
pause
cd ..
goto SHOWGERMAN

:noMakeGer
echo.
echo Fehler bei der Verzeichnisanfertigung.
echo Bitte legen Sie in Laufwerk %what%: ein
echo SIERRA Verzeichnis an, und versuchen
echo Sie es noch einmal.
echo.
goto EXIT




:EXIT
echo.


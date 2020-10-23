@echo off
if not exist letter.2u goto mnscrn
cls
type letter.2u
pause
:mnscrn
if "%1" == "" goto nocard
if not exist sbsim.com goto nosound
echo ÿ   C I V I L W A R    B A T T L E S E T    EGA VERSION 2.5
echo            ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo            ³     (with SOUND CARD CAPABILITY)     ³
echo            ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
sbsim.com cwsnd.cfg
cw.exe /s
sbsim.com /U
rem . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
goto done
:nosound
echo ÿ
echo Must uncompress SOUNDS.Z~P before using sound options !
pause
echo ÿ
:nocard
cls
echo ÿ   C I V I L W A R    B A T T L E S E T    EGA VERSION 2.4
echo CW to play the game
echo CS to use the editor
echo README.TXT for latest information
echo SOUNDS.DOC for information on SOUND CARD setup
echo INSTALL to load on hard drive
echo Documentation is in the files CW.DOC and CS.DOC
echo Use PRINTDOC CW  or PRINTDOC CS to print documentation
echo ÿ
echo ========================================================================
echo ÿ
echo Hit Ctrl-C if you do NOT wish to begin the game
pause Press ENTER to begin CIVILWAR BATTLESET
cls
echo Loading CIVILWAR BATTLESET ...
cw.exe
goto done
:soundoff
:done

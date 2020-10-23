rem  KKnD Uninstaller.
rem  Andrew Buttery, 21st November 1996
rem  
@echo off
cls
echo KKnd Uninstaller
echo.
echo The following uninstaller is provided to ease uninstallation of
echo KKnD from your system however you use it at your own risk.
echo.

rem Does the user want the full help page or have they forgotten to
rem specify a path ?

if "%1"=="?" goto page_help
if "%1"=="" goto page_help

rem  OK... let's check that the path exists...

if not exist %1\nul goto err_no_path
if not exist %1\kknd.exe goto err_no_kknd

rem OK... found the directory let's start deleting... very carefully...
rem In fact lets make sure...

echo Found specified directory do you wish to continue unistalling
echo Press Ctrl-C now to abort . . . or
pause

rem Got the go ahead... delete away !!!
rem Move the current directory to the root as they won't be able
rem to delete dirs if current directory is set to inside the KKnD
rem directory structure.

cd \

rem ----------------------------------------------------------------------
rem Start with the 640 Directory...

if not exist %1\levels\640\nul goto no_640
echo Found 640 Directory...

if not exist %1\levels\640\surv_01.lvl goto no_s_01
echo Deleting Surv01.lvl...
del %1\levels\640\surv_01.lvl
:no_s_01

if not exist %1\levels\640\surv_02.lvl goto no_s_02
echo Deleting Surv02.lvl...
del %1\levels\640\surv_02.lvl
:no_s_02

if not exist %1\levels\640\surv_03.lvl goto no_s_03
echo Deleting Surv03.lvl...
del %1\levels\640\surv_03.lvl
:no_s_03

if not exist %1\levels\640\surv_04.lvl goto no_s_04
echo Deleting Surv04.lvl...
del %1\levels\640\surv_04.lvl
:no_s_04

if not exist %1\levels\640\surv_05.lvl goto no_s_05
echo Deleting Surv05.lvl...
del %1\levels\640\surv_05.lvl
:no_s_05

if not exist %1\levels\640\surv_06.lvl goto no_s_06
echo Deleting Surv06.lvl...
del %1\levels\640\surv_06.lvl
:no_s_06

if not exist %1\levels\640\surv_07.lvl goto no_s_07
echo Deleting Surv07.lvl...
del %1\levels\640\surv_07.lvl
:no_s_07

if not exist %1\levels\640\surv_08.lvl goto no_s_08
echo Deleting Surv08.lvl...
del %1\levels\640\surv_08.lvl
:no_s_08

if not exist %1\levels\640\surv_09.lvl goto no_s_09
echo Deleting Surv09.lvl...
del %1\levels\640\surv_09.lvl
:no_s_09

if not exist %1\levels\640\surv_10.lvl goto no_s_10
echo Deleting Surv10.lvl...
del %1\levels\640\surv_10.lvl
:no_s_10

if not exist %1\levels\640\surv_11.lvl goto no_s_11
echo Deleting Surv11.lvl...
del %1\levels\640\surv_11.lvl
:no_s_11

if not exist %1\levels\640\surv_12.lvl goto no_s_12
echo Deleting Surv12.lvl...
del %1\levels\640\surv_12.lvl
:no_s_12

if not exist %1\levels\640\surv_13.lvl goto no_s_13
echo Deleting Surv13.lvl...
del %1\levels\640\surv_13.lvl
:no_s_13

if not exist %1\levels\640\surv_14.lvl goto no_s_14
echo Deleting Surv14.lvl...
del %1\levels\640\surv_14.lvl
:no_s_14

if not exist %1\levels\640\surv_15.lvl goto no_s_15
echo Deleting Surv15.lvl...
del %1\levels\640\surv_15.lvl
:no_s_15

rem Now delete the Mute... um, oops, the Evolved levels...

if not exist %1\levels\640\Mute_01.lvl goto no_m_01
echo Deleting Mute01.lvl...
del %1\levels\640\Mute_01.lvl
:no_m_01

if not exist %1\levels\640\Mute_02.lvl goto no_m_02
echo Deleting Mute02.lvl...
del %1\levels\640\Mute_02.lvl
:no_m_02

if not exist %1\levels\640\Mute_03.lvl goto no_m_03
echo Deleting Mute03.lvl...
del %1\levels\640\Mute_03.lvl
:no_m_03

if not exist %1\levels\640\Mute_04.lvl goto no_m_04
echo Deleting Mute04.lvl...
del %1\levels\640\Mute_04.lvl
:no_m_04

if not exist %1\levels\640\Mute_05.lvl goto no_m_05
echo Deleting Mute05.lvl...
del %1\levels\640\Mute_05.lvl
:no_m_05

if not exist %1\levels\640\Mute_06.lvl goto no_m_06
echo Deleting Mute06.lvl...
del %1\levels\640\Mute_06.lvl
:no_m_06

if not exist %1\levels\640\Mute_07.lvl goto no_m_07
echo Deleting Mute07.lvl...
del %1\levels\640\Mute_07.lvl
:no_m_07

if not exist %1\levels\640\Mute_08.lvl goto no_m_08
echo Deleting Mute08.lvl...
del %1\levels\640\Mute_08.lvl
:no_m_08

if not exist %1\levels\640\Mute_09.lvl goto no_m_09
echo Deleting Mute09.lvl...
del %1\levels\640\Mute_09.lvl
:no_m_09

if not exist %1\levels\640\Mute_10.lvl goto no_m_10
echo Deleting Mute10.lvl...
del %1\levels\640\Mute_10.lvl
:no_m_10

if not exist %1\levels\640\Mute_11.lvl goto no_m_11
echo Deleting Mute11.lvl...
del %1\levels\640\Mute_11.lvl
:no_m_11

if not exist %1\levels\640\Mute_12.lvl goto no_m_12
echo Deleting Mute12.lvl...
del %1\levels\640\Mute_12.lvl
:no_m_12

if not exist %1\levels\640\Mute_13.lvl goto no_m_13
echo Deleting Mute13.lvl...
del %1\levels\640\Mute_13.lvl
:no_m_13

if not exist %1\levels\640\Mute_14.lvl goto no_m_14
echo Deleting Mute14.lvl...
del %1\levels\640\Mute_14.lvl
:no_m_14

if not exist %1\levels\640\Mute_15.lvl goto no_m_15
echo Deleting Mute15.lvl...
del %1\levels\640\Mute_15.lvl
:no_m_15

Rem Now deleting the Multi player levels... please stand by !!!

if not exist %1\levels\640\Mlti_01.lvl goto no_mp_01
echo Deleting Mlti01.lvl...
del %1\levels\640\Mlti_01.lvl
:no_mp_01

if not exist %1\levels\640\Mlti_02.lvl goto no_mp_02
echo Deleting Mlti02.lvl...
del %1\levels\640\Mlti_02.lvl
:no_mp_02

if not exist %1\levels\640\Mlti_03.lvl goto no_mp_03
echo Deleting Mlti03.lvl...
del %1\levels\640\Mlti_03.lvl
:no_mp_03

if not exist %1\levels\640\Mlti_04.lvl goto no_mp_04
echo Deleting Mlti04.lvl...
del %1\levels\640\Mlti_04.lvl
:no_mp_04

if not exist %1\levels\640\Mlti_05.lvl goto no_mp_05
echo Deleting Mlti05.lvl...
del %1\levels\640\Mlti_05.lvl
:no_mp_05

if not exist %1\levels\640\Mlti_06.lvl goto no_mp_06
echo Deleting Mlti06.lvl...
del %1\levels\640\Mlti_06.lvl
:no_mp_06

if not exist %1\levels\640\Mlti_07.lvl goto no_mp_07
echo Deleting Mlti07.lvl...
del %1\levels\640\Mlti_07.lvl
:no_mp_07

if not exist %1\levels\640\Mlti_08.lvl goto no_mp_08
echo Deleting Mlti08.lvl...
del %1\levels\640\Mlti_08.lvl
:no_mp_08

if not exist %1\levels\640\Mlti_09.lvl goto no_mp_09
echo Deleting Mlti09.lvl...
del %1\levels\640\Mlti_09.lvl
:no_mp_09

if not exist %1\levels\640\Mlti_10.lvl goto no_mp_10
echo Deleting Mlti10.lvl...
del %1\levels\640\Mlti_10.lvl
:no_mp_10

if not exist %1\levels\640\FMV.lvl goto no_fmv
echo Deleting FMV.lvl...
del %1\levels\640\FMV.lvl
:no_fmv

if not exist %1\levels\640\sprites.lvl goto no_sprite
echo Deleting Sprites.lvl...
del %1\levels\640\sprites.lvl
:no_sprite

if not exist %1\levels\640\super.lvl goto no_super
echo Deleting Super.lvl...
del %1\levels\640\super.lvl
:no_super

if not exist %1\levels\640\supspr.lvl goto no_supspr
echo Deleting Supspr.lvl...
del %1\levels\640\supspr.lvl
:no_supspr

if not exist %1\levels\640\wait.lvl goto no_wait
echo Deleting Wait.lvl...
del %1\levels\640\Wait.lvl
:no_wait

echo Deleting 640 Directory...
rd %1\levels\640
echo.
:no_640

rem Then delete the Levels Directory...

if not exist %1\levels\nul goto no_levels
echo Found Levels Directory...

if not exist %1\levels\Multi.pal goto no_m_pal
echo Deleting Multi.pal...
del %1\levels\multi.pal
:no_m_pal

if not exist %1\levels\Mute.slv goto no_m_slv
echo Deleting Mute.slv...
del %1\levels\Mute.slv
:no_m_slv

if not exist %1\levels\Surv.slv goto no_s_slv
echo Deleting Surv.slv...
del %1\levels\Surv.slv
:no_s_slv

if not exist %1\levels\Super.slv goto no_su_slv
echo Deleting Super.slv...
del %1\levels\Super.slv
:no_su_slv

echo Deleting Levels Directory...
rd %1\levels
echo.
:no_levels

rem Then delete the KKnD Root Directory...

if not exist %1\HMIdet.386 goto no_hmidet
echo Deleting HMIdet.386...
del %1\HMIdet.386
:no_hmidet

if not exist %1\HMIdrv.386 goto no_hmidrv
echo Deleting HMIdrv.386...
del %1\HMIdrv.386
:no_hmidrv

if not exist %1\kknd.cfg goto no_kcfg
echo Deleting KKnD.cfg...
del %1\kknd.cfg
:no_kcfg

if not exist %1\kknd.exe goto no_kexe
echo Deleting KKnD.exe...
del %1\kknd.exe
:no_kexe

if not exist %1\kkndicon.ico goto no_kico
echo Deleting KKnD.ico...
attrib %1\kkndicon.ico -H
del %1\kkndicon.ico
:no_kico

if not exist %1\kknd.pif goto no_kpif
echo Deleting KKnD.pif...
del %1\kknd.pif
:no_kpif

if not exist %1\serial.cfg goto no_scfg
echo Deleting Serial.cfg...
del %1\serial.cfg
:no_scfg

if not exist %1\units.cfg goto no_ucfg
echo Deleting Units.cfg...
del %1\units.cfg
:no_ucfg

if not exist %1\uvconfig.dat goto no_uvdat
echo Deleting Uvconfig.dat...
del %1\uvconfig.dat
:no_uvdat

if not exist %1\uvconfig.exe goto no_uvexe
echo Deleting Uvconfig.exe...
del %1\uvconfig.exe
:no_uvexe

if not exist %1\univbe.drv goto no_uvdrv
echo Deleting Univbe.drv...
del %1\univbe.drv
:no_uvdrv

if not exist %1\track.log goto no_trlog
echo Deleting Track.log...
del %1\track.log
:no_trlog

if not exist %1\readme.txt goto no_readme
echo Deleting Readme.txt...
del %1\readme.txt
:no_readme

if not exist %1\modem.lst goto no_mlst
echo Deleting Modem.lst...
del %1\modem.lst
:no_mlst

if not exist %1\save.lst goto no_slst
echo Deleting Save.lst...
del %1\save.lst
:no_slst

if not exist %1\kknd.sve goto no_ksve
echo Deleting KKnD.sve...
del %1\kknd.sve
:no_ksve

if not exist %1\game0.sav goto no_g0
echo Deleting Game0.sav...
del %1\game0.sav
:no_g0

if not exist %1\game1.sav goto no_g1
echo Deleting Game1.sav...
del %1\game1.sav
:no_g1

if not exist %1\game2.sav goto no_g2
echo Deleting Game2.sav...
del %1\game2.sav
:no_g2

if not exist %1\game3.sav goto no_g3
echo Deleting Game3.sav...
del %1\game3.sav
:no_g3

if not exist %1\game4.sav goto no_g4
echo Deleting Game4.sav...
del %1\game4.sav
:no_g4

if not exist %1\game5.sav goto no_g5
echo Deleting Game5.sav...
del %1\game5.sav
:no_g5

if not exist %1\game6.sav goto no_g6
echo Deleting Game6.sav...
del %1\game6.sav
:no_g6

if not exist %1\game7.sav goto no_g7
echo Deleting Game7.sav...
del %1\game7.sav
:no_g7

if not exist %1\game8.sav goto no_g8
echo Deleting Game8.sav...
del %1\game8.sav
:no_g8

if not exist %1\game9.sav goto no_g9
echo Deleting Game9.sav...
del %1\game9.sav
:no_g9

if not exist %1\game10.sav goto no_g10
echo Deleting Game10.sav...
del %1\game10.sav
:no_g10

if not exist %1\game11.sav goto no_g11
echo Deleting Game11.sav...
del %1\game11.sav
:no_g11

if not exist %1\game12.sav goto no_g12
echo Deleting Game12.sav...
del %1\game12.sav
:no_g12

if not exist %1\game13.sav goto no_g13
echo Deleting Game13.sav...
del %1\game13.sav
:no_g13

if not exist %1\game14.sav goto no_g14
echo Deleting Game14.sav...
del %1\game14.sav
:no_g14

if not exist %1\game15.sav goto no_g15
echo Deleting Game15.sav...
del %1\game15.sav
:no_g15

if not exist %1\game16.sav goto no_g16
echo Deleting Game16.sav...
del %1\game16.sav
:no_g16

if not exist %1\game17.sav goto no_g17
echo Deleting Game17.sav...
del %1\game17.sav
:no_g17

if not exist %1\game18.sav goto no_g18
echo Deleting Game18.sav...
del %1\game18.sav
:no_g18

if not exist %1\game19.sav goto no_g19
echo Deleting Game19.sav...
del %1\game19.sav
:no_g19

echo Deleting %1 Directory...
rd %1
echo.

if not exist c:\kknd.cfg goto no_kccfg
echo Deleting KKnD.cfg from root of C:\ ...
del c:\kknd.cfg
:no_kccfg

if not exist c:\kknd.mem goto no_kcmem
echo Deleting KKnD.mem from root of C:\ ...
del c:\kknd.mem
:no_kcmem

if not exist c:\thevoice.cfg goto no_tvcfg
echo Deleting TheVoice.cfg from root of C:\ ...
del c:\thevoice.cfg
:no_tvcfg

if exist %1\killkknd.bat goto err_not_comp

echo.
echo KKnD should now have been uninstalled.
goto exit


rem ---------------------------------------------------------------------
rem Error Messages go here...

:err_no_path
echo.
echo I could not locate KKnD in the directoy you have specified
echo (%1\).
echo Please note that the uninstaller appends a \ to the path you specify
echo which may cause this error. Please try again.
echo.
goto exit

:err_no_kknd
echo.
echo The directory you specified exists but I could not locate the KKnD
echo executable in the directory you have specified:
echo (%1\).
echo Please note that the uninstaller appends a \ to the path you specify
echo which may cause this error. Please try again.
echo.
goto exit

:err_not_comp
echo.
echo Killkknd could not remove the %1 Directory as Killkknd.bat was not
echo moved out of the %1 Directory before being executed. 
echo.
goto exit

rem ---------------------------------------------------------------------
rem The big help page goes here...

:page_help
echo.
echo This batch file is designed to help unistall KKnD from your hard
echo drive. To use the unistaller use the following syntax:
echo.
echo    killkknd [install_path]
echo.
echo Where the install_path in the brackets is the directory where the
echo KKnD.exe resides. So if KKnD is installed in your E:\games directory
echo the syntax to remove it would be...
echo.
echo    killkknd e:\games\KKnD
echo.
echo Every file is specifically deleted (none of that DelTree or Del *.*
echo inaccuracy !) and then the directory removed.
pause
cls
echo.
echo Possible problems.
echo.
echo The KillKKnD Uninstaller appends a \ to the path that you specify
echo and this may cause a problem. Renter the path without the trailing
echo \ character.
echo.
echo If you have copied any files into the KKnD directory or other parts
echo of the KKnD directory structure the Uninstaller will not be able to
echo remove all the directories. If you move the offending files and copy
echo a junk file to the directory where the kknd.exe was and rename it
echo kknd.exe and run the Uninstaller again it should clean everything up.
echo.
echo If you haven't moved the KillKKnD.bat file out of the directory
echo where KKnD is installed it will not completely remove the KKnD
echo directory structure. You need to move the KillKKnD.bat file before
echo running it.
echo.
goto exit

rem It's all over Red Rover...
:exit


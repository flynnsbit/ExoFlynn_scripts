@echo off
:top
cls
echo ZeroHour Software Uninstaller
echo.
echo.
echo This program will reconvert all art, music, .cons, and .dmo files.
echo.
echo.
choice Do you wish to uninstall  
if errorlevel 2 goto :end



cls
echo Restoring orignal game.con, demos, midi, and .con files.
echo.

copy /y gamebu.con game.con
copy /y demo1.dmm demo1.dmo
copy /y demo2.dmm demo2.dmo
erase gamebu.con
erase demo1.dmm
erase demo2.dmm

erase tiles000.art
erase tiles005.art 
erase tiles006.art
erase tiles007.art
erase tiles008.art
erase tiles009.art
erase tiles010.art
erase tiles012.art
erase tiles014.art
erase tiles015.art



erase zerodefs.con
erase zerogame.con
erase zerouser.con
erase zerpdefs.con
erase zerpgame.con
erase zerpuser.con

erase zerodemo.dmo

erase e1l1.map
erase e1l2.map
erase e1l3.map
erase e1l4.map
erase e1l5.map
erase e1l6.map
erase e1l7.map
erase e1l8.map
erase e1l9.map
erase e1l10.map
erase e1l11.map

erase cyber1.mid
erase darkness.mid
erase darkness.wrk
erase dreams.mid
erase eyes.mid
erase head.mid
erase jeana.mid
erase joe2.mid
erase joe3.mid
erase midnight.mid
erase new.mid
erase nin.mid



erase zreadme.txt

erase b3pain04.voc
erase commrg.voc
erase haunted.voc
erase octarg.voc
erase pigrg.voc
erase predrg.voc
erase rip01.voc
erase snakrg.voc

erase 1_ambi2.wav
erase 1_ambi3.wav
erase 1_ambi4.wav
erase 1-ambi5.wav
erase 1-ambi6.wav
erase admit.wav
erase coeur.wav
erase cyborg1.wav
erase cyborg2.wav
erase cyborg3.wav
erase cyborg4.wav
erase cyborg5.wav
erase cyborg6.wav
erase death.wav
erase deconne.wav
erase flames.wav
erase flyby1.wav
erase fouet1.wav
erase fs_lase1.wav
erase fs_lase2.wav
erase fs_pas.wav
erase fs_robo5.wav
erase fs_turb1.wav
erase gatling2.wav
erase get.wav
erase hiss.wav
erase hiss2.wav
erase integrit.wav
erase intruder.wav
erase lflamme.wav
erase mchgun.wav
erase mech.wav
erase mechit1.wav
erase mechit2.wav
erase mechit3.wav
erase mechit4.wav
erase mine_bip.wav
erase mitrail2.wav
erase newtarge.wav
erase saw1.wav
erase saw2.wav
erase saw3.wav
erase saw4.wav
erase sentfly.wav
erase servdie.wav
erase servrac.wav
erase servroam.wav
erase shaftf.wav
erase shaft2.wav
erase shaft3.wav
erase spid_pie.wav
erase ta.wav
erase treatmen.wav
erase wind54.wav
erase a.bat

echo.
echo Duke3d Restored!!
echo.
echo Thanks for playing "Duke...It's ZeroHour" by ZeroHour software.
echo You're Duke files have been returned to their original state.
echo.
echo ZeroHour Software is:
echo.
echo Bill Tatton
echo Shane Campa
echo Pierre-Olivier Clement
echo Joe Lema
echo.
echo If there is anyone out there who would be interested in offering
echo anyone from ZeroHour software a job designing levels for your software
echo company, please contact Bill Tatton (wtatton@moab.net)
echo.
echo (c) ZeroHour Software 1996-1997
echo.
echo Please type "erase uzero.bat" to finish uninstall.
goto finish
:end
echo.
echo Uninstall aborted, all zerohour files still intact!!
echo.
:finish
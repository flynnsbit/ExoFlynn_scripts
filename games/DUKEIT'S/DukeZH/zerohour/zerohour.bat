

echo off
cls
echo ==============================
echo ZeroHour Software Map Launcher 
echo ==============================
echo.
echo Scanning for ZeroHour Files...
echo.
attrib -r *.*

echo ART Files

if not exist tiles000.ar_ echo Can't find tiles000.ar_
if not exist tiles005.ar_ echo Can't find tiles005.ar_
if not exist tiles006.ar_ echo Can't find tiles006.ar_
if not exist tiles007.ar_ echo Can't find tiles007.ar_
if not exist tiles008.ar_ echo Can't find tiles008.ar_
if not exist tiles009.ar_ echo Can't find tiles009.ar_
if not exist tiles010.ar_ echo Can't find tiles010.ar_
if not exist tiles012.ar_ echo Can't find tiles012.ar_
if not exist tiles014.ar_ echo Can't find tiles014.ar_
if not exist tiles015.ar_ echo Can't find tiles015.ar_

echo CON Files

if not exist zerodefs.con echo Can't find zerodefs.con
if not exist zerogame.con echo Can't find zerogame.con
if not exist zerouser.con echo Can't find zerouser.con
if not exist zerpgame.con echo Can't find zerpgame.con
if not exist zerpdefs.con echo Can't find zerpdefs.con
if not exist zerpuser.con echo Can't find zerpuser.con

echo DMO Files

if not exist zerodemo.dmo echo Can't find zerodemo.dmo

echo MAP Files

if not exist e1l1.map echo Can't find e1l1.map
if not exist e1l2.map echo Can't find e1l2.map
if not exist e1l3.map echo Can't find e1l3.map
if not exist e1l4.map echo Can't find e1l4.map
if not exist e1l5.map echo Can't find e1l5.map
if not exist e1l6.map echo Can't find e1l6.map
if not exist e1l7.map echo Can't find e1l7.map
if not exist e1l8.map echo Can't find e1l8.map
if not exist e1l9.map echo Can't find e1l9.map
if not exist e1l10.map echo Can't find e1l10.map
if not exist e1l11.map echo Can't find e1l11.map

echo MID Files

if not exist cyber1.mid echo Can't find cyber1.mid
if not exist darkness.mid echo Can't find darkness.mid
if not exist dreams.mid echo Can't find dreams.mid
if not exist eyes.mid echo Can't find eyes.mid
if not exist head.mid echo Can't head.mid
if not exist jeana.mid echo Can't find jeana.mid
if not exist joe2.mid echo Can't find joe2.mid
if not exist joe3.mid echo Can't find joe3.mid
if not exist midnight.mid echo Can't find midnight.mid
if not exist new.mid echo Can't find new.mid
if not exist nin.mid echo Can't find nin.mid
echo TXT files

if not exist zreadme.txt echo Can't find zreadme.txt

echo VOC files

if not exist b3pain04.voc echo can't find b3pain04.voc
if not exist commrg.voc echo Can't find commrg.voc
if not exist haunted.voc echo Can't find haunted.voc
if not exist octarg.voc echo Can't find octarg.voc
if not exist pigrg.voc echo Can't find pigrg.voc
if not exist predrg.voc echo Can't find predrg.voc
if not exist rip01.voc echo Can't find rip01.voc
if not exist snakrg.voc echo Can't find snakrg.voc

echo WAV files

if not exist 1_ambi2.wav echo Can't find 1_ambi2.wav
if not exist 1_ambi3.wav echo Can't find 1_ambi3.wav
if not exist 1_ambi4.wav echo Can't find 1_ambi4.wav
if not exist 1-ambi5.wav echo Can't find 1-ambi5.wav
if not exist 1-ambi6.wav echo Can't find 1-ambi6.wav
if not exist admit.wav echo Can't find admit.wav
if not exist Coeur.wav echo Can't find coeur.wav
if not exist cyborg1.wav echo Can't find cyborg1.wav
if not exist cyborg2.wav echo Can't find cyborg2.wav
if not exist cyborg3.wav echo Can't find cyborg3.wav
if not exist cyborg4.wav echo Can't find cyborg4.wav
if not exist cyborg5.wav echo Can't find cyborg5.wav
if not exist cyborg6.wav echo Can't find cyborg6.wav
if not exist death.wav echo Can't find death.wav
if not exist deconne.wav echo Can't find deconne.wav
if not exist flames.wav echo Can't find flames.wav
if not exist flyby1.wav echo Can't find flyby1.wav
if not exist fouet1.wav echo Can't find fouet1.wav
if not exist fs_lase1.wav echo Can't find fs_lase1.wav
if not exist fs_lase2.wav echo Can't find fs_lase2.wav
if not exist fs_pas.wav echo Can't find fs_pas.wav
if not exist fs_robo5.wav echo Can't find fs_robo5.wav
if not exist fs_turb1.wav echo Can't find fs_turb1.wav
if not exist gatling2.wav echo Can't find gatling2.wav
if not exist get.wav echo Can't find get.wav
if not exist hiss.wav echo Can't find hiss.wav
if not exist hiss2.wav echo Can't find hiss2.wav
if not exist integrit.wav echo Can't find integrit.wav
if not exist intruder.wav echo Can't find intruder.wav
if not exist lflamme.wav echo Can't find lflamme.wav
if not exist mchgun.wav echo Can't find mchgun.wav
if not exist mech.wav echo Can't find mech.wav
if not exist mechit1.wav echo Can't find mechit1.wav
if not exist mechit2.wav echo Can't find mechit2.wav
if not exist mechit3.wav ehco Can't find mechit3.wav
if not exist mechit4.wav echo Can't find mechit4.wav
if not exist mine_bip.wav echo Can't find mine_bip.wav
if not exist mitrail2.wav echo Can't find mitrail2.wav
if not exist newtarge.wav echo Can't find newtarge.wav
if not exist saw1.wav echo Can't find saw1.wav
if not exist saw2.wav echo Can't find saw2.wav
if not exist saw3.wav echo Can't find saw3.wav
if not exist saw4.wav echo Can't find saw4.wav
if not exist sentfly.wav echo Can't find sently.wav
if not exist servdie.wav echo Can't find servdie.wav
if not exist servrac.wav echo Can't find servrac.wav
if not exist servroam.wav echo Can't find servroam.wav
if not exist shaftf.wav echo Can't find shaftf.wav
if not exist shaft2.wav echo Can't find shaft2.wav
if not exist shaft3.wav echo Can't find shaft3.wav
if not exist spid_pie.wav echo Can't find spid_pie.wav
if not exist ta.wav echo Can't find ta.wav
if not exist treatmen.wav echo Can't find treatmen.wav
if not exist wind54.wav echo Can't find wind54.wav



echo.
echo File(s) existence verified!!
echo.
pause
cls
echo Choose version of Duke3d you are using:
echo     a) Duke Nukem 3d version 1.3 (original version)
echo     b) Duke Nukem 3d version 1.4 (Plutonium or Atomic)
echo     c) Duke Nukem 3d version 1.5 (Patched Plutonium or Atomic)
echo     d) Quit
echo.
choice /c:abcd /n
if errorlevel 4 goto end
if errorlevel 3 goto pluto
if errorlevel 2 goto pluto
if errorlevel 1 goto Duke

:duke

echo.
echo Backing up original game.con and demo1.dmo
copy /y game.con gamebu.con
copy /y demo1.dmo demo1.dmm
rename demo2.dmo demo2.dmm
echo Done.
echo.
echo Initializing new game.con, demo1.dmo, midi file and artwork...
copy /y zerogame.con game.con
copy /y zerodemo.dmo demo1.dmo
rename tiles*.ar_ tiles*.art

echo.
goto done

:pluto

echo.
echo Backing up original game.con and demo1.dmo
copy /y game.con gamebu.con
copy /y demo1.dmo demo1.dmm
rename demo2.dmo demo2.dmm
echo Done.
echo.
echo Initializing new game.con, demo1.dmo, midi file and artwork...
copy /y zerpgame.con game.con
copy /y zerodemo.dmo demo1.dmo
rename tiles*.ar_ tiles*.art

echo.

:done

echo Conversion Completed Successfully!!!
echo.
echo. 
pause
cls
echo *** IMPORTANT NOTE, PLEASE READ THIS!!! ***
echo.
echo.
echo.
echo Your are now entering Duke Setup, please choose your sound card,
echo video settings, etc.
echo.
echo After choosing your video and sound settings (if you haven't done so
echo already) type Duke3d to play.
echo.
echo To uninstall type "unzero" at c:\duke3d.
echo.
echo This total conversion package is copyright protected.
echo (c) ZeroHour software 
echo.
echo If there is anyone out there who would like the level designers
echo who made this WONDERFUL package to come work for your company,
echo please contact Bill Tatton (wtatton@moab.net).
pause
cls
a.bat
:end

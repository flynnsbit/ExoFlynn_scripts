@echo off
rem ----------------------------------
rem Art D's Next Batch Adventure
rem Copyright (c) 1997 Arthur DiBianca
rem version 1.1
rem ----------------------------------
echo.
if '%1'=='' goto cstart
if '%1'=='setup' goto csetup
if '%_L%'=='' goto c1
if '%1'=='go' goto cgo
if '%1'=='inv' goto cinv
if '%1'=='take' goto ctake
if '%1'=='drop' goto cdrop
if '%1'=='quit' goto cquit
if '%1'=='look' goto clook
if '%1'=='say' goto csay
if '%1'=='use' goto cuse
if '%1'=='help' goto chelp
:cstart
if not exist adnext.bat goto c0
if not exist go.bat goto c2
if not '%_L%'=='' goto c3
cls
echo.
echo A few notes: 
echo.
echo 1. Type commands in lower case.
echo 2. Type 'help' for help.
echo 3. Beware of typing DOS commands while playing, since this game is
echo    actually taking place at the DOS prompt.
echo 4. Try 'advent.bat' if you haven't already.
echo.
echo.
echo                   --- Art D's Next Batch Adventure ---
set _R=%PROMPT%
set _L=2
set _F=
set _0=6
set _1=8
prompt $g
adnext go
:c0
echo First you have to give this file its rightful name: 'adnext.bat'.
goto e
:c1
echo Type 'adnext' to start.
goto e
:c2
echo Please place this file in an empty directory.
echo Then type 'adnext setup'.
goto e
:c3
echo Type 'quit' before restarting.
goto e
:cgo
if not '%_L%'=='' goto ggo
echo Type 'adnext' to start.
goto e
:ggo
if '%2'=='' goto gl
if '%2'=='n' goto gn
if '%2'=='s' goto gs
if '%2'=='w' goto gw
if '%2'=='e' goto ge
if '%2'=='u' goto gu
if '%2'=='d' goto gd
if '%2'=='north' goto gn
if '%2'=='south' goto gs
if '%2'=='west' goto gw
if '%2'=='east' goto ge
if '%2'=='up' goto gu
if '%2'=='down' goto gd
echo This adventure is strictly cardinal.
goto e
:gn
if '%_L%'=='3' set _T=6
if '%_L%'=='6' set _T=8
if '%_L%'=='9' set _T=7
if '%_T%'=='' goto gb2
goto gf
:gs
if '%_L%'=='6' set _T=3
if '%_L%'=='8' set _T=6
if '%_L%'=='7' set _T=9
if '%_T%'=='' goto gb2
goto gf
:gw
if '%_L%'=='3' set _T=2
if '%_L%'=='2' set _T=4
if '%_L%'=='4' set _T=7
if '%_L%'=='11' set _T=10
if '%_L%'=='10' goto gb6
if '%_L%'=='5' goto gb3
if '%_T%'=='' goto gb2
goto gf
:ge
if '%_L%'=='2' set _T=3
if '%_L%'=='4' set _T=2
if '%_L%'=='7' set _T=4
if '%_L%'=='10' set _T=11
if '%_L%'=='12' goto gg2
if '%_L%'=='13' set _T=10
if '%_L%'=='8' goto gb1
if '%_T%'=='' goto gb2
goto gf
:gu
if '%_L%'=='5' set _T=7
if '%_L%'=='10' goto gb5
if '%_T%'=='' goto gb2
goto gf
:gd
if '%_L%'=='7' set _T=5
if '%_L%'=='5' set _T=10
if '%_T%'=='' goto gb2
goto gf
:gb1
echo The entrance is barred by a massive portcullis.
goto e
:gb2
echo You can't go that way.
goto e
:gb3
if '%_D%'=='X' goto gb4
if '%_2%'=='X' goto gg1
echo You can't quite reach the opening from the ladder.
goto e
:gb4
echo Even if you could see an opening there, you wouldn't be able to reach it.
goto e
:gb5
echo The ladder is out of your reach.
goto e
:gb6 
if not '%_0%'=='X' goto gb2
set _L=13
adnext go
:gg1
echo You make your way along the rope, taking care not to look down. After
echo what seems like an hour, you reach the opening and swing yourself inside.
set _L=12
adnext go
:gg2
echo You take a running leap through the opening. Luckily, you manage to grab
echo the ladder as you sail past it.
set _L=5
adnext go
:gf
set _L=%_T%
:gl
set _D=
goto gd%_L%
:gd2
echo You are standing in a sunny clearing. A well-lit path leads east, and a
echo dark path leads west. There is a statue here.
goto go
:gd3
echo You are on a beautiful beach east of a thick forest. A vast ocean
echo stretches far out of sight to the east. Cool waves lap at your feet. 
echo Impassable bluffs stand to the south, but a dirt path climbs a steep hill
echo to the north.
goto go
:gd4
echo You are at the entrance to a dark cave. A path runs east to a sunnier
echo area. Etched into the stone above the cave is the word UBERFISCH.
goto go
:gd5
goto gk
:gd5a
echo You are clinging to a ladder in a large cylindrical stone shaft. You can 
echo go up or down. There's an opening in the west side of the shaft, but it's
echo probably too far to reach. There is a hook about two feet above the 
echo opening.
if '%_2%'=='X' echo A rope stretches from the ladder to the hook.
goto go
:gd6
echo You are standing atop a tall hill. From here, you can see a vast ocean to 
echo the east and a rich green forest to the west. To the southwest you can
echo make out a clearing in the forest. A beach lies south of here, and there
echo is some sort of building to the north. Steep paths descend to the north
echo and south.
goto go
:gd7
goto gk
:gd7a
echo You are in the mouth of a cave. The walls are dry and bare. A wide
echo passage leads south, and a ladder descends through a stone-rimmed hole
echo in the floor.
goto go
:gd8
echo You stand before an enormous castle. Its arched entrance is to the 
echo east. A path leads south up a steep hill.
goto go
:gd9
goto gk
:gd9a
echo You are in a perfectly cubical room with walls of smooth stone. A wide
echo passage leads north. There is pedestal in the center of the room.
goto go
:gd10
echo You are in a very large room. A ladder hangs about ten feet above the 
echo floor and climbs through a dark hole in the ceiling, at least thirty 
echo feet above you. There is a large stone door to the west and an open
if '%_0%'=='X' goto gd10b
echo doorway to the east. The stone door bears some engravings.
goto go
:gd10b
echo doorway to the east. The stone door stands open.
goto go
:gd11
goto gk
:gd11a
echo You are in a room full of strange gadgets. The only exit is west.
echo All the gadgets look broken or useless, except for one shiny yellow
echo machine.
goto go
:gd12
goto gk
:gd12a
echo You are in a tiny room with an opening in the east wall. A shaft of 
echo sunlight coming through a little fissure in the ceiling illuminates a
echo spot on the floor. On the wall is inscribed, "Say the magic word!"
goto go
:gd13
echo You are in a small room. There is a locked iron door to the west and
echo an open doorway to the east.
goto go
:gk
if '%_0%'=='1' goto gk2
if '%_0%'=='%_L%' goto gk2
goto gk3
:gk2
if '%_F%'=='1' goto gd%_L%a
:gk3
set _D=X
echo You are in the dark.
goto e
:go
if '%_0%'=='%_L%' echo There is a solid gold torch lying here.
if '%_1%'=='%_L%' echo A recent edition of the local paper lies nearby.
if '%_2%'=='%_L%' echo A strong rope lies on the ground.
if '%_3%'=='%_L%' echo There is an iron key here.
goto e
:cinv
if '%_0%'=='1' goto i1
if '%_1%'=='1' goto i1
if '%_2%'=='1' goto i1
if '%_3%'=='1' goto i1
echo You have nothing.
goto e
:i1
if '%_F%'=='1' set _U= (lit)
echo You have
if '%_0%'=='1' echo   a solid gold torch%_U%
if '%_1%'=='1' echo   a copy of the local paper
if '%_2%'=='1' echo   a strong rope
if '%_3%'=='1' echo   an iron key
goto e
:ctrans
if '%2'=='torch' goto ct0
if '%2'=='paper' goto ct1
if '%2'=='rope' goto ct2
if '%2'=='key' goto ct3
goto %_V%
:ct0
set _T=_0
set _U=%_0%
goto %_V%
:ct1
set _T=_1
set _U=%_1%
goto %_V%
:ct2
set _T=_2
set _U=%_2%
goto %_V%
:ct3
set _T=_3
set _U=%_3%
goto %_V%
:ctake
if '%2'=='' goto tb3
if '%_D%'=='X' goto tb4
set _V=tr1
goto ctrans
:tr1
if not '%_T%'=='_2' goto te
if not '%_L%'=='5' goto te
if not '%_2%'=='X' goto te
echo You can't.
goto e
:te
if '%_U%'=='%_L%' goto tg
if '%_U%'=='1' goto tb1
echo There's no such thing here.
goto e
:tg
set %_T%=1
echo Taken.
goto e
:tb1
echo You already have the %2.
goto e
:tb3
echo 'Take' requires an object.
goto e
:tb4
echo It's too dark to take anything right now.
goto e
:cdrop
if '%2'=='' goto dwhat
set _V=de
goto ctrans
goto de
:de
if '%_U%'=='1' goto dg
:db
echo You aren't carrying that.
goto e
:dwhat
echo 'Drop' requires an object.
goto e
:db2
echo It's dangerous to drop things from heights.
goto e
:dg
if '%_L%'=='5' goto db2
set %_T%=%_L%
echo Dropped.
goto e
:cquit
prompt %_R%
set _R=
set _L=
set _D=
set _F=
set _0=
set _1=
set _2=
set _3=
echo.
echo Leaving 'adnext'.
echo.
goto e
:clook
if '%2'=='' goto cgo
if '%_D%'=='X' goto lb1
if '%2'=='statue' goto lstatue
if '%2'=='pedestal' goto lped
if '%2'=='door' goto ldoor
if '%2'=='machine' goto lmac
set _V=lr1
goto ctrans
:lr1
if '%_U%'=='1' goto l%_T%
if '%_U%'=='%_L%' goto l%_T%
goto lb2
:lb1
echo Sorry, too dark.
goto e
:lb2
echo You can't see that.
goto e
:lsign
if '%_L%'=='pend' goto ls1
if '%_L%'=='shop' goto ls2
goto lb2
:ls1
echo The sign reads 'This Way to the Cave of Thrills.'
goto e
:ls2
echo The sign reads 'Until Tuesday, 40%% off magic words like CRACKTHE.'
goto e
:lstatue
if not '%_L%'=='2' goto lb2
echo This statue of a smiling crowned man appears to be the work of the
echo famous sculptor Enrico Ololini. The presumably important inscription
echo.on its base has faded beyond legibility.
goto e
:lped
if not '%_L%'=='9' goto lb2
echo The pedestal is made of silver. There is an opening in the center of 
echo the small platform at its top.
goto e
:ldoor
if not '%_L%'=='10' goto lb2
echo.On the door is engraved a picture of a cube with a flame at its
echo center. An engraved arrow points from the cube to a picture of an
echo open door.
goto e
:lmac
if not '%_L%'=='11' goto lb2
echo The machine has a square opening, above which is written, "Mr. Ropeman
echo Ropemaker, Model 13B77. Place raw material in opening."
goto e
:l_0
echo A message has been carved in tiny letters around the torch's rim:
echo 'Take me to the beach and tell me the King's word.'
goto e
:l_1
echo One story is particularly interesting. Apparently the King, reported
echo to have developed an obsession for breadsticks, has departed on
echo a journey to find the best breadstick in the kingdom. It's a big kingdom,
echo so he's likely to be gone a long time.
goto e
:l_2
echo It's a good rope.
goto e
:l_3
echo The key is old but strangely unrusted.
goto e
:csay
set _T= for a moment.
if '%2'=='' goto sb
if '%2'=='phlegmatic' goto s1
if '%2'=='uberfisch' goto s2
goto sb1
goto e
:sb
echo Say what?
goto e
:s1
if not '%_L%'=='3' goto sb1
if '%_0%'=='1' goto sg1
goto sb1
:s2
if not '%_L%'=='12' goto sb1
if not '%_3%'=='' goto sb1
echo An iron key appears in the circle of light on the floor.
set _3=12
goto e
goto sb1
:sb1
echo Nothing happens.
goto e
:sg1
if '%_F%'=='1' goto sg2
echo The torch bursts into flame!
set _F=1
goto e
:sg2
echo The torch flares up briefly.
goto e
:cuse
if '%2'=='' goto ub1
if '%_D%'=='X' goto ub2
set _V=ur1
goto ctrans
:ur1
if '%_T%'=='' goto ub5
if not '%_U%'=='1' goto db
goto u%_T%
:ub1
echo 'Use' requires an object.
goto e
:ub2
echo It's too dark.
goto e
:ub3
echo You drop the %2 into the opening in the yellow machine. You hear some
echo grinding noises, but nothing else happens.
set %_T%=X
if '%_T%=='_0' adnext go
goto e
:ub4
echo You see no obvious use for the %2.
goto e
:ub5
echo I don't know how to use that.
goto e
:u_0
if not '%_L%'=='9' goto utor2
echo You drop the torch into the opening atop the pedestal. You hear a
echo grinding noise somewhere below you.
set _0=X
adnext go
:utor2
if not '%_L%'=='11' goto ub4
goto ub3
:u_1
if '%_L%'=='9' goto ug2
if not '%_L%'=='11' goto ub4
goto ug1
:u_2
if '%_L%'=='9' goto ug2
if '%_L%'=='11' goto ug1
if not '%_L%'=='10' goto urop2
echo You throw up the rope and loop it around the bottom of the ladder.
echo You pull yourself up the rope to the ladder, remove the rope, and start
echo to climb.
set _L=5
adnext go
:urop2
if not '%_L%'=='5' goto ub4
echo You throw the rope at the hook, where it snags. You tie the other end of
echo the rope to the ladder. You should be able to climb to the opening, but
echo you won't be able to remove the rope.
set _2=X
goto e
:u_3
if '%_L%'=='9' goto ug2
if '%_L%'=='11' goto ub3
if not '%_L%'=='13' goto ub4
echo You unlock the door and exit into a tight passage. The passage ends
echo after about fifty feet at the edge of an enormous chasm. A thin stone
echo bridge arches over the chasm. You cross the bridge, and as you step off
echo at the west side of the chasm, it collapses behind you! As the boom
echo of falling rock subsides, a voice suddenly thunders, "Well done again! 
echo But be prepared! Remember the word JAZZERCISE, and anxiously await 
echo Art D's Third Batch Adventure! Farewell!"
pause
quit
:ug1
echo You drop the %2 into the opening in the yellow machine. You hear some
echo grinding noises followed by some weaving noises. A strong rope drops out
echo of a concealed opening onto the floor.
set %_T%=X
set _2=11
goto e
:ug2
echo The %2 disappears into the opening atop the pedestal.
set %_T%=X
goto e
:chelp
echo This batch adventure takes one- and two-word commands.
echo The following verbs are understood: go, take, drop, look, examine, 
echo   inv (inventory), read, say, use, and quit.
echo The abbreviations n,w,e,s,u,d,i, and l are also understood.
echo.
echo Enjoy!
goto e  
:csetup
set _T=echo @adnext 
%_T% go d > d.bat
%_T% drop %%1% > drop.bat
%_T% go e > e.bat
%_T% take %%1% > get.bat
%_T% go %%1% > go.bat
%_T% inv %%1% > inv.bat
%_T% go n > n.bat
%_T% quit > quit.bat
%_T% go s > s.bat
%_T% look %%1% > l.bat
%_T% take %%1% > take.bat
%_T% go u > u.bat
%_T% go w > w.bat
%_T% look %%1% > look.bat
%_T% say %%1% > say.bat
%_T% use %%1% > use.bat
%_T% inv %%1% > i.bat
%_T% look %%1% > examine.bat
%_T% look %%1% > read.bat
%_T% help > help.bat
echo Type 'adnext' to start.
goto e
:e
set _T=
set _U=
set _V=
echo.

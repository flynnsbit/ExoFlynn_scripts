@echo off
rem ----------------------------------
rem Art D's Third Batch Adventure
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
if not exist adthird.bat goto c0
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
echo 4. Try 'advent.bat' and 'adnext.bat' if you haven't already.
echo.
echo.
echo                   --- Art D's Third Batch Adventure ---
set _R=%PROMPT%
set _L=2
set _F=
set _0=3
set _1=7
set _2=11
set _4=10
prompt $g
adthird go
:c0
echo First you have to give this file its rightful name: 'adthird.bat'.
goto e
:c1
echo Type 'adthird' to start.
goto e
:c2
echo Please place this file in an empty directory.
echo Then type 'adthird setup'.
goto e
:c3
echo Type 'quit' before restarting.
goto e
:cgo
if not '%_L%'=='' goto ggo
echo Type 'adthird' to start.
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
if '%_L%'=='2' set _T=3
if '%_L%'=='4' set _T=6
if '%_L%'=='6' set _T=8
if '%_L%'=='8' goto glock
if '%_T%'=='' goto gb2
goto gf
:gs
if '%_L%'=='3' set _T=2
if '%_L%'=='6' set _T=4
if '%_L%'=='8' set _T=6
if '%_L%'=='10' set _T=8
if '%_T%'=='' goto gb2
goto gf
:gw
if '%_L%'=='2' goto gdark
if '%_L%'=='3' set _T=4
if '%_L%'=='4' set _T=5
if '%_L%'=='5' goto gfast
if '%_L%'=='6' set _T=9
if '%_L%'=='7' set _T=6
if '%_L%'=='11' set _T=8
if '%_T%'=='' goto gb2
goto gf
:ge
if '%_L%'=='4' set _T=3
if '%_L%'=='5' set _T=4
if '%_L%'=='6' set _T=7
if '%_L%'=='9' set _T=6
if '%_L%'=='8' set _T=11
if '%_L%'=='12' set _T=2
if '%_T%'=='' goto gb2
goto gf
:gu
if '%_T%'=='' goto gb2
goto gf
:gd
if '%_T%'=='' goto gb2
goto gf
:gb1
echo The entrance is barred by a massive portcullis.
goto e
:gb2
echo You can't go that way.
goto e
:gb6 
if not '%_0%'=='X' goto gb2
set _L=13
adthird go
:gf
set _L=%_T%
:gl
set _D=
goto gd%_L%
:gd2
echo You are standing in a vast cavern at the west brink of an enormous,
echo uncrossable chasm. Bright light shines in from a passage to the north.
echo A dark tunnel heads west.
goto go
:gd3
echo You are in a sunny meadow. To the east stretches a rich green forest.
echo South of you gapes the mouth of a dark cave. A little path leaves the
echo meadow to the west.
goto go
:gd4
echo You are at a bend in a dirt road. The road heads out of sight to the west
echo and ends in a small village to the north. A little path leads east into
echo a meadow.
goto go
:gd5
echo You are on a well-kept dirt road that leads east and west.
goto go
:gd6
echo You are standing at the end of a dirt road in the middle of a small
echo village. Various buildings stand to the north, east, and west, and the
echo road leads out of the village to the south.
goto go
:gd7
echo You are in an old bare hut. There is no furniture except a straw pallet.
echo The place looks abandoned, except for a cheery fire burning in the
echo fireplace.
goto go
:gd8
echo You are in the town hall. The town seal is engraved in the stone floor,
echo and the flag of the kingdom hangs on a wall. Doors lead north and east,
echo and an archway allows you to exit to the south.
goto go
:gd9
echo You are the sole patron of this quaint little shop. A bell sits on the
echo counter, and a sign hangs from one wall.
goto go
:gd10
echo You have entered the cluttered office of one of the town leaders. There's 
echo a large oak desk in the middle of the office.
goto go
:gd11
echo You are in a small but comfortable lounge. There are several tables and
echo chairs, and even a small kitchen area.
goto go
:gd12
echo You are in a small room that must have been excavated long ago. Useless
echo old mining equipment lies scattered around. In the rock in one corner of
echo the room, probably the last part excavated, you see exposed a bit of 
echo bright blue metal.
goto go
:glock
if '%_F1%'=='' goto glock1
set _L=10
goto gd10
:glock1
echo The door is locked.
goto e
:gdark
if not '%_F%'=='5' goto gdark1
if '%_7%'=='12' goto gdark2
if '%_7%'=='1' goto gdark2
:gdark1
echo It's too dark that way.
goto e
:gdark2
set _L=12
goto gd12
:gfast
if '%_F%'=='6' goto gfast1
echo The road travels out of sight to the west. At your slow pace, it
echo would be weeks before you got anywhere interesting.
goto e
:gfast1
echo The road goes on seemingly forever. But you're no longer any ordinary
echo traveler. You take one bold step to the west, and suddenly you're flying
echo down the road faster than a cannonball. The terrain flashes by you in a
echo blur. After just a couple of minutes, you manage to slow to a halt at the
echo gates of a huge city. As you gape at its bright towers and busy streets,
echo a piece of paper blows in front of you. You pick it up and read it. It 
echo says,
echo. 
echo 'Once again, congratulations! You have completed Art D's Third
echo Batch Adventure. This time your word is CORKY. It may be shorter and 
echo less impressive than previous words, but it's got power. Oh yes.'
echo.
echo Editors' note: For those familiar with Art D's Next Batch Adventure, we 
echo regret that the word discovered at its conclusion was not used in this
echo game. The blame for this decision rests squarely on the shoulders of Art D
echo himself, so if you find out how to reach him, send your angry cards and
echo letters to him directly.
echo.
echo Thanks for playing.
pause
quit
:go
if '%_0%'=='%_L%' echo A dusty old book lies on the ground.
if not '%_1%'=='%_L%' goto go1
if '%_L%'=='7' echo A pot bubbles over the fire.
if not '%_L%'=='7' echo A bubbling pot sits here.
:go1
if '%_2%'=='%_L%' echo There's a small cloth square on the ground.
if '%_3%'=='%_L%' echo There's a silver key here.
if '%_4%'=='%_L%' echo There's a frosty glass bottle here.
if '%_5%'=='%_L%' echo You see a shiny gold coin here.
if '%_6%'=='%_L%' echo A hoe lies on the ground.
if '%_7%'=='%_L%' echo A jewelled match lies here.
goto e
:cinv
if not '%_F%'=='4' set _U= (lit)
if '%_0%'=='1' goto i1
if '%_1%'=='1' goto i1
if '%_2%'=='1' goto i1
if '%_3%'=='1' goto i1
if '%_4%'=='1' goto i1
if '%_5%'=='1' goto i1
if '%_6%'=='1' goto i1
if '%_7%'=='1' goto i1
echo You have nothing.
goto e
:i1
echo You have
if '%_0%'=='1' echo  a dusty book
if '%_1%'=='1' echo  a bubbling pot of stew
if '%_2%'=='1' echo  a padded cloth square
if '%_3%'=='1' echo  a silver key
if '%_4%'=='1' echo  a frosty glass bottle
if '%_5%'=='1' echo  a gold coin
if '%_6%'=='1' echo  a hoe
if '%_7%'=='1' echo  a jewelled match%_U%
goto e
:ctrans
if '%2'=='book' goto ct0
if '%2'=='pot' goto ct1
if '%2'=='kettle' goto ct1
if '%2'=='square' goto ct2
if '%2'=='key' goto ct3
if '%2'=='bottle' goto ct4
if '%2'=='coin' goto ct5
if '%2'=='hoe' goto ct6
if '%2'=='match' goto ct7
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
:ct4
set _T=_4
set _U=%_4%
goto %_V%
:ct5
set _T=_5
set _U=%_5%
goto %_V%
:ct6
set _T=_6
set _U=%_6%
goto %_V%
:ct7
set _T=_7
set _U=%_7%
goto %_V%
:ctake
if '%2'=='' goto tb3
if '%_D%'=='X' goto tb4
set _V=te
goto ctrans
:te
if '%_U%'=='%_L%' goto tg
if '%_U%'=='1' goto tb1
echo There's no such thing here.
goto e
:tg
if not '%_T%'=='_1' goto tg1
if not '%_2%'=='1' goto tb5
if '%_F%'=='' set _F=1
goto tg2
:tg1
if not '%_T%'=='_4' goto tg2
if '%_F2%'=='' goto tb6
if not '%_F%'=='1' goto tg2
set _F=2
set _5=10
set _4=1
echo Taken. Under the bottle is a gold coin.
goto e
:tg2
if not '%_T%'=='_6' goto tg3
if not '%_F%'=='2' goto tg3
set _F=3
goto tg3
:tg3
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
:tb5
echo It's too hot! You'd burn your fingers.
goto e
:tb6
echo The bottle won't budge. It seems to be frozen to the desk.
goto e
:cdrop
if '%2'=='' goto dwhat
set _V=de
goto ctrans
:de
if '%_U%'=='1' goto dg
:db
echo You aren't carrying that.
goto e
:dwhat
echo 'Drop' requires an object.
goto e
:dg
if not '%_T%'=='_2' goto dg1
if not '%_1%'=='1' goto dg1
echo Not while you're carrying that hot kettle!
goto e
:dg1
set %_T%=%_L%
echo Dropped.
goto e
:cquit
prompt %_R%
set _R=
set _L=
set _D=
set _F=
set _F1=
set _F2=
set _0=
set _1=
set _2=
set _3=
set _4=
set _5=
set _6=
set _7=
echo.
echo Leaving 'adthird'.
echo.
goto e
:clook
if '%2'=='' goto cgo
if '%_D%'=='X' goto lb1
set _V=lr1
goto ctrans
:lr1
if not '%_T%'=='' goto l1
if '%2'=='seal' goto l%2
if '%2'=='flag' goto l%2
if '%2'=='pallet' goto l%2
if '%2'=='desk' goto l%2
if '%2'=='sign' goto l%2
if '%2'=='metal' goto l%2
goto lb2
:l1
if '%_U%'=='%_L%' goto l%_T%
if '%_U%'=='1' goto l%_T%
goto lb2
:lb1
echo Sorry, too dark.
goto e
:lb2
echo You can't see that.
goto e
:lseal
if not '%_L%'=='8' goto lb3
echo The town seal depicts a grinning king dancing on a table. Below the table
echo is the town motto: 'A stick of bread, a jug of wine, and thou.' The seal
echo is well drawn, if a little silly.
goto e
:lflag
if not '%_L%'=='8' goto lb3
echo The flag of the kingdom consists of a red diamond on a green field. In
echo the corners, clockwise from top left, are a white crown, a gray feather,
echo a black rod, and a gray eye. It's supposed to be a very ancient symbol
echo of the region.
goto e
:lpallet
if not '%_L%'=='7' goto lb3
echo A small sign has been tacked on the pallet. It says, 'Harvey's pallet.'
if not '%_3%'=='' goto e
echo As you lift up a corner of the pallet, you discover a small silver key.
set _3=7
goto e
:ldesk
if not '%_L%'=='10' goto lb3
echo It's a nice oak desk, although it's only varnished on the top and sides.
echo Attached to the desk is a nameplate reading 'Harvey's desk.' Strange.
goto e
:lsign
if not '%_L%'=='9' goto lb3
echo Willard's Garden Supplies
echo.
echo Rake ........ 2 kc (king's coin)
echo Spade ....... 3 kc
echo Hoe ......... 1 kc
echo Mulch ....... 2 kc
goto e
:lmetal
if not '%_L%'=='12' goto lb3
echo The metal is shiny and seems to glow faintly. You seem to remember having
echo heard about it before, but you can't remember what's special about it.
goto e
:l_0
echo The book is untitled. On the first page is written,
echo.
echo 'Follow my writing and learn something new.
echo  For starters, you'd best find a kettle of stew.'
if '%_F%'=='' goto lbook1
echo.
echo.On the second page,
echo.
echo 'The kettle's one thing that will help you proceed.
echo  You'll also require a bottle of mead.'
if '%_F%'=='1' goto lbook1
echo.
echo.On the third page,
echo.
echo 'With bottle and kettle you're raring to go.
echo  The third thing you need to obtain is a hoe.'
if '%_F%'=='2' goto lbook1
echo.
echo.On the fourth page,
echo.
echo 'Now mix 'em and stir 'em and what do you get?
echo  An object more useful than anything yet.'
if '%_F%'=='3' goto lbook1
:lbook1
echo.
echo The rest of the pages are blank.
goto e
:l_1
echo It's a round iron kettle with a handle. Someone has written 'Harvey's pot'
echo.on the side. It is full of thick bubbling stew.
goto e
:l_2
echo The cloth square is padded and bears an embroidered design of pink and
echo yellow flowers.
goto e
:l_3
echo.On the key is printed a tiny version of the town seal.
goto e
:l_4
echo The bottle is very cold and full of a light-colored fluid. It bears a 
echo label: 'Haggitman's Old Country Mead.'
goto e
:l_5
echo.On the face of the coin is stamped a picture of the king (smiling) and
echo the motto 'Zingem Bingem Nub.' On the reverse is stamped a finely detailed
echo depiction of his castle. 
goto e
:l_6
echo It's a nice, sturdy hoe. 
goto e
:l_7
echo It's the same size and shape as a plain wooden match, but it's made of
echo ivory and has an obsidian head. Various tiny jewels have been set into
echo the match. It must be worth a fortune.
goto e
:csay
if not '%2'=='' goto s1
echo Say what?
goto e
:s1
if not '%_L%'=='9' goto sb1
if '%_F3%'=='1' goto s2
echo A voice from under the counter shouts, 'The money first!'
goto e
:s2
if not '%2%'=='hoe' goto s3
echo You hear the sound of rummaging and clattering. Then a hoe comes sailing
echo over the counter and lands at your feet.
set _6=9
set _F3=
goto e
:s3
echo A voice from under the counter shouts, 'I'm not selling you one of
echo those!'
goto e
:sb1
echo Nothing happens.
goto e
:cuse
if '%2'=='' goto ub1
if '%_D%'=='X' goto ub2
if '%2'=='metal' goto u%2
if '%2'=='bell' goto u%2
set _V=ur1
goto ctrans
:ur1
if '%_T%=='' goto ub5
if not '%_U%'=='1' goto db
goto u%_T%
:ub1
echo 'Use' requires an object.
goto e
:u_0
:u_2
goto ub4
:u_1
if not '%_L%'=='10' goto ub4
if not '%_F2%'=='' goto ub4
echo You manage to melt some ice off the bottle with the heat of the pot.
set _F2=1
goto e
:u_3
if not '%_L%'=='8' goto ub4
if '%_F1%'=='' goto ukey1
echo The door is already unlocked.
goto e
:ukey1
echo The silver key unlocks the north door.
set _F1=1
goto e
:u_4
if '%_F%'=='3' goto ubot1
echo You're not sure what to do yet.
goto e
:ubot1
echo You pour the mead into the pot and discard the bottle. The pot starts
echo bubbling furiously.
set _4=
set _F=4
goto e
:u_5
if not '%_L%'=='9' goto ub4
echo You drop the coin over the counter. You hear biting sounds, then a grunt
echo of approval.
set _5=
set _F3=1
goto e
:u_6
if '%_F%'=='4' goto uhoe1
echo Not yet.
goto e
:uhoe1
if not '%_1%'=='1' goto uhoe2
echo It's too hard to stir while you're holding the pot.
goto e
:uhoe2
if not '%_1%'=='%_L%' goto ub4
echo You stir the thick stew around with the hoe. The stew starts to glow in
echo a startling way. Suddenly, there's a flash of light and a loud pop. The
echo pot has disappeared (as well as the hoe), and in its place lies a  
echo jewelled match.
set _1=
set _6=
set _7=%_L%
goto e
:u_7
if not '%_7%'=='1' goto db
if '%_F%'=='4' goto umatch1
echo It's already lit.
goto e
:umatch1
if not '%_L%'=='10' goto umatch2
echo You strike the match on the underside of the desktop. It flares up into
echo a nice bright little flame.
set _F=5
goto e
:umatch2
echo You don't see any really good surface on which to strike it.
goto e
:ubell
if not '%_L%'=='9' goto lb2
if not '%_6%'=='' goto ubell1
echo A voice from under the counter shouts, 'First give me the cash! Then tell
echo me what you want!'
goto e
:ubell1
echo A voice from under the counter shouts, 'Go away!'
goto e
:umetal
if not '%_L%'=='12' goto ub3
if '%_F%'=='5' goto umet1
echo Nothing else happens.
goto e
:umet1
echo As you touch the metal, you feel strange. You legs start jiggling and 
echo your feet suddenly fly out from under you. You land hard on your back.
echo As you get up, you notice that you feel energetic and zippy.
set _F=6
goto e
:ub4
echo You see no obvious use for the %2.
goto e
:ub5
echo I don't know how to use that.
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
set _T=echo @adthird 
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
echo Type 'adthird' to start.
goto e
:e
set _T=
set _U=
set _V=
echo.

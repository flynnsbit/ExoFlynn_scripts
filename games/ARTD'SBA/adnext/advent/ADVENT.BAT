@echo off
rem ----------------------------------
rem Art D's First Batch Adventure
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
if not exist advent.bat goto c0
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
echo.
echo.
echo                   --- Art D's First Batch Adventure ---
set _R=%PROMPT%
set _L=0
set _0=5
set _1=1
set _2=x
set _3=9
prompt $g
advent go
:c0
echo First you have to give this file its rightful name: 'advent.bat'.
goto e
:c1
echo Type 'advent' to start.
goto e
:c2
echo Please place this file in an empty directory.
echo Then type 'advent setup'.
goto e
:c3
echo Type 'quit' before restarting.
goto e
:cgo
if not '%_L%'=='' goto ggo
echo Type 'advent' to start.
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
if '%_L%'=='0' set _T=1
if '%_L%'=='7' set _T=6
goto gt
:gs
if '%_L%'=='1' set _T=0
if '%_L%'=='6' set _T=7
goto gt
:gw
if '%_L%'=='1' set _T=5
if '%_L%'=='5' goto gb1
if '%_L%'=='9' set _T=7
if '%_L%'=='7' goto gb3
goto gt
:ge
if '%_L%'=='5' set _T=1
if '%_L%'=='7' set _T=9
if '%_L%'=='10' goto gb1
goto gt
:gu
if '%_L%'=='2' set _T=1
if '%_L%'=='3' set _T=6
if '%_L%'=='4' set _T=8
if '%_L%'=='8' goto gg1
goto gt
:gd
if '%_L%'=='1' set _T=2
if '%_L%'=='6' set _T=3
if '%_L%'=='8' set _T=4
goto gt
:gt
if '%_T%'=='' goto gb2
set _L=%_T%
goto gl
:gb1
echo Nope. Too slick. We can't let you risk hurting yourself in a user-
echo friendly adventure like this one. Other frustrations should suffice.
goto e
:gb2
echo You can't go that way.
goto e
:gb3
echo The west exit is barred by a massive portcullis.
goto e
:gg1
echo As you emerge from the cellar, its entrance collapses behind you! You find
echo yourself in a sunny clearing with a statue of a smiling crowned man.
echo.On its base is an inscription: 'You have passed the first test. Your 
echo reward is a single word: PHLEGMATIC. Remember it well, for it will aid you 
echo.on the dark road that lies ahead. Play Art D's Next Batch Adventure and 
echo fulfill your destiny!'
echo.
pause
quit
:gl
set _D=
goto gl%_L%
:gl0
echo You are walking along a sunny north/south path near a small stream.
echo A very recent landslide prevents your return to the south.
goto go
:gl1
echo You are at the end of a sunny path. A large hole leads down and a 
echo concrete bridge crosses a stream to the west.
echo A sign has been planted next to the hole.
goto go
:gl2
goto gk
:gl2a
echo You are in a damp cave with an exit above. The letters SCSCSCFY are 
echo etched in one wall.
goto go
:gl3
goto gk
:gl3a
echo You are in a damp cave with an exit above. The word BREADSTICK is
echo etched in one wall.
goto go
:gl4
goto gk
:gl4a
echo You are in a damp cave with an exit above. The message CRACKTHE is
echo etched in one wall.
goto go
:gl5
echo You are on the east edge of a paved road. The road is very slick
echo here, so it might not be wise to venture out on it.
goto go
:gl6
goto gk
:gl6a
echo You are in a throne room. Right behind the throne, actually.
echo The main part of the room lies to the south. There's an open trap door
echo in the floor.
goto go
:gl7
goto gk
:gl7a
echo You are in a throne room. Exits lead east and west.
goto go
:gl8
goto gk
:gl8a
echo You are in a dusty cellar. Stairs go up and there is a hole in the floor
echo in one corner.
goto go
:gl9
goto gk
:gl9a
echo You are in the king's private gymnasium.
goto go
:gl10
echo You are in a quaint little shop. A small bell sits on the counter and
echo a sign hangs on one wall.
goto go
:gk
if '%_2%'=='p' goto gl%_L%a
set _D=x
echo You are in the dark.
goto e
:go
set _U=echo There is a 
if '%_0%'=='%_L%' %_U%small box here.
if '%_1%'=='%_L%' %_U%sharp knife here.
if '%_2%'=='%_L%' %_U%shiny unlit lamp here.
if '%_3%'=='%_L%' %_U%pair of cleated shoes here.
goto e
:cinv
if '%_0%'=='p' goto i1
if '%_1%'=='p' goto i1
if '%_2%'=='p' goto i1
if '%_3%'=='p' goto i1
echo You are carrying nothing.
goto e
:i1
echo You are carrying
if '%_0%'=='p' echo   a box
if '%_1%'=='p' echo   a knife
if '%_2%'=='p' echo   a lit lamp
if '%_3%'=='p' echo   a pair of shoes
goto e
:ctake
if '%2'=='' goto tb3
if '%_D%'=='y' goto tb4
set _V=tr1
goto ctrans
:tr1
if '%_U%'=='%_L%' goto tg
if '%_U%'=='p' goto tb1
echo There's no such thing here.
goto e
:tg
set %_T%=p
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
if '%2'=='' goto db1
set _V=dr1
goto ctrans
:dr1
if '%_U%'=='p' goto dg
echo You aren't carrying that.
goto e
:db1
echo 'Drop' requires an object.
goto e
:dg
set %_T%=%_L%
echo Dropped.
goto e
:cquit
prompt %_R%
set _R=
set _L=
set _D=
set _0=
set _1=
set _2=
set _3=
echo Leaving 'advent'.
echo.
goto e
:ctrans
if '%2'=='box' goto ct0
if '%2'=='knife' goto ct1
if '%2'=='lamp' goto ct2
if '%2'=='shoes' goto ct3
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
:clook
if '%2'=='' goto cgo
if '%_D%'=='y' goto lb1
if '%2'=='sign' goto lsign
set _V=l1
goto ctrans
:l1
if '%_U%'=='p' goto l%_T%
if '%_U%'=='%_L%' goto l%_T%
goto lb2
:lb1
echo Sorry, too dark.
goto e
:lb2
echo You can't see that.
goto e
:lsign
if '%_L%'=='1' goto ls1
if '%_L%'=='10' goto ls2
goto lb2
:ls1
echo The sign reads 'This Way to the Cave of Thrills.'
goto e
:ls2
echo The sign reads 'Until Tuesday, 40%% off magic words like CRACKTHE.'
goto e
:l_0
echo The box is made of cardboard and wrapped in decorative colored paper.
echo An ad hanging from the box depicts a smiling crowned man in a cave
echo carrying a long thin food item. The caption reads 'When someone 
echo asks me what I want for a snack, I always say BREADSTICK! 
echo Try it! It's new!'
goto e
:l_1
echo The knife is very sharp.
goto e
:l_2
echo The lamp bears the inscription 'Frenthor's Magic Touch-Activated Lamps.'
goto e
:l_3
echo The cleats look sturdy.
goto e
:csay
set _T= for a moment.
if '%2'=='' goto sb
if '%2'=='scscscfy' goto s1
if '%2'=='breadstick' goto s2
if '%2'=='crackthe' goto s3
goto sb4
goto e
:sb
echo Say what?
goto e
:s1
if '%_L%'=='3' goto sg1
if '%_L%'=='4' goto sg1
goto sb2
:s2
if '%_L%'=='2' goto sg2
if '%_L%'=='4' goto sg2
goto sb2
:s3
if '%_L%'=='2' goto sg3
if '%_L%'=='3' goto sg3
goto sb2
:sb2
if '%_L%'=='2' goto sb3
if '%_L%'=='3' goto sb3
if '%_L%'=='4' goto sb3
goto sb4
goto e
:sb3
echo A hollow voice says 'Same to you.'
goto e
:sb4
echo Nothing happens.
goto e
:sg1
echo Your vision blurs%_T%
set _L=2
goto e
:sg2
echo You feel queasy%_T%
set _L=3
goto e
:sg3
echo Your ears buzz%_T%
set _L=4
goto e
:cuse
if '%2'=='' goto ub1
if '%_D%'=='y' goto ub2
if '%2'=='bell' goto ubell
set _V=ur1
goto ctrans
:ur1
if '%_U%'=='' goto ub5
if not '%_U%'=='p' goto dr1
goto u%_T%
:ub1
echo 'Use' requires an object.
goto e
:ub2
echo You might hurt yourself if you try to use anything in the dark.
goto e
:u_0
if not '%_2%'=='x' goto ub4
echo The beautiful colored paper is wrapped very tightly and your 
echo fingernails aren't sharp enough to tear it.
goto e
:u_1
if not '%_0%'=='p' goto ub4
if not '%_2%'=='x' goto ub4
echo The knife slices through the box's colored wrapping paper. 
echo Inside the box is a shiny little lamp that lights up as you take it.
set _2=p
goto e
:u_2
goto ub4
:u_3
if '%_L%'=='5' goto ush1
if '%_L%'=='10' goto ush2
goto ub4
:ush1
set _L=10
goto ush3
:ush2
set _L=5
goto ush3
:ush3
echo Using the nifty cleated shoes, you jog effortlessly across the road.
goto e
:ubell
if not '%_L%'=='10' goto lb2
echo A voice from under the counter shouts 'Go away!'
goto e
:ub4
echo You see no obvious use for the %2.
goto e
:ub5
echo You can't use that.
goto e
:chelp
echo This batch adventure takes one- and two-word commands.
echo The following verbs are understood: go, take, drop, look, examine, 
echo   inv (inventory), read, say, use, and quit.
echo The abbreviations n,w,e,s,u,d,i, and l are also understood.
echo.
echo My thanks to Robert Irving, who gave me the idea for DOS batch
echo adventures.
echo.
echo Enjoy!
goto e  
:csetup
set _T=echo @advent 
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
%_T% look %%1% > read.bat
%_T% say %%1% > say.bat
%_T% use %%1% > use.bat
%_T% inv %%1% > i.bat
%_T% look %%1% > examine.bat
%_T% help %%1% > help.bat
:e18
echo Setup complete. Type 'advent' to start.
goto e
:e
set _T=
set _U=
set _V=
echo.

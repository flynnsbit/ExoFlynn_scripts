@echo off
if not exist sceptre.bat goto error1
if '%1'=='' goto setup
if %1==quit goto unset
if %1==help goto help
if %1==look goto look
if %1==open goto open
if %1==inv goto inventory
if %1==say goto say
if %1==north goto north
if %1==south goto south
if %1==west goto west
if %1==east goto east
if %1==up goto up
if %1==down goto down
if %1==take goto take
if %1==drop goto drop
if %1==use goto use
goto error7

:use
if '%2'=='' goto error13
if %2==snake goto usesnake
if %2==shovel goto useshovel
if %2==egg goto useegg
if %2==heater goto useheater
if %2==dragon goto usedragon
if %2==axe goto useaxe
if %2==tree goto usetree
goto error15
:usesnake
if not %SNAKE%==inv goto error14
if %POS%==cave goto drop
echo Yuck! What an idea?!
goto end
:useshovel
if not %SHOVEL%==inv goto error15
if not %POS%==cave goto error16
if %DWARF%==cave goto error17
if %HEATER%==inv goto error18
echo.
echo Digging ground with ACME shovels keeps you fit till you are a cripple!
echo That is what I call intelligence! He used a simple shovel in order to find
echo a highly usefull, self-powered, all-purposed heater. I love that man!
echo You take the HU,S-P,A-P heater.
set HEATER=inv
goto end
:useegg
if not %EGG%==inv goto error15
echo A ball would be more suitable. Don't you think, Lakers?
goto end
:useheater
if not %HEATER%==inv goto error15
if not %EGG%==inv goto error19
if %DRAGON%==inv goto error22
echo.
echo Now, that is amazing! You heated the egg with the heater and
echo a newly born dragon came into your possesion. Isn't it cute?
set DRAGON=inv
goto end
:usedragon
if not %DRAGON%==inv goto error15
if not %POS%==road goto error20
if %GATE%==castle goto error21
echo.
echo Yes, yes, yes! What are dragons for if not for melting iron bars?!
echo He did his best and now the way to castle is awaiting you.
set GATE=castle
set E=castle
goto end
:useaxe
if not %AXE%==inv goto error15
if not %POS%==river goto error23
if %TREE%==cut goto error24
echo.
echo I don't know what Greenpeace whould say about such a behaviour
echo but the fact remains as it is: you cut it and that cannot be undone.
echo The stem fell into the water and flowed down the river. Is this it?
set TREE=cut
goto end
:usetree
if %TREE%==grow goto itgrows
if not %POS%==lake goto error15
if not %TREE%==cut goto error15
echo.
echo You boldly get on the flowing tree and after few mistakes (all wet)
echo sail away down the river in order to meet another great adventure
echo (waterfall probably). But what about The Ancient Sceptre? I bet you feel
echo disappointed. Well, maybe next time you will find one. You never know.
echo.
echo You did it - the game is over! Watch out for next batch adventure!!!
goto unset
:itgrows
if not %POS%==river goto error15
echo Sorry, I don't know what you want from that tree. It grows and blossoms.
goto end

:drop
if '%2'=='' goto error5
if not %2==snake goto error11
if not %POS%==cave goto error12
if not %SNAKE%==inv goto error14
echo.
echo Who could tell that? Dwarfs are afraid of snakes. Looking at him flee we
echo can even say: very afraid of snakes. Even dead ones. What a fun!
set SNAKE=cave
set DWARF=flee
goto end

:take
if '%2'=='' goto error8
if %2==shovel goto takeshovel
if %2==chest goto takechest
if %2==snake goto takesnake
if %2==dwarf goto takedwarf
if %2==egg goto takeegg
if %2==axe goto takeaxe
if %2==tree goto taketree
goto error10
:takeshovel
if not %SHOVEL%==%POS% goto error9
set SHOVEL=inv
goto taken
:takechest
if not %POS%==house goto error9
echo It is too heavy for such a skin'n'bones like you.
goto end
:takesnake
if not %SNAKE%==%POS% goto error9
set SNAKE=inv
goto taken
:takedwarf
if not %DWARF%==%POS% goto error9
echo What is it? A wrestling ring? Nuts!
goto end
:takeegg
if not %EGG%==%POS% goto error9
set EGG=inv
goto taken
:takeaxe
if not %AXE%==%POS% goto error9
set AXE=inv
goto taken
:taketree
echo Are you nuts?!
goto end
:taken
echo Taken.
goto end

:north
if %N%==* goto error6
set POS=%N%
goto look
:south
if %S%==* goto error6
set POS=%S%
goto look
:west
if %W%==* goto error6
set POS=%W%
goto look
:east
if %E%==* goto error6
set POS=%E%
goto look
:up
if %U%==* goto error6
set POS=%U%
goto look
:down
if %D%==* goto error6
set POS=%D%
goto look

:help
echo.
echo quit, look, open, close, take, drop, use, say, inv
echo north, south, east, west, up, down, help.
goto end

:inventory
echo.
if %SHOVEL%==inv echo You are carrying a shovel.
if %SNAKE%==inv echo You are carrying a dead snake.
if %HEATER%==inv echo You are carrying HU,S-P,A-P heater.
if %EGG%==inv echo You have an egg.
if %DRAGON%==inv echo In your pocket there is a hot cute dragon.
if %AXE%==inv echo You are carrying a broad battle axe.
goto end

:open
if '%2'=='' goto error2
if %2==chest goto openchest
goto error3
:openchest
if not %POS%==house goto error9
if %CHEST%==open goto error4
echo.
echo The chest is now open. There is a shovel inside. You take it.
set CHEST=open
set SHOVEL=inv
goto end

:look
if '%2'=='' cls
if '%2'=='' echo.
if '%2'=='' echo 컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
if '%2'=='' goto %POS%
echo Nothing special about it.
goto end
:house
set N=clearing
set S=*
set W=*
set E=*
set U=*
set D=*
echo You are in the small dusty room. Surely, no one has been here for years.
echo The only thing worth attention is a wooden chest placed by the wall.
echo To the north there is a broken door - a hole in the wall to be quite frank.
if %CHEST%==open echo The chest is open.
if %CHEST%==close echo The chest is closed.
goto items
:clearing
set N=forest1
set S=house
set W=forest2
set E=path
set U=*
set D=*
echo You enetered a wide clearing surrounded by thick forest. Tall trees, which
echo tower around, seem to stare at you unfriendly. Thick grass is pale green.
echo To the south there is an entrance to the old hut. You can try to enter the
echo forest in any other direction. Will you dare?
goto items
:forest1
set N=river
set S=clearing
set W=*
set E=cave
set U=*
set D=*
echo What the trees! What a forest! Dump, hollow, dark, old and
echo thrilling. To live, not to die! Fell the smell of wet moss?
echo But let's talk sense. Through the enormous thicket you can see:
echo river - to the north, clearing - to the south and cave to the east.
goto items
:forest2
set N=*
set S=*
set W=lake
set E=clearing
set U=*
set D=*
echo Seems the forest has no end. It spreads in every possible direction;
echo well there is a light among the trees: shimmering water to the west
echo and some clearing to the east.
goto items
:lake
set N=*
set S=*
set W=*
set E=forest2
set U=*
set D=*
echo Wow! Another move, another surprise! What a marvellous game, isn't it?
echo You are standing on the shore of a big lake in the middle of the forest.
echo To the northeast there is a river mouth. The river crosses the lake and
echo flows away to the south. You feel like sailing, uh? Unfortunately there
echo is no boat in range. Maybe another time. Don't be sad.
if %TREE%==cut echo Previously cut tree (by you, buster!) floats close to the shore.
goto items
:river
set N=*
set S=forest1
set W=*
set E=*
set U=*
set D=*
echo A river bank. That's it: a river bank. Well, nothing strange. Rivers are
echo everywhere. Well, almost everywhere (take Sahara, for example; no rivers
echo there! imagine that?). This one is just a river that runs from the east
echo to the southwest.
if %TREE%==grow echo And there is a tree that grows close to swift water.
if %TREE%==grow echo Just a tree. Trees grows everywhere. Well, almost... ah! skip it!
goto items
:cave
set N=*
set S=*
set W=forest1
set E=*
set U=*
set D=*
echo You are in the small cave. Your eyes slowly adapt for gloom in
echo here. The ground seems to be suitable for digging exercises.
if %DWARF%==cave echo Unfortunately a dwarf sits on it.
goto items
:path
set N=*
set S=*
set W=clearing
set E=road
set U=*
set D=burrow
echo It is even quite nice path leading through the forest. It is making wider
echo to the east. To the opposite direction you can see the clearing. As you
echo know: all roads lead to clearing. Exactly, all four ones.
echo But wait! There is something else in here: Mysterious-Hole-In-The-Ground.
goto items
:burrow
set N=*
set S=*
set W=*
set E=*
set U=path
set D=*
echo Am afraid to think it could be... DRAGONS PLACE! You'd better get out
echo from here A.Q.A.P. (as quickly as possible). That means: if you care.
goto items
:road
set N=*
set S=*
set W=path
set E=%GATE%
set U=*
set D=*
echo You are walking along the paved road leading to the castle, that means to
echo the east. But, of course, it leads to the west either - to the forest.
if %GATE%==* echo Nevertheless you cannot enter the castle because of a gate.
goto items
:castle
set N=*
set S=*
set W=road
set E=*
set U=*
set D=*
echo This is a huge impressive castle yard. It is empty, probably the castle
echo has been abandoned (hey, maybe they have beed afraid of dragons?). No
echo matter how tall are the towers or how steady are walls and how
echo beautiful place is this. You have things to do!
goto items
:items
if %SNAKE%==%POS% echo There is a dead snake at your feet.
if %EGG%==%POS% echo There is an egg here (dragon's?).
if %AXE%==%POS% echo There lies a broad axe.
echo 컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
goto end

:say
echo.
echo You said '%2'. Nothing happened.
goto end

:setup
if exist quit.bat goto end
cls
echo.
echo Setting up the game...
echo @sceptre quit > quit.bat
echo @sceptre look %%1% > look.bat
echo @sceptre open %%1% > open.bat
echo @sceptre close %%1% > close.bat
echo @sceptre take %%1% > take.bat
echo @sceptre drop %%1% > drop.bat
echo @sceptre north > north.bat
echo @sceptre south > south.bat
echo @sceptre east > east.bat
echo @sceptre west > west.bat
echo @sceptre up > up.bat
echo @sceptre down > down.bat
echo @sceptre north > n.bat
echo @sceptre south > s.bat
echo @sceptre east > e.bat
echo @sceptre west > w.bat
echo @sceptre up > u.bat
echo @sceptre down > d.bat
echo @sceptre use %%1% > use.bat
echo @sceptre help > help.bat
echo @sceptre say %%1% > say.bat
echo @sceptre inv > inv.bat
cls
echo.
echo            THE ANCIENT SCEPTRE has been written by Borys Zajaczkowski
echo                         Copyright (C) 16.4.1994 HARESOFT
echo.
echo        Beta testers:  Daniel Duplaga, Maciej Bilinski, Krzysztof Krawczyk
echo.
echo.
echo                    * Quit Norton Commander or other shells.
echo                    * Do not use DOS commands while playing.
echo                    * To exit type 'quit'.
echo                    * Type 'help' for commands list.
echo.
echo If message 'Out of enviroment space' appears on your screen while playing, quit
echo immediately and read read.me file to find out how to run the game properly.
echo.
pause
echo.
set PR=%PROMPT%
prompt $g
set POS=house
set SHOVEL=chest
set CHEST=close
set SNAKE=clearing
set DWARF=cave
set HEATER=ground
set EGG=burrow
set GATE=*
set DRAGON=egg
set TREE=grow
set AXE=castle
goto look

:error1
echo The name must be SCEPTRE.BAT
goto end
:error2
echo Open what? Try to be more precise.
goto end
:error3
echo Sorry, either that item does not exist or cannot be open.
goto end
:error4
echo The chest is already open.
goto end
:error5
echo Drop what? Don't you care of what you have?
goto end
:error6
echo As far as I know there is no way in that direction, sir.
goto end
:error7
echo Unreconized command.
goto end
:error8
echo Take what? Don't you expect too much of a simple batch game like me?
goto end
:error9
echo My eyes, my eyes! Cannot see the thing!
goto end
:error10
echo Ah! You scared me! Get lost, there is nothing like that in here.
goto end
:error11
echo There is no obvious reason to drop such a usefull item.
goto end
:error12
echo Well, interesting idea. But maybe another time, another place.
goto end
:error13
echo Use what if you are kind enough to explain?
goto end
:error14
echo You have a snake!? You must be kidding!
goto end
:error15
echo And what else whould you like to use? Think a little before you do.
goto end
:error16
echo You feel like playing digging for a while? Too bad - forbidden in here.
goto end
:error17
echo Worth trying but do something with that dwarf, first.
goto end
:error18
echo Take it easy! You will find nothing else. Promise.
goto end
:error19
echo Sure, it is for use. But even all-purpose heater needs purpose. Get it?
goto end
:error20
echo Another great idea. But what do you want from dragon in that place?!
goto end
:error21
echo Take it easy! Dragon is tired after his last mission.
goto end
:error22
echo You have already a dragon. What else do you expect?
goto end
:error23
echo I know you cannot keep the axe cool but wait for a proper moment, please.
goto end
:error24
echo You have already cut one tree. You just don't know when to stop!
goto end
:error0
echo Installation failed.
goto unset

:unset
echo.
echo Clearing enviroment...
if exist quit.bat del quit.bat
if exist look.bat del look.bat
if exist open.bat del open.bat
if exist close.bat del close.bat
if exist take.bat del take.bat
if exist drop.bat del drop.bat
if exist north.bat del north.bat
if exist south.bat del south.bat
if exist east.bat del east.bat
if exist west.bat del west.bat
if exist down.bat del down.bat
if exist up.bat del up.bat
if exist n.bat del n.bat
if exist s.bat del s.bat
if exist e.bat del e.bat
if exist w.bat del w.bat
if exist u.bat del u.bat
if exist d.bat del d.bat
if exist use.bat del use.bat
if exist help.bat del help.bat
if exist say.bat del say.bat
if exist inv.bat del inv.bat
prompt %PR%
set PR=
set POS=
set SHOVEL=
set CHEST=
set SNAKE=
set DWARF=
set HEATER=
set EGG=
set GATE=
set DRAGON=
set TREE=
set AXE=
set N=
set S=
set W=
set E=
set U=
set D=
echo.
echo Thank you for playing ANCIENT SCEPTRE.
:end
echo.
:lastline
@echo off
echo.
if "%hbr%" == "woods" goto woods
if "%hbr%" == "foul" goto foul
if "%hbr%" == "cave" goto cavern
if "%hbr%" == "clearing" goto clearing
if "%hbr%" == "home" goto home
if "%hbr%" == "rivendell" goto rivendell
if "%hbr%" == "den" goto den

goto error

:woods
echo Deep Forest
echo You are standing in the deep forest. Paths lead off in all directions but east,
echo where a mighty river is floating by. You feel lost and hungry.
echo Thorin sits down and starts singing about drugs. He offers you a joint.
goto exit

:foul
echo Foul Smelling Cave
echo You are in a vast cave, with a foul smell filling your nostrils. Light is
echo coming in through the wide entrance to the east, and it's just enough for you
echo to make out the walls of the cave.
goto exit

:cavern
echo Trolls' Cave
if "%hb1%"=="cavern" goto cavelight
if "%hb1%"=="me" goto cavelight
echo It's dark. You can't see anything.
goto lastexit
:cavelight
echo You are in a hardly even lit cavern with a doorway leading south.
echo Thorin is mumbling to himself and fails to notice your presence.
goto exit

:clearing
echo Trolls' Clearing
echo You are standing in a vast clearing, with paths leading off to the east and 
echo west. A yellow brick road leads north. Trolls are standing all around you,
echo fiercely watching every move of your limbs.
if "%hbs%"=="YES" echo The trolls seem to be stoned. They probably don't like the sunlight.
if not "%hbs%"=="YES" echo The trolls are chanting ancient rhymes. They tend to do that just before dawn.
goto exit

:home
echo Tunnel Like Hall
echo You are in your comfortable tunnel like hall. Infact, it's just a dirty hole in
echo the ground, but to you it's home. Gandalf is working on a nasty spell. There
echo is a round, green door set in the eastern wall.
goto exit

:rivendell
echo Rivendell
echo This is Rivendell, the last homelike house. At least, that's the name of it.
echo Elrond is sitting at a round table together with his generals, discussing his 
echo plans for a coming conquest and enslavement of the Hobbits. Paths lead off to
echo the north and west.
echo Elrond hesitatingly offers you some food. He gives your fairly thick legs a
echo greedy look. He drools.
echo Thorin announces: "If you're attacking the Hobbits, count me in!"
set hb2=me
goto exit

:den
echo Smaug's Den
echo You are in a great cave. Gold and jewelry cover the floor. Precious paintings
echo are hanging on all the walls. Smaug is lying on a big heap of silver bars,
echo smoking a huge cigar. He looks at you and yawns loudly. 
goto exit

:error
echo Error: Undefined room!

:exit
echo You can see:
if "%hb1%"=="%hbr%" echo A Torch
if "%hb2%"=="%hbr%" echo Some Lunch
if "%hb3%"=="%hbr%" echo A Curious Map
if "%hbr%"=="home" echo A Wooden Chest
if "%hbr%"=="foul" echo A Naked Dwarf Woman
if "%hb5%"=="%hbr%" echo A Raft
if "%hb6%"=="%hbr%" echo A Sword
if "%hb7%"=="%hbr%" echo A Treasure
echo Thorin, the dwarf.
:lastexit

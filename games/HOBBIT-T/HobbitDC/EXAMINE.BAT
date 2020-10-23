@echo off
if "%1" == "" look
if "%1" == "torch" goto torch
if "%1" == "lunch" goto lunch
if "%1" == "map" goto map
if "%1" == "chest" goto chest
if "%1" == "elrond" goto elrond
if "%1" == "gandalf" goto gandalf
if "%1" == "spell" goto spell
if "%1" == "thorin" goto thorin
if "%1" == "naked" goto woman
if "%1" == "woman" goto woman
if "%1" == "smaug" goto smaug
if "%1" == "dragon" goto smaug
if "%1" == "treasure" goto treasure
if "%1" == "paintings" goto paintings
if "%1" == "painting" goto paintings
if "%1" == "cigar" goto cigar
if "%1" == "the" examine %2
echo There is nothing special about the %1.
goto exit

:torch
if not "%hb1%" == "me" if not "%hb1%" == "%hbr%" goto cantsee
echo It is currently providing light.
goto exit

:lunch
if not "%hb2%" == "me" if not "%hb2%" == "%hbr%" goto cantsee
echo It's edible.
goto exit

:map
if "%hb3%" == "gandalf" if "%hbr%" == "home" goto ganhasmap
if not "%hb3%" == "me" if not "%hb3%" == "%hbr%" goto cantsee
echo The curious map must obviously have been drawn by hand, at great effort. 
echo It shows the mysterious surroundings of Rivendell, home of the elves.
goto exit
:ganhasmap
echo Gandalf has it. You should ask him about it. Maybe he doesn't need it anyway.
goto exit

:chest
if not "%hbr%" == "home" goto cantsee
echo It's a nice piece of wooden workmanship.
if "%hb1%" == "chest" echo There's a burning torch inside it. You decide to pick it up.
if "%hb1%" == "chest" set hb1=me
goto exit

:gandalf
if not "%hbr%" == "home" goto gancantsee
echo Gandalf, the old magician, is still working with his new spell.
if "%hb3%" == "gandalf" echo He is carrying a map.
goto exit
:gancantsee
echo Gandalf isn't here!
goto exit

:spell
if not "%hbr%" == "home" goto cantsee
echo It's a piece of beautiful yellowed paper, with magical symbols arranged
echo in groups. Several symbols resemble Hobbits exploding.
goto exit

:elrond
if not "%hbr%" == "rivendell" goto elrcantsee
echo Elrond has turned pretty nasty lately. Better not mess with him, considering
echo his plans to enslave all Hobbits. 
goto exit
:gancantsee
echo Elrond isn't here!
goto exit

:thorin
echo Thorin, your old friend, is no longer the proud dwarf he once was. All the
echo drugs have turned him into a drooling good-for-nothing idiot. The only reason
echo that he has come along is to get more treasures for drugs, as always.

if "%hbr%" == "home" echo He doesn't seem too happy about leaving the house.
if "%hbr%" == "rivendell" echo Thorin takes another beer from the fridge. Elrond slaps him.
if "%hbr%" == "den" echo Thorin is negotiating with the dragon about taking some rare drugs home,
if "%hbr%" == "den" echo provided that Smaug gets to keep your body.
if "%hbr%" == "woods" echo Thorin says "We're lost! Abandon all hope. We'll never get out of here alive!".
if "%hbr%" == "clearing" if "%hbs%" == "NO" echo Thorin participates in the chanting.
if "%hbr%" == "clearing" if "%hbs%" == "YES" echo Thorin is talking to the trolls. He doesn't notice that they are dead. 
if "%hbr%" == "cave" echo Thorin is writing a song. I shall call it "Let's roll another one", he remarks.
goto exit

:woman
if not "%hbr%" == "foul" goto cantseeher
echo She looks cold and tired, and pretty far from sensual. As you peek at her,
echo Thorin remarks that she's the only dwarf woman alive at the moment. He seems
echo to find her attractive.
goto exit

:smaug
if not "%hbr%" == "den" goto smacantsee
echo Smaug's red dragon body is filling the eastern part of the cave. As he can't
echo get out of the cave anymore, he seems to have settled with just lying here,
echo eating any adventurers that drop by. Every now and then he enjoys a big
echo cigar, but he obviously doesn't know quite how to do it right. The cigar in
echo his mouth hasn't been cut properly. Smaug coughs, but luckily you're out of
echo the deadly range.
goto exit
:smacantsee
echo Smaug is not around, as far as I can see.
goto exit

:treasure
if not "%hb7%" == "me" if not "%hb7%" == "%hbr%" goto cantsee
echo It is just the kind of treasure you'd expect to find in a dragon's den. It does
echo seem mighty valuable.
goto exit

:paintings
if not "%hbr%" == "den" goto cantsee
echo Among the paintings you recognize works of Picasso, da Vinci and Rembrandt. 
goto exit

:cigar
if not "%hbr%" == "den" goto cantsee
echo The cigar doesn't seem to be properly cut.
goto exit

:cantseeher
echo She is nowhere to be seen.
goto exit

:cantsee
echo It is nowhere to be seen.

:exit

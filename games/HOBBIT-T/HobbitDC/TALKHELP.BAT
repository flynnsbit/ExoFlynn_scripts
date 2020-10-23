@echo off
if "%1" == "gandalf" goto talkgandalf
if "%1" == "elrond" goto talkelrond
if "%1" == "thorin" goto talkthorin
if "%1" == "naked" goto talkwoman
if "%1" == "woman" goto talkwoman

goto notalk

:talkgandalf
if not "%hbr%"=="home" goto cantsee
if "%2" == "map" goto ganmap
if "%2" == "spell" goto ganspell
if "%2" == "hoboff" goto ganhoboff
if "%2" == "thorin" goto ganthorin
echo "Yes, that's probably so", he says.
goto exit
:ganmap
if not "%hb3%"=="gandalf" goto gan2map
echo "Oh, that map. There is absolutely nothing special about it at all. I guess
echo you could have it, if you want it.", Gandalf declares and hands you the map. 
set hb3=me
goto exit
:gan2map
echo Gandalf yells, "I already gave it to you, didn't I!!!".
goto exit
:ganspell
echo "This will be a great spell. I shall name it 'HOBOFF', no doubt.", Gandalf
echo chuckles.
goto exit
:ganhoboff
echo Gandalf gives you a mean smile, showing all his teeth. "Any Hobbit of my
echo choice will be turned into a pile of dirt.", he laughs, "Only a few minor
echo adjustments left, and it will produce a great fertilizer.". His eyes open
echo wide as he reaches the end of the sentence. He then looks at you for a good
echo fifteen seconds before he slowly turns away.
goto exit
:ganthorin
echo "It's a sordid story, really. He hasn't been himself in a long time. Or perhaps
echo he wasn't himself before, and now he is. Or maybe we haven't even seen his real
echo self. Let's talk about something else, shall we?" says Gandalf and looks tired.
goto exit

:talkelrond
if not "%hbr%"=="rivendell" goto cantsee
if "%2" == "map" goto elmap
if "%2" == "plans" goto elplans
echo Elrond laughs at your silly question. He pats your head.
goto exit
:elmap
if not "%hb3%" == "rivendell" if not "%hb3%" == "me" goto elnomap
echo "That's a fine map you've got there. We wouldn't want anything to HAPPEN to it,
echo now would we?", Elrond hisses. He continues; "Whatever you do, don't show it to
echo that crazy dwarf!".
goto exit
:elnomap
echo "What map are you talking about, you little prat? You must be delirious!",
echo Elrond snarls. He slaps you in the face.
goto exit
:elplans
echo "They are top secret. If you reveal anything you're dead meat, pipsqueak!",
echo Elrond whispers. He look as though he meant it.
goto exit

:talkthorin
if "%2" == "map" goto thormap
if "%2" == "naked" goto thorwoman
if "%2" == "woman" goto thorwoman
if "%hbr%" == "clearing" echo Thorin gets a serious look on his face. "Don't push your luck, kid!", he says.
if "%hbr%" == "woods" echo "Have you ever tried picking up your teeth with broken fingers?",Thorin replies.
if "%hbr%" == "cave" echo "I'm tired of killing for money. Let's go home!", Thorin sighs.
if "%hbr%" == "rivendell" echo Thorin is too absorbed by Elronds plans to pay attention.
if "%hbr%" == "den" echo "Hell, this is a fortune!", Thorin states as he walks around the cave.
if "%hbr%" == "home" echo "Did your mom ever talk to you about death?", Thorin asks you.
goto exit
:thormap
if not "%hb3%" == "%hbr%" if not "%hb3%" == "me" goto thornomap
echo Thorin takes a quick look at the map. His eyes widen in rage as he reaches for
echo his battle axe. "It was you all the time, wasn't it?!", he cries out. With one
echo well placed blow he cleaves your skull. All is dark...
echo.
pause
restart
:thornomap
echo Thorin eyes you suspiciously. "Don't try any tricks, boy. We both know that
echo there is no map here, now don't we?", he asks. He doesn't seem too sure about
echo it himself.
goto exit
:thorwoman
if not "%hbr%" == "foul" goto thornowoman
echo Thorin looks embarrased. "I'd rather not talk about it. She's...She's...Never
echo mind, it's none of your business anyway," he says. He briefly touches the
echo handle of his axe, as if to make it clear that you had better leave it at that.
goto exit
:thornowoamn
echo Thorin glances around. "Whoa, where is she? Where's this woman you're talking
echo about?" he says. You are forced to disappoint him.
goto exit


:talkwoman
if not "%hbr%"=="foul" goto cantseewom
if "%2" == "map" goto womap
if "%2" == "thorin" goto wothorin
echo She shudders and looks nervous.
goto exit
:womap
if not "%hb3%" == "foul" if not "%hb3%" == "me" goto wonomap
echo She looks at your map and laughs heartily. You seem to have made her day.
goto exit
:wonomap
echo She doesn't seem to understand what you are referring to.
goto exit
:wothorin
echo She says something that sounds like an insult. Since the two of you don't seem
echo to have any language in common, you can't tell for sure though. She pats
echo Thorin's head. Thorin slaps you.
goto exit

:cantsee
echo You can't see him here.
goto exit

:cantseewom
echo You can't see her here.
goto exit

:notalk
echo Action speaks louder than words!

:exit

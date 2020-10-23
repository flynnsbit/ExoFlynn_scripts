@echo off

if "%hbr%" == "woods" goto woods
if "%hbr%" == "foul" goto foul
if "%hbr%" == "cave" goto cavern
if "%hbr%" == "clearing" goto clearing
if "%hbr%" == "home" goto home
if "%hbr%" == "rivendell" goto rivendell
if "%hbr%" == "den" goto den

goto error


:woods
if "%1" == "raft" if "%hb5%" == "woods" goto rwoods
if "%1" == "south" goto gowoods
if "%1" == "west" goto gofoul
if "%1" == "north" goto gorivendell
goto fail
:rwoods
echo Not knowing what is about to happen, you fearlessly enter the raft. You follow
echo the river downstream for a while, as you don't have any means of manouvering
echo the little dingy. When hitting land, you are cold and starving. You soon find
echo a trail leading to a little village. The natives feed you and treat you well,
echo so you are soon healthy enough to go hunting on your own. On one of your trips
echo up into the mountains, you are suddenly brought back to your original mission,
echo as you step on a loose rock, which gives way. You slide down a long tunnel
echo which has many bends and little light. Eventually you leave the tunnel, only
echo to come into...
set hb5=nil
set hbr=den
echo.
pause
call look
echo Thorin, whom you haven't seen since you were in the forest together, enters
echo from a side door, singing about peace. He greets you with a laugh.
goto exit

:foul
if not "%1" == "east" goto fail
set hbr=woods
look

:cavern
if "%1" == "south" goto goclearing
goto fail

:clearing
if "%1" == "east" goto gorivendell
if "%1" == "north" goto nclearing
if "%1" == "west" goto gohome
goto fail
:nclearing
if "%hbs%" == "YES" goto gocave
echo The trolls won't let you.
goto exit

:home
if "%1" == "east" goto goclearing
goto fail

:rivendell
if "%1" == "north" goto nrivendell
if "%1" == "west" goto wrivendell
goto fail
:wrivendell
if not "%hb2%"=="me" goto goclearing
echo Just as you leave, Elrond grabs your lunch. He looks annoyed.
set hb2=rivendell
goto goclearing
:nrivendell
if not "%hb2%"=="me" goto nrivcont
echo Just as you leave, Elrond grabs your lunch. He looks annoyed.
set hb2=rivendell
:nrivcont
if "%hb3%" == "me" goto gowodfromriv
echo You stagger off into the surrounding hills, but find nothing of interest.
echo Disappointed you return back to Elrond's party.
goto exit
:gowodfromriv
echo Using the curious map that Gandalf gave you, you soon find your way to the
echo pleasant lush of the woods.
set hbr=woods
look

:den
goto fail

:gohome
set hbr=home
if not "%hb7%"=="me" goto success
echo You go west.
call look
echo.
echo As you enter your home again, Gandalf leaps to his feet. He comes forward, as
echo if to greet and congratulate you, but instead he asks, "Did you bring any
echo tobacco?". You decide to do what you should have done a long time ago. You
echo show the old wizard to the door, and kindly ask him to leave. Thorin follows
echo Gandalf out through the door.
echo.
echo Without any wizards or dwarves pestering you all the time, your life gets very
echo pleasant, and with the treasure it stays that way. You have won!!!
echo.
pause
restart

:goclearing
set hbr=clearing
goto success
:gocave
set hbr=cave
goto success
:gorivendell
set hbr=rivendell
goto success
:gowoods
set hbr=woods
goto success
:gofoul
set hbr=foul
goto success
:goden
set hbr=den
goto success


:error
echo Error: Undefined room!
goto exit

:fail
echo You can't go %1.
goto exit

:success
echo You walk %1.
call look
if "%1" == "north" echo Thorin is already here.
if "%1" == "south" echo Thorin comes running after you.
if "%1" == "east" echo Thorin enters from the west.
if "%1" == "west" echo Thorin follows your trail.

:exit

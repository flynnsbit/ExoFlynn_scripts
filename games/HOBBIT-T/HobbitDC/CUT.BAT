@echo off
if "%1" == "the" cut %2
if "%1" == "cigar" goto cutcigar
if "%1" == "dragon" kill %1
if "%1" == "thorin" kill %1
if "%1" == "elrond" kill %1
if "%1" == "thorin" kill %1
if "%1" == "troll" kill %1
if "%1" == "trolls" kill %1
echo You can't cut that!
goto exit

:cutcigar
if not "%hbr%" == "den" goto cantseecig
if not "%hb6%" == "me" goto havntsword
echo You run towards the mighty dragon and cut off his cigar. The dragon
echo exclaims, "Hey, what are you doing!". You explain that the cigar will
echo be easier to smoke now, and after some experimenting, Smaug agrees with you.
echo He trades your sword for a treasure and offers you transport to Rivendell.
set hb7=me
set hbr=rivendell
set hb6=den
echo.
pause
look
:cantseecig
echo There are no cigars around.
goto exit
:havntsword
echo You havn't got anything to cut with.
goto exit

:exit

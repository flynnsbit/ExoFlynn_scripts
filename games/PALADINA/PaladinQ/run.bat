:menu
@echo off
cls
echo.
echo Press 1 for Paladin Quest Disk: The Scrolls of Talmouth
echo Press 2 for Paladin Quest Disk: Quest Builder
echo Press 3 to Quit
echo.
echo The Quest Builder is needed in order to create a new Paladin.
echo Keys can be somewhat confusing, so please reference the 
echo "Function Keys" document under additional applications\extras.
echo.
echo Not listed on the function keys sheet are the 2 following commands:
echo Shift+Click the "NEXT" icon to progress to the next phase of combat
echo Shift+Click the "SWORD" icon to cast a spell instead
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto quest
if errorlevel = 1 goto game

:game
cls
echo.
echo Press F1 at the main menu to load a campaign. To load an
echo expansion campaign you have to manually change the directory.
echo It defaults to:
echo c:\PaladinQ\
echo.
echo Quests reside in:
echo c:\PaladinQ\ANFORRA
echo c:\PaladinQ\QUEST
echo c:\PaladinQ\TALMOUTH
echo c:\PaladinQ\WARMSTR
echo.
pause
cls
@PALADIN
goto quit

:quest
cls
@QUEST
goto quit

:quit
exit
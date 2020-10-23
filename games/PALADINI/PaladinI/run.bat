:menu
cd PaladinI
@echo off
cls
echo.
echo Press 1 for Paladin II 
echo Press 2 for Quest Builder
echo Press 3 to Transfer Characters from Previous Games
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto TRAN
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
cls
@PALADIN2
goto quit

:MT32
cls
@BUILDER
goto quit

:tran
cd ..
cls
echo.
echo Paladin II can import characters from Paladin Quest or Breach 2.
echo.
echo Once the characters have been imported, select the Builder module,
echo then go to the Party menu, and choose "Import Paladin". It will
echo then let you choose the source game and list the possible files.
echo.
echo Note: Paladin Quest characters appear to crash Builder sometimes.
echo.
if exist .\paladinq\*.pal echo Paladin Character Detected. Press 1 to import
if exist .\paladinq\*.pal dir .\paladinq\*.pal /b
echo.
if exist .\breach2\*.b2l echo Breach 2 Character Detected. Press 2 to import
if exist .\breach2\*.b2l dir .\breach2\*.b2l /b
echo.
echo Press 3 to Return to the previous menu.
echo.
choice /C:123 /N Please Choose:

if errorlevel = 3 goto menu
if errorlevel = 2 goto bre
if errorlevel = 1 goto pal

:pal
cls
copy .\paladinq\*.pal .\PaladinI\
echo.
if exist .\PaladinI\*.pal echo Copy Successful
if not exist .\PaladinI\*.pal echo Copy Unsuccessful
echo.
pause
goto menu

:bre
cls
copy .\breach2\*.b2l .\PaladinI\
echo.
if exist .\PaladinI\*.b2l echo Copy Successful
if not exist .\PaladinI\*.b2l echo Copy Unsuccessful
echo.
pause
goto menu

:quit
exit
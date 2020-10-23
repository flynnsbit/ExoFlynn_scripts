:menu
@echo off
cls
echo.
echo Press 1 for Land of Devestation
echo Press 2 for Land of Devestation w/ VGA
echo Press 3 for Land of Devestation w/ VGA and Audio
echo Press 4 to Quit
echo.
choice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
cls
@GAME /EMS
goto quit

:MT32
cls
@GAME /EMS /VGA
goto quit

:SC55
cls
@GAME /EMS /VGA /AUDIOSB16 /IRQ7 /DMA1 /BASE220
goto quit

:quit
exit
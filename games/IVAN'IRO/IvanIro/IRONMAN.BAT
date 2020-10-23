echo off
cls
echo.
echo		Ironman's Super Offroad Racer
echo.
echo.
echo	Please select video card:
echo.
echo	1. CGA
echo	2. EGA 16 Color (Normal)
echo	3. EGA 64 Color (Switchable 64 color monitors only)
echo	4. VGA
echo	5. Tandy 1000

:KeyLoop
readkey
if errorlevel 5 goto Tandy
if errorlevel 4 goto VGA
if errorlevel 3 goto EGA64
if errorlevel 2 goto EGA16
if errorlevel 1 goto CGA
goto KeyLoop

:CGA
game /cga
goto END

:EGA16
game /ega16
goto END

:EGA64
game /ega64
goto END

:VGA
game /vga
goto END

:Tandy
game /tandy

:END
echo.
echo	Thankyou for playing Offroad Racer


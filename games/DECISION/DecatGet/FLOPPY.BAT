
@echo off
:start
cls
echo.
echo             лллллллллллллллллллллллллллллллллллллллллллллллллллллл
echo             лллл === Creates a Formatted Startup Game Disk === лллББ
echo             ллллллллллллллллллллллллллллллллллллллллллллллллллллллББ
echo             лллллл  1 - 5.25 - 360K Floppy --- 360K Drive   ллллллББ
echo             ллллллллллллллллллллллллллллллллллллллллллллллллллллллББ
echo             лллллл  2 - 5.25 - 360K Floppy --- 1.2M Drive   ллллллББ
echo             ллллллллллллллллллллллллллллллллллллллллллллллллллллллББ
echo             лллллл  3 - 5.25 - 1.2M Floppy --- 1.2M Drive   ллллллББ
echo             ллллллллллллллллллллллллллллллллллллллллллллллллллллллББ
echo             лллллл  4 - 3.5  - 720K Floppy --- 720K Drive   ллллллББ
echo             ллллллллллллллллллллллллллллллллллллллллллллллллллллллББ
echo             лллллл  5 - 3.5  - 720K Floppy --- 1.44 Drive   ллллллББ
echo             ллллллллллллллллллллллллллллллллллллллллллллллллллллллББ
echo             лллллл  6 - 3.5  - 1.44 Floppy --- 1.44 Drive   ллллллББ
echo             ллллллллллллллллллллллллллллллллллллллллллллллллллллллББ
echo             ллллллллллллллллллллллллллллллллллллллллллллллллллллллББ
echo                БББББББББББББББББББББББББББББББББББББББББББББББББББББ
echo.
echo.
echo                           Menu by Michael J. Knutson
echo [24;18HEnter selection number or Press ESC to quit:
:getchoice
choice
if errorlevel 27 goto end
if errorlevel 7 goto getchoice
if errorlevel 6 goto choice6
if errorlevel 5 goto choice5
if errorlevel 4 goto choice4
if errorlevel 3 goto choice3
if errorlevel 2 goto choice2
:choice1
cls
echo.
echo.
echo             This will format a 360K floppy and transfer the system
echo             and game files.  Use this disk to begin the game.
echo.
echo.
echo.
echo             If the above information is correct, Press ENTER...
echo.
echo             If the information is NOT correct, Press N...
ask
if errorlevel = 1 goto begin1
if errorlevel = 0 goto start
cls
:begin1
cls
echo.
echo.
echo             Place a 360K floppy into drive A: and press ENTER...
pause
format a:/s
copy config.sys a:
goto end1
:choice2
cls
echo.
echo.
echo.
echo            This will format a 360K floppy in a 1.2M drive and
echo            transfer the system and game files.  Use this disk
echo            to begin the game.
echo.
echo.
echo.
echo            If the above information is correct, Press ENTER
echo.
echo            If the information is NOT correct, Press N...
ask
if errorlevel = 1 goto begin2
if errorlevel = 0 goto start
:begin2
cls
echo.
echo.
echo            Place a 360K floppy into drive A: and press ENTER...
echo.
pause
format a:/4 /s
copy config.sys a:
goto end1
:choice3
cls
echo.
echo.
echo.
echo            This will format a 1.2M floppy in a 1.2M drive and
echo            transfer the system and game files.  Use this disk
echo            to begin the game.
echo.
echo.
echo.
echo            If the above information is correct, Press ENTER
echo.
echo            If the information is NOT correct, Press N...
ask
if errorlevel = 1 goto begin3
if errorlevel = 0 goto start
:begin3
cls
echo.
echo.
echo            Place a 1.2M floppy into drive A: and press ENTER...
echo.
pause
format a:/s
copy config.sys a:
goto end1
:choice4
cls
echo.
echo.
echo.
echo            This will format a 720K floppy in a 720K drive and
echo            transfer the system and game files.  Use this disk
echo            to begin the game.
echo.
echo.
echo.
echo.
echo            If the above information is correct, Press ENTER
echo.
echo            If the information is NOT correct, Press N...
ask
if errorlevel = 1 goto begin4
if errorlevel = 0 goto start
:begin4
cls
echo.
echo.
echo            Place a 720K floppy into drive A: and press ENTER...
echo.
pause
format a:/s
copy config.sys a:
goto end1
:choice5
cls
echo.
echo.
echo.
echo            This will format a 720K floppy in a 1.44 drive and
echo            transfer the system and game files.  Use this disk
echo            to begin the game.
echo.
echo.
echo.
echo            If the above information is correct, Press ENTER
echo.
echo            If the information is NOT correct, Press N...
ask
if errorlevel = 1 goto begin5
if errorlevel = 0 goto start
:begin5
cls
echo.
echo.
echo            Place a 720K floppy into drive A: and press ENTER...
echo.
pause
format a:/n:9 /s
copy config.sys a:
goto end1
:choice6
cls
echo.
echo.
echo.
echo            This will format a 1.44 floppy in a 1.44 drive and
echo            transfer the system and game files.  Use this disk
echo            to begin the game.
echo.
echo.
echo            If the above information is correct, Press ENTER
echo.
echo            If the information is NOT correct, Press N...
ask
if errorlevel = 1 goto begin6
if errorlevel = 0 goto start
:begin6
cls
echo.
echo.
echo            Place a 1.44 floppy into drive A: and press ENTER...
echo.
pause
format a:/s
copy config.sys a:
goto end1
:end1
cls
echo           Installation is now complete.  Use the newly formatted
echo           disk to start the game.  It will assure beginning the
echo           game without any memory resident programs.
echo.
echo           WARNING: If the computer requires a device driver to
echo                    access the hard drive, you will need to include
echo                    it in the config.sys file. Type in the following
echo                    from the "A>" with the Startup disk inserted:
echo.
echo.                           copy con:config.sys
echo.                           {insert the device driver information}
echo.                           buffers=6
echo.                           {now strike the F6 key.}
echo.                           {ENTER}
echo.
echo           If you believe that there was a mistake in formatting
echo           the floppy, just change to the subdirectory containing
echo           the game and type Floppy.  Press ENTER.
echo.
echo           You can reach me by calling (918) 251-2771 PM hours.
echo.
echo           Bob Knutson
:end

echo off
cls
checkver
if errorlevel 1 goto ppak

echo.Version 1.3 detected
echo.
echo    1.  Play 1-player game
echo    2.  Multiplayer (DukeMatch or Co-op)
echo    3.  Abort
echo.
choice /c:123 "        "
if errorlevel 3 goto quit
if errorlevel 2 goto 13multi

:13
duke3d /xpgame.con
goto end

:13multi
cls
echo.
echo   In order to use the Penthouse Paradise .CON functions with Multiplayer
echo   support, you must copy these .CONs over the originals:
echo.
echo.                Penthouse      Original
echo.
echo                 pgame.con  ==  game.con
echo                 puser.con  ==  user.con
echo                 pdefs.con  ==  defs.con
echo.
echo   If you wish, this batch file can do this for you.  It will rename
echo   the originals to *.pen.  Once the batch file finishes, these files
echo   will be returned to the original versions.
echo.
choice /c:yn "   Do you wish to have these files renamed? "
if errorlevel 2 goto 13norename

:13multirename
cls
echo.
echo  Renaming originals...
copy game.con *.pen > nul
echo  game.con is now game.pen
copy user.con *.pen > nul
echo  user.con is now user.pen
copy defs.con *.pen > nul
echo  defs.con is now defs.pen
echo.
echo  Copying over Penthouse Paradise versions...
copy pgame.con game.con > nul
echo  pgame.con is now game.con
copy pdefs.con defs.con > nul
echo  pdefs.con is now defs.con
copy puser.con user.con > nul
echo  puser.con is now user.con
goto 13msg

:13norename
echo.
echo   You must manually overwrite the above files before the special
echo   sounds and code will take effect.  
echo.
goto end

:13msg
echo.
echo.
echo   We will now run SETUP.EXE to launch your game.  Select NETWORK,
echo   and make any changes to your settings.  Press [ENTER] on the Choose
echo   User Map option, and select PENTHOUS.MAP.  Highlight Launch Duke3d
echo   Game, then hit [ENTER] and you're in!
echo.
echo        Enjoy!   :)
echo.
echo.
echo   Hit any key to play Penthouse Paradise
pause > nul
setup
cls
echo  Copying back the original versions...
copy game.pen game.con > nul
echo  game.con returned
copy defs.pen defs.con > nul
echo  defs.con returned
copy user.pen user.con > nul
echo  user.con returned
echo.
echo   Thanks for playing!
echo.
goto end


:ppak
echo.Atomic/PPak version detected
echo.
echo    1.  Play 1-player game
echo    2.  Multiplayer (DukeMatch or Co-op)
echo    3.  Abort
echo.
choice /c:123 "        "
if errorlevel 3 goto end
if errorlevel 2 goto ppakmulti

:ppaknormal
duke3d /xppakgame.con
goto end

:ppakmulti
cls
echo.
echo   In order to use the Penthouse Paradise .CON functions with Multiplayer
echo   support, you must copy these .CONs over the originals:
echo.
echo.                Penthouse          Original
echo.
echo                 ppakgame.con  ==>  game.con
echo                 ppakuser.con  ==>  user.con
echo                 ppakdefs.con  ==>  defs.con
echo.
echo   If you wish, this batch file can do this for you.  It will rename
echo   the originals to *.pen.  Once the batch file finishes, these files
echo   will be returned to the original versions.
echo.
choice /c:yn "   Do you wish to have these files renamed? "
if errorlevel 2 goto ppaknorename

:ppakmultirename
cls
echo.
echo  Renaming originals...
copy game.con *.pen > nul
echo  game.con is now game.pen
copy user.con *.pen > nul
echo  user.con is now user.pen
copy defs.con *.pen > nul
echo  defs.con is now defs.pen
echo.
echo  Copying over Penthouse Paradise versions...
copy ppakgame.con game.con > nul
echo  ppakgame.con is now game.con
copy ppakdefs.con defs.con > nul
echo  ppakdefs.con is now defs.con
copy ppakuser.con user.con > nul
echo  ppakuser.con is now user.con
goto ppakmsg

:ppaknorename
echo.
echo   You must manually overwrite the above files before the special
echo   sounds and code will take effect.  
echo.
goto end

:ppakmsg
echo.
echo.
echo   We will now run SETUP.EXE to launch your game.  Select NETWORK,
echo   and make any changes to your settings.  Press <ENTER> on the Choose
echo   User Map option, and select PENTHOUS.MAP.  Highlight Launch Duke3d
echo   Game, then hit <ENTER> and you're in!
echo.
echo        Enjoy!   :)
echo.
echo.
echo   Hit any key to play Penthouse Paradise
pause > nul
setup
cls
echo  Copying back the original versions...
copy game.pen game.con > nul
echo  game.con returned
copy defs.pen defs.con > nul
echo  defs.con returned
copy user.pen user.con > nul
echo  user.con returned
goto end

:end
echo.
echo   Thanks for playing!
echo.
:quit

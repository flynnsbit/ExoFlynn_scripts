@echo off                      
cls
ECHO                  ****************************
ECHO                   TETRIS CLASSIC Version 1.0
ECHO                          June 15, 1992
ECHO                  ****************************
ECHO.
ECHO This addendum refers to the following last-minute changes in the TETRIS
ECHO CLASSIC program:
ECHO.
ECHO LOADING
ECHO -------
ECHO If you have a Tandy 1000 with a VGA card installed, TETRIS CLASSIC will
ECHO not correctly detect the VGA card and therefore displays the error
ECHO message: "TETRISC DOES NOT FIND THAT GRAPHIC CARD INSTALLED."  Just
ECHO press "C" to continue, and you'll be able to play in 256-color VGA
ECHO mode on your Tandy 1000.
ECHO.
ECHO MOUSE
ECHO -----
ECHO On certain systems, the mouse control may be erratic.  For best results,
ECHO please move the mouse slowly and evenly.
PAUSE
CLS
ECHO PRO AUDIO SPECTRUM
ECHO ------------------
ECHO Please be sure you have version 1.02 or later of the driver software 
ECHO from Media Vision.  In addition, if you wish to increase the volume on
ECHO your Pro Audio Spectrum card, just press Ctrl-Alt-U for "Up" before 
ECHO starting the game.  If you wish to decrease the volume level, press
ECHO Ctrl-Alt-D for "Down" before running TETRIS CLASSIC.  You can set the
ECHO volume level automatically by inserting the following line in your
ECHO AUTOEXEC.BAT file: PAS SET VOLUME TO [n] (where [n] is a number 
echo between 1 and 100).
ECHO.
ECHO SOUND SUPPORT
ECHO -------------
ECHO TETRIS CLASSIC also supports the Roland Sound Canvas if you installed 
ECHO the game from the 1.44MB 3.5" disk. Its loading parameter is "TETRISC C"
ECHO for "Canvas." If you installed TETRIS CLASSIC from the 1.2MB 5.25" disk,
ECHO there was not enough room to include these sound files. In that case, if
ECHO you want Sound Canvas support, you must copy the files "SC.MUS" and
ECHO "CANVAS.ADV" to your TETRISC subdirectory from the 1.44MB 3.5" disk or
ECHO else download them from one of the online services listed in the manual.
ECHO.
PAUSE
CLS
ECHO TRANSPARENT PIT
ECHO ---------------
ECHO Page 14 of the manual: The "Transparent Pit" option is not available
ECHO in EGA or Tandy 1000 16-color modes.
ECHO.
ECHO JOYSTICK
ECHO --------
ECHO TETRIS CLASSIC automatically remembers your joystick calibration from
ECHO one game to the next. If you want to recalibrate your joystick, just
ECHO click on the "Joystick" icon again at the Configuration Screen and
ECHO follow the onscreen instructions.
ECHO.
ECHO Spectrum HoloByte recommends the Gravis GamePad as a joystick device
ECHO for TETRIS CLASSIC.
ECHO.
@ECHO ON


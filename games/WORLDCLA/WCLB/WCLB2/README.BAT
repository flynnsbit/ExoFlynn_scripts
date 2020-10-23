echo off
cls
echo 27 Jul 1988 - New features and/or changes to World Class Leader Board
echo (c) 1987 ACCESS Software, Inc. V3.00
echo .
echo INTENSITY OF COURSE COLORS-To help the colors appear their best on all
echo	monitors, you may now chose either low (default) or high intensity
echo	colors. This mainly effects the brown, which would change to yellow
echo	with hi-intensity. This option is available at the main selection
echo	screen by pressing the 'i' key. This option is valid only in CGA (4-color)
echo	operation.
echo .
echo PLAY ANY HOLE-It is now possible to practice any of the available holes
echo	of your World Class system. At the main selection screen, press 'h'.
echo	You will then be asked to press the letter of the course that you want
echo	to play, followed the the number of the hole on that course. You then
echo	will be returned to the main selection screen, where you would then
echo	continue play selection as normal. You may then play just that one hole
echo	until the ESC key is pressed.
echo .
echo SOUND TOGGLE-The sound may be toggled off or on from the main selection
echo	screen by pressing the 's' key. If the sound is re-activated, a beep
echo	will sound when 's' is pressed, and if the sound is deactivated, no
echo	beep will sound.
echo .
pause
cls
echo PUNCH SHOT-A 'punch shot' is a low flying line-drive shot that will go
echo	under trees. This shot can also be used to pitch-and-run onto the
echo	green. To use the punch shot, press 'p' before hitting your ball during
echo	club selection, or, if the PW (pitching wedge) is already selected,
echo	press Button-2 on the joystick. Doing this will toggle the letter 'P'
echo	next to the club number. It will automatically cancel itself after the
echo	shot. Since the shot requires some skill, it is a good idea to practice
echo	this shot at the driving range.
echo .
echo JOYSTICK RECALIBRATION-If you are using a game controller card with a
echo	joystick to play World Class, at times the 'pot' adjustments may
echo	become mis-aligned from their initial setting, or you may decide to
echo	activate the joystick after already starting to play golf. The joystick
echo	may be recalibrated or activated while playing by pressing 'j'.
echo .
echo SCORECARD PRINTOUT-The current date is now printed on the scorecard, so
echo	remember to enter the correct date when booting the computer so that
echo	the date on the scorecard will be correct.
echo .
pause
cls
echo EXITING THE PROGRAM-At the main selection screen, it is now possible to exit
echo	directly to DOS by pressing ESC.
echo .
echo BALL COLOR-It is now possible to use different colors of ball on the golf
echo	course. At the main selection screen, press 'b' and the current ball
echo	color used will be displayed. Ball colors for 4-color operation are
echo	red and blue. Ball colors for 16-color operation are white, yellow and
echo	orange.
echo .
echo SAVE/LOAD GAME IN PROGRESS-The current game in progress may be saved when
echo	viewing the Leader Board scoring screen displayed between holes. Simply
echo	press 's' when all scores are displayed and select the number 0-9 for the
echo	current game to be saved. If that game number already existings you have
echo	the option of over-writing the existing game with the new, or making another
echo	selection. Any saved game in progress may be restarted at the following
echo	hole by pressing 'l' from the main selection menu, and selecting the number
echo	0-9 of the saved game to restart. All game settings (number of golfers,
echo	score, etc.) will be resumed.
echo .
pause
cls
echo TOP-10 SCORES-The Top-10 scores for all courses are available for viewing
echo	from the main-selection screen by pressing the F10 key. The most currently
echo	saved Top-10 list will display any existing scores. Otherwise, a blank
echo	list will be displayed. The Top-10 scores of each course may also be
echo	viewed after playing 18 holes on any course. When all scores are displayed
echo	on the Leader Board, you will be asked if you want to see the Top-10 list.
echo	If you choose to view the list, then and ONLY then will the current players
echo	scores be added to the Top-10 for the current course, and displayed. At this
echo	point, you may press the 's' key to save the Top-10, or press any other
echo	to exit viewing. Top-10 file names are in the following format:
echo		?TOP.TEN	...where '?' corresponds with the course. To start
echo	a new Top-10 list for any course, simply 'delete' the corresponding Top-10
echo	file. The current date is used as part of each golfers Top-10 data, so enter
echo	the proper date before running World Class to assure the correct Top-10
echo	date information.
echo .
echo MONOCHROME GRAPHICS SUPPORT-World Class now supports Hercules/compatibles mono-
echo	chrome graphics adapters (MGA). This is achieved by emulation of CGA graphics
echo	into the MGA display area. It is recommended that this option only be used on
echo	monochrome systems with higher CPU clock speeds (greater that 8Mhz).
echo .
pause
cls
echo LOADING WORLD CLASS-When booting the World Class program, it is possible to
echo	specify the video mode that you want to use in the following manner:
echo	Hercules-graphics emulation of CGA	golf /h
echo	CGA		   320x200x 4 color	golf /1
echo	Tandy/Amstrad/etc. 320x200x16 color	golf /2
echo	EGA/MCGA/VGA	   320x200x16 color	golf /3
echo	This will bypass the video-mode selection screen at the front of the program.
echo	.

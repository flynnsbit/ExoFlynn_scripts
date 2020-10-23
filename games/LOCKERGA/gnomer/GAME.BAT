IF EXIST "C:\Program Files (x86)\DOSBox\dosbox.exe" GOTO StartGame
IF NOT EXIST "C:\Program Files (x86)\DOSBox\dosbox.exe" GOTO Message

:Message
echo msgbox"C:\Program Files (x86)\DOSBox\dosbox.exe not found. Please rerun the DOSBoxRun Utility.">%TEMP%\DBmsg.vbs&%TEMP%\DBmsg.vbs&del %TEMP%\DBmsg.vbs
EXIT

:StartGame
"C:\Program Files (x86)\DOSBox\dosbox.exe" -conf "C:\temp\gnomequest\dosbox.conf" -noconsole
EXIT


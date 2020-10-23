ECHO REMOVING REACH for the SKIES DEMO and INTRO FILES
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

IF "%1" == "" GOTO NOCOPY
ECHO	NOTE:   %1 will ONLY have the DEMO SPECIFIC files, NOT a runnable demo.
ECHO	 	Some files are SHARED between the game and the demo to save space.
ECHO	 	The command COPYDEMO should be run if you want a copy of the demo.
ECHO	 	To put these files back at a later date from a mixed directory try:
ECHO	 		SUBST	B: %1\
ECHO			B:COPYDPRT B
ECHO			SUBST	B: /d
ECHO	 	If you do not wish to continue press Control and C together.
PAUSE

for %%i in (tv_home.seq gamepal.sep demtrol.exe) do if EXIST %%i copy %%i %1\
for %%i in (RFTSDEMO.exe copydemo.bat copydprt.bat loadbobg.sel) do if EXIST %%i copy %%i %1\ 
if EXIST demo*.sel for %%i in (demo*.sel) do copy %%i %1\
if EXIST *.sen for %%i in (*.sen) do copy %%i %1\
if EXIST *.sev for %%i in (*.sev) do copy %%i %1\
if EXIST tv_*.sec for %%i in (tv_*.sec) do copy %%i %1\

:NOCOPY
ECHO This is the list of files that will be deleted (it may be empty):
for %%i in (tv_home.seq gamepal.sep demtrol.exe) do if EXIST %%i echo %%i 
for %%i in (RFTSDEMO.exe copydemo.bat copydprt.bat loadbobg.sel) do if EXIST %%i echo %%i 
if EXIST demo*.sel for %%i in (demo*.sel) do echo %%i
PAUSE
ECHO More files that will be deleted (the list may be empty):
if EXIST *.sen for %%i in (*.sen) do echo %%i
if EXIST *.sev for %%i in (*.sev) do echo %%i
if EXIST tv_*.sec for %%i in (tv_*.sec) do echo %%i
ECHO These are the files which are about to be deleted. They would total about 1MB.
ECHO If you are not willing to continue then press control and C together.
PAUSE
ECHO Please wait while deleting...
for %%i in (tv_home.seq gamepal.sep demtrol.exe) do if EXIST %%i del %%i >NUL
for %%i in (RFTSDEMO.exe copydemo.bat copydprt.bat loadbobg.sel) do if EXIST %%i del %%i>NUL
if EXIST demo*.sel for %%i in (demo*.sel) do del %%i>NUL
if EXIST *.sen for %%i in (*.sen) do del %%i>NUL
if EXIST *.sev for %%i in (*.sev) do del %%i>NUL
if EXIST tv_*.sec for %%i in (tv_*.sec) do del %%i>NUL
ECHO Operation complete...
:STOPNOW

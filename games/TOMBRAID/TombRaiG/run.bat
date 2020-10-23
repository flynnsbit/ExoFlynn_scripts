:menu
@echo off
cls
echo.
echo Press 1 for Tomb Raider
echo Press 2 for Tomb Raider: Unfinished Business
echo Press 3 for Tomb Raider (3DFX)
echo Press 4 for Tomb Raider: Unfinished Business (3DFX)
echo Press 5 for Tomb Raider enhanced with Playstation Style Audio
echo Press 6 for Tomb Raider enhanced with Tomb Raider II Style Audio
echo Press 7 to read about the difference in audio styles
echo Press 8 to Quit
echo.
choice /C:12345678 /N Please Choose:

if errorlevel = 8 goto quit
if errorlevel = 7 goto NOTE
if errorlevel = 6 goto TR2
if errorlevel = 5 goto PSX
if errorlevel = 4 goto bio4
if errorlevel = 3 goto bio3
if errorlevel = 2 goto bio2
if errorlevel = 1 goto bio1

:bio1
echo C:\TOMBRAID > TOMBPATH.TXT
cd tombraid
cls
tomb
cd ..
goto quit

:bio2
echo C:\TOMBRAID > TOMBPATH.TXT
cd tombraid
cls
tombub
cd ..
goto quit

:bio3
echo C:\TOMB3D > TOMBPATH.TXT
cls
cd tomb3d
tomb
cd ..
goto quit

:bio4
echo C:\TOMB3D > TOMBPATH.TXT
cls
cd tomb3d
tombub
cd ..
goto quit

:PSX
echo C:\TOMB > TOMBPATH.TXT
cd tomb
cls
tomb -audio 1
cd ..
goto quit

:TR2
echo C:\TOMB > TOMBPATH.TXT
cd tomb
cls
tomb -audio 2
cd ..
goto quit

:NOTE
cls
echo.
echo Playstation Style audio uses these settings:
echo No looping ambience - background is normally silent.
echo Music cues come from nowhere, then silence resumes.
echo Dialogue and secret chimes played from CD if available.
echo Ambience track played through once at certain points in most levels.
echo Only one ambience track (the first PC one, used in Peru).
echo.
echo Tomb Raider II Style audio uses these settings:
echo Looping ambience as on original PC version.
echo Music cues interrupt the ambience, which then resumes.
echo Dialogue and secret chimes played from CD if available.
echo Ambience cues in the levels ignored.
echo Four ambience tracks.
echo.
pause
goto menu

:quit
exit
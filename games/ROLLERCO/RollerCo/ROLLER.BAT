echo off
loader

if errorlevel 2 goto playcga
if errorlevel 1 goto playega
goto leave

:playcga
cd cga
goto play

:playega
cd ega
goto play

:play
roller
cd ..

:leave
echo on

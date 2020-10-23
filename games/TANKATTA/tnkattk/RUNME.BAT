echo off
cls
echo -                        TANK ATTACK
echo -
echo -                   Choose Graphic Adaptor
echo -
echo -
echo -                         (F1) CGA
echo -                         (F2) EGA
echo -                         (F3) QUIT
echo -
echo -
echo -
:reply
reply.com
if errorlevel 61 goto end
if errorlevel 60 goto ega
if errorlevel 59 goto cga
goto reply
:cga
cd cga
tank.exe
goto :end
:ega
cd ega
tank.exe
goto :end
:end
cd..

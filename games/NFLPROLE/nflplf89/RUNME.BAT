echo off
cls
echo - NFL PRO-LEAGUE FOOTBALL                                          -
echo -                                                                  -
echo - Video Card Selection                                             -
echo -                                                                  -
echo - (F1) CGA                                                         -
echo - (F2) EGA                                                         -
echo -                                                                  -
:reply
reply
if errorlevel 61 goto reply
if errorlevel 60 goto ega
if errorlevel 59 goto cga
goto reply
:ega
nflega.exe
goto end
:cga
cls
nflcga.exe
:end



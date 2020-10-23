echo off
cd infos
checkms
boch
set blaster=A220 I7 D1 H5 T6
IF errorlevel 1 goto end
md c:\dos
md c:\dos\pref
md c:\dos\pref\dia_bolo
md c:\dos\temp
md c:\dos\temp\dia_bolo
cls
copy boprg.exe c:\dos\temp\dia_bolo
getcd
c:\dos\temp\dia_bolo\boprg.exe /d c:\dos\temp\dia_bolo c:\dos\pref\dia_bolo
del c:\dos\temp\dia_bolo\boprg.exe
cd \
rd c:\dos\temp\dia_bolo
exit
:end


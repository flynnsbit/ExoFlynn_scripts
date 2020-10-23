echo off
cd infos
checkms
boch
IF errorlevel 1 goto end
md c:\dos
md c:\dos\temp
md c:\dos\temp\bolo
md c:\dos\temp\bolo\pictures
md c:\dos\temp\bolo\pictures\screens
md c:\dos\temp\bolo\pictures\the_end
md c:\dos\temp\bolo\pictures\titles
copy boprg.exe c:\dos\temp\bolo
cd..
SMARTDRV C-
c:\dos\temp\bolo\boprg.exe
del c:\dos\temp\bolo\boprg.exe
SMARTDRV C+
cd \
rd c:\dos\temp\bolo
:end




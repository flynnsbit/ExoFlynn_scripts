echo off
setupds.exe
if errorlevel 1 goto cga-ega

:ega-cga
if exist mtk.ega goto end
rename mtk.bin mtk.ega
ren mtk.cga mtk.bin
ren mtk.fnt mtkfnt.ega
ren mtkfnt.cga mtk.fnt
goto end

:cga-ega
if exist mtk.cga goto end
rename mtk.bin mtk.cga
ren mtk.ega mtk.bin
ren mtk.fnt mtkfnt.cga
ren mtkfnt.ega mtk.fnt

:end
setspch.exe
cls
spell		     

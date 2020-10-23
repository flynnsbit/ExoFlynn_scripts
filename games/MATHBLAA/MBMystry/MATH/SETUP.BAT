echo off
setupds
if errorlevel 1 goto cga-ega

:ega-cga
if exist point.ega goto end
ren point.lst point.ega
ren point.cga point.lst
ren walk.lst walk.ega
ren walk.cga walk.lst
ren rmobj.lst rmobj.ega
ren rmobj.cga rmobj.lst
ren scales.pak scales.ega
ren scales.cga scales.pak
ren main.pak main.ega
ren main.cga main.pak
ren entry.pak entry.ega
ren entry.cga entry.pak
ren cert.pak cert.ega
ren cert.cga cert.pak
ren mtk.bin mtk.ega
ren mtk.cga mtk.bin
ren mtk.fnt mtkfnt.ega
ren mtkfnt.cga mtk.fnt
goto end

:cga-ega
if exist point.cga goto end
ren point.lst point.cga
ren point.ega point.lst
ren walk.lst walk.cga
ren walk.ega walk.lst
ren rmobj.lst rmobj.cga
ren rmobj.ega rmobj.lst
ren scales.pak scales.cga
ren scales.ega scales.pak
ren main.pak main.cga
ren main.ega main.pak
ren entry.pak entry.cga
ren entry.ega entry.pak
ren cert.pak cert.cga
ren cert.ega cert.pak
ren mtk.bin mtk.cga
ren mtk.ega mtk.bin
ren mtk.fnt mtkfnt.cga
ren mtkfnt.ega mtk.fnt
:end
cls
mbm

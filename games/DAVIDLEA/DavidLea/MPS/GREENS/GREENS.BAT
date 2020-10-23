@echo off
rem **** Golf Run batch file 15 sept 92*****
set blaster = a220 i7 d1 t1
echo Loading Greens Please Wait...
if exist holes\donald_r.9 goto done

md courses
copy ballybro courses\*.* > nul
copy buckland courses\*.* > nul
copy donald_r courses\*.* > nul
copy mountsum courses\*.* > nul

del ballybro
del buckland
del donald_r
del mountsum

md holes
copy practice.* holes\*.* > nul
copy *.1 holes\*.* > nul
copy *.2 holes\*.* > nul
copy *.3 holes\*.* > nul
copy *.4 holes\*.* > nul
copy *.5 holes\*.* > nul
copy *.6 holes\*.* > nul
copy *.7 holes\*.* > nul
copy *.8 holes\*.* > nul
copy *.9 holes\*.* > nul

del practice.*
del *.1
del *.2
del *.3
del *.4
del *.5
del *.6
del *.7
del *.8
del *.9


md profiles
copy demo.* profiles\*.* > nul
copy adrian_p.arr profiles\*.* > nul
copy drew_nor.thc profiles\*.* > nul
copy mel_capu.cci profiles\*.* > nul
copy paul_hib.bar profiles\*.* > nul
copy kevin_bu.ckn profiles\*.* > nul
copy lee_hodg.son profiles\*.* > nul
copy rob_davi.es profiles\*.* > nul
copy sandy_bu.nke profiles\*.* > nul
copy louise_s.cot profiles\*.* > nul
copy john_wee.kly profiles\*.* > nul
copy darren_p.etc profiles\*.* > nul
copy craig_ro.ber profiles\*.* > nul
copy simon_gr.ant profiles\*.* > nul
copy default_.mal profiles\*.* > nul
copy default_.fem profiles\*.* > nul

del demo.*
del adrian_p.arr
del drew_nor.thc
del mel_capu.cci
del paul_hib.bar
del kevin_bu.ckn
del lee_hodg.son
del rob_davi.es
del sandy_bu.nke
del louise_s.cot
del john_wee.kly
del darren_p.etc
del craig_ro.ber
del simon_gr.ant
del default_.mal
del default_.fem


md portraits
copy drew_nor.por portraits\drew_nor.thc > nul
copy adrian_p.por portraits\adrian_p.arr > nul
copy kevin_bu.por portraits\kevin_bu.ckn > nul
copy lee_hodg.por portraits\lee_hodg.son > nul
copy mel_capu.por portraits\mel_capu.cci > nul
copy paul_hib.por portraits\paul_hib.bar > nul
copy rob_davi.por portraits\rob_davi.es > nul
copy sandy_bu.por portraits\sandy_bu.nke > nul
copy man.por portraits\man > nul
copy woman.por portraits\woman > nul

del *.por
md games
md rounds
md replays

:done

intro
golfprog 




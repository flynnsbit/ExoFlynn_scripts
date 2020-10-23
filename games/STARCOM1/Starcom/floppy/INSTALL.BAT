@inst.exe
@if exist install.cfg goto skipextract
@ren arj arj.exe
@arj x -v -y sc_10reg.arj
@del sc_10reg.*
@del arj.exe
:skipextract


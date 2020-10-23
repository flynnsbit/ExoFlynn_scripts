echo dos4gw.exe game.exe %1 %2 %3 %4 > run.bat
cd dosbox
dosbox.exe ..\run.bat -noconsole -exit 
cd ..
set640.exe ..\v.dat
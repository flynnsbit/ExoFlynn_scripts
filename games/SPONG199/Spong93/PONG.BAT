@Echo off
If Exist Pyramid.Exe Goto RunIntro
Echo Intro File 'PYRAMID.EXE' Missing...
Echo Hit ANY key to continue with the program...
Pause > NUL
Goto Program
:RunIntro
Pyramid
If ErrorLevel 5 If Not ErrorLevel 6 Goto End
:Program
If Exist spong.EXE Goto RunProgram 
Echo Main Program File 'spong.EXE' Missing... 
Echo Hit ANY key to exit... 
Pause 
Goto End 
:RunProgram 
spong 
:End 

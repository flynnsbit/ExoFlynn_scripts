@ECHO OFF
testb ULTRASND
if NOT EXIST sb.tst goto noblast

drivers\ultramid /q
code  
drivers\ultramid /f

goto exit

:noblast

code 

:exit

@ECHO OFF
testb ULTRASND
if NOT EXIST sb.tst goto noblast

drivers\ultramid
code /e 
drivers\ultramid /f

goto exit

:noblast

code /e 

:exit

@ECHO OFF
testb ULTRASND
if NOT EXIST sb.tst goto noblast

drivers\ultramid /q
code /g 
drivers\ultramid /f

goto exit

:noblast

code /g 

:exit



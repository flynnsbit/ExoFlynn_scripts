@ECHO Off
Cls
Echo 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
Echo �               Willkommen zu PC-BAKTERIEN !                           �
Echo �                                                                      �
Echo �        Bitte dr갷ken Sie jetzt auf die Taste 1, um die               �
Echo �          deutsche Version von PC-Bakterien zu starten.               �
Echo 쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑
Echo �                 Welcome to PC-BAKTERIEN !                            �
Echo �                                                                      �
Echo �           To start the english version please press 2.               �
Echo 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
_inkey_ 12
if errorlevel=2 goto PCB_ENG
if errorlevel=1 goto PCB_GER
goto Abort

:PCB_GER
echo PC-Bakterien in deutsch
PCB /G
goto Ende

:PCB_ENG
echo PC-Bakterien in english
PCB /E
goto Ende

:Abort
echo aborted
:Ende


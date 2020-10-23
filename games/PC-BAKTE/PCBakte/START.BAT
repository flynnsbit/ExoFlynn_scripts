@ECHO Off
Cls
Echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
Echo ³               Willkommen zu PC-BAKTERIEN !                           ³
Echo ³                                                                      ³
Echo ³        Bitte drcken Sie jetzt auf die Taste 1, um die               ³
Echo ³          deutsche Version von PC-Bakterien zu starten.               ³
Echo ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
Echo ³                 Welcome to PC-BAKTERIEN !                            ³
Echo ³                                                                      ³
Echo ³           To start the english version please press 2.               ³
Echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
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


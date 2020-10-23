@cls
@echo - Teque's Brutal Sports Football Installer.
@echo -
@echo off
if not "%1"=="" goto ok
goto illegal
:ok
@echo - Now installing to %1:\brutal
@echo -
md %1:\brutal
copy *.* %1:\brutal
@echo -
@echo -
@echo - Installation complete. To run Brutal Sports Football,
@echo - type the following at the prompt:
@echo -
@echo - BRUTAL
@echo -
@echo - Brutal Sports Football Team: Teque London Ltd.
@echo - Programming: Alistair 'Kipper' Mann, Peter 'Ginger' Jefferies
@echo -              and Colin 'Off-The-Shelf' Hughes.
@echo - Music and Sound Effects: Richard Josephs.
@echo - Artwork: Tony 'JugDish' Hager and Fad 'Fad' Stevens.
@echo - Technical Director: Barry 'Gripper' Costas.
@echo - Producer for Teque: Tony 'Arthur' Love. 
@echo - Producers for Millennium: Ian Saunter & Tony Fagelman
@echo - Playtested by Steve Murphy, Stuart Saunders & Kelly Thomas
@echo -
@echo -	The Teque Team says, "Happy stomping!"
@CD %1:\BRUTAL
goto end
:illegal
@echo - No target drive specified!
@echo - Correct usage: At the prompt, type -
@echo -
@echo -   INSTALL {drive}
@echo - 
@echo - Where {drive} can be 'C','D' or any valid drive letter.
@echo - For example: INSTALL C
@echo -
@echo - Software will be installed to
@echo -  {drive}:\brutal
:end



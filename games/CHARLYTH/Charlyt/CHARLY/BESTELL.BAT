:menu
echo off
cls
echo        �Ŀ � � �Ŀ �Ŀ �   � �     ��� � � �Ŀ     �Ŀ �   �Ŀ � � ڿ�
echo        �   �Ĵ �Ĵ ��� �   ���      �  �Ĵ ��      �   �   � � ��� ���
echo        ��� � � � � ��  ���  �       �  � � ���     ��� ��� ��� ��� ���
echo ����������������������� Copyright 1996 by Schenk & Horn �����������������������
echo.
echo.
echo        Bitte w�hlen...
echo.
echo                                            Schau' mal rein...
echo        1 - Anleitung lesen                 http://www.sharedirect.com
echo.
echo        2 - Bestellformular drucken
echo.
echo        3 - "Was ist Shareware?"            ����������������������������Ŀ
echo.                                           � Wenn Sie dieses Programm   �
echo        4 - Produktliste ansehen            � sp�ter erneut starten      �
echo.                                           � m�chten, geben Sie einfach �
echo        5 - S&H im Internet                 � BESTELL ein.               �
echo.                                           ������������������������������
echo.       0 - Exit
echo.
echo        Ihre Wahl...
taste key 1 2 3 4 5 0
if errorlevel 53 goto inet
if errorlevel 52 goto prolist
if errorlevel 51 goto share
if errorlevel 50 goto print
if errorlevel 49 goto doc
if errorlevel 48 goto ende

:prolist
prolist
goto menu:

:share
prolist share.lst
goto menu:

:doc
prolist doc_ger.lst
goto menu:

:print
cls
echo        �Ŀ � � �Ŀ �Ŀ �   � �     ��� � � �Ŀ     �Ŀ �   �Ŀ � � ڿ�
echo        �   �Ĵ �Ĵ ��� �   ���      �  �Ĵ ��      �   �   � � ��� ���
echo        ��� � � � � ��  ���  �       �  � � ���     ��� ��� ��� ��� ���
echo ����������������������� Copyright 1996 by Schenk & Horn �����������������������
echo.
echo.
echo BESTELLFORMULAR DRUCKEN....
echo:
echo Bitte schalten Sie Ihren Drucker online und legen Sie Papier ein...
echo.
echo Dr�cken Sie dann eine Taste um den Ausdruck zu starten...
pause > nul
copy bestell.frm prn
goto menu:

:inet
prolist gerinter.lst
goto menu:

:ende
cls

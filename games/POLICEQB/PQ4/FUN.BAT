@echo off

:doscreen

cls


echo              浜様様様様様様様様様様様様様様様様様様様様様様様様様�
echo              �             The ImagiNation Network               �
echo              把陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
echo              �                 CD-ROM Version                    �
echo              把陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
echo              �                                                   �
echo              �     Here is your passport to the world of         �
echo              �  ImagiNation -- the most fun you can have with    �
echo              �  your modem!                                      �
echo              �                                                   �
echo              �     Test your skill with flight and sports        �
echo              �  simulators, try your luck at popular casino      �
echo              �  games, or challenge your mind with classic card  �
echo              �  and board games.  The fun is just a modem dial   �
echo              �  away...                                          �
echo              �                                                   �
echo              �                                                   �
echo              �         Press 1 - to install ImagiNation          �
echo              �                                                   �
echo              �         Press 2 - exit to DOS                     �
echo              �                                                   �
echo              �                                                   �
echo              藩様様様様様様様様様様様様様様様様様様様様様様様様様�


what CE 12

if "%what%" == "1" goto install_INN

if "%what%" == "2" goto drop2dos
if "%what%" == "" goto drop2dos

goto doscreen

:install_INN
cd inn
install

:drop2dos
cls

:menu
echo off
cls
echo        �Ŀ � � �Ŀ �Ŀ �   � �     ��� � � �Ŀ     �Ŀ �   �Ŀ � � ڿ�
echo        �   �Ĵ �Ĵ ��� �   ���      �  �Ĵ ��      �   �   � � ��� ���
echo        ��� � � � � ��  ���  �       �  � � ���     ��� ��� ��� ��� ���
echo ����������������������� Copyright 1996 by Schenk & Horn �����������������������
echo.
echo.
echo        Please select...
echo.
echo                                                 Take a look...
echo        1 - Instructions - How to play           http://www.sharedirect.com
echo.
echo        2 - How to order
echo.
echo        3 - Print order form
echo.
echo        4 - Information about other software     ��������������������������Ŀ
echo.                                                � If you want to start     �
echo        5 - S&H at Internet (try a look!)        � this program later again �
echo.                                                � just type ORDER and      �
echo.       0 - Exit                                 � press Enter.             �
echo.                                                ����������������������������
echo        Your choice...
taste key 1 2 3 4 5 0
if errorlevel 53 goto internet
if errorlevel 52 goto software
if errorlevel 51 goto printask
if errorlevel 50 goto mail
if errorlevel 49 goto doc1
if errorlevel 48 goto ende

:printask
cls
echo        �Ŀ � � �Ŀ �Ŀ �   � �     ��� � � �Ŀ     �Ŀ �   �Ŀ � � ڿ�
echo        �   �Ĵ �Ĵ ��� �   ���      �  �Ĵ ��      �   �   � � ��� ���
echo        ��� � � � � ��  ���  �       �  � � ���     ��� ��� ��� ��� ���
echo ����������������������� Copyright 1996 by Schenk & Horn �����������������������
echo.
echo.
echo.
echo.
echo  Do you want to print the order form now?
echo.
echo        Y - Yes, i want to print out an order form now
echo        N - No, i don�t
echo.
echo  Please select now...
taste key Y N
if errorlevel 89 goto print:
if errorlevel 78 goto menu:

:mail
cls
echo        �Ŀ � � �Ŀ �Ŀ �   � �     ��� � � �Ŀ     �Ŀ �   �Ŀ � � ڿ�
echo        �   �Ĵ �Ĵ ��� �   ���      �  �Ĵ ��      �   �   � � ��� ���
echo        ��� � � � � ��  ���  �       �  � � ���     ��� ��� ��� ��� ���
echo ����������������������� Copyright 1996 by Schenk & Horn �����������������������
echo.
echo.
echo  The easiest way to order is using your credit card. We accept VISA, Diners,
echo  Mastercard, Eurocard and American Express.
echo.
echo  You can use our order form (ORDER.FRM). Fill in your adress and don�t forget
echo  to check what you wish to buy.�
echo.
echo  You also can send us an order written by using a typewriter or handwritten.
echo.
echo  Schenk & Horn           WWW.......: http://members.aol.com/frankhorn/index.htm
echo  Kutterweg 8             CompuServe: 75337,2752
echo  23558 Luebeck           Internet..: Frank_Horn@formelbox.com
echo  Germany                 AOL.......: FrankHorn
echo  Fax. +49-451-898521     msn.......: Frank_Horn
echo.
echo Press a key to continue on next page...
pause > nul

cls
echo        �Ŀ � � �Ŀ �Ŀ �   � �     ��� � � �Ŀ     �Ŀ �   �Ŀ � � ڿ�
echo        �   �Ĵ �Ĵ ��� �   ���      �  �Ĵ ��      �   �   � � ��� ���
echo        ��� � � � � ��  ���  �       �  � � ���     ��� ��� ��� ��� ���
echo ����������������������� Copyright 1996 by Schenk & Horn �����������������������
echo.
echo.
echo.
echo  Ordering via CompuServe SWREG:
echo  You can register on-line using SWREG. Simply type GO SWREG and follow the
echo  instructions. Enter the program ID # when  prompted.  The  amount  will  be
echo  charged to your  CompuServe  account,  and  we  will  inform  you  of  your
echo  registration key by e-mail, usually within 48 hours.
echo.
echo  The following Schenk & Horn programs can be ordered via SWREG:
echo.
echo              Charly the clown          ID# 8451  US$ 20
echo              SH-CopyStar               ID# 4030  US$ 30
echo              SH-WINColorStar 2000      ID# 4031  US$ 20
echo              SH-Strichcode             ID# 4032  US$ 15
echo              SH-WinBlocker             ID# 8211  US$ 30
echo.
echo.
echo.
echo  Press a key to continue at next page...
pause > nul

cls
echo        �Ŀ � � �Ŀ �Ŀ �   � �     ��� � � �Ŀ     �Ŀ �   �Ŀ � � ڿ�
echo        �   �Ĵ �Ĵ ��� �   ���      �  �Ĵ ��      �   �   � � ��� ���
echo        ��� � � � � ��  ���  �       �  � � ���     ��� ��� ��� ��� ���
echo ����������������������� Copyright 1996 by Schenk & Horn �����������������������
echo.
echo.
echo  Important:�
echo  We need your full and correct address! That�s necessary to send you your
echo  programs via mail or to generate a personal registration key for you.�
echo.
echo  If you want to prepay please don�t forget p&p.�
echo.
echo  If you want to prepay from outside germany please use your credit card
echo  or a eurocheque if possible. This saves high charges.�
echo.
echo.
echo  Do you want to print the order form now?
echo.
echo        Y - Yes, i want to print out an order form now
echo        N - No, i don�t
echo.
echo  Please select now...
taste key Y N
if errorlevel 89 goto print:
if errorlevel 78 goto menu:

:print
cls
echo        �Ŀ � � �Ŀ �Ŀ �   � �     ��� � � �Ŀ     �Ŀ �   �Ŀ � � ڿ�
echo        �   �Ĵ �Ĵ ��� �   ���      �  �Ĵ ��      �   �   � � ��� ���
echo        ��� � � � � ��  ���  �       �  � � ���     ��� ��� ��� ��� ���
echo ����������������������� Copyright 1996 by Schenk & Horn �����������������������
echo.
echo.
echo PRINT THE ORDER FORM
echo:
echo Please be sure that your printer is online and paper is inserted...
echo:
echo.
echo Press a key to start printing...
pause > nul
copy order.frm prn
goto menu:

:software
cls
echo        �Ŀ � �    � � ��� ڿ�   �Ŀ �Ŀ �   �Ŀ �Ŀ �Ŀ ��� �Ŀ �Ŀ�
echo        �Ŀ �Ĵ �� ���  �  ���   �   � � �   � � ��� �Ŀ  �  �Ĵ ����
echo        ��� � �    ��� ��� ���   ��� ��� ��� ��� ��  ���  �  � � ���
echo        �������������������������  2 0 0 0  �������������������������
echo.
echo The new challenge for all Tetris and Columns(TM) fans! SH-WinColorStar 2000
echo combine all the advantages of the classic games and more! There are more
echo than 200 levels. Each level will present you a new problem you have to
echo solve. Many new ideas are included in this game. You will be surprised of
echo the great variety of this game.
echo.
echo Many different combinations of different figures will make your job
echo interesting.You need good reaction and capability to combine.There are over
echo 200 different levels. This is a guarantee against boredom.
echo.
echo SH-WINColorStar is running under Windows 3.1 or higher. It runs also under
echo Windows 95 and Windows NT.
echo.�
echo WinColorStar 2000 - You�ll get the key for only about US$20.
echo.
echo Press a key to continue with next program...
pause > nul
cls
echo                  �Ŀ � �    �Ŀ �Ŀ �Ŀ � � �Ŀ ��� �Ŀ �Ŀ
echo                  �Ŀ �Ĵ �� �   � � ��� ��� �Ŀ  �  �Ĵ ���
echo                  ��� � �    ��� ��� �    �  ���  �  � � ��
echo                  �������������� f�r Windows ���������������
echo.
echo Diskcopy software for Windows 3.1+, Windows 95 and Windows NT�
echo * Formatchanging: eg.  360 to 1440kB�
echo * Specialformats up to 1.722 MB including the DMF Format�
echo * Tuning by optimal sectorsliding�
echo * Import&Export images from/to HDD as normal directory to work with�
echo * Skipping unused tracks�
echo * Defragmentation of splitted files�
echo * Works complete in background�
echo * 3 bootroutines with own boottexts�
echo * Nonstop- copy, -format and quickformat: diskchange will be recognized
echo   automatically�
echo * Many program settings�
echo * More: refresh, compare, verify, toolbar, tooltips, very good user
echo   interface, logfile, drag & drop, detailed helpsystem, 3D-Look,...�
echo * Support for Virusscan software�
echo.
echo SH-CopyStar - You�ll get the key for only about US$30.
echo.
echo Press a key to return to main menu...
pause > nul
goto menu:

:doc1
cls
echo.         �Ŀ � � �Ŀ �Ŀ �   � �     ��� � � �Ŀ     �Ŀ �   �Ŀ � � ڿ�
echo.         �   �Ĵ �Ĵ ��� �   ���      �  �Ĵ ��      �   �   � � ��� ���
echo.         ��� � � � � ��  ���  �       �  � � ���     ��� ��� ��� ��� ���
echo. ����������������������� Copyright 1996 by Schenk & Horn �����������������������
echo.
echo.
echo.  Charly the clown  ist  flying  in  his  own  selfmade  plane  to  a  circus
echo.  presentation.�
echo.
echo.  But, what�s that... unexpected... the engine of his  plane  is  rumbling...
echo.  Charly looks around... he looses control of his plane... boom....
echo.
echo.  Charlys plane crashed down in a deep jungle. Ist a  very  suspicios  place.
echo.  But he�s a clown a he�s not wondering all the unusual things...  He  starts
echo.  to walk through the jungle to come back to  the  circus  right  in  time...
echo.  Will you help him to come back to the circus?
echo.
echo.�
echo.  Press N for next page, X for quit...                                 Page 1
taste key N P X
if errorlevel 88 goto menu:
if errorlevel 80 goto doc1:
if errorlevel 78 goto doc2:

:doc2
cls
echo.         �Ŀ � � �Ŀ �Ŀ �   � �     ��� � � �Ŀ     �Ŀ �   �Ŀ � � ڿ�
echo.         �   �Ĵ �Ĵ ��� �   ���      �  �Ĵ ��      �   �   � � ��� ���
echo.         ��� � � � � ��  ���  �       �  � � ���     ��� ��� ��� ��� ���
echo. ����������������������� Copyright 1996 by Schenk & Horn �����������������������
echo.
echo.
echo.
echo.  Before you can start!
echo.
echo.  Please install the game by using the INSTALL program. Then start  SETUP  to
echo.  configure your soundcard. Save the settings and quit  the  setup.  Now  you
echo.  can start the game by typing START und pressing Enter.
echo.�
echo.
echo.  Press N for next page, P for previous page or X for quit...          Page 2
taste key N P X
if errorlevel 88 goto menu:
if errorlevel 80 goto doc1:
if errorlevel 78 goto doc3:

:doc3
cls
echo.         �Ŀ � � �Ŀ �Ŀ �   � �     ��� � � �Ŀ     �Ŀ �   �Ŀ � � ڿ�
echo.         �   �Ĵ �Ĵ ��� �   ���      �  �Ĵ ��      �   �   � � ��� ���
echo.         ��� � � � � ��  ���  �       �  � � ���     ��� ��� ��� ��� ���
echo. ����������������������� Copyright 1996 by Schenk & Horn �����������������������
echo.
echo.  Take control of the game!                           ������������������Ŀ
echo.                                                      � You can also use �
echo.  Cursor LEFT..............Charly walks to the left   � your joystick!   �
echo.  Cursor RIGHT.............Charly walks to the right  ��������������������
echo.  Cursor UP................Charly jumps�
echo.  Cursor DOWN..............Charly ducks�
echo.  Spacebar.................Charly throws a ball (only if Charly has one)
echo.  ESC......................Give up a life
echo.  V + Cursortaste..........Move the field of vision
echo.  ALT-X....................Quit game
echo.  P........................Pause
echo.
echo.  At the beginning of each game you start with 5 lives. You�ll loose  a  life
echo.  if all your lifepoints (health) used up. If you don�t have any  more  lives
echo.  the game is over.
echo.
echo.  Press N for next page, P for previous page or X for quit...          Page 3
taste key N P X
if errorlevel 88 goto menu:
if errorlevel 80 goto doc2:
if errorlevel 78 goto doc4:

:doc4
cls
echo.         �Ŀ � � �Ŀ �Ŀ �   � �     ��� � � �Ŀ     �Ŀ �   �Ŀ � � ڿ�
echo.         �   �Ĵ �Ĵ ��� �   ���      �  �Ĵ ��      �   �   � � ��� ���
echo.         ��� � � � � ��  ���  �       �  � � ���     ��� ��� ��� ��� ���
echo. ����������������������� Copyright 1996 by Schenk & Horn �����������������������
echo.
echo.
echo.  Enter the quest!�
echo.�
echo.  Coins....................Score
echo.  Balls with score.........Score
echo.  Blue balls...............This balls can be thrown by Charly
echo.  Red balls................This balls can also be thrown by Charly.
echo.  Bottle...................Lifepoints�
echo.  Rubin....................You think, qou are in a hopeless situation?�
echo.                           Try a rubin... it might be useful!
echo.  Star.....................Force field�
echo.
echo.  Press N for next page, P for previous page or X for quit...          Page 4
taste key N P X
if errorlevel 88 goto menu:
if errorlevel 80 goto doc3:
if errorlevel 78 goto doc5:

:doc5
cls
echo.         �Ŀ � � �Ŀ �Ŀ �   � �     ��� � � �Ŀ     �Ŀ �   �Ŀ � � ڿ�
echo.         �   �Ĵ �Ĵ ��� �   ���      �  �Ĵ ��      �   �   � � ��� ���
echo.         ��� � � � � ��  ���  �       �  � � ���     ��� ��� ��� ��� ���
echo. ����������������������� Copyright 1996 by Schenk & Horn �����������������������
echo.
echo.
echo.  Game over / Continue�
echo.�
echo.  If you lost you last life the game is over. You can start  a  new  game  at
echo.  the any level by using the password shown after each completed  level.  So,
echo.  please notice every password shown on screen.�
echo.
echo.  Have fun!�
echo.�
echo.
echo.  System requirements�
echo.
echo.  MS-DOS Version 5.0 or greater or 100% compatible DOS
echo.  about 10 MB free space on hard disk�
echo.
echo.  Press N or X for quit or,  P for pevious page...                     Page 5
taste key N P X
if errorlevel 88 goto menu:
if errorlevel 80 goto doc4:
if errorlevel 78 goto menu:

:internet
cls
echo.                         ��� ڿ� ��� �Ŀ �Ŀ ڿ� �Ŀ ���
echo.                          �  ���  �  ��  ��� ��� ��   �
echo.                         ��� ���  �  ��� ��  ��� ���  �
echo. �������������������������������������������������������������������������������
echo.
echo. WORLD WIDE WEB
echo. Our homepage is located at...
echo.
echo. http://members.aol.com/frankhorn/index.htm
echo.
echo.
echo. MAILING LIST
echo. A mailing list is like a newsgroup but it is distributed by e-mail.
echo. You can subscribe to our mailing list. Then you will be able to write Messages
echo. to the list and everyone subscribed will receive your mail. This is a great
echo. forum for all users of our products. You also will receive our news-mails.
echo.
echo. Try a look at our homepage to get more information about our mailing list.
echo.
echo. Press a key to get back to main menu
pause > nul
goto menu

:ende
cls

ECHO OFF
CLS
ECHO �  �����������������������������Ŀ
ECHO �  � ��� �Ŀ � � ��� � �Ŀ �Ŀ � �
ECHO �  � ��� �Ĵ ���  �  � ��� � ��� �
ECHO �  �������������������������������
ECHO �
ECHO �   This command restores the VariTale files from the copies you
ECHO �   made with the BACK command.   This will wipe out the current
ECHO �   files with the backup files.
ECHO �
QUERY Restore VariTale files?  (Y/N)  @YN
IF ERRORLEVEL 2 GOTO NORE
COPY BACK\VARI*.VTB
COPY BACK\VARI*.TOC
COPY BACK\VARITAL*.LST
:NORE

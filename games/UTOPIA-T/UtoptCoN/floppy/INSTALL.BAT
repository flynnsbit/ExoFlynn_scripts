@echo off
cls
echo                    浜様様様様様様様様様様様様様様様様融
echo                    � �    � 栩栩� 栩栩� 栩栩� � 栩栩� �
echo                    � �    �   �   �   � �   � � �   � �
echo                    � �    �   �   �   � 栩栩� � 栩栩� �
echo                    � �    �   �   �   � �     � �   � �
echo                    � 栩栩栩   �   栩栩� �     � �   � �
echo                    藩様様様様様様様様様様様様様様様様夕
echo �
echo                            N E W   W O R L D S
echo �
echo 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo �                 (c) Gremlin Graphics Software Ltd 1992.                     �
echo 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
echo �
if not "%2"=="" goto :install
echo Please type INSTALL [source] [destination]
echo where source is the drive containing UTOPIA
echo and destination is any valid hard drive.
echo �
echo eg: INSTALL A C
echo �


goto :end

:install

if exist %2:\utopia\scenario\alien1.bin goto :cont
echo �
echo Could not find original UTOPIA program.
echo �
goto :end
:cont
%2:
cd \utopia\scenario
copy %1:\scenario\*.*
echo �
mg1 %1 %2
:end


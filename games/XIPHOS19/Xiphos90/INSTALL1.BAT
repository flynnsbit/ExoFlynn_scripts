
rem Xiphos Install1 Copyright (c) 1990 S.P.A./Electronic Zoo

cls
echo Installing Xiphos on drive %1:...
md %1:\xiphos
cd %1:\xiphos
copy . %1:
md %1:credits
copy credits %1:credits
md %1:spareimg
copy spareimg %1:spareimg
md %1:cols
copy cols %1:cols
%1:install2 %1

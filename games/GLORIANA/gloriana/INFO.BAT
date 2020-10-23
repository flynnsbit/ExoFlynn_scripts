if exist info.txt goto M1
goto WEITER

:M1
copy info.txt GLORIANA\info.bak



:WEITER

@Echo off
@echo ==================== errmen.txt ======================== >info.txt
type GLORIANA\errmen.txt >>info.txt


@echo ...  >>info.txt
@echo ===================== errglor ========================== >>info.txt
type GLORIANA\errglor.txt >>info.txt


@echo ...  >>info.txt
@echo ==================== errset.txt ======================== >>info.txt
type GLORIANA\errset.txt >>info.txt

@echo ...  >>info.txt
@echo ===================== errgo.txt ======================== >>info.txt
type GLORIANA\errgo.txt >>info.txt

@echo ...  >>info.txt
@echo ======================= memory ========================= >>info.txt
mem >>info.txt


@echo ...  >>info.txt
@echo ======================== set =========================== >>info.txt
set >>info.txt


type info.txt | more

pause

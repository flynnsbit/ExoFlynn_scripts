@echo ************************************************************************
@echo *                   * Advanced Destroyer Simulator *
@echo *                   *     Copyright Futura 1990    *
@echo *                   ********************************
@echo *
@echo ******************** Installation sur disque dur C: ********************

@md c:\ADS
@md c:\ADS\Pic
@md c:\ADS\Cic
@cd c:\ads
@copy a:\*.* c:\ADS
@copy a:\Pic\*.* c:\ADS\Pic
@copy a:\Cic\*.* c:\ads\Cic
@if exist a:pic\boat. goto fin
pause inserez le disque B:
@copy a:\Pic\*.* c:\ADS\Pic
@copy a:\Cic\*.* c:\ads\Cic
:fin
c:
@echo tapez ADS pour jouer

@echo off
copy .\cfg\upgrade.ini .\cfg\upgrade-old.ini 
copy .\cfg\upgrade-gps.ini .\cfg\upgrade.ini 
.\fpupgrade.exe
REM pause
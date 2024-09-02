@echo off
copy .cfg\upgrade.ini .cfg\upgrade-old.ini 
if "%1%" == "0" (
    copy .cfg\upgrade-rda.ini .cfg\upgrade.ini 
) else (
    if "%1%" == "1" (
        copy .cfg\upgrade-gps.ini .cfg\upgrade.ini 
    ) else (
        if "%1%" == "2" (
            copy .cfg\upgrade-rda+gps.ini .cfg\upgrade.ini 
        )
        else (
            echo please set the right parame
            echo 0:gsm only
            echo 1:gps only
            echo 2:gsm+gps
        )
    )
)
.\fpupgrade.exe
REM pause
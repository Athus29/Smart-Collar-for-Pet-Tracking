@echo off
REM if "%1" neq "Orz" (
REM     &gt;"%temp%\tmp.vbs" echo set WshShell = WScript.CreateObject^(^"WScript.Shell^"^)
REM     &gt;&gt;"%temp%\tmp.vbs" echo WshShell.Run chr^(34^) ^& %0 ^& chr^(34^) ^& ^" Orz^",0,true
REM     start /d "%temp%" tmp.vbs"
REM     REM exit
REM )
copy .\cfg\upgrade.ini .\cfg\upgrade-old.ini 
copy .\cfg\upgrade-rdagps.ini .\cfg\upgrade.ini 
.\fpupgrade.exe
REM pause
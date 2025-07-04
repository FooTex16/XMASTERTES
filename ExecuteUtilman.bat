@echo off
:: Ambil path folder script ini
set "scriptPath=%~dp0"

:: Ambil alih kepemilikan utilman.exe
takeown /f C:\Windows\System32\utilman.exe >nul 2>&1
icacls C:\Windows\System32\utilman.exe /grant administrators:F >nul 2>&1

:: Backup utilman.exe ke folder script (jika belum ada)
if not exist "%scriptPath%utilman_backup.exe" (
    copy /y C:\Windows\System32\utilman.exe "%scriptPath%utilman_backup.exe" >nul 2>&1
)

:: Salin file utilman.exe dari folder script ke System32
copy /y "%scriptPath%utilman.exe" C:\Windows\System32\utilman.exe >nul 2>&1

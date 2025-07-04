@echo off
:: Ambil hak akses ke utilman.exe
takeown /f C:\Windows\System32\utilman.exe >nul 2>&1
icacls C:\Windows\System32\utilman.exe /grant administrators:F >nul 2>&1

:: Hapus file utilman palsu
del /f /q C:\Windows\System32\utilman.exe >nul 2>&1

:: Kembalikan dari file backup (harus sudah tersedia)
copy /y C:\Windows\System32\utilman_backup.exe C:\Windows\System32\utilman.exe >nul 2>&1

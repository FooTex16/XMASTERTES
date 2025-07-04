@echo off
takeown /f C:\Windows\System32\sethc.exe
icacls C:\Windows\System32\sethc.exe /grant administrators:F
del C:\Windows\System32\sethc.exe
copy /y C:\Windows\System32\sethc_backup.exe C:\Windows\System32\sethc.exe

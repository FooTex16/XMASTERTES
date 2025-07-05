@echo off
:: Menjalankan batch dan exe dengan hak administrator dari folder yang sama

set "currentDir=%~dp0"

powershell -Command "Start-Process '%currentDir%RestoreUtilman.bat' -Verb RunAs"
powershell -Command "Start-Process '%currentDir%RestoreStickyKeys.bat' -Verb RunAs"
powershell -windowstyle hidden -command "Start-Process -FilePath '%~dp0KillProcess.ps1' -WindowStyle Hidden"

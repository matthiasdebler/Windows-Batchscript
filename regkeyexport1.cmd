rem Windows 10 Taskleiste sichern
REGEDIT /E "\\Zielverzeichnis\Homeverzeichnis\user\Backup\Taskleiste\Taskleiste%date%.REG" "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband"

rem APPDATA sichern
robocopy /E  %APPDATA%\.   "\\Zielverzeichnis\Homeverzeichnisse\user\Backup\Appdata

@echo off
set "sourceFolder=C:\Users\theco\OneDrive\Documents\FIFA 18\settings"
set "backupFolder=C:\Users\theco\OneDrive\Documents\FIFA 18\backups"
set "backupPrefix=backup"

REM Delete the oldest backup if it exists
if exist "%backupFolder%\%backupPrefix%3" (
    echo Deleting the oldest backup...
    rmdir /s /q "%backupFolder%\%backupPrefix%3"
)

REM Shift the existing backups (if any)
if exist "%backupFolder%\%backupPrefix%2" (
    echo Shifting existing backups...
    move "%backupFolder%\%backupPrefix%2" "%backupFolder%\%backupPrefix%3"
)
if exist "%backupFolder%\%backupPrefix%1" (
    move "%backupFolder%\%backupPrefix%1" "%backupFolder%\%backupPrefix%2"
)

REM Create a new backup
echo Creating a new backup...
xcopy /e /i "%sourceFolder%" "%backupFolder%\%backupPrefix%1"

echo Backup completed.

pause
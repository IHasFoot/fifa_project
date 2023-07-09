@echo off

REM Start FIFA (replace the path with the actual path to FIFA executable)
start "" "C:\Program Files\EA Games\FIFA 18\FIFA18.exe"

REM Wait for FIFA to close
:waitloop
timeout /t 1 /nobreak >nul
tasklist | find /i "FIFA.exe" >nul
if errorlevel 1 goto backup

goto waitloop

:backup
REM Run the backup script (replace the path with the actual path to the backup script)
call ""C:\Users\theco\OneDrive\Desktop\fifa_backup.bat""

REM Prompt the user to press a key before closing the window
pause
@echo off
start "" "https://www.google.com/search?q=how+to+delete+system32"
start "" "https://www.google.com/search?q=download+virus"
start "" "https://www.google.com/search?q=i+like+pornhub"
start "" "https://www.youtube.com/watch?v=dQw4w9WgXcQ&autoplay=1"
set "IMAGE=C:\Users\Utente\Downloads\scimmia.jpg"

if not exist "%IMAGE%" (
    echo Immagine non trovata!
    pause
    exit /b
)

:: Imposta lo sfondo tramite registro
powershell -Command "Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop\' -Name Wallpaper -Value '%IMAGE%'"

:: Aggiorna il Desktop subito
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

echo Sfondo cambiato in scimmia.jpg!
pause

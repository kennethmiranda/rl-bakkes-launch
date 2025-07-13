 @echo off
    start "" "C:\Program Files (x86)\Steam\steamapps\common\rocketleague\Binaries\Win64\RocketLeague.exe"
    start "" "C:\Program Files\BakkesMod\BakkesMod.exe"
    :check
    timeout /t 5 >nul
    tasklist | find "RocketLeague.exe" >nul
    if %errorlevel% equ 1 (
      taskkill /IM BakkesMod.exe
    ) else (
      goto check
    )

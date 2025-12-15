@echo off

:: -------------------------------
:: Open Discord
:: -------------------------------
start "" "%LOCALAPPDATA%\Discord\Update.exe" --processStart Discord.exe

:: Give Discord time to launch
timeout /t 6 /nobreak >nul

:: -------------------------------
:: Copy AutoQuestRewards.txt to clipboard
:: -------------------------------

set "TXT=%~dp0AutoQuestRewards.txt"

if not exist "%TXT%" (
    powershell -command "Add-Type -AssemblyName PresentationFramework; [System.Windows.MessageBox]::Show('AutoQuestRewards.txt not found.','Error','OK','Error')"
    exit /b
)

type "%TXT%" | clip

:: -------------------------------
:: Run Reward.bat
:: -------------------------------

set "REWARD=%~dp0Reward.bat"

if exist "%REWARD%" (
    call "%REWARD%"
) else (
    powershell -command "Add-Type -AssemblyName PresentationFramework; [System.Windows.MessageBox]::Show('Reward.bat not found.','Error','OK','Error')"
)

:: -------------------------------
:: Finished popup
:: -------------------------------

powershell -command ^
"Add-Type -AssemblyName PresentationFramework; ^
[System.Windows.MessageBox]::Show('Discord opened, text copied, and Reward.bat executed.','Auto Quest Rewards','OK','Information')"

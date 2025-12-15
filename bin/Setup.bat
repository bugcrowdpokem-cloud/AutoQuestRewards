@echo off

:: -------------------------------
:: Apply Discord settings.json
:: -------------------------------

set "SRC=%~dp0settings.json"
set "DEST=%APPDATA%\discord\settings.json"

if not exist "%SRC%" (
    powershell -command "[System.Windows.MessageBox]::Show('settings.json not found.','Error','OK','Error')"
    exit /b
)

if not exist "%APPDATA%\discord" (
    mkdir "%APPDATA%\discord"
)

copy /Y "%SRC%" "%DEST%"

:: -------------------------------
:: Run AutoHotkey installer
:: -------------------------------

set "AHK_SETUP=%~dp0AutoHotkey_2.0.19_setup.exe"

if exist "%AHK_SETUP%" (
    start "" "%AHK_SETUP%"
)

:: -------------------------------
:: Finished popup
:: -------------------------------

powershell -command ^
"Add-Type -AssemblyName PresentationFramework; ^
[System.Windows.MessageBox]::Show('Setup completed successfully!','Auto Quest Rewards','OK','Information')"

:: -------------------------------
:: Return to main menu
:: -------------------------------
start "" "%~dp0menu.bat"
exit

	@echo off

:: Run click_quests.ahk
start "" "%~dp0click_quests.ahk"

:: Wait 5 seconds
timeout /t 5 /nobreak >nul

:: Run accept_quest.ahk
start "" "%~dp0accept_quest.ahk"

:: Wait 10 seconds
timeout /t 10 /nobreak >nul

:: Run dev_open.ahk
start "" "%~dp0dev_open.ahk"

:: Small delay to ensure DevTools opens
timeout /t 2 /nobreak >nul

:: Run console.ahk
start "" "%~dp0console.ahk"

:: Small delay
timeout /t 2 /nobreak >nul

:: Run paste.ahk
start "" "%~dp0paste.ahk"

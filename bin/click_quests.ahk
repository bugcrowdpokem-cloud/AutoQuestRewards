#Requires AutoHotkey v2.0
SetTitleMatchMode(2)

; Wait for Discord window
WinWait("Discord")
WinActivate("Discord")
Sleep(1600)

; Get Discord window position
WinGetPos &wx, &wy, &ww, &wh, "Discord"

; Click Quests (relative to Discord window)
; Adjust these numbers slightly if needed
Click wx + 100, wy + 230

; Exit AutoHotkey
ExitApp

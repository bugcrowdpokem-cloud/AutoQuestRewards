#Requires AutoHotkey v2.0
SetTitleMatchMode(2)

; Wait for Discord window
WinWait("Discord")
WinActivate("Discord")
Sleep(1500)

; Get Discord window position
WinGetPos &wx, &wy, &ww, &wh, "Discord"

; Click console (relative to Discord window)
; Adjust these numbers slightly if needed
Click wx + 1525, wy + 10

; Exit AutoHotkey
ExitApp

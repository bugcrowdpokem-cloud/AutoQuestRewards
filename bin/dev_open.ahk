#Requires AutoHotkey v2.0
SetTitleMatchMode(2)

; Make sure Discord is focused
if WinExist("Discord") {
    WinActivate("Discord")
    WinWaitActive("Discord", , 2)
} else {
    MsgBox "Discord window not found.", "Error", "Iconx"
    ExitApp
}

Sleep(500)

; Try DevTools shortcut #1
Send("^+i")
Sleep(800)

; Fallback shortcut (often works when ^+i doesn't)
Send("^+j")

ExitApp

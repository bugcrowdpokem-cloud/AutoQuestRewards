#Requires AutoHotkey v2.0

; Wait for console to be fully ready
Sleep(500)

; Type "allow pasting"
SendText("allow pasting")

; Press Enter
Send("{Enter}")

; Wait before pasting
Sleep(1000)

; Paste clipboard contents
Send("^v")

; Press Enter again
Send("{Enter}")

; Exit AutoHotkey
ExitApp

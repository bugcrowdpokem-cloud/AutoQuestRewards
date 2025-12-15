#Requires AutoHotkey v2.0
SetWorkingDir(A_ScriptDir)
SetTitleMatchMode(2)

; -------------------------------
; SETTINGS
; -------------------------------

timeoutSeconds := 30        ; how long to wait before giving up
checkDelay := 500           ; ms between checks

startTime := A_TickCount

; -------------------------------
; MAIN LOOP
; -------------------------------

Loop {
    try {
        ; Search ONLY the main content area
        ImageSearch &x, &y
            , A_ScreenWidth * 0.25
            , A_ScreenHeight * 0.25
            , A_ScreenWidth * 0.85
            , A_ScreenHeight * 0.85
            , "accept_quest.png"

        ; Click center of the Accept Quest button
        Click x + 60, y + 20

        ; Exit after successful click
        ExitApp
    } catch {
        ; Not found yet — keep waiting
    }

    ; Timeout check
    if ((A_TickCount - startTime) > timeoutSeconds * 1000) {
        ExitApp
    }

    Sleep checkDelay
}

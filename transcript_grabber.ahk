; =====================================================================
;                       USER CONFIGURATION (v1.1 SIMPLE)
; =====================================================================
; Instructions:
; 1. Enter the X and Y numbers for each point directly.
; 2. Do NOT use "X:", "Y:", or commas. Just the numbers.
; =====================================================================

Point1_X := 1782
Point1_Y := 263

Point2_X := 1732
Point2_Y := 270

MainWaitTime_Seconds := 7

; =====================================================================
;                 AUTOMATION SCRIPT (Do not edit below)
; =====================================================================
;  - Ctrl + Alt + S : Starts the automation.
;  - Ctrl + Alt + P : Stops and reloads the script, ready for a fresh start.
; =====================================================================

; --- Hotkey to start the automation ---
^!s::
    ; === PRE-LOOP ACTIONS (Run only once at the start) ===
    Send, {Tab}
    Sleep, 500
    Send, ^+{Enter}
    Sleep, % MainWaitTime_Seconds * 1000

    ; === INFINITE LOOP BEGINS HERE ===
    Loop
    {
        ; --- Move to first position ---
        MouseMove, %Point1_X%, %Point1_Y%
        Sleep, 1000 ; Wait 1 second
        Click
        Sleep, 200 ; Short delay for click to register

        ; --- Move to second position ---
        MouseMove, %Point2_X%, %Point2_Y%
        Sleep, 4000 ; Wait 4 seconds
        Click
        Sleep, 1000 ; Wait 1 sec for app to process the click

        ; --- Press Ctrl + W to close tab ---
        Send, ^w
        Sleep, 1000 ; Wait for tab to close

        ; --- Press Tab ---
        Send, {Tab}
        Sleep, 500

        ; --- Press Ctrl + Shift + Enter ---
        Send, ^+{Enter}
        Sleep, 1000

        ; --- Alt+Tab to switch to the previous window ---
        Send, !{Tab}
        Sleep, 1000 ; Wait for window switch

        ; --- Press Ctrl + V to paste ---
        Send, ^v
        Sleep, 1000

        ; --- Alt+Tab to switch back to the original window ---
        Send, !{Tab}

        ; --- Final wait before the loop restarts ---
        Sleep, % MainWaitTime_Seconds * 1000
    }
Return

; --- Hotkey to STOP and RELOAD the script ---
^!p::
Reload
Return
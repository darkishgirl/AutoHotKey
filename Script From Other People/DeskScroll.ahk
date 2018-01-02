﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.AutoHotkey script for fast virtual desktop switching on Windows 10. Just hover over the Task View button and scroll!
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#If TaskViewHover()
WheelUp::  Send ^#{Left}
WheelDown::Send ^#{Right}

TaskViewHover() {
    MouseGetPos,,, id, NN
    ControlGetText, Text, %NN%, ahk_id %id%
    return Text = "Task View"
}

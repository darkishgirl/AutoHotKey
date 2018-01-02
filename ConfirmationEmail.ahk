#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^g::
   Send, Hi ,`n
Send, `n
   Send, Project is received and confirmed.`n
Send, `n
Send, We'll let you know in case of any questions.`n
Send, `n
Send, Thank you`n


Return
